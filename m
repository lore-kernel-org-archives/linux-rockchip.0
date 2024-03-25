Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68375C54E64
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 13:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QwzMqzytXxAWSLQ4CEIPnMcobdZxIKszdiJC2mEh3v0=; b=Y/sjsusAxTxv+mD9KBKcKyaa2P
	LKugkA4/5aDkeRnPRU8KlXsIU0Vxu+At4wDPkZBtpcyvUDU+DisDRD4Zukwvwe/QPkRcQ1+lE/T4s
	X/SlRmS12rBMAjt4Xe9kZP4UPEMMFxYhNsO5vUcC417trol6zQPjNDCVQRvwDQ7t8IL7A0vnjTHDn
	laVM9tix7oFv60e1E4N9LdQpmE7vKHf6xmpDE+jo2mScuVNfjNcsiLneYtFAnymm+GkWTsBnICWIE
	dwlZMKZOGmPfU5XGZzXgDWOVedZB71LyDuBnVPMsUstpc/DuL9vrTFVguM4htcKd0dyjt5dCXwXXP
	1hCqTT7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roknu-000000005Kr-0Fza;
	Mon, 25 Mar 2024 13:55:58 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rokng-000000005ED-2nVW;
	Mon, 25 Mar 2024 13:55:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id EB613CE1986;
	Mon, 25 Mar 2024 13:55:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0781C43394;
	Mon, 25 Mar 2024 13:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711374942;
	bh=QL7wUNDnrbeyCC7mBUbeWx4JQtVi0fU2KEQRQK5eHrI=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=UhqjWlr4LFfcTm44jPOF1M8GJw5fLJsxXxKUokM/9dqQ1yd1rBFRHi1Sxatisz26W
	 kV1yYFTrUKbK1SmYlJsrp06OpS0ltgvyW3GygQ2W6mHLiLHAJxtkS2TlT/bqgPimY5
	 OOa5I1IrJ1ybPbkqxs0+jGe2BAQHxsNuf9g46P1B4Po06J6PteiyTBuGY7kip7S7Je
	 2UZStAwcDB1/sF474BBACQXYdV8Sj1yWSdtT9wOIbI/fYdyM7PZTyGnBGZxN4vtodR
	 Q8LEa44BfIWjI07koUP9GvSsbLrovRyVWV6r248F/G2h8++wZJ2uo3PgyaI1XCw2jU
	 eelnVg1M953sw==
Date: Mon, 25 Mar 2024 08:55:40 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: Stephen Boyd <sboyd@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 heiko@sntech.de, linux-clk@vger.kernel.org, 
 Michael Turquette <mturquette@baylibre.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
In-Reply-To: <1711340191-69588-2-git-send-email-sugar.zhang@rock-chips.com>
References: <1711340191-69588-1-git-send-email-sugar.zhang@rock-chips.com>
 <1711340191-69588-2-git-send-email-sugar.zhang@rock-chips.com>
Message-Id: <171137493890.3270008.6436971958233040222.robh@kernel.org>
Subject: Re: [PATCH v1 2/2] dt-bindings: clock: rockchip: Add support for
 clk input / output switch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_065545_448765_8038205C 
X-CRM114-Status: GOOD (  21.37  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Mon, 25 Mar 2024 12:16:30 +0800, Sugar Zhang wrote:
> This patch add support switch for clk-bidirection which located
> at GRF, such as SAIx_MCLK_{IN OUT} which share the same pin.
> and these config maybe located in many pieces of GRF,
> which hard to addressed in one single clk driver. so, we add
> this simple helper driver to address this situation.
> 
> In order to simplify implement and usage, and also for safety
> clk usage (avoid high freq glitch), we set all clk out as disabled
> (which means Input default for clk-bidrection) in the pre-stage,
> such boot-loader or init by HW default. And then set a safety freq
> before enable clk-out, such as "assign-clock-rates" or clk_set_rate
> in drivers.
> 
> e.g.
> 
> 1. mclk{out,in}_sai0 define:
> 
>   mclkin_sai0: mclkin-sai0 {
>       compatible = "fixed-clock";
>       #clock-cells = <0>;
>       clock-frequency = <12288000>;
>       clock-output-names = "mclk_sai0_from_io";
>   };
> 
>   mclkout_sai0: mclkout-sai0@ff040070 {
>       compatible = "rockchip,clk-out";
>       reg = <0 0xff040070 0 0x4>;
>       clocks = <&cru MCLK_SAI0_OUT2IO>;
>       #clock-cells = <0>;
>       clock-output-names = "mclk_sai0_to_io";
>       rockchip,bit-shift = <4>;
>       //example with PD if reg access needed
>       power-domains = <&power RK3562_PD_VO>;
>   };
> 
> Note:
> 
> clock-output-names of mclkin_sai0 should equal to strings in drivers. such as:
> 
> drivers/clk/rockchip/clk-rk3562.c:
> PNAME(clk_sai0_p) = { "clk_sai0_src", "clk_sai0_frac", "xin_osc0_half", "mclk_sai0_from_io" };
> 
> 2. mclkout_sai0 usage:
> 
>   &ext_codec {
>       clocks = <&mclkout_sai0>;
>       clock-names = "mclk";
>       assigned-clocks = <&mclkout_sai0>;
>       assigned-clock-rates = <12288000>;
>       pinctrl-names = "default";
>       pinctrl-0 = <&i2s0m0_mclk>;
>   };
> 
>   clk_summary on sai0 work:
> 
>   cat /sys/kernel/debug/clk/clk_summary | egrep "pll|sai0"
> 
>   clk_sai0_src                1        1        0  1188000000          0     0  50000
>     clk_sai0_frac             1        1        0    12288000          0     0  50000
>       clk_sai0                1        1        0    12288000          0     0  50000
>         mclk_sai0             1        1        0    12288000          0     0  50000
>           mclk_sai0_out2io    1        1        0    12288000          0     0  50000
>             mclk_sai0_to_io   1        1        0    12288000          0     0  50000
> 
>   example with PD if reg access needed:
> 
>   * PD status when mclk_sai0_to_io on:
> 
>   cat /sys/kernel/debug/pm_genpd/pm_genpd_summary
> 
>   domain                          status          children
>     /device                                                runtime status
>   ----------------------------------------------------------------------
>   ...
> 
>   vo                              on
>     /devices/platform/clocks/ff040070.mclkout-sai0         active
>   ...
> 
>   * PD status when mclk_sai0_to_io off:
> 
>   cat /sys/kernel/debug/pm_genpd/pm_genpd_summary
> 
>   domain                          status          children
>     /device                                                runtime status
>   ----------------------------------------------------------------------
>   ...
> 
>   vo                              off-0
>     /devices/platform/clocks/ff040070.mclkout-sai0         suspended
>   ...
> 
> 3. mclkin_sai0 usage:
> 
>   please override freq of mclkin as the real external clkin, such as:
> 
>   &mclkin_sai0 {
>       clock-frequency = <24576000>;
>   }
> 
>   &ext_codec {
>       clocks = <&mclkin_sai0>;
>       clock-names = "mclk";
>       assigned-clocks = <&cru CLK_SAI0>;
>       assigned-clock-parents = <&mclkin_sai0>;
>       pinctrl-names = "default";
>       pinctrl-0 = <&i2s0m0_mclk>;
>   };
> 
>   clk_summary on sai0 work:
> 
>   cat /sys/kernel/debug/clk/clk_summary | egrep "pll|sai0"
> 
>   mclk_sai0_from_io          1        1        0    12288000          0     0  50000
>     clk_sai0                 1        1        0    12288000          0     0  50000
>       mclk_sai0              1        1        0    12288000          0     0  50000
>         mclk_sai0_out2io     0        0        0    12288000          0     0  50000
>           mclk_sai0_to_io    0        0        0    12288000          0     0  50000
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
>  .../bindings/clock/rockchip,clk-out.yaml           | 107 +++++++++++++++++++++
>  1 file changed, 107 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,clk-out.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/clock/rockchip,clk-out.yaml: title: 'Rockchip Clock Out Control Module Binding' should not be valid under {'pattern': '([Bb]inding| [Ss]chema)'}
	hint: Everything is a binding/schema, no need to say it. Describe what hardware the binding is for.
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#
Error: Documentation/devicetree/bindings/clock/rockchip,clk-out.example.dts:28.28-29 syntax error
FATAL ERROR: Unable to parse input tree
make[2]: *** [scripts/Makefile.lib:427: Documentation/devicetree/bindings/clock/rockchip,clk-out.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1430: dt_binding_check] Error 2
make: *** [Makefile:240: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/1711340191-69588-2-git-send-email-sugar.zhang@rock-chips.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
