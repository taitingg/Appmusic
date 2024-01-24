package com.example.android.mp3musicapp.Activity;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.example.android.mp3musicapp.R;
import com.example.android.mp3musicapp.RegisterAndLogin.NetworkService;
import com.example.android.mp3musicapp.RegisterAndLogin.NetworkClient;
import com.example.android.mp3musicapp.RegisterAndLogin.Register.RegistrationResponseModel;
import com.google.firebase.auth.FirebaseAuth;

import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class RegisterActivity extends AppCompatActivity {
    EditText inputName, inputPassword, inputemail;
    Button buttonRegister;
    TextView linklogin;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register);

        inputName = findViewById(R.id.txtName);
        inputemail = findViewById(R.id.txtEmail);
        inputPassword = findViewById(R.id.txtPwd);
        linklogin = findViewById(R.id.lnkLogin);
        buttonRegister = (Button) findViewById(R.id.btnregister) ;

        linklogin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(RegisterActivity.this, LoginActivity.class);
                startActivity(intent);
                finish();
            }
        });
        buttonRegister.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String user = inputemail.getText().toString();
                String pass = inputPassword.getText().toString();
                FirebaseAuth firebaseAuth = FirebaseAuth.getInstance();
                firebaseAuth.createUserWithEmailAndPassword(user,pass).addOnCompleteListener(task -> {
                    if (task.isSuccessful()) {
                        firebaseAuth.getCurrentUser().sendEmailVerification().addOnCompleteListener(task1 -> {
                            if(firebaseAuth.getCurrentUser().isEmailVerified()==true){
                                Toast.makeText(RegisterActivity.this, "Welcome to NTT!", Toast.LENGTH_SHORT).show();
                            }else{
                                Toast.makeText(RegisterActivity.this, "Please confirm Email", Toast.LENGTH_SHORT).show();
                            }
                        });
                    }else{
                        Toast.makeText(RegisterActivity.this, "Register failed!", Toast.LENGTH_SHORT).show();
                    }
                    Intent i = new Intent(RegisterActivity.this, LoginActivity.class);
                    startActivity(i);
                });
            }
        });

//        buttonRegister = findViewById(R.id.btnregister);
//        buttonRegister.setOnClickListener(new View.OnClickListener() {
//
//            @Override
//            public void onClick(View view) {
//                if (inputName.getText().toString().equals("")) {
//                    Toast.makeText(RegisterActivity.this, "Tên không được trống!", Toast.LENGTH_SHORT).show();
//                } else if (inputemail.getText().toString().equals("")) {
//                    Toast.makeText(RegisterActivity.this, "Email không được trống!", Toast.LENGTH_SHORT).show();
//                } else if (inputPassword.getText().toString().equals("")) {
//                    Toast.makeText(RegisterActivity.this, "Mật khẩu không được trống!", Toast.LENGTH_SHORT).show();
//                } else if (emailValidator(inputemail.getText().toString()) == false) {
//                    Toast.makeText(RegisterActivity.this, "Email không hợp lệ!", Toast.LENGTH_SHORT).show();
//                } else if (inputPassword.getText().toString().length() < 6) {
//                    Toast.makeText(RegisterActivity.this, "Mật khẩu phải ít nhất 6 kí tự!", Toast.LENGTH_SHORT).show();
//                }else {
//                    HashMap<String, String> params = new HashMap<>();
//                    params.put("name", inputName.getText().toString());
//                    params.put("email", inputemail.getText().toString());
//                    params.put("password", inputPassword.getText().toString());
//                    register(params);
//                }
//            }
//        });
//
//    }
//
//    private void register(HashMap<String, String> params) {
//
//        final ProgressDialog progressDialog = new ProgressDialog(RegisterActivity.this);
//        progressDialog.setTitle("Vui lòng đợi");
//        progressDialog.setMessage("Đang đăng kí...");
//        progressDialog.setCancelable(false);
//        progressDialog.show();
//
//        NetworkService networkService = NetworkClient.getClient().create(NetworkService.class);
//        Call<RegistrationResponseModel> registerCall = networkService.register(params);
//        registerCall.enqueue(new Callback<RegistrationResponseModel>() {
//            @Override
//            public void onResponse(@NonNull Call<RegistrationResponseModel> call, @NonNull Response<RegistrationResponseModel> response) {
//                RegistrationResponseModel responseBody = response.body();
//                if (responseBody != null) {
//                    if (responseBody.getSuccess().equals("1")) {
//                        Toast.makeText(RegisterActivity.this, responseBody.getMessage(), Toast.LENGTH_SHORT).show();
//                        Intent intent = new Intent(RegisterActivity.this, LoginActivity.class);
//                        startActivity(intent);
//                        finish();
//                    } else {
//                        Toast.makeText(RegisterActivity.this, responseBody.getMessage(), Toast.LENGTH_SHORT).show();
//                    }
//                }
//                progressDialog.dismiss();
//            }
//
//            @Override
//            public void onFailure(@NonNull Call<RegistrationResponseModel> call, @NonNull Throwable t) {
//                progressDialog.dismiss();
//            }
//        });
//    }
//
//    public boolean emailValidator(String email) {
//        Pattern pattern;
//        Matcher matcher;
//        final String EMAIL_PATTERN = "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
//        pattern = Pattern.compile(EMAIL_PATTERN);
//        matcher = pattern.matcher(email);
//        return matcher.matches();
    }
}