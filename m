From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v2 6/9] dt-bindings: media: rkisp1: move rockchip-isp1
 bindings out of staging
Date: Thu, 23 Apr 2020 14:36:49 +0200
Message-ID: <7da8fb4d-018e-894a-884b-760eaf2959e6@gmail.com>
References: <20200403161538.1375908-1-helen.koike@collabora.com>
 <20200403161538.1375908-7-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200403161538.1375908-7-helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devel-gWbeCf7V1WCQmaza687I9mD2FQJk+8+b@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, hverkuil-cisco-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, karthik.poduval-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, kishon-l0cyMroinI0@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Helen,

make ARCH=arm dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
  SCHEMA  Documentation/devicetree/bindings/processed-schema-examples.yaml
  SCHEMA  Documentation/devicetree/bindings/processed-schema.yaml
  CHKDT   Documentation/devicetree/bindings/media/rockchip-isp1.yaml
  DTC
Documentation/devicetree/bindings/media/rockchip-isp1.example.dt.yaml
Documentation/devicetree/bindings/media/rockchip-isp1.example.dts:22.27-99.11:
Warning (unit_address_vs_reg): /example-0/parent@0: node has a unit
name, but no reg or ranges property
  CHECK
Documentation/devicetree/bindings/media/rockchip-isp1.example.dt.yaml

On 4/3/20 6:15 PM, Helen Koike wrote:
> Move rkisp1 bindings to Documentation/devicetree/bindings/media
> 
> Verified with:
> make ARCH=arm64 dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> 
> Signed-off-by: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> ---
> 
> V2:
> - no changes
> 
>  .../devicetree/bindings/media/rockchip-isp1.yaml                  | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename {drivers/staging/media/rkisp1/Documentation => Documentation}/devicetree/bindings/media/rockchip-isp1.yaml (100%)
> 
> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> similarity index 100%
> rename from drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> rename to Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> 
