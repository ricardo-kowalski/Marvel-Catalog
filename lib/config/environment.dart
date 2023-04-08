enum EnvironmentType {
  dev,
  prod,
  unknown,
}

class Environment {
  EnvironmentType type;
  String name;

  Environment({
    required this.type,
    required this.name,
  });

  bool get isProd => (type != EnvironmentType.prod);
}

extension EnvironmentTypeExtension on EnvironmentType {
  static EnvironmentType fromString(String value) {
    return EnvironmentType.values.firstWhere(
      (element) {
        return element.toString() == 'EnvironmentType.$value';
      },
      orElse: () => EnvironmentType.unknown,
    );
  }
}

Environment getEnvironment() {
  const env = String.fromEnvironment(
    'DEFINE_ENVIRONMENT',
    defaultValue: 'unknown',
  );

  const name = String.fromEnvironment(
    'DEFINE_APP_NAME',
    defaultValue: 'unknown',
  );

  return Environment(
    type: EnvironmentTypeExtension.fromString(env),
    name: name,
  );
}
