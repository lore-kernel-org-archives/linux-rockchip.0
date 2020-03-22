From: Qiang Yu <yuq825@gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: gpu: mali-utgard: Add the
 #cooling-cells property
Date: Sun, 22 Mar 2020 10:23:38 +0800
Message-ID: <CAKGbVbvDEkfLyhstd0+akqq0Amt-s-JMayxiQA2OxEfZPwj_CQ@mail.gmail.com>
References: <20200319203427.2259891-1-martin.blumenstingl@googlemail.com> <20200319203427.2259891-2-martin.blumenstingl@googlemail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200319203427.2259891-2-martin.blumenstingl@googlemail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>, Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>, linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>, linux-pm@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Looks good for me, patch is:
Reviewed-by: Qiang Yu <yuq825@gmail.com>

Regards,
Qiang

On Fri, Mar 20, 2020 at 4:35 AM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> The GPU can be one of the big heat sources on a SoC. Allow the
> "#cooling-cells" property to be specified for ARM Mali Utgard GPUs so
> the GPU clock speeds (and voltages) can be reduced to prevent a SoC from
> overheating.
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
> index afde81be3c29..33548ca2a759 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
> @@ -107,6 +107,9 @@ properties:
>
>    operating-points-v2: true
>
> +  "#cooling-cells":
> +    const: 2
> +
>  required:
>    - compatible
>    - reg
> @@ -162,6 +165,7 @@ examples:
>        clocks = <&ccu 1>, <&ccu 2>;
>        clock-names = "bus", "core";
>        resets = <&ccu 1>;
> +      #cooling-cells = <2>;
>      };
>
>  ...
> --
> 2.25.2
>
