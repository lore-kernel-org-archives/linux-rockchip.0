Return-Path: <SRS0=rMIB=JR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05453C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 19:56:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4E92F613E1
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 19:56:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4E92F613E1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y+gSbCypboSUCjmJPA555vTKvtX1qgh/zbqZxR1BA5w=; b=BIIBuclPGubJLPz1sSlGpIEDC
	fNQnxA+ZQwEpNg1nu8cDujaViRYKvE5W34CGCMIkXV7oZqXoT1XUFPxvaQ6uMnW83avef85KvgIeh
	+wd1/lPmTIg9mJOs7F6DTGONtbBm73XY0IaLFXsr+XJJkmD2R84Qcx63VOWoBNivzqnYIGz8fKIsF
	5+ekimIf4ajgw3Cnxhngx0UxZ+dTJkE5yGRtuwL9aHFXOJt4VZ4BUazKuHeRnfvo2wP8kIg1EQlbf
	5V3yaMlTtApAtngH+atBa3yTLB91LhLi0MW5OmPYz7FEIVwYNEc0UQqHR4aDW0Nxz6xUGfqXrFq5F
	LR7qeUjIw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYwUL-00CyZp-Fo; Tue, 20 Apr 2021 19:56:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYwUI-00CyZf-Od
 for linux-rockchip@desiato.infradead.org; Tue, 20 Apr 2021 19:56:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=wXFtoKa4A9wR85HULtd8naWK+51HB2/UPn0+gbcQvGw=; b=gZKJRJ8VaM6aPs7OheCVnqC3kM
 xhKSZD3XiS5Ci0d1bUXhnpO45lBvMyTcQKvpVrSlPBD/UF6pynkhsC7fjTG4CWdZ4ycuxIrHnH9gz
 Fp2ZLVdQDN4i+569qffseuu1LVO2MlSxJ6CNGElj3e0YJ7sDJfndD7q0BBgeHh7wLuHcP7L7Sp3eJ
 HR73AjI1zmMZTSQ4cfvNQUT7/CzaemY79jGUSVXMqUCQtwt6+QhJneKS+L6QGoaM9YbgXpfj+sjle
 nQZJ1xFqP4NV/trQbJFp8qpNoiheOVpIVMUeeKKdw1RUhPoiPkcWEhanM15FHu0wo7qAk1smMIE5i
 tDyz9Z1A==;
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYwUC-00COBL-Tw
 for linux-rockchip@lists.infradead.org; Tue, 20 Apr 2021 19:56:45 +0000
Received: by mail-ej1-x635.google.com with SMTP id r9so60092319ejj.3
 for <linux-rockchip@lists.infradead.org>; Tue, 20 Apr 2021 12:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wXFtoKa4A9wR85HULtd8naWK+51HB2/UPn0+gbcQvGw=;
 b=N8jJfeG9gsgBdzDrllZ5Dl95V3ZFa2C9N/QvPK681qcXEGBP1a4xK/V5JOdL4uSPR2
 bW5YI0Vy2P9Ama1vf/D1VidtKy+xIVVIIY81EjyYj+ZqHdlWn0j8iO3jtIv9FvsKc57I
 KQThbz8nnfT90frF1+vS3kdJZOl4l6xasCVlZkzWsVo1JpO+Imy+ElAWPjwe9qn1BwNt
 4DWm5wWmel8UH4LhuUgJrcq1pzwSKO0J5mb8+ejyWNpy2oQBdw4dn3xJKpetLDrfCnuL
 meibvdXx5W20MSCSDYVveVdyeFAfrbOV2QjaG7XZdPVgM4jxGC71NIFcuFrsQX5LpMmf
 A4Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wXFtoKa4A9wR85HULtd8naWK+51HB2/UPn0+gbcQvGw=;
 b=jAbrBC6QZSuvpAQKAkIl4D2+FuPRMwjUM+O2fseeqQ9dGiQMEoiYHI/s0ckcQZI3ig
 bc54bKeN8DCCtbfGo6pTtfX/Ggl2ymAHQ6WH6Tm9JK4Zm5HZs2SB0rzSrFaoQ1oakJXY
 HkfZmEF0ezZ7WOQ4ON1nmveUL3Q/a78czW7pc8TBU+JsKRCXsAnEgFklCevRht4XL18p
 wUo6vrLpUxN2XiyV3SJ769ZnQHGELFYcEtty/cjUQlljw7muL6BK2l6sphaFPlh3JHPy
 5zqjQNd718SJpNntKpoBF2AQUgR9B3ejDYwX145MOFWfQYOfM6lw3ds5zXQnoOWYgd2f
 Fj6g==
X-Gm-Message-State: AOAM5322hiYzoyl4ukA2Zk29oef1z7b0pvGPsacQS1hrjzsMyoAuMxgc
 S1Mmd8Fm6vtuYWo558ISz+0=
X-Google-Smtp-Source: ABdhPJwM6M2UQx8s6wyd3V9paZeYW0+zTujJHqwLwvHTq2kOVCOCv7b7IRWfAvMRi+r7tEU1JRN1fA==
X-Received: by 2002:a17:906:d154:: with SMTP id
 br20mr28836830ejb.28.1618948598722; 
 Tue, 20 Apr 2021 12:56:38 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o6sm84419edw.24.2021.04.20.12.56.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Apr 2021 12:56:38 -0700 (PDT)
Subject: Re: [v7 3/4] dt-bindings: Add Rockchip rk817 audio CODEC support
To: Chris Morgan <macroalpha82@gmail.com>, alsa-devel@alsa-project.org
Cc: broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, heiko@sntech.de,
 lee.jones@linaro.org, robh+dt@kernel.org, perex@perex.cz,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20210420160747.22942-1-macroalpha82@gmail.com>
 <20210420160747.22942-3-macroalpha82@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <375b3145-70cc-9351-76f5-b9a159dc244f@gmail.com>
Date: Tue, 20 Apr 2021 21:56:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210420160747.22942-3-macroalpha82@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_125641_008659_458AA2BA 
X-CRM114-Status: GOOD (  23.01  )
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

Hi Chris,

Some comments. Have a look if they are useful.

On 4/20/21 6:07 PM, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Create dt-binding documentation to document rk817 codec.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
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
>  .../devicetree/bindings/mfd/rk808.txt         | 181 ++++++++++++++++++
>  1 file changed, 181 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/rk808.txt b/Documentation/devicetree/bindings/mfd/rk808.txt
> index 04df07f6f793..31eaabd2e179 100644
> --- a/Documentation/devicetree/bindings/mfd/rk808.txt
> +++ b/Documentation/devicetree/bindings/mfd/rk808.txt
> @@ -63,6 +63,11 @@ Optional RK809 properties:
>  - vcc9-supply:  The input supply for DCDC_REG5, SWITCH_REG2
>  
>  Optional RK817 properties:
> +- clocks:	The input clock for the audio codec
> +- clock-names:	The clock name for the codec clock. Should be "mclk".

#sound-dai-cells:

Needed for the interpretation of sound dais.
Should be 0.

Add empty line

> +- codec:	The child node for the codec to hold additional properties.

This is a nodename and not a property. Add below "vcc9-supply".

> +- mic-in-differential: Telling if the microphone uses differential mode. Should
> +		       be under the codec child node.

This goes in a subnode. Maybe add indent a bit?
"mic-in-differential" is a property specific for Rockchip.

Ask rob+dt for exact name.
Maybe this has to change to "rockchip,mic-in-differential"
Update code as well!

Add new added property names explicit in your commit message, so rob+dt
can review more easy.


>  - vcc8-supply:  The input supply for BOOST
>  - vcc9-supply:  The input supply for OTG_SWITCH
>  
> @@ -275,3 +280,179 @@ Example:
>  			};
>  		};
>  	};

Maybe add separator/title?

> +
> +	rk817: pmic@20 {
> +		compatible = "rockchip,rk817";
> +		reg = <0x20>;

> +		interrupt-parent = <&gpio0>;

Missing in properties.

> +		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
> +		clock-output-names = "rk808-clkout1", "xin32k";
> +		clock-names = "mclk";
> +		clocks = <&cru SCLK_I2S1_OUT>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_int>, <&i2s1_2ch_mclk>;

> +		wakeup-source;

Missing in properties.
Is this common for all rkXXX?

> +		#clock-cells = <1>;

> +		#sound-dai-cells = <0>;

Missing in properties.

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

Add empty line, like the rest.

> +		rk817_codec: codec {

> +			mic-in-differential;

See comment above.
rockchip,mic-in-differential ??

> +		};
> +	};
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
