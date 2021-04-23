Return-Path: <SRS0=DeNp=JU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D5C6C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Apr 2021 17:39:07 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 988696137D
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Apr 2021 17:39:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 988696137D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b7BykFoHhsgFuRUaG9TpFM67wljSVBRvXumlvWwYsHE=; b=ikB4RIuKJZmxEcUy/m5LGZaU5
	MDZO/FOeGj5Nfz8/ot9iW+onnrRDZm0Hjenqd1p1Zac/bUQnZf2ibyD5KS8a5zJ4g+DkcR3O0CURz
	Fe538DW9bvgWX/jTFWt9b+eGqAau5vV9RzI+dvIRSqKh2oX7IxCRQJbVyBOOi7NQ/8yrX0RN6QdNV
	GDldMnaQqXOPbojj6jEgXtF9maTNJpveYNN48GmlzPOCPKwUlGglyd5EmF7/PW2Ew+u/kbm65/HY7
	qajA0ILmThEtWty7DLzkkBtMdQBEo9ev4avPaFckOZkmoguQTOpuD1teIm0jYAGt/hiLPzVdlrCOi
	kT8mWWXHQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZzld-0021zq-2K; Fri, 23 Apr 2021 17:39:01 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZzla-0021zd-No
 for linux-rockchip@desiato.infradead.org; Fri, 23 Apr 2021 17:38:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=A0MHQhU0eBU2kkHw8aXCklvLDh3uIKAnsJkWYtRfwVM=; b=wIiT6ebmr7i1emWNXcBev5ZOkY
 k3qnDYkerPqn6GOnWh1527qUKa/+MWN8z066BV5xDf0fxZ8PIDsu0dv20edMcsCFDwpygBnkiJUEz
 XTEHUpofsiQAXS233ifSMeXqyJw9GCio4buZKq+TuL5WCfyymLwTrCPBE3O3IH2cP7nnVVn5EhLi6
 D2f26oqWTjjvf9JYrirhBeP6zEN0b37a+wgxPpk9drcYfLYrxxsYOI2CrsDRPiYjX4gIwjAUu6B6+
 1cFrlHOZYLGzLzJ5p/9A99M7P+uDKqg9Pfj5SFysf4O5s+yuPoHYUoAp0FDg0jwYNHrkmTnFM2frA
 OymgkEEw==;
Received: from mail-oo1-f53.google.com ([209.85.161.53])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZzlX-00Eb9K-Je
 for linux-rockchip@lists.infradead.org; Fri, 23 Apr 2021 17:38:57 +0000
Received: by mail-oo1-f53.google.com with SMTP id
 s1-20020a4ac1010000b02901cfd9170ce2so10824556oop.12
 for <linux-rockchip@lists.infradead.org>; Fri, 23 Apr 2021 10:38:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=A0MHQhU0eBU2kkHw8aXCklvLDh3uIKAnsJkWYtRfwVM=;
 b=ckKTdO9YR5oyuB0QoWnFDmdIOYusC4YvMGcs3kfrHn9sCSz4VzZYP5a/9KzBoyVjSg
 QrjPV7P1Vxhsx8eJMsWdZ5y5cTrRsFEyGR7RWI4xrSB59BFd3xyGO8LEqfpDa5mW6jVh
 O8a/z+M6z4ZedLQ5TeCQWs1cdjerdavWedD2q1JGpN5xC8EiPqBY8s7OwTDW1Du0oigb
 RemthTdvxihhybnzb3gSiTGG+QdQtXwLFI2lNrxFUpmI18tYiJDn9/cApifCQ9iUHyH0
 rnvjfYxNypaiO8TiOVqlNF2SwnHyeiap1he0vmErQ1okx4M7okB8YHU8Kf2QaroXhIyy
 OIJg==
X-Gm-Message-State: AOAM532h+mi8noj4tGrlNUpVsLf0dLKuyRgTZqSF4JGu2m8wYySDDbKc
 PLo2a8qy5t0M4DrcLyW13Q==
X-Google-Smtp-Source: ABdhPJybWIzwfgeSqCSv8HrgGH2LKZdKV4Yw1ikoy/j7G8srfuFi/gbh4lepwOmZIy1Aiy4Nj8yHSQ==
X-Received: by 2002:a4a:e153:: with SMTP id p19mr3872886oot.52.1619199532595; 
 Fri, 23 Apr 2021 10:38:52 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g5sm1401495oiy.24.2021.04.23.10.38.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Apr 2021 10:38:51 -0700 (PDT)
Received: (nullmailer pid 1307573 invoked by uid 1000);
 Fri, 23 Apr 2021 17:38:50 -0000
Date: Fri, 23 Apr 2021 12:38:50 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, heiko@sntech.de,
 lee.jones@linaro.org, perex@perex.cz, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 maccraft123mc@gmail.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [v8 3/4] dt-bindings: Add Rockchip rk817 audio CODEC support
Message-ID: <20210423173850.GA1300233@robh.at.kernel.org>
References: <20210421175906.31977-1-macroalpha82@gmail.com>
 <20210421175906.31977-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210421175906.31977-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_103855_689442_33FFEFC8 
X-CRM114-Status: GOOD (  26.88  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Wed, Apr 21, 2021 at 12:59:05PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Create dt-binding documentation to document rk817 codec.
> New property name of rockchip,mic-in-differential added to control if
> the microphone is in differential mode or not.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
> Changes in v8:
>  - Added additional documentation for missing properties of #sound-dai-cells,
>    interrupt-parent, and wakeup-source for mfd documentation.
>  - Corrected order of elements descriptions in device tree documentation.
>  - Changed name of "mic-in-differential" to "rockchip,mic-in-differential".
>  - Changed name of sound card from "rockchip,rk817-codec" to "Analog".
>  - Removed unused resets and reset-names from the i2s1_2ch node.
> Changes in v7:
>  - Removed ifdef around register definitions for MFD.
>  - Replaced codec documentation with updates to MFD documentation.
>  - Reordered elements in example to comply with upstream rules.
>  - Added binding update back for Odroid Go Advance as requested.
>  - Submitting patches from gmail now.
> Changes in v6:
>  - Included additional project maintainers for correct subsystems.
>  - Removed unneeded compatible from DT documentation.
>  - Removed binding update for Odroid Go Advance (will do in seperate series).
> Changes in v5:
>  - Move register definitions from rk817_codec.h to main rk808.h register
>    definitions.
>  - Add volatile register for codec bits.
>  - Add default values for codec bits.
>  - Removed of_compatible from mtd driver (not necessary).
>  - Switched to using parent regmap instead of private regmap for codec.
> Changes in v4:
>  - Created set_pll() call.
>  - Created user visible gain control in mic.
>  - Check for return value of clk_prepare_enable().
>  - Removed duplicate clk_prepare_enable().
>  - Split DT documentation to separate commit.
> Changes in v3:
>  - Use DAPM macros to set audio path.
>  - Updated devicetree binding (as every rk817 has this codec chip).
>  - Changed documentation to yaml format.
>  - Split MFD changes to separate commit.
> Changes in v2:
>  - Fixed audio path registers to solve some bugs.
> 
>  .../devicetree/bindings/mfd/rk808.txt         | 188 ++++++++++++++++++
>  1 file changed, 188 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/rk808.txt b/Documentation/devicetree/bindings/mfd/rk808.txt
> index 04df07f6f793..e27fb2c1ebe0 100644
> --- a/Documentation/devicetree/bindings/mfd/rk808.txt
> +++ b/Documentation/devicetree/bindings/mfd/rk808.txt
> @@ -14,6 +14,8 @@ Required properties:
>  - compatible: "rockchip,rk817"
>  - compatible: "rockchip,rk818"
>  - reg: I2C slave address
> +- interrupt-parent: Should contain a phandle to the correct interrupt
> +		    controller node.

This can be in any parent node, so generally not required. IOW, you 
don't need to document it.

Otherwise,

Acked-by: Rob Herring <robh@kernel.org>

(Really, this should be converted to schema, but given it's on v8 
already that can come later.)

>  - interrupts: the interrupt outputs of the controller.
>  - #clock-cells: from common clock binding; shall be set to 1 (multiple clock
>    outputs). See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
> @@ -23,6 +25,7 @@ Optional properties:
>    default output clock name
>  - rockchip,system-power-controller: Telling whether or not this pmic is controlling
>    the system power.
> +- wakeup-source: Device can be used as a wakeup source.
>  
>  Optional RK805 properties:
>  - vcc1-supply:  The input supply for DCDC_REG1
> @@ -63,8 +66,16 @@ Optional RK809 properties:
>  - vcc9-supply:  The input supply for DCDC_REG5, SWITCH_REG2
>  
>  Optional RK817 properties:
> +- clocks:	The input clock for the audio codec
> +- clock-names:	The clock name for the codec clock. Should be "mclk".
> +- #sound-dai-cells: Needed for the interpretation of sound dais. Should be 0.
> +
>  - vcc8-supply:  The input supply for BOOST
>  - vcc9-supply:  The input supply for OTG_SWITCH
> +- codec:	The child node for the codec to hold additional properties.
> +
> +- rockchip,mic-in-differential: Telling if the microphone uses differential
> +				mode. Should be under the codec child node.
>  
>  Optional RK818 properties:
>  - vcc1-supply:  The input supply for DCDC_REG1
> @@ -275,3 +286,180 @@ Example:
>  			};
>  		};
>  	};
> +
> +	rk817: pmic@20 {
> +		compatible = "rockchip,rk817";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
> +		clock-output-names = "rk808-clkout1", "xin32k";
> +		clock-names = "mclk";
> +		clocks = <&cru SCLK_I2S1_OUT>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_int>, <&i2s1_2ch_mclk>;
> +		wakeup-source;
> +		#clock-cells = <1>;
> +		#sound-dai-cells = <0>;
> +
> +		vcc1-supply = <&vccsys>;
> +		vcc2-supply = <&vccsys>;
> +		vcc3-supply = <&vccsys>;
> +		vcc4-supply = <&vccsys>;
> +		vcc5-supply = <&vccsys>;
> +		vcc6-supply = <&vccsys>;
> +		vcc7-supply = <&vccsys>;
> +
> +		regulators {
> +			vdd_logic: DCDC_REG1 {
> +				regulator-name = "vdd_logic";
> +				regulator-min-microvolt = <950000>;
> +				regulator-max-microvolt = <1150000>;
> +				regulator-ramp-delay = <6001>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <950000>;
> +				};
> +			};
> +
> +			vdd_arm: DCDC_REG2 {
> +				regulator-name = "vdd_arm";
> +				regulator-min-microvolt = <950000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <6001>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +					regulator-suspend-microvolt = <950000>;
> +				};
> +			};
> +
> +			vcc_ddr: DCDC_REG3 {
> +				regulator-name = "vcc_ddr";
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcc_3v3: DCDC_REG4 {
> +				regulator-name = "vcc_3v3";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc_1v8: LDO_REG2 {
> +				regulator-name = "vcc_1v8";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vdd_1v0: LDO_REG3 {
> +				regulator-name = "vdd_1v0";
> +				regulator-min-microvolt = <1000000>;
> +				regulator-max-microvolt = <1000000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1000000>;
> +				};
> +			};
> +
> +			vcc3v3_pmu: LDO_REG4 {
> +				regulator-name = "vcc3v3_pmu";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vccio_sd: LDO_REG5 {
> +				regulator-name = "vccio_sd";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc_sd: LDO_REG6 {
> +				regulator-name = "vcc_sd";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc_bl: LDO_REG7 {
> +				regulator-name = "vcc_bl";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc_lcd: LDO_REG8 {
> +				regulator-name = "vcc_lcd";
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +					regulator-suspend-microvolt = <2800000>;
> +				};
> +			};
> +
> +			vcc_cam: LDO_REG9 {
> +				regulator-name = "vcc_cam";
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +					regulator-suspend-microvolt = <3000000>;
> +				};
> +			};
> +		};
> +
> +		rk817_codec: codec {
> +			rockchip,mic-in-differential;
> +		};
> +	};
> -- 
> 2.25.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
