From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [PATCH] dt-bindings: input: touchscreen: edt-ft5x06: change reg
 property
Date: Wed, 20 May 2020 10:13:24 -0700
Message-ID: <20200520171324.GS89269@dtor-ws>
References: <20200520073327.6016-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200520073327.6016-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Johan,

On Wed, May 20, 2020 at 09:33:27AM +0200, Johan Jonker wrote:
> A test with the command below gives this error:
> 
> arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml:
> touchscreen@3e: reg:0:0: 56 was expected
> 
> The touchscreen chip on 'rk3188-bqedison2qc' and other BQ models
> was shipped with different addresses then the binding currently allows.
> Change the reg property that any address will pass.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/input/touchscreen/
> edt-ft5x06.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
> index 383d64a91..baa8e8f7e 100644
> --- a/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
> +++ b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
> @@ -42,7 +42,7 @@ properties:
>        - focaltech,ft6236
>  
>    reg:
> -    const: 0x38
> +    maxItems: 1

Should we have a list of valid addresses instead of allowing any
address? Controllers usually have only a couple of addresses that they
support.

Thanks.

-- 
Dmitry
