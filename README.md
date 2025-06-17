# StyleGAN Denoising

## Getting Started

### Dataset 
Before training, you only need to rename the input image folder. The directory hierarchy for the input image folder is as follows:
```bash
denoise/
├── clean/
│   ├── clean_img0000.tif
│   ├── clean_img0001.tif
│   │
│   └── ...
│
└── noise/
    ├── noise_img0000.tif
    ├── noise_img0001.tif
    │
    └── ...
```
<br>

### Train
```bash
python train.py \
      --dataroot ./denoise \
      --name sem_cyclegan_6b \
      --model cycle_gan \
      --netG resnet_6blocks \
      --ngf 16 --ndf 16 --batch_size 4
```
or
```bash
bash train.sh
```
<br>

### Test

```bash
python test.py \
      --dataroot ./denoise \
      --name sem_cyclegan_6b \
      --model cycle_gan \
      --netG resnet_6blocks \
      --ngf 16 --ndf 16
```
or
```bash
bash test.sh
```
<br>

### Evaluate Metric

After running the test, you need to create a `result` folder. Then you can use `compute_metric.ipynb`—just customize the save option.