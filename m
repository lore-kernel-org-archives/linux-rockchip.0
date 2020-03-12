From: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v1] dt-bindings: mmc: synopsys-dw-mshc: fix
 clock-freq-min-max in example
Date: Thu, 12 Mar 2020 14:08:21 +0100
Message-ID: <CAPDyKFq22RTPQ2FD+yMYTstyEhqU=6piiiDkEFs4CB5f6uRG4Q@mail.gmail.com>
References: <20200307160556.16226-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200307160556.16226-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, DTML <devicetree@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Sat, 7 Mar 2020 at 17:06, Johan Jonker <jbx6244@gmail.com> wrote:
>
> A test with the command below does not detect all errors
> in combination with 'additionalProperties: false' and
> allOf:
>   - $ref: "synopsys-dw-mshc-common.yaml#"
> allOf:
>   - $ref: "mmc-controller.yaml#"
>
> 'additionalProperties' applies to all properties that are not
> accounted-for by 'properties' or 'patternProperties' in
> the immediate schema.
>
> First when we combine synopsys-dw-mshc.yaml,
> synopsys-dw-mshc-common.yaml and mmc-controller.yaml it gives
> this error:
>
> Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.example.dt.yaml:
> mmc@12200000: 'clock-freq-min-max' does not match any of the regexes:
> '^.*@[0-9]+$', '^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|
> uhs-(sdr(12|25|50|104)|ddr50))$', 'pinctrl-[0-9]+'
>
> 'clock-freq-min-max' is deprecated, so replace it by 'max-frequency'.
>
> make ARCH=arm dt_binding_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> index 05f9f36dc..dd2c1b147 100644
> --- a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> @@ -62,7 +62,7 @@ examples:
>        cap-mmc-highspeed;
>        cap-sd-highspeed;
>        card-detect-delay = <200>;
> -      clock-freq-min-max = <400000 200000000>;
> +      max-frequency = <200000000>;
>        clock-frequency = <400000000>;
>        data-addr = <0x200>;
>        fifo-depth = <0x80>;
> --
> 2.11.0
>
