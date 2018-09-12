
#include <vector>
#include <sstream>
#include <string>
#include "Camera.hpp"

std::vector<std::string>    split(std::string strToSplit, char delimeter);
glm::mat4                   getViewMatrix(Camera *camera);