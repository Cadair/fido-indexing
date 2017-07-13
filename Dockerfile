FROM andrewosh/binder-base

USER main

RUN conda create -y -c conda-forge -n sunpy python=3.6 sunpy jupyter
RUN /bin/bash -c "source activate sunpy && ipython kernel install --user"
RUN /home/main/anaconda2/envs/sunpy/bin/conda uninstall -n sunpy sunpy
RUN /home/main/anaconda2/envs/sunpy/bin/pip install git+https://github.com/cadair/sunpy.git@fido_indexing#egg=sunpy
