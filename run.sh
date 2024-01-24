docker stop tester
docker rmi dock_s21_for_testing:arhnex
docker build -t dock_s21_for_testing:arhnex .
docker run -it --name tester --rm -v $(pwd):/project dock_s21_for_testing:arhnex /bin/zsh
