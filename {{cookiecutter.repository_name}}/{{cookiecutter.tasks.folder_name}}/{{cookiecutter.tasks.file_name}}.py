from invoke import task


@task
def list_directory(ctx):
    ctx.config.run.shell = '/bin/sh'
    ctx.run("echo 'hello world in' $HOSTNAME")
