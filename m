From: Rob Herring <robh@kernel.org>
Subject: Re: [RFC PATCH v2 1/2] dt-bindings: sram: convert rockchip-pmu-sram
 bindings to yaml
Date: Mon, 30 Mar 2020 17:17:48 -0600
Message-ID: <20200330231748.GA10021@bogus>
References: <20200319161159.24548-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200319161159.24548-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Mar 19, 2020 at 05:11:58PM +0100, Johan Jonker wrote:
> Current dts files with 'rockchip-pmu-sram' compatible nodes
> are now verified with sram.yaml, although the original
> text document still exists. Merge rockchip-pmu-sram.txt
> with sram.yaml by adding it as description with an example.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Not tested with hardware.
> 
> Changed v2:
>   Merge with sram.yaml
> ---
>  .../devicetree/bindings/sram/rockchip-pmu-sram.txt       | 16 ----------------
>  Documentation/devicetree/bindings/sram/sram.yaml         | 13 +++++++++++++
>  2 files changed, 13 insertions(+), 16 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
> 
> diff --git a/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt b/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
> deleted file mode 100644
> index 6b42fda30..000000000
> --- a/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
> +++ /dev/null
> @@ -1,16 +0,0 @@
> -Rockchip SRAM for pmu:
> -------------------------------
> -
> -The sram of pmu is used to store the function of resume from maskrom(the 1st
> -level loader). This is a common use of the "pmu-sram" because it keeps power
> -even in low power states in the system.
> -
> -Required node properties:
> -- compatible : should be "rockchip,rk3288-pmu-sram"
> -- reg : physical base address and the size of the registers window
> -
> -Example:
> -	sram@ff720000 {
> -		compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";
> -		reg = <0xff720000 0x1000>;
> -	};
> diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
> index 7b83cc6c9..a9b1c2b74 100644
> --- a/Documentation/devicetree/bindings/sram/sram.yaml
> +++ b/Documentation/devicetree/bindings/sram/sram.yaml
> @@ -224,6 +224,19 @@ examples:
>      };
>  
>    - |
> +    // Rockchip's rk3288 SoC uses the sram of pmu to store the function of
> +    // resume from maskrom(the 1st level loader). This is a common use of
> +    // the "pmu-sram" because it keeps power even in low power states
> +    // in the system.
> +    sram@ff720000 {
> +      compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";

You need to document the compatible.

> +      reg = <0xff720000 0x1000>;
> +      #address-cells = <1>;
> +      #size-cells = <1>;
> +      ranges = <0 0xff720000 0x1000>;
> +    };
> +
> +  - |
>      // Allwinner's A80 SoC uses part of the secure sram for hotplugging of the
>      // primary core (cpu0). Once the core gets powered up it checks if a magic
>      // value is set at a specific location. If it is then the BROM will jump
> -- 
> 2.11.0
> 
