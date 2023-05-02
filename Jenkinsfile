pipeline {
    agent {
      label 'agente1'
    }
    stages {
        stage('Ejecutar comandos de Bash') {
            steps {
                sh '''
                    echo "Iniciando ejecución de comandos de Bash"
                    echo "------------------------------------------"
                    ls -la
                    echo "------------------------------------------"
                    chmod +x mi_script.sh
                    echo $variable
                    ./mi_script.sh $ruta
                    echo $regex
                    pwd
                    echo "------------------------------------------"
                    echo "Finalizando ejecución de comandos de Bash"
                '''
            }
        }
    }
}
