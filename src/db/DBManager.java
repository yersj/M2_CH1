package db;

import model.Footballer;

import java.util.ArrayList;

public class DBManager {
    public static ArrayList<Footballer> footballers=new ArrayList<>();

    public void addFootballer(Footballer footballer){
      footballers.add(footballer);
    }
    public ArrayList<Footballer> getFootballers(){
        return footballers;
    }


}
