package com.example.android.mp3musicapp.Activity;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.example.android.mp3musicapp.R;
import com.example.android.mp3musicapp.RegisterAndLogin.Constants;
import com.example.android.mp3musicapp.RegisterAndLogin.Login.LoginResponseModel;
import com.example.android.mp3musicapp.RegisterAndLogin.NetworkClient;
import com.example.android.mp3musicapp.RegisterAndLogin.NetworkService;
import com.google.firebase.auth.FirebaseAuth;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class LoginActivity extends AppCompatActivity {

    EditText inputEmail, inputPassword;
    Button buttonLogin;
    TextView textCreateAccount;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        textCreateAccount = findViewById(R.id.lnkRegister);
        inputEmail = findViewById(R.id.txtloginEmail);
        inputPassword = findViewById(R.id.txtloginPwd);
        buttonLogin = findViewById(R.id.btnlogin);
        buttonLogin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String email = inputEmail.getText().toString();
                String passWord = inputPassword.getText().toString();
                FirebaseAuth firebaseAuth = FirebaseAuth.getInstance();
                Intent i = new Intent(LoginActivity.this, MainActivity.class);
                startActivity(i);
                firebaseAuth.signInWithEmailAndPassword(email,passWord).addOnCompleteListener(task -> {
                    if (task.isSuccessful()) {
                        Toast.makeText(LoginActivity.this, "Login is Successfully", Toast.LENGTH_SHORT).show();
                    }else{
                        Toast.makeText(LoginActivity.this, "Failed to Login", Toast.LENGTH_SHORT).show();}
                });

            }
        });
        textCreateAccount.setOnClickListener(new View.OnClickListener() {
           @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), RegisterActivity.class));
            }
        });
//        buttonLogin.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View v) {
//                if (inputEmail.getText().toString().equals("")) {
//                    Toast.makeText(LoginActivity.this, "Vui lòng nhập email!", Toast.LENGTH_SHORT).show();
//                } else if (inputPassword.getText().toString().equals("")) {
//                    Toast.makeText(LoginActivity.this, "Vui lòng nhập mật khẩu", Toast.LENGTH_SHORT).show();
//                } else {
//                    login();
//                }
//            }
//        });
//
//
//    }
//
//    public static void hideSoftKeyboard(Activity activity) {
//        InputMethodManager inputMethodManager =
//                (InputMethodManager) activity.getSystemService(
//                        Activity.INPUT_METHOD_SERVICE);
//        inputMethodManager.hideSoftInputFromWindow(
//                activity.getCurrentFocus().getWindowToken(), 0);
//    }
//
//
//    private void login() {
//        final ProgressDialog progressDialog = new ProgressDialog(LoginActivity.this);
//        progressDialog.setTitle("Vui lòng đợi");
//        progressDialog.setMessage("Đang đăng nhập...");
//        progressDialog.setCancelable(false);
//        progressDialog.show();
//        NetworkService networkService = NetworkClient.getClient().create(NetworkService.class);
//        Call<LoginResponseModel> login = networkService.login(inputEmail.getText().toString(), inputPassword.getText().toString());
//        login.enqueue(new Callback<LoginResponseModel>() {
//            @Override
//            public void onResponse(@NonNull Call<LoginResponseModel> call, @NonNull Response<LoginResponseModel> response) {
//                LoginResponseModel responseBody = response.body();
//                if (responseBody != null) {
//                    if (responseBody.getSuccess().equals("1")) {
//                        SharedPreferences sharedPreferences = getSharedPreferences("MyPrefs", MODE_PRIVATE);
//                        SharedPreferences.Editor editor = sharedPreferences.edit();
//                        editor.putString("idUser", responseBody.getIdUser());
//                        editor.apply();
//
//                        Toast.makeText(LoginActivity.this, "Đăng nhập thành công!", Toast.LENGTH_SHORT).show();
//                        startActivity(new Intent(getApplicationContext(), MainActivity.class));
//                        finish();
//                    } else {
//                        Toast.makeText(LoginActivity.this, "Đăng nhập không thành công, vùi lòng nhập lại!", Toast.LENGTH_SHORT).show();
//                    }
//                }
//                progressDialog.dismiss();
//            }
//
//            @Override
//            public void onFailure(@NonNull Call<LoginResponseModel> call, @NonNull Throwable t) {
//                Toast.makeText(LoginActivity.this, "Đăng nhập không thành công, vùi lòng nhập lại!", Toast.LENGTH_SHORT).show();
//                progressDialog.dismiss();
//            }
//        });
    }


}