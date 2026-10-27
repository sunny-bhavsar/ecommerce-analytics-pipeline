import subprocess
import sys

def run_step(command, description):
    print(f"\n==============================================")
    print(f"🚀 [ORCHESTRATOR] Starting: {description}")
    print(f"==============================================")
    
    result = subprocess.run(command, shell=True)
    
    if result.returncode != 0:
        print(f"❌ [ERROR] {description} failed!")
        sys.exit(1)
    print(f"✅ [SUCCESS] {description} completed successfully.")

if __name__ == "__main__":
    print("=== Starting E-Commerce Data Transformation Pipeline ===")

    # Step 1: Run dbt transformations (Staging & Marts)
    run_step("cd /d C:\\Users\\SUNNY\\ecommerce_analytics && dbt run", "dbt Transformations")

    # Step 2: Run dbt data quality tests
    run_step("cd /d C:\\Users\\SUNNY\\ecommerce_analytics && dbt test", "dbt Data Quality Tests")

    print("\n==============================================")
    print("🎉 ALL PIPELINE STEPS COMPLETED SUCCESSFULLY! 🎉")
    print("==============================================")