package com.example.android.mp3musicapp.RegisterAndLogin.Login;

import com.google.gson.annotations.SerializedName;

public class LoginResponseModel {
    @SerializedName("success")
    private String success;

    @SerializedName("message")
    private String message;

    @SerializedName("idUser")
    private String idUser;

    public String getSuccess() {
        return success;
    }

    public String getMessage() {
        return message;
    }

    public String getIdUser() {return idUser;}
}
