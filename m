Return-Path: <SRS0=8D6r=LS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A992C48BDF
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 12:51:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 35AF2613EC
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 12:51:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 35AF2613EC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=56gXkAmyFGoCQ/L3n6NpCO+pJMIrEprIWDWAVb6c9mg=; b=UJgl5Ov7ovVTOvDoZAxyKeQhks
	4dGefrVtOpNdvgGHpHS8zTuDo6yS8JI7HSG9HSn715mQ4S3RyzztZljlC4e78wzCO63gLyj8MyCTH
	wMPeACr6sjZjOsEhmj64bVwEYbRrxgHPos23M85Nz7brfXsY7lPZTVKEgLxZyHXsyiO2237Az+vds
	Xd3k66gPDYxpDpM84lAgB8jcHffFHrEdhnkOcFAyWCqRK7LWmRhaR8Mh1Yvp81jS7wg0Bp8LOiYpa
	BDVS7Z693iEnwRCoWHQ6euCKe7ORRB+LRzvVbdkwlX/BsJ8Wk4CD7+9Jao7dF4aNvpVhCmgvR0Aqz
	JaHOJDmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwOpI-00EhAr-UP; Thu, 24 Jun 2021 12:51:24 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwOpG-00Eh9n-2Z; Thu, 24 Jun 2021 12:51:23 +0000
Received: by mail-ed1-x52b.google.com with SMTP id h17so8331191edw.11;
 Thu, 24 Jun 2021 05:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=cXgs/H2Ss7ydk6tGIYig2RRn6vmV4/Hxg3x36YlAm54=;
 b=ZxcniuJy7lot2VHpSyOZzV7y6XNQvaSRuvfU28UXfIHieKG/b/wZ2lZCj/ose4T7Xp
 SeeKSqMzzGi8OyuGGAmCFUpIMftuIZzShLUpVU4mmqm77JrE/JdRWuTGdIbDKSLCcGhv
 YJF6n0CiCwNPBJn1FJ7V8OGcfzvD/MutGoyh8VJMiO0NmcZnIECcfbgiF6qsP1Ehvyhp
 9YOG76JyIkwQD/Vk+cff5sNvmrTwSf5B8xvJyUrHutduom93eE3+79iqXd+e1AnaFeh0
 TP3X/R2gU9mDsORzheQcg4vRyOtSnKUmI1VgpRRpr1ZEbl5Eay4Z3myvMJaU0+AIJZBc
 TmsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cXgs/H2Ss7ydk6tGIYig2RRn6vmV4/Hxg3x36YlAm54=;
 b=hRNYLmEu03DijJNrVhPNUoB/A8QqK9Tt2iEMqhic+KKFYpnireZZfs5wGSD2cnEkh4
 0zpxioX6y+cVFZCPtDRhlsf4jChucpe2xW474BntRCaqmH1cZRNhz6u8QK5UGo04szJF
 yR7lY66fGGsID3Nd6xQ4GDtxcO9cwnRk7e9/TQhPDKakvMNOdzVMBkyA4sdSL8MHdGH7
 byY2ajMrgqoIKPyqv6D1GV/kgiTzOvMrbNhxlxktkXpcKtcvZZOzHjoIi18WPnwkJnQV
 qvLi7NS+G4G7glFaIX13llz5A+dSSDMhBtS+cdJj7B2Xg4aqsP6ze7sO87ePIxSdm8f+
 CI0w==
X-Gm-Message-State: AOAM531TCdBuzNodDxUEAiju6nS7J4x7RWEAK7f01Xt9vcN47nTfSnNk
 dI9MzHT/wvHoxsbTQIQ0JuA=
X-Google-Smtp-Source: ABdhPJykhpQj5lvOAPdcQ7OJ1/EK64x9MCu3YbzDshBYruajktaU7PHjpIlvztdkaVbzv6DCSp4XlQ==
X-Received: by 2002:a05:6402:4242:: with SMTP id
 g2mr6921829edb.350.1624539078291; 
 Thu, 24 Jun 2021 05:51:18 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 n13sm1167281ejk.97.2021.06.24.05.51.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Jun 2021 05:51:17 -0700 (PDT)
Subject: Re: [PATCH v1 3/3] arm64: dts: rockchip: add pmu and qos nodes for
 rk3568
To: cl@rock-chips.com, heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, lee.jones@linaro.org
References: <20210624114719.1685-1-cl@rock-chips.com>
 <20210624114719.1685-4-cl@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <f2a2a079-10e8-e8a5-87ea-245e315429f2@gmail.com>
Date: Thu, 24 Jun 2021 14:51:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210624114719.1685-4-cl@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_055122_186554_82A03261 
X-CRM114-Status: GOOD (  15.89  )
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

Hi Liang,

The nodes without 'reg' are sort alphabetically.
Nodes with 'reg' are sort on reg number.

pmu:     power-management@fdd90000 {}
sdmmc2:  mmc             @fe000000 {}
qos_gpu: qos             @fe128000 {}
[..]
sdmmc0:  mmc             @fe2b0000 {}

Johan

On 6/24/21 1:47 PM, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> Add the power-management and QoS nodes to the core rk3568 dtsi.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi | 229 +++++++++++++++++++++++
>  1 file changed, 229 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index d225e6a45d5c..2737f26775ff 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -8,6 +8,7 @@
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/phy/phy.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/power/rk3568-power.h>
>  #include <dt-bindings/soc/rockchip,boot-mode.h>
>  #include <dt-bindings/thermal/thermal.h>
>  
> @@ -257,6 +258,234 @@
>  		status = "disabled";
>  	};
>  
> +	pmu: power-management@fdd90000 {
> +		compatible = "rockchip,rk3568-pmu", "syscon", "simple-mfd";
> +		reg = <0x0 0xfdd90000 0x0 0x1000>;
> +
> +		power: power-controller {
> +			compatible = "rockchip,rk3568-power-controller";
> +			#power-domain-cells = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			/* These power domains are grouped by VD_GPU */
> +			power-domain@RK3568_PD_GPU {
> +				reg = <RK3568_PD_GPU>;
> +				clocks = <&cru ACLK_GPU_PRE>,
> +					 <&cru PCLK_GPU_PRE>;
> +				pm_qos = <&qos_gpu>;
> +				#power-domain-cells = <0>;
> +			};
> +
> +			/* These power domains are grouped by VD_LOGIC */
> +			power-domain@RK3568_PD_VI {
> +				reg = <RK3568_PD_VI>;
> +				clocks = <&cru HCLK_VI>,
> +					 <&cru PCLK_VI>;
> +				pm_qos = <&qos_isp>,
> +					 <&qos_vicap0>,
> +					 <&qos_vicap1>;
> +				#power-domain-cells = <0>;
> +			};
> +
> +			power-domain@RK3568_PD_VO {
> +				reg = <RK3568_PD_VO>;
> +				clocks = <&cru HCLK_VO>,
> +					 <&cru PCLK_VO>,
> +					 <&cru ACLK_VOP_PRE>;
> +				pm_qos = <&qos_hdcp>,
> +					 <&qos_vop_m0>,
> +					 <&qos_vop_m1>;
> +				#power-domain-cells = <0>;
> +			};
> +
> +			power-domain@RK3568_PD_RGA {
> +				reg = <RK3568_PD_RGA>;
> +				clocks = <&cru HCLK_RGA_PRE>,
> +					 <&cru PCLK_RGA_PRE>;
> +				pm_qos = <&qos_ebc>,
> +					 <&qos_iep>,
> +					 <&qos_jpeg_dec>,
> +					 <&qos_jpeg_enc>,
> +					 <&qos_rga_rd>,
> +					 <&qos_rga_wr>;
> +				#power-domain-cells = <0>;
> +			};
> +
> +			power-domain@RK3568_PD_VPU {
> +				reg = <RK3568_PD_VPU>;
> +				clocks = <&cru HCLK_VPU_PRE>;
> +				pm_qos = <&qos_vpu>;
> +				#power-domain-cells = <0>;
> +			};
> +
> +			power-domain@RK3568_PD_RKVDEC {
> +				clocks = <&cru HCLK_RKVDEC_PRE>;
> +				reg = <RK3568_PD_RKVDEC>;
> +				pm_qos = <&qos_rkvdec>;
> +				#power-domain-cells = <0>;
> +			};
> +
> +			power-domain@RK3568_PD_RKVENC {
> +				reg = <RK3568_PD_RKVENC>;
> +				clocks = <&cru HCLK_RKVENC_PRE>;
> +				pm_qos = <&qos_rkvenc_rd_m0>,
> +					 <&qos_rkvenc_rd_m1>,
> +					 <&qos_rkvenc_wr_m0>;
> +				#power-domain-cells = <0>;
> +			};
> +
> +			power-domain@RK3568_PD_PIPE {
> +				reg = <RK3568_PD_PIPE>;
> +				clocks = <&cru PCLK_PIPE>;
> +				pm_qos = <&qos_pcie2x1>,
> +					 <&qos_pcie3x1>,
> +					 <&qos_pcie3x2>,
> +					 <&qos_sata0>,
> +					 <&qos_sata1>,
> +					 <&qos_sata2>,
> +					 <&qos_usb3_0>,
> +					 <&qos_usb3_1>;
> +				#power-domain-cells = <0>;
> +			};
> +		};
> +	};
> +
> +	qos_gpu: qos@fe128000 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe128000 0x0 0x20>;
> +	};
> +
> +	qos_rkvenc_rd_m0: qos@fe138080 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe138080 0x0 0x20>;
> +	};
> +
> +	qos_rkvenc_rd_m1: qos@fe138100 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe138100 0x0 0x20>;
> +	};
> +
> +	qos_rkvenc_wr_m0: qos@fe138180 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe138180 0x0 0x20>;
> +	};
> +
> +	qos_isp: qos@fe148000 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe148000 0x0 0x20>;
> +	};
> +
> +	qos_vicap0: qos@fe148080 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe148080 0x0 0x20>;
> +	};
> +
> +	qos_vicap1: qos@fe148100 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe148100 0x0 0x20>;
> +	};
> +
> +	qos_vpu: qos@fe150000 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe150000 0x0 0x20>;
> +	};
> +
> +	qos_ebc: qos@fe158000 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe158000 0x0 0x20>;
> +	};
> +
> +	qos_iep: qos@fe158100 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe158100 0x0 0x20>;
> +	};
> +
> +	qos_jpeg_dec: qos@fe158180 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe158180 0x0 0x20>;
> +	};
> +
> +	qos_jpeg_enc: qos@fe158200 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe158200 0x0 0x20>;
> +	};
> +
> +	qos_rga_rd: qos@fe158280 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe158280 0x0 0x20>;
> +	};
> +
> +	qos_rga_wr: qos@fe158300 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe158300 0x0 0x20>;
> +	};
> +
> +	qos_npu: qos@fe180000 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe180000 0x0 0x20>;
> +	};
> +
> +	qos_pcie2x1: qos@fe190000 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe190000 0x0 0x20>;
> +	};
> +
> +	qos_pcie3x1: qos@fe190080 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe190080 0x0 0x20>;
> +	};
> +
> +	qos_pcie3x2: qos@fe190100 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe190100 0x0 0x20>;
> +	};
> +
> +	qos_sata0: qos@fe190200 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe190200 0x0 0x20>;
> +	};
> +
> +	qos_sata1: qos@fe190280 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe190280 0x0 0x20>;
> +	};
> +
> +	qos_sata2: qos@fe190300 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe190300 0x0 0x20>;
> +	};
> +
> +	qos_usb3_0: qos@fe190380 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe190380 0x0 0x20>;
> +	};
> +
> +	qos_usb3_1: qos@fe190400 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe190400 0x0 0x20>;
> +	};
> +
> +	qos_rkvdec: qos@fe198000 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe198000 0x0 0x20>;
> +	};
> +
> +	qos_hdcp: qos@fe1a8000 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe1a8000 0x0 0x20>;
> +	};
> +
> +	qos_vop_m0: qos@fe1a8080 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe1a8080 0x0 0x20>;
> +	};
> +
> +	qos_vop_m1: qos@fe1a8100 {
> +		compatible = "rockchip,rk3568-qos", "syscon";
> +		reg = <0x0 0xfe1a8100 0x0 0x20>;
> +	};
> +
>  	sdmmc2: mmc@fe000000 {
>  		compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
>  		reg = <0x0 0xfe000000 0x0 0x4000>;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
