#!/bin/false
# This file will be sourced in init.sh
# Namespace functions with provisioning_

# https://raw.githubusercontent.com/ai-dock/stable-diffusion-webui/main/config/provisioning/default.sh

### Edit the following arrays to suit your workflow

DISK_GB_REQUIRED=30

EXTENSIONS=(
    "https://github.com/Gourieff/sd-webui-reactor"
    "https://github.com/catppuccin/stable-diffusion-webui"
    "https://github.com/AUTOMATIC1111/stable-diffusion-webui-rembg"
    "https://github.com/etherealxx/batchlinks-webui"
    "https://github.com/AlUlkesh/stable-diffusion-webui-images-browser"
    "https://github.com/Mikubill/sd-webui-controlnet"
    "https://github.com/hako-mikan/sd-webui-regional-prompter"
    "https://github.com/Bing-su/adetailer"
    "https://github.com/pkuliyi2015/multidiffusion-upscaler-for-automatic1111"
    "https://github.com/hnmr293/sd-webui-cutoff"
    "https://github.com/DominikDoom/a1111-sd-webui-tagcomplete"
    "https://github.com/mix1009/model-keyword"
    "https://github.com/Uminosachi/sd-webui-inpaint-anything"
    "https://github.com/fkunn1326/openpose-editor.git"
    "https://github.com/cheald/sd-webui-loractl"
    "https://github.com/mcmonkeyprojects/sd-dynamic-thresholding"
    "https://github.com/Elldreth/loopback_scaler"
    "https://github.com/thomasasfk/sd-webui-aspect-ratio-helper"
)

CHECKPOINT_MODELS=(
    "https://civitai.com/api/download/models/17233"
    #"https://civitai.com/api/download/models/57618"
    #"https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt"
    #"https://huggingface.co/stabilityai/stable-diffusion-2-1/resolve/main/v2-1_768-ema-pruned.ckpt"
    #"https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors"
    #"https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors"
)

LORA_MODELS=(
    #"https://civitai.com/api/download/models/16576"
)

VAE_MODELS=(
    "https://huggingface.co/hakurei/waifu-diffusion-v1-4/resolve/main/vae/kl-f8-anime2.ckpt"
    #"https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.safetensors"
    "https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors"
    #"https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
)

ESRGAN_MODELS=(
    #"https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    #"https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    #"https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
)

CONTROLNET_MODELS=(
    "https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11e_sd15_ip2p_fp16.safetensors"
    #"https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11e_sd15_shuffle_fp16.safetensors"
    "https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11p_sd15_canny_fp16.safetensors"
    "https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11f1p_sd15_depth_fp16.safetensors"    
    "https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11p_sd15_inpaint_fp16.safetensors"
    "https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11p_sd15_lineart_fp16.safetensors"
    #"https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11p_sd15_mlsd_fp16.safetensors"
    #"https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11p_sd15_normalbae_fp16.safetensors"
    "https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11p_sd15_openpose_fp16.safetensors"
    "https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11p_sd15_scribble_fp16.safetensors"
    "https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11p_sd15_seg_fp16.safetensors"
    "https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11p_sd15_softedge_fp16.safetensors"
    "https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11p_sd15s2_lineart_anime_fp16.safetensors"
    "https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11f1e_sd15_tile_fp16.safetensors"
    "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/ip-adapter_sd15.pth"
    "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/ip-adapter_sd15_plus.pth"
    "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/ioclab_sd15_recolor.safetensors"
    "https://huggingface.co/ioclab/ioc-controlnet/resolve/main/models/control_v1p_sd15_illumination.safetensors"
)


### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function provisioning_start() {
    DISK_GB_AVAILABLE=$(($(df --output=avail -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_USED=$(($(df --output=used -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_ALLOCATED=$(($DISK_GB_AVAILABLE + $DISK_GB_USED))
    provisioning_print_header
    provisioning_get_extensions
    provisioning_get_models \
        "/opt/stable-diffusion-webui/models/Stable-diffusion" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "/opt/stable-diffusion-webui/models/Lora" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
        "/opt/stable-diffusion-webui/extensions/sd-webui-controlnet/models" \
        "${CONTROLNET_MODELS[@]}"
    provisioning_get_models \
        "/opt/stable-diffusion-webui/models/VAE" \
        "${VAE_MODELS[@]}"
    provisioning_get_models \
        "/opt/stable-diffusion-webui/models/ESRGAN" \
        "${ESRGAN_MODELS[@]}"
    provisioning_print_end
}

function provisioning_get_extensions() {
    for repo in "${EXTENSIONS[@]}"; do
        dir="${repo##*/}"
        path="/opt/stable-diffusion-webui/extensions/${dir}"
        requirements="${path}/requirements.txt"
        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating extension: %s...\n" "${repo}"
                ( cd "$path" && git pull )
                if [[ -e $requirements ]]; then
                    micromamba -n webui run ${PIP_INSTALL} -r "$requirements"
                fi
            fi
        else
            printf "Downloading extension: %s...\n" "${repo}"
            git clone "${repo}" "${path}"
            if [[ -e $requirements ]]; then
                micromamba -n webui run ${PIP_INSTALL} -r "${requirements}"
            fi
        fi
    done
}

function provisioning_get_models() {
    if [[ -z $2 ]]; then return 1; fi
    dir="$1"
    mkdir -p "$dir"
    shift
    if [[ $DISK_GB_ALLOCATED -ge $DISK_GB_REQUIRED ]]; then
        arr=("$@")
    else
        printf "WARNING: Low disk space allocation - Only the first model will be downloaded!\n"
        arr=("$1")
    fi
    
    printf "Downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        printf "Downloading: %s\n" "${url}"
        provisioning_download "${url}" "${dir}"
        printf "\n"
    done
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}

# Download from $1 URL to $2 file path
function provisioning_download() {
    wget -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
}

provisioning_start
