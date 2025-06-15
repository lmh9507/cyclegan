export CUDA_VISIBLE_DEVICES=0

python train.py \
        --dataroot ./denoise \
        --name sem_cyclegan_6b \
        --model cycle_gan \
        --netG resnet_6blocks \
        --ngf 16 --ndf 16 --batch_size 4