FROM dart

# Install necessary packages
RUN apt-get update && \
    apt-get install -y curl git unzip xz-utils zip libglu1-mesa && \
    apt-get clean

# Install Node.js 18
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Install AWS Amplify CLI
RUN npm install -g @aws-amplify/cli

# Clone Flutter repository
RUN git clone https://github.com/flutter/flutter.git -b stable --depth 1 /flutter

# Add Flutter to PATH
ENV PATH="/flutter/bin:$PATH"

# Run flutter doctor to ensure everything is set up correctly
RUN flutter doctor
