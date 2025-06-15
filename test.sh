export CUDA_VISIBLE_DEVICES=0

python test.py \
        --dataroot ./denoise \
        --name sem_cyclegan_6b \
        --model cycle_gan \
        --netG resnet_6blocks \
        --ngf 16 --ndf 16