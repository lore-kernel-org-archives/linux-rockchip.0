From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R2S
Date: Sun, 2 Aug 2020 22:57:32 +0100
Message-ID: <c8e16fb6-ea83-4a04-4488-3681e395cc9b@arm.com>
References: <20200730232054.286381-1-mail@david-bauer.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200730232054.286381-1-mail-YgwEh8z+B+JYon68uE86FQ@public.gmane.org>
Content-Language: en-GB
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: David Bauer <mail-YgwEh8z+B+JYon68uE86FQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi David,

On 2020-07-31 00:20, David Bauer wrote:
> Add devicetree binding documentation for the FriendlyARM NanoPi R2S.
> 
> Signed-off-by: David Bauer <mail-YgwEh8z+B+JYon68uE86FQ@public.gmane.org>
> ---
>   Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index d4a4045092df..b17931ec2d86 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -104,6 +104,11 @@ properties:
>                 - firefly,roc-rk3399-pc-mezzanine
>             - const: rockchip,rk3399
>   
> +      - description: FriendlyARM NanoPi R2S

Nit: as the context below hints at, the company call themselves 
"FriendlyElec" these days - certainly since long before this board 
existed - so for consistency we should probably use that name in the 
description (but keep the established vendor prefix).

Robin.

> +        items:
> +          - const: friendlyarm,nanopi-r2s
> +          - const: rockchip,rk3328
> +
>         - description: FriendlyElec NanoPi4 series boards
>           items:
>             - enum:
> 
