/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

/**
 *
 * @author ml
 */
public class ConjuntoResultados {

    private ResultSet rs;
        
        public ConjuntoResultados(ResultSet rs){
            this.rs = rs;
        }
        
        public boolean next(){
            try{
                return rs.next();
            }catch(SQLException sqlError){
                System.out.println("Erro no SQL: "+sqlError);
                return false;
            }
        }
        
        public String getString(String t){
            try{
                return rs.getString(t);
            }catch(SQLException sqlError){
                System.out.println("Erro no SQL: "+sqlError);
                return "";
            }
        }
        
        public int getInt(String t){
            try{
                return rs.getInt(t);
            }catch(SQLException sqlError){
                System.out.println("Erro no SQL: "+sqlError);
                return 0;
            }
        }
        
        public float getFloat(String t){
            try{
                return rs.getFloat(t);
            }catch(SQLException sqlError){
                System.out.println("Erro no SQL: "+sqlError);
                return 0;
            }
        }
        
        public Date getDate(String t){
            try{
                return rs.getDate(t);
            }catch(SQLException sqlError){
                System.out.println("Erro no SQL: "+sqlError);
                return new Date();
            }
        }
        
        public boolean getBoolean(String t){
            try{
                return rs.getBoolean(t);
            }catch(SQLException sqlError){
                System.out.println("Erro no SQL: "+sqlError);
                return false;
            }
        }
    }
    

