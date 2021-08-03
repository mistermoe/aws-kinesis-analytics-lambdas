// CHANGED_FILES = ".github/workflows/test.yml app.py build-scripts/build.sh build-scripts/test.sh build.sh dockerfiles/python.Dockerfile lambdas/poker-reader/app.py lambdas/poker-reader/requirements.txt lambdas/preprocessor/app.py lambdas/preprocessor/requirements.txt lambdas/zops-reader/app.py lambdas/zops-reader/requirements.txt";

const changedFiles = process.env.CHANGED_FILES.split(' ');
const lambdas = new Set([]);

for (let file of changedFiles) {
    if (file.includes('lambdas')) {
        const lambda = file.split('/')[1];
        lambdas.add(lambda);
    }
}

return Array.from(lambdas).join(' ');