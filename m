From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v3] dt-bindings: convert rockchip-drm.txt to
 rockchip-drm.yaml
Date: Mon, 27 Jan 2020 10:13:31 -0600
Message-ID: <20200127161331.GA20191@bogus>
References: <20200121154314.3444-1-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20200121154314.3444-1-dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, airlied-cv59FeDIM0c@public.gmane.org, daniel-/w4YWyX8dFk@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, dafna3-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, 21 Jan 2020 16:43:14 +0100, Dafna Hirschfeld wrote:
> convert the binding file rockchip-drm.txt to yaml format.
> This was tested and verified on ARM and ARM64 with:
> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> ---
> the detail of the ARM tests:
> export ARCH=arm KBUILD_OUTPUT=../kbuild/arm-test-dtc/ CROSS_COMPILE=arm-linux-gnueabi-
> make menuconfig # set rockchip system
> make clean
> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> 
> the detail of the ARM64 tests:
> export ARCH=arm64 KBUILD_OUTPUT=../kbuild/arm64-test-dtc/ CROSS_COMPILE=aarch64-linux-gnu-
> make menuconfig # set rockchip system
> make clean
> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> 
> 
> Changes since v1:
> - fixed worng sign-off
> - fixed the path of the $id property to be the path of the yaml file
> Changes since v2:
> - add a missing ">" sign in maintainers list
> - change the licens to GPL-2.0-only
> - add "additionalProperties: false"
> - change the commit message to conform that it was tested on both ARM and ARM64
> 
> 
>  .../display/rockchip/rockchip-drm.txt         | 19 ---------
>  .../display/rockchip/rockchip-drm.yaml        | 40 +++++++++++++++++++
>  2 files changed, 40 insertions(+), 19 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> 

Reviewed-by: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
