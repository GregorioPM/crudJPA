package co.ufps.controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ufps.dao.EmpleadoDao;
import co.ufps.model.Empleado;

/**
 * Servlet implementation class EmpleadoController
 */
@WebServlet("/")
public class EmpleadoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpleadoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getServletPath();
		try {
			switch(action) {
			case "/new":
				showNewForm(request, response);
				break;
			case "/insert":
				insertarEmpleado(request, response);
				break;
			case "/delete":
				eliminarEmpleado(request, response);
				break;
			case "/edit":
				showEditEmpleado(request, response);
				break;
			case "/update":
				actualizarEmpleado(request, response);
				break;
			default:
				listEmpleado(request,response);	
					
			}
			}catch(SQLException e) {
				throw new ServletException(e);
			}
	}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void showEditEmpleado(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException  {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		EmpleadoDao eDao=new EmpleadoDao();
		Empleado empleado =eDao.find(id);
		request.setAttribute("empleado", empleado);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Nuevo.jsp");
		dispatcher.forward(request, response);
	}

	private void actualizarEmpleado(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException {
		// TODO Auto-generated method stub.
		EmpleadoDao eDao=new EmpleadoDao();
		Empleado e=eDao.find(request.getParameter("codigo"));
		e.setCedula(request.getParameter("cedula"));
		e.setNombre(request.getParameter("nombre"));
		e.setCodigo(request.getParameter("codigo"));
		Date fechaNac=Date.valueOf(request.getParameter("fechaNacimiento"));
		e.setFechanacimiento(fechaNac);
		Date fechaIng=Date.valueOf(request.getParameter("fechaIngreso"));
		e.setFechaingreso(fechaIng);
		Date fechaRet=Date.valueOf(request.getParameter("fechaRetiro"));
		e.setFecharetiro(fechaRet);
		eDao.update(e);
		request.setAttribute("listEmpleados", eDao.list());
		RequestDispatcher dispatcher = request.getRequestDispatcher("Index.jsp");
		dispatcher.forward(request, response);
		
	}

	private void eliminarEmpleado(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		EmpleadoDao eDao=new EmpleadoDao();
		Empleado e =eDao.find(id);
		eDao.delete(e);
		request.setAttribute("listEmpleados", eDao.list());
		RequestDispatcher dispatcher = request.getRequestDispatcher("Index.jsp");
		dispatcher.forward(request, response);

		
	}

	private void insertarEmpleado(HttpServletRequest request, HttpServletResponse response)  throws ServletException, SQLException, IOException {
		// TODO Auto-generated method stub
		
		Empleado e=new Empleado();
		e.setCedula(request.getParameter("cedula"));
		e.setNombre(request.getParameter("nombre"));
		e.setCodigo(request.getParameter("codigo"));
		Date fechaNac=Date.valueOf(request.getParameter("fechaNacimiento"));
		e.setFechanacimiento(fechaNac);
		Date fechaIng=Date.valueOf(request.getParameter("fechaIngreso"));
		e.setFechaingreso(fechaIng);
		Date fechaRet=Date.valueOf(request.getParameter("fechaRetiro"));
		e.setFecharetiro(fechaRet);
		
		EmpleadoDao eDao=new EmpleadoDao();
		eDao.insert(e);
		request.setAttribute("listEmpleados", eDao.list());
		RequestDispatcher dispatcher = request.getRequestDispatcher("Index.jsp");
		dispatcher.forward(request, response);
		
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("Nuevo.jsp");
		dispatcher.forward(request, response);
		
	}
	
	private void listEmpleado(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException {
		EmpleadoDao empleadoDao = new EmpleadoDao();
		List <Empleado> listEmpleados =  empleadoDao.list();
		
		request.setAttribute("listEmpleados", listEmpleados);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Index.jsp");
		dispatcher.forward(request, response);
	}

}
