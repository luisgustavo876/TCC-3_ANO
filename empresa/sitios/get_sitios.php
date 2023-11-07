<?php

require '../habilitar_cors.php';
require '../conexao.php';

// Consulta para recuperar informações
$sql = "SELECT * FROM sitios";
$result = $connection->query($sql);

$data = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $sitio = array(
            'id' => $row['id'],
            'nome' => $row['nome_sitio']
        );

        $sitio_id = $row['id']; // Obtém o ID do sítio

        // Consulta para recuperar quadras para este sítio
        $quadras = array();
        $sql_quadras = "SELECT * FROM quadras WHERE id_sitio = " . $sitio_id;
        $result_quadras = $connection->query($sql_quadras);

        if ($result_quadras->num_rows > 0) {
            while ($row_quadra = $result_quadras->fetch_assoc()) {
                $quadra = array(
                    'id' => $row_quadra['id'],
                    'nome' => $row_quadra['nome_quadra']
                );

                // Consulta para recuperar ramais para esta quadra
                $ramais = array();
                $sql_ramais = "SELECT * FROM ramais WHERE quadra_id = " . $row_quadra['id'];
                $result_ramais = $connection->query($sql_ramais);

                if ($result_ramais->num_rows > 0) {
                    while ($row_ramal = $result_ramais->fetch_assoc()) {
                        $ramal = array(
                            'id' => $row_ramal['id'],
                            'nome' => $row_ramal['nome_ramal'],
                            'N' => $row_ramal['N'],
                            'V' => $row_ramal['V'],
                            'F' => $row_ramal['F'],
                            'Seca' => $row_ramal['Seca']
                        );
                        $ramais[] = $ramal;
                    }
                }

                $quadra['ramais'] = $ramais;
                $quadras[] = $quadra;
            }
        }

        $sitio['quadras'] = $quadras;
        $data[] = $sitio;
    }
}

echo json_encode($data);

$connection->close();

?>