From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: rockchip-rga: Add PX30 compatible
Date: Thu, 30 Apr 2020 23:24:17 +0200
Message-ID: <ed1ac7d6-12d3-5480-3699-70a88595cac2@gmail.com>
References: <20200430164245.1630174-2-paul.kocialkowski@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200430164245.1630174-2-paul.kocialkowski@bootlin.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: paul.kocialkowski@bootlin.com
Cc: devicetree@vger.kernel.org, ezequiel@collabora.com, hansverk@cisco.com, heiko@sntech.de, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, mchehab@kernel.org, robh+dt@kernel.org, thomas.petazzoni@bootlin.com
List-Id: linux-rockchip.vger.kernel.org

Hi Paul,

> 
> Add a new compatible for the PX30 Rockchip SoC, which also features
> a RGA block. It is compatible with the RK3288 RGA block.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  Documentation/devicetree/bindings/media/rockchip-rga.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> index dd645ddccb07..740586299da9 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> @@ -23,6 +23,9 @@ properties:


>        - items:
>            - const: rockchip,rk3228-rga
>            - const: rockchip,rk3288-rga
> +      - items:
> +          - const: rockchip,px30-rga
> +          - const: rockchip,rk3288-rga

Use enum.

      - items:
          - enum:
            - rockchip,px30-rga
            - rockchip,rk3228-rga
          - const: rockchip,rk3288-rga

>  
>    reg:
>      maxItems: 1
> -- 
> 2.26.0
