// Copyright 2020 Kenton Hamaluik
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:timecop/models/project.dart';

abstract class ProjectsEvent extends Equatable {
  const ProjectsEvent();
}

class LoadProjects extends ProjectsEvent {
  @override
  List<Object> get props => [];
}

class CreateProject extends ProjectsEvent {
  final String name;
  final Color colour;
  const CreateProject(this.name, this.colour);
  @override
  List<Object> get props => [name, colour];
}

class EditProject extends ProjectsEvent {
  final Project project;
  const EditProject(this.project);
  @override
  List<Object> get props => [project];
}

class DeleteProject extends ProjectsEvent {
  final Project project;
  const DeleteProject(this.project);
  @override
  List<Object> get props => [project];
}
