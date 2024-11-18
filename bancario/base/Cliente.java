package bancario.base;

import java.sql.SQLException;
import java.sql.Statement;

public class Cliente {

    String cedula;
    String nombre;

    public Cliente(String cedula, String nombre) {
        this.cedula = cedula;
        this.nombre = nombre;


    }

    public String getCedula() {
        return cedula;
    }

    public String getNombre() {
        return nombre;
    }

    boolean insertarCliente(Statement statement)
    {
        try {
            statement.execute("INSERT INTO cuentas (nombre_cliente, cedula_cliente) VALUES ('" + this.nombre + "', '" + this.cedula + "') RETURNING id_cliente");
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
