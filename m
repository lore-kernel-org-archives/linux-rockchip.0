Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CDE1C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Nov 2021 20:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zCuzuW604UtAjIfnDjO6DU4FVuINhqQ6Ji//5aPscwI=; b=THIWTkEH4SdWcJ5ZEWCOEolcwS
	vYIHIyBFrRV4fDNlzSWwCVhHIz1M96NBik+vSUilZUGk597uJiKN/5T5gmAYTdBOawz3IoGPD8xnm
	0KNVzUmvQBGMNpdCbf7yJS6SaN4zp8wR4DFZMS62blrFykvIAoXez557O75AzrwWLxMqXGf9NHwYY
	PTOeqtFbiEAGdg8rMtX6SC1zlWd8lfG84zJIDp0cWP58lstMxnorzqr6AJkurKoYmHESxQ28iSECC
	BjYkn8PNIjlpdtRrNKCODFcS6ZZ4mJBHLjid/+kImWahYBdO9QgErRR8wfSPiGmdwMrt2Ljsf+5lg
	HP+k9yNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqLJG-008aag-95; Thu, 25 Nov 2021 20:25:34 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqLJD-008aaI-DW; Thu, 25 Nov 2021 20:25:32 +0000
Received: by mail-ed1-x52a.google.com with SMTP id t5so30307445edd.0;
 Thu, 25 Nov 2021 12:25:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ZSnik8NcU0u5qOzWlj5b8WbdugM5rGFbMq5L1b0uNC8=;
 b=AOn0VOfhkTxdu+vzMP5xsC8cO5h0gfpvRTrqsMfXL07wWDZqUSCLO+dUyYP3Qf5c98
 c7tmPwtcURNxUIr/jViDUM2yFg+qOm1wL0C3T9BXZb9HHF0ohFDt3fB/p94Rr6I2bSrZ
 /ksDXErtHUDnGbjkRxAM2URy/grJx8SFW2aBwPhlCd3B28gvfRrjUUtbayo/h8ZShnfc
 BG89tneo1zJ8DXo6D5uZwRtI1CUT+iQsAInYEDa6DaLyHKC+jBYTe6FiawZLCegxxJM2
 cGRsjzH4qGvOsDBjeuAfUDtRAd4mRyqNq64dq1aESH+W3gcsSP6+p1JxjeRST5P++kJU
 8pDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZSnik8NcU0u5qOzWlj5b8WbdugM5rGFbMq5L1b0uNC8=;
 b=wbnRBWEfyBPFP56/tV70Lmpzb7VwAxbdfoNOk20dkM4lqjzTYI5NlDgNY+7C9rup0u
 nuXajIqnIFt/u1D+3L5WurdPuI3JZmWwbiBBImVTDKMQnoJraV8g9deoMExryRdsMuOs
 OO4cm002RB4J/JMxAztuj5cYYMMI01rWSXJFWcjA1wpthsziPJJ2TpgugLa+Q2QomikK
 JVCJKY9vllCZ0yL5coyf4PqmCC3UBtUo54iUV8p44/ijWMHMMCNtgJh38KypST/H+iU6
 afV7sdoDLl9Y7TXjdXQJnSrGrJMeRXXCmuVZ/IvyEWCLs/fFMakymYoxf/iSJ+IGPHCj
 NPcQ==
X-Gm-Message-State: AOAM5310d2AbtnSbYzyDknmX3o5Km+p4Mo24BhIMyI0ZF3p+y+JFcMsG
 WNf6n8j7AsyGaPhrMfHE2Lo=
X-Google-Smtp-Source: ABdhPJxMdvb+TwhoTKjll0Yi5zz8ljEg/JvVYM+96BP+jCG/SovZT9Nc6qI3x3jwhb8IeMfmO3pRuQ==
X-Received: by 2002:a17:906:fb17:: with SMTP id
 lz23mr34142477ejb.149.1637871929572; 
 Thu, 25 Nov 2021 12:25:29 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 y22sm2678678edi.8.2021.11.25.12.25.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 25 Nov 2021 12:25:29 -0800 (PST)
Subject: Re: [PATCH 08/12] arm64: dts: rockchip: rk356x: Add VOP2 nodes
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <20211117143347.314294-9-s.hauer@pengutronix.de>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <8451aeb1-03c9-6c90-c95e-c4a76e2159b8@gmail.com>
Date: Thu, 25 Nov 2021 21:25:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211117143347.314294-9-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_122531_519608_7752CA01 
X-CRM114-Status: GOOD (  21.44  )
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

Hi Sascha,


On 11/17/21 3:33 PM, Sascha Hauer wrote:
> The VOP2 is the display output controller on the RK3568. Add the node
> for it to the dtsi file along with the required display-subsystem node
> and the iommu node.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 52 ++++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 46d9552f60284..6ebf7c14e096a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -447,6 +447,58 @@ gmac1_mtl_tx_setup: tx-queues-config {
>  		};
>  	};
>  

> +	display_subsystem: display-subsystem {
> +		compatible = "rockchip,display-subsystem";
> +		ports = <&vop_out>;
> +	};

Some DT sort rules:

For nodes:
Sort things without reg alphabetical first,
then sort the rest by reg address.

> +
> +	vop: vop@fe040000 {

> +		compatible = "rockchip,rk3568-vop";

From rockchip-vop2.yaml:
+properties:
+  compatible:
+    enum:

+      - rockchip,rk3568-vop
+      - rockchip,rk3566-vop

Maybe sort yaml compatibles in alphabetical order.

rockchip,rk3566-vop is not used in the dtsi I think.

Comment by Andy Yan:
> 
> But take care that the vop on rk3566 has a special limitation: there are 
> three
> 
> windows(Cluster1/Esmart1/Smart1) that have a mirror lock, that means they
> 
> can't be programed framebuffer address independently , they can only
> 
> share framebuffer address with Cluster0/Esmart0/Smart0.

Question:
Given Andy's comment could someone explain weather the vop and hdmi
nodes should be in rk3566.dtsi and rk3568.dtsi with an extra
rockchip,rk3566-dw-hdmi compatible?

> +		reg = <0x0 0xfe040000 0x0 0x3000>, <0x0 0xfe044000 0x0 0x1000>;
> +		reg-names = "regs", "gamma_lut";

> +		rockchip,grf = <&grf>;
Heiko's sort rules:

compatible
reg
interrupts
[alphabetical]
status [if needed]

> +		interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>, <&cru DCLK_VOP0>, <&cru DCLK_VOP1>, <&cru DCLK_VOP2>;
> +		clock-names = "aclk_vop", "hclk_vop", "dclk_vp0", "dclk_vp1", "dclk_vp2";
> +		iommus = <&vop_mmu>;
> +		power-domains = <&power RK3568_PD_VO>;
> +		status = "disabled";
> +
> +		vop_out: ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			vp0: port@0 {

> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <0>;

My incomplete list:

Inside nodes:
If exists on top: compatible, reg and interrupts.
In alphabetical order the required properties.
Then in alphabetical order the other properties.
And as last things that start with '#' in alphabetical order.
Add status below all other properties for soc internal components with
any board-specifics.

> +			};
> +
> +			vp1: port@1 {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <1>;
> +			};
> +
> +			vp2: port@2 {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <2>;
> +			};
> +		};
> +	};
> +
> +	vop_mmu: iommu@fe043e00 {
> +		compatible = "rockchip,rk3568-iommu";
> +		reg = <0x0 0xfe043e00 0x0 0x100>, <0x0 0xfe043f00 0x0 0x100>;
> +		interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;

> +		interrupt-names = "vop_mmu";

ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml

arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dt.yaml: iommu@fe043e00:
'interrupt-names' does not match any of the regexes: 'pinctrl-[0-9]+'
	From schema: /Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml

> +		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
> +		clock-names = "aclk", "iface";
> +		#iommu-cells = <0>;
> +		status = "disabled";
> +	};
> +
>  	qos_gpu: qos@fe128000 {
>  		compatible = "rockchip,rk3568-qos", "syscon";
>  		reg = <0x0 0xfe128000 0x0 0x20>;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
