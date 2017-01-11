/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Abhishek Verma <mohit00fbd@gmail.com>
 */
public class Database {
    private static Connection conn;
    private static Statement st;
    private static ResultSet rs, rs1, rs2;
    static{
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tms","root","root");
            st = conn.createStatement();
        }
        catch(SQLException|ClassNotFoundException e){
            System.out.println(e.toString());
        }
    }
    public static boolean login(String uname, String passwd){
        boolean flag = false;
        String sql = "select * from admin where uname='"+uname+"' and passwd='"+passwd+"'";
        try{
            rs = st.executeQuery(sql);
            if(rs.next()) flag=true;
        }
        catch(SQLException e){
            System.out.println(e.toString());
        }
        return flag;
    }
    public static boolean login(String uname, String passwd, String branch){
        boolean flag = false;
        String sql = "select * from managerlogin where uname='"+uname+"' and passwd='"+passwd+"'"
                + " and name='"+branch+"'";
        try{
            rs = st.executeQuery(sql);
            if(rs.next()) flag=true;
        }catch(SQLException e){
            System.out.println(e.toString());
        }
        return flag;
    }
    public static ArrayList<String> getBranch(){
        String sql = "select name from branch";
        ArrayList<String> al= new ArrayList();
        try{
            rs = st.executeQuery(sql);
            while(rs.next()){
                al.add(rs.getString("name"));
            }
        }
        catch(SQLException e){
            System.out.println(e.toString());
        }
        return al;
    }
    public static int getBranchID(String branch){
        String sql = "select * from branch where name='"+branch+"'";
        try{
            rs = st.executeQuery(sql);
            if(rs.next()){
                return (rs.getInt("ID"));
            }
        }
        catch(SQLException e){
            System.out.println(e.toString());
        }
        return 0;
    }
    public static int getSalaryID(String salary){
        int s = Integer.parseInt(salary);
        String sql ="select * from salary where salary="+s;
        try{
            rs = st.executeQuery(sql);
            if(rs.next()) return rs.getInt("ID");
            else{
                sql = "insert into salary (salary) values("+s+")";
                int r = st.executeUpdate(sql);
                if(r==0) return -1;
                else return getSalaryID(salary);
            }
        }
        catch(SQLException e){
            System.out.println(e.toString());
        }
        return 0;
    }
    public static String getMon(String mon){
        switch(mon){
            case "January,": return "01";
            case "February,": return "02";
            case "March,": return "03";
            case "April,": return "04";
            case "May,": return "05";
            case "June": return "06";
            case "July": return "07";
            case "August": return "08";
            case "September": return "09";
            case "October": return "10";
            case "November": return "11";
            case "December": return "12";
        }
        return "00";
    }
    public static String getMYSQLDate(String date){
        String[] a = date.split(" ");
        StringBuilder sb = new StringBuilder();
        sb.append(a[2]);
        sb.append("-");
        sb.append(getMon(a[1]));
        sb.append("-");
        if(a[0].length()==1) sb.append("0");
        sb.append(a[0]);
        return sb.toString();
    }
    public static boolean createManager(String branch, String name, String uname, String passwd,
            String dob, String doj, String salary){
        boolean flag = false;
        int branch_ID = getBranchID(branch);
        int salary_ID = getSalaryID(salary);
        String mysql_dob = getMYSQLDate(dob);
        String mysql_doj = getMYSQLDate(doj);
        String sql = "insert into manager(uname,passwd,name,dob,doj,branch_ID,salary_ID) values('"+uname
                +"','"+passwd+"','"+name+"','"+mysql_dob+"','"+mysql_doj+"',"+branch_ID+","+salary_ID+")";
        try{
            int r = st.executeUpdate(sql);
            if (r!=0) flag=true;
        }
        catch(SQLException e){
            System.out.println(e.toString());
        }
        return flag;
    }
    public static boolean sendQuery(String name, String email, String phone, String web, String message){
        boolean flag = false;
        int r=0;
        String sql = "select * from user where email='"+email+"'";
        try{
            rs = st.executeQuery(sql);
            if(!rs.next()){
                sql = "insert into user(name,email,tel,website) values('"+name+"','"+email+"','"+phone+"','"
                        +web+"')";
                r = st.executeUpdate(sql);
                if(r==0) return flag;
            }
            sql = "insert into queries(msg,user_email) values('"+message.trim()+"','"+email+"')";
            r = st.executeUpdate(sql);
            if(r!=0) flag = true;
        }
        catch(SQLException e){
            System.out.println(e.toString());
        }
        return flag;
    }
//    public static String getBranch(int ID){
//        String branch=null;
//        String sql = "select name from branch where ID="+ID;
//        try{
//            rs1 = st.executeQuery(sql);
//            branch = rs1.getString("name");
//        }
//        catch(SQLException e){
//            System.out.println(e.toString());
//        }
//        return branch;
//    }
//    public static String getSalary(int ID){
//        String s = null;
//        String sql = "select salary from salary where ID="+ID;
//        try{
//            rs2 = st.executeQuery(sql);
//            s = rs2.getString("salary");
//        }
//        catch(SQLException e){
//            System.out.println(e.toString());
//        }
//        return s;
//    }
    public static ArrayList<ArrayList<String>> getManager(String branch, String name){
        ArrayList<ArrayList<String>> al = new ArrayList();
        String sql = "select * from managerdata where branch='"+branch+"' and name like '%"+name+"%'";
        try{    
            rs = st.executeQuery(sql);
            int i=0;
            while(rs.next()){
                ArrayList<String> a = new ArrayList();
                a.add(rs.getString("name"));
                a.add(rs.getString("dob"));
                a.add(rs.getString("doj"));
                a.add(rs.getString("branch"));
                a.add(rs.getString("salary"));
                al.add(a);
            }
        }catch(SQLException e){
            System.out.println(e.toString());
        }
        return al;
    }
    public static ArrayList<ArrayList<String>> getTruck(String tnumber){
        ArrayList<ArrayList<String>> al = new ArrayList();
        String sql = "select * from truckdata where num like '%"+tnumber+"%'";
        try{
            rs = st.executeQuery(sql);
            while(rs.next()){
                ArrayList<String> a = new ArrayList();
                a.add(rs.getString("num"));
                a.add(rs.getString("model"));
                a.add(rs.getString("name"));
                a.add(rs.getString("fro"));
                a.add(rs.getString("t"));
                a.add(rs.getInt("insurance")==0?"No":"Yes");
                a.add(rs.getString("company")==null?"N/A":rs.getString("company"));
                a.add(rs.getString("status"));
                al.add(a);
            }
        }
        catch(SQLException e){
            System.out.println(e.toString());
        }
        return al;
    }
    public static int getID(String tmodel, String table){
        String sql=null;
        if(table.equals("model"))
        sql = "select * from "+table+" where "+table+"='"+tmodel+"'";
        else if(table.equals("insurance"))
        sql = "select * from "+table+" where company='"+tmodel+"'";
        int id=0;
        try{
            rs = st.executeQuery(sql);
            if(rs.next()) id=rs.getInt("ID");
            else{
                if(table.equals("model"))
                sql = "insert into "+table+"("+table+")"+" values('"+tmodel+"')";
                else if(table.equals("insurance"))
                sql = "insert into "+table+"(company)"+" values('"+tmodel+"')";
                int r=st.executeUpdate(sql);
                if(r==0) return -1;
                else return getID(tmodel,table);
            }
        }
        catch(SQLException e){
            System.out.println(e.toString());
        }
        return id;
    }
    public static int getID(String s1, String s2, String table){
        String sql =null;
        int id=0;
        if(table.equals("owner"))
        sql = "select ID from "+table+" where name='"+s1+"' and tel='"+s2+"'";
        else if(table.equals("routes"))
        sql = "select ID from "+table+" where fro='"+s1+"' and t='"+s2+"'";
        try{
            rs = st.executeQuery(sql);
            if(rs.next()) id=rs.getInt("ID");
            else{
                if(table.equals("owner"))
                sql = "insert into owner(name,tel) values('"+s1+"','"+s2+"')";
                else if(table.equals("routes"))
                sql = "insert into routes(fro,t) values('"+s1+"','"+s2+"')";
                int r=st.executeUpdate(sql);
                if(r==0) return -1;
                else return getID(s1,s2,table);
            }
        }
        catch(SQLException e){
            System.out.println(e.toString());
        }
        return id;
    }
    public static boolean installTruck(String tmodel, String tnumber, String insurance, String insuranceCompany,
            String ownerName, String ownerTel, String from, String to){
        boolean flag = false;
        int model_ID = getID(tmodel,"model");
        int insuranceCompany_ID = getID(insuranceCompany,"insurance");
        int ins = insurance==null?0:1;
        int owner_ID = getID(ownerName,ownerTel,"owner");
        int routes_ID = getID(from,to,"routes");
        int status_ID=1;
        String sql = "insert into truck(num,insurance,model_ID,insurance_ID,owner_ID,routes_ID,status_ID) values('"
                +tnumber+"',"+ins+","+model_ID+","+insuranceCompany_ID+","+owner_ID+","+routes_ID+","+status_ID+")";
        try{
            int r=st.executeUpdate(sql);
            if(r!=0) flag=true;
        }
        catch(SQLException e){
            System.out.println(e.toString());
        }
        return flag;
    }
    public static ArrayList<ArrayList<String>> getRoutes(String from, String t){
        ArrayList<ArrayList<String>> al = new ArrayList();
        String sql = "select num, name, fro, t, status from truckdata where fro='"+from+"' and t='"+t+"'";
        try{
            rs = st.executeQuery(sql);
            while(rs.next()){
                ArrayList<String> a = new ArrayList();
                a.add(rs.getString("num"));
                a.add(rs.getString("name"));
                a.add(rs.getString("fro"));
                a.add(rs.getString("t"));
                a.add(rs.getString("status"));
                al.add(a);
            }
        }
        catch(SQLException e){
            System.out.println(e.toString());
        }
        return al;
    }
    public static ArrayList<ArrayList<String>> getAllTrucks(){
        ArrayList<ArrayList<String>> al = new ArrayList();
        String sql = "select * from truckdata";
        try{
            rs = st.executeQuery(sql);
            while(rs.next()){
                ArrayList<String> a = new ArrayList();
                a.add(rs.getString("num"));
                a.add(rs.getString("model"));
                a.add(rs.getString("name"));
                a.add(rs.getString("fro"));
                a.add(rs.getString("t"));
                a.add(rs.getString("status"));
                al.add(a);
            }
        }
        catch(SQLException e){
            System.out.println(e.toString());
        }
        return al;
    }
    public static boolean updateTruckInfo(String tnum, String insurance, 
            String insuranceCompany, String ownerName, String ownerTel, 
            String from, String to, String status){
        boolean flag=false;
        int insuranceCompany_ID = getID(insuranceCompany,"insurance");
        int ins = insurance==null?0:1;
        int owner_ID = getID(ownerName,ownerTel,"owner");
        int routes_ID = getID(from,to,"routes");
        int status_ID = Integer.parseInt(status);
        String sql = "update truck set insurance="+ins+", insurance_ID="+insuranceCompany_ID+", "
                + "owner_ID="+owner_ID+", routes_ID="+routes_ID+", status_ID="
                +status_ID+" where num='"+tnum+"'";
        try{
            int r = st.executeUpdate(sql);
            if (r!=0) flag=true;
        }
        catch(SQLException e){
            System.out.println(e.toString());
        }
        return flag;
    }
    public static ArrayList<ArrayList<String>> getStatus(){
        ArrayList<ArrayList<String>> al = new ArrayList();
        String sql = "select * from status";
        try{
            rs = st.executeQuery(sql);
            while(rs.next()){
                ArrayList<String> a = new ArrayList();
                a.add(rs.getString("ID"));
                a.add(rs.getString("status"));
                al.add(a);
            }
        }
        catch(SQLException e){
            System.out.println(e.toString());
        }
        return al;
    }
    public static void deleteManager(String name, String branch){
        int branch_ID = getBranchID(branch);
        String sql="delete from manager where name='"+name
                +"' and branch_ID="+branch_ID;
        try{
            int r = st.executeUpdate(sql);
        }
        catch(SQLException e){
            System.out.println(e.toString());
        }
    }
}
