pipeline {
    agent any
    stages {
        stage('Ejecutar comandos de Bash') {
            steps {
                sh '''
                    echo "Iniciando ejecución de comandos de Bash"
                    echo "------------------------------------------"
                    ls -la
                    echo "------------------------------------------"
                    ./mi_script.sh $variable
                    echo $variable2
                    pwd
                    echo "------------------------------------------"
                    echo "Finalizando ejecución de comandos de Bash"
                '''
            }
        }
    }
}
