# Cloud Deployment Rollback System

## 1. Problem Statement

Automate CI/CD deployment pipelines with automatic rollback capabilities using AWS services. This system addresses the challenge of managing continuous deployments while ensuring quick recovery from failed deployments in production environments.

## 2. Approach

**Technologies & Services Used:**
- AWS CodePipeline: Orchestrates the CI/CD workflow
- AWS CodeBuild: Builds and tests application code
- AWS CodeDeploy: Automates application deployment
- AWS Lambda: Triggers rollback mechanisms
- CloudWatch: Monitors deployment health and failures
- Shell Scripting: Automates rollback logic and health checks

**Architecture:**
- Automated pipeline triggers on code commits
- Build validation through CodeBuild
- Deployment staging and production environments
- Health check monitoring during deployment
- Automatic rollback on deployment failure or health check failures

## 3. Dataset

**Infrastructure Components:**
- AWS EC2 instances (deployment targets)
- AWS S3 buckets (artifact storage)
- AWS IAM roles and policies (access control)
- CloudWatch logs and metrics (monitoring data)
- Deployment configuration files (appspec.yaml, buildspec.yaml)

## 4. Results

**Performance Metrics:**
- Deployment Success Rate: Tracks successful deployments vs. rollbacks
- Rollback Execution Time: Measures time to restore previous version
- Mean Time to Recovery (MTTR): Average recovery time from failed deployment
- Deployment Frequency: Number of deployments per day/week
- Pipeline Success Rate: End-to-end pipeline completion rate

## 5. Screenshots / Outputs

- AWS CodePipeline execution flows
- CloudWatch monitoring dashboards
- Deployment logs and rollback execution logs
- Health check status reports
- Infrastructure change logs

## 6. How to Run

### Prerequisites:
- AWS Account with appropriate permissions
- AWS CLI configured with credentials
- Git repository integrated with AWS CodePipeline
- EC2 instances with CodeDeploy agent installed

### Setup Steps:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Srikanth-coder-max/cloud-deployment-rollback-system.git
   cd cloud-deployment-rollback-system
   ```

2. **Configure AWS Credentials:**
   ```bash
   aws configure
   ```

3. **Update Configuration Files:**
   - Modify `buildspec.yaml` with your build commands
   - Update `appspec.yaml` with deployment specifications
   - Configure `rollback-config.sh` with your environment details

4. **Deploy Pipeline:**
   ```bash
   bash ./scripts/setup-pipeline.sh
   ```

5. **Monitor Deployments:**
   - Access AWS CodePipeline console
   - Check CloudWatch logs for execution details
   - Verify rollback triggers in CloudWatch alarms

### Running Tests:
```bash
bash ./scripts/health-check.sh
```

### Manual Rollback:
```bash
bash ./scripts/rollback.sh <deployment-id>
```