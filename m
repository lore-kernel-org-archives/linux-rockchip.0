Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8CF0C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 12:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aDhRsSxNZhCfUZXYfOcHAxy3S6hUAxXcQ39yZCcNRUU=; b=N1ZS7vdvdf9tPFjihWs2IWGRyz
	jxiHEGcYDZ857nTqBrs+iLhYvTfp9/DzwSBFk0Gu9b59dQAa035KHDELnRVaNdPgSugmp33fLw3Xj
	TElwM4aAUwlctWihgAveXEY8bcuXg2zkZDdTbbWAi5paRijdxt5EWRymj8gFaHjAGi/COlsmXlRJ5
	CmaGZGgtdPR1D44kjyYwvYRcfaysY12TLAwYGDPCoSX72bwNtIbTpi07kMATRP9FPtJ3Ekhshyppk
	4iTOZiZ2+naIMIks2p+9kTooIbg45jI3mEqrCjQ+hBk44f5e6gc4DJR/k7xzibx7rpDP1wzDlm4bT
	gU46rTMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxqAC-005WJy-3o; Thu, 16 Dec 2021 12:47:12 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxpj3-005O8V-EH; Thu, 16 Dec 2021 12:19:11 +0000
Received: by mail-ed1-x52f.google.com with SMTP id z29so6216017edl.7;
 Thu, 16 Dec 2021 04:19:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VIrvjDDC253+7I8ItkMS3rF4mFMXAntO0qv9ce/v2ss=;
 b=TZ9XFXMMw5EhhxSGFi3vG/xVzFNWggatiVkyZ2dRaR8zi7wtRaJg9Cyc890t5T0eBy
 kL6I1F09o36UZCn5ZJPKhoUkKd8Dml7AK2/peCess7th2CL5Bwb4oE+h96y4fmfXPD+b
 E2zCJOHlC+xaFs5a4qwGAUPlNs1eknqghiA/bHZ9wmOwoFP+x6OrksG5Gqa+l8sQ7iRd
 UlIY2DOMZg9I4oP3mToCpMF3wnuaWjQIuO++/MEWwglBp45wiTFEakm8TT/l6ecR+3OE
 AoJmHEGQ8XhMj6nMKNUvS8xsauFeEVYa3zJGFHfugx7S87Yf68wq42LnJ0G8baBF19zW
 BCtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VIrvjDDC253+7I8ItkMS3rF4mFMXAntO0qv9ce/v2ss=;
 b=2FnxuDXoJz7K15qwm/VnGpHz8tzEbhN7iwZF4zu3Lt75FJZ2lvCRllyLSvX7L+LTQI
 OvnBK8d1pMHysRxOJn1/JhwnFZM9WqdV2t+8eTKWr5T3uhKxF/A2EzmnmktEsO0lGq7R
 ShEkPcZSO1lvpBQxltWv1OEBpbJqO+Oc/fchYUIHFQQtBKPIJv1fTL9BqeaS/yLKUrxs
 JRxL0SMKFF0V3iUxjsyCn+5b7DjX8jn9rHpxElzQsUB7f4IH5LyUscAFpJTDcYE3CVkE
 yVbBtyW/WzmpmqVoQsddQBdy0fnZzI32etpeW88DlRiKrOlZ+JLV533HfDao3+zC2X6T
 9K1A==
X-Gm-Message-State: AOAM533vOK61SZEqOGhvoGUA36r9bHkrRBS0ygTMpf6CkdCas+OuaJmf
 wo1qJx6MZp6wj1GonhDjr/o=
X-Google-Smtp-Source: ABdhPJx57/Y1ToabDY4iwszQILT22ZlEjX0GXMZ1x7wPjWQTqERZnVyFHWZxA4fjm4VC1CK/hvpHIQ==
X-Received: by 2002:a05:6402:4413:: with SMTP id
 y19mr19904062eda.26.1639657146167; 
 Thu, 16 Dec 2021 04:19:06 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 z8sm2395456edb.5.2021.12.16.04.19.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Dec 2021 04:19:05 -0800 (PST)
Subject: Re: [PATCH v5 4/4] arm64: dts: rockchip: add naneng combo phy nodes
 for rk3568
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org,
 michael.riesch@wolfvision.net, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kishon@ti.com, p.zabel@pengutronix.de,
 cl@rock-chips.com, kever.yang@rock-chips.com
References: <20211215095657.13183-1-yifeng.zhao@rock-chips.com>
 <20211215095657.13183-5-yifeng.zhao@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <c91c1a5a-44cf-f2d5-4d1b-f864912fcc90@gmail.com>
Date: Thu, 16 Dec 2021 13:19:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211215095657.13183-5-yifeng.zhao@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_041909_580532_2AF11F05 
X-CRM114-Status: GOOD (  22.07  )
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

Hi Heiko, Yifeng,

Could you advise whether we should change the DT layout and driver a bit.
Some properties don't really fit to one particular phy node, so move
them to a parent node.

Maybe replace rockchip,sgmii-mac-sel by a node in phy 1 and 2 ??

Also there are two USB3.0 Controllers, one can use as USB3.0 OTG
Controller, another one can use as USB3.0 Host Controller only.
Yet properties are called: rockchip,dis-u3otg0-port,
rockchip,dis-u3otg1-port.
Maybe replace them by a node ??

Unknown capabilities of future (rk3588) Naneng versions (combined  host
and otg ??)

Maybe follow more in line with the phy-rockchip-inno-usb2.c and
phy-rockchip-usb.c drivers.

Could you confirm combo PHY on the RK3566 lacks the QSGMII/SGMII stuff?
(Lack of rk3566 TRM)

With so many differences maybe use separate compatible string and keep
the DT nodes completely apart.
(rockchip,rk3566-naneng-combphy, rockchip,rk3568-naneng-combphy)



Johan

================================

	combphy: combphy {
		compatible = "rockchip,rk3568-naneng-combphy";
========
		rockchip,ext-refclk;
		rockchip,enable-ssc;
		rockchip,pipe-grf = <&pipegrf>;
========
		#address-cells = <2>;
		#size-cells = <2>;
		ranges;
		status = "disabled";

		combphy0: combi-phy@fe820000 {
			reg = <0x0 0xfe820000 0x0 0x100>;
			clocks = <&pmucru CLK_PCIEPHY0_REF>,
				 <&cru PCLK_PIPEPHY0>,
				 <&cru PCLK_PIPE>;
			clock-names = "ref", "apb", "pipe";
			assigned-clocks = <&pmucru CLK_PCIEPHY0_REF>;
			assigned-clock-rates = <100000000>;
			resets = <&cru SRST_PIPEPHY0>;
			rockchip,pipe-phy-grf = <&pipe_phy_grf0>;
			#phy-cells = <1>;
			status = "disabled";

			u3phy0_otg: otg-port {
===
				/* ??? */
				#phy-cells = <0>;
				status = "disabled";
===
			};
		};

		combphy1: combi-phy@fe830000 {
			reg = <0x0 0xfe830000 0x0 0x100>;
			clocks = <&pmucru CLK_PCIEPHY1_REF>,
				 <&cru PCLK_PIPEPHY1>,
				 <&cru PCLK_PIPE>;
			clock-names = "ref", "apb", "pipe";
			assigned-clocks = <&pmucru CLK_PCIEPHY1_REF>;
			assigned-clock-rates = <100000000>;
			resets = <&cru SRST_PIPEPHY1>;
			rockchip,pipe-phy-grf = <&pipe_phy_grf1>;
			#phy-cells = <1>;
			status = "disabled";

			u3phy0_host: host-port {
===
				/* ??? */
				#phy-cells = <0>;
				status = "disabled";
===
			}

			sgmii_port: sgmii-port {

				/* ??? */
				status = "disabled";
			}
		};

		combphy2: combi-phy@fe840000 {
			reg = <0x0 0xfe840000 0x0 0x100>;
			clocks = <&pmucru CLK_PCIEPHY2_REF>,
				 <&cru PCLK_PIPEPHY2>,
				 <&cru PCLK_PIPE>;
			clock-names = "ref", "apb", "pipe";
			assigned-clocks = <&pmucru CLK_PCIEPHY2_REF>;
			assigned-clock-rates = <100000000>;
			resets = <&cru SRST_PIPEPHY2>;
			rockchip,pipe-phy-grf = <&pipe_phy_grf2>;
			#phy-cells = <1>;
			status = "disabled";

			sgmii_port: sgmii-port {

				/* ??? */
				status = "disabled";
			}
		};
	}

==============
Example from phy-rockchip-usb.c:

	for_each_available_child_of_node(dev->of_node, child) {
		err = rockchip_combphy_init(phy_base, child);
		if (err) {
			of_node_put(child);
			return err;
		}
	}

==============
Example from phy-rockchip-inno-usb2.c:

		/* initialize otg/host port separately */
		if (of_node_name_eq(child_np, "host-port")) {
			ret = rockchip_usb3phy_host_port_init(rphy, rport,
							      child_np);
			if (ret)
				goto put_child;
		} else {
			ret = rockchip_usb3phy_otg_port_init(rphy, rport,
							     child_np);
			if (ret)
				goto put_child;
		}

===============
Example from dwmac-rk.c:
	/* Multiple Naneng phy controllers need
	 * to be distinguished.
	 */
	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	if (res) {
		int i = 0;

		while (ops->regs[i]) {
			if (ops->regs[i] == res->start) {
				bsp_priv->id = i;
				break;
			}
			i++;
		}
	}

================

On 12/15/21 10:56 AM, Yifeng Zhao wrote:
> Add the core dt-node for the rk3568's naneng combo phys.
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changes in v5:
> - remove apb reset
> 
> Changes in v4:
> - rename node name
> - remove reset-names
> - move #phy-cells
> - add rockchip,rk3568-pipe-grf
> - add rockchip,rk3568-pipe-phy-grf
> 
> Changes in v3:
> - Move pipe_phy_grf0 to rk3568.dtsi
> 
> Changes in v2:
> - Move phy0 to rk3568.dtsi
> 
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi | 21 +++++++++++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 47 ++++++++++++++++++++++++
>  2 files changed, 68 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index 2fd313a295f8..91a0b798b857 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -8,6 +8,11 @@
>  / {
>  	compatible = "rockchip,rk3568";
>  
> +	pipe_phy_grf0: syscon@fdc70000 {
> +		compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
> +		reg = <0x0 0xfdc70000 0x0 0x1000>;
> +	};
> +
>  	qos_pcie3x1: qos@fe190080 {
>  		compatible = "rockchip,rk3568-qos", "syscon";
>  		reg = <0x0 0xfe190080 0x0 0x20>;
> @@ -71,6 +76,22 @@
>  			queue0 {};
>  		};
>  	};
> +
> +	combphy0: phy@fe820000 {
> +		compatible = "rockchip,rk3568-naneng-combphy";
> +		reg = <0x0 0xfe820000 0x0 0x100>;
> +		clocks = <&pmucru CLK_PCIEPHY0_REF>,
> +			 <&cru PCLK_PIPEPHY0>,
> +			 <&cru PCLK_PIPE>;
> +		clock-names = "ref", "apb", "pipe";
> +		assigned-clocks = <&pmucru CLK_PCIEPHY0_REF>;
> +		assigned-clock-rates = <100000000>;
> +		resets = <&cru SRST_PIPEPHY0>;
> +		rockchip,pipe-grf = <&pipegrf>;
> +		rockchip,pipe-phy-grf = <&pipe_phy_grf0>;
> +		#phy-cells = <1>;
> +		status = "disabled";
> +	};
>  };
>  
>  &cpu0_opp_table {
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index a68033a23975..93f230f799f1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -218,11 +218,26 @@
>  		};
>  	};
>  
> +	pipegrf: syscon@fdc50000 {
> +		compatible = "rockchip,rk3568-pipe-grf", "syscon";
> +		reg = <0x0 0xfdc50000 0x0 0x1000>;
> +	};
> +
>  	grf: syscon@fdc60000 {
>  		compatible = "rockchip,rk3568-grf", "syscon", "simple-mfd";
>  		reg = <0x0 0xfdc60000 0x0 0x10000>;
>  	};
>  
> +	pipe_phy_grf1: syscon@fdc80000 {
> +		compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
> +		reg = <0x0 0xfdc80000 0x0 0x1000>;
> +	};
> +
> +	pipe_phy_grf2: syscon@fdc90000 {
> +		compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
> +		reg = <0x0 0xfdc90000 0x0 0x1000>;
> +	};
> +
>  	pmucru: clock-controller@fdd00000 {
>  		compatible = "rockchip,rk3568-pmucru";
>  		reg = <0x0 0xfdd00000 0x0 0x1000>;
> @@ -1141,6 +1156,38 @@
>  		status = "disabled";
>  	};
>  
> +	combphy1: phy@fe830000 {
> +		compatible = "rockchip,rk3568-naneng-combphy";
> +		reg = <0x0 0xfe830000 0x0 0x100>;
> +		clocks = <&pmucru CLK_PCIEPHY1_REF>,
> +			 <&cru PCLK_PIPEPHY1>,
> +			 <&cru PCLK_PIPE>;
> +		clock-names = "ref", "apb", "pipe";
> +		assigned-clocks = <&pmucru CLK_PCIEPHY1_REF>;
> +		assigned-clock-rates = <100000000>;
> +		resets = <&cru SRST_PIPEPHY1>;
> +		rockchip,pipe-grf = <&pipegrf>;
> +		rockchip,pipe-phy-grf = <&pipe_phy_grf1>;
> +		#phy-cells = <1>;
> +		status = "disabled";
> +	};
> +
> +	combphy2: phy@fe840000 {
> +		compatible = "rockchip,rk3568-naneng-combphy";
> +		reg = <0x0 0xfe840000 0x0 0x100>;
> +		clocks = <&pmucru CLK_PCIEPHY2_REF>,
> +			 <&cru PCLK_PIPEPHY2>,
> +			 <&cru PCLK_PIPE>;
> +		clock-names = "ref", "apb", "pipe";
> +		assigned-clocks = <&pmucru CLK_PCIEPHY2_REF>;
> +		assigned-clock-rates = <100000000>;
> +		resets = <&cru SRST_PIPEPHY2>;
> +		rockchip,pipe-grf = <&pipegrf>;
> +		rockchip,pipe-phy-grf = <&pipe_phy_grf2>;
> +		#phy-cells = <1>;
> +		status = "disabled";
> +	};
> +
>  	pinctrl: pinctrl {
>  		compatible = "rockchip,rk3568-pinctrl";
>  		rockchip,grf = <&grf>;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
