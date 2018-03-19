<h> Customer Details </h>
<table>
  <tr>
    <th>
      <td> Customer Name </td>
      <td> Date of Joining </td>
      <td> Date of Birth </td>
      <td> Marital Status </td>
      <td> Present Residence Name </td>
    </th>
  </tr>

  <tbody>
    <tr>
      <% @customers.each do |customer| %>
        <td> <%= customer.empname %> </td>
        <td> <%= customer.date_of_joining %> </td>
        <td> <%= customer.date_of_birth %> </td>
        <td> <%= customer.marital_status %> </td>
        <td> <%= customer.present_res_name %> </td>
      <% end %>
    </tr>
  </tbody>
</table>