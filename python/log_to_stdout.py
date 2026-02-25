# Initial version is from Claude
# This will print the log only to stdout

import logging

# Basic logging configuration - stdout only
logging.basicConfig(
    level=logging.DEBUG,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)

logger = logging.getLogger(__name__)

def main():
    logger.debug("This is a debug message")
    logger.info("Application started successfully")
    logger.warning("This is a warning message")

    try:
        result = 10 / 2
        logger.info(f"Calculation result: {result}")

        # Simulate an error
        risky_operation = 10 / 0
    except ZeroDivisionError as e:
        logger.error("An error occurred during calculation", exc_info=True)

    logger.critical("This is a critical message")

if __name__ == "__main__":
    main()
