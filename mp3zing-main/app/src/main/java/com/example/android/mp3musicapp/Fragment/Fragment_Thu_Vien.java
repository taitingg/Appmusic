package com.example.android.mp3musicapp.Fragment;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.android.mp3musicapp.Adapter.BaiHatHotAdapter;
import com.example.android.mp3musicapp.Adapter.SearchMusicAdapter;
import com.example.android.mp3musicapp.Model.BaiHat;
import com.example.android.mp3musicapp.R;
import com.example.android.mp3musicapp.Service.ApiService;
import com.example.android.mp3musicapp.Service.DataService;

import org.w3c.dom.Text;

import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class Fragment_Thu_Vien extends Fragment {
    View view;
    TextView tvCuaToi;
    RecyclerView recyclerViewSearchMusic;
    private SharedPreferences prefs;

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        final Context contextThemeWrapper = new ContextThemeWrapper(getActivity(), R.style.AppThemeForSearch);
        LayoutInflater localInflater = inflater.cloneInContext(contextThemeWrapper);
        view = localInflater.inflate(R.layout.fragment_thu_vien, container, false);
        prefs = getContext().getSharedPreferences("MyPrefs", Context.MODE_PRIVATE);
        viewBinding();
        getData();
        return view;
    }

    private void viewBinding() {
        tvCuaToi = view.findViewById(R.id.tvCuaToi);
        recyclerViewSearchMusic = view.findViewById(R.id.recyclerViewSearchThuVienMusic);
        setHasOptionsMenu(true);
    }


    private void getData() {
        DataService service = ApiService.getService();
        final String idUser = prefs.getString("idUser", "0");
        Call<List<BaiHat>> callback = service.getAllBaiHatYeuThichCuatoi(idUser);
        System.out.println("chua cap nhat lai du lieu");

        callback.enqueue(new Callback<List<BaiHat>>() {
            @Override
            public void onResponse(Call<List<BaiHat>> call, Response<List<BaiHat>> response) {
                System.out.println("cap nhat lai du lieu");
                ArrayList<BaiHat> baiHatArrayList = (ArrayList<BaiHat>) response.body();
                BaiHatHotAdapter baiHatHotAdapter = new BaiHatHotAdapter(getActivity(), baiHatArrayList);
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
                linearLayoutManager.setOrientation(LinearLayoutManager.VERTICAL);
                recyclerViewSearchMusic.setLayoutManager(linearLayoutManager);
                recyclerViewSearchMusic.setAdapter(baiHatHotAdapter);
            }

            @Override
            public void onFailure(Call<List<BaiHat>> call, Throwable t) {

            }
        });
    }

    @Override
    public void onResume() {
        super.onResume();
        getData();
    }
}
