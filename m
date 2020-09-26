Return-Path: <SRS0=FJi+=DD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D7A8C2D0A8
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2020 13:00:28 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BC825221EA
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2020 13:00:27 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="e3/gby2B";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="a8tHbMaq"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BC825221EA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TIuQYWYFO9glMtr73Ih1EBifbST1UF8UQkygsiZP6WA=; b=e3/gby2BIkdI+WSMpdGGnzDTa
	ymGvtAwmk/di3minCYf1Ombgky3Y30MvdYuGa1VNzc4kOvVVGNKXOhDeRtawAq/lN6s1KZS21Hg8v
	Tp/vRQg5p4QnlBXNpkfQK75nM1qUw7HRrcnuUKBzyXEfAmtpVhFcASCHXM0pfgcvP51Px7m6FT7Pw
	2Mx8iLvsaDn+w3bxJdHjsC+NupYuwqW4s7YXOpUkvW5S19TUYt68fRSQYFD9qgTzpBaso0pTUyQue
	43oZHYfybspNpTUyiRa9hWaaAqA7PPmimbSKGJg30ZBHevNwklx/0MUOS+5Z2YtYmE5ydermp3vyp
	yWwzhvOoQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kM9oF-0008MC-C4; Sat, 26 Sep 2020 13:00:15 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kM9oB-0008Ke-OH
 for linux-rockchip@lists.infradead.org; Sat, 26 Sep 2020 13:00:12 +0000
Received: by mail-wr1-x441.google.com with SMTP id w5so6845990wrp.8
 for <linux-rockchip@lists.infradead.org>; Sat, 26 Sep 2020 06:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=4qdU5lafYi+hcVoRAvstZheKhqCYZ5Ckd1gUvUE1rzc=;
 b=a8tHbMaqB+v22Lv/kLM3g3AksGk0fdsVfKBnfPt4UWgrcsqPBoVo4ZT1FsDE/lmAi9
 3jlQWknciPpbAcVrBeSwTGb1NbaKP3b/uqTYcjGSC7r1XEc85wfqNnuoTZUSOK4mer2b
 JzaniKOXgUp4A1mHhPumcaGqDJqTgyG77h7l0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4qdU5lafYi+hcVoRAvstZheKhqCYZ5Ckd1gUvUE1rzc=;
 b=b8maU9aNm2ZnvzQiN9KJMWS4S1bGEN2i7vKi/w7q+/IPOeVdY3r0ciNNxgcdk3S81A
 H8LaibKOzZJj7Ivciyq/UsN+8CrRzNcHUg2ZDQ3v+Svb5+S5v2z17G/ROtSWw3QEyRAH
 iaL5BLiVkGQHZxyPNCaSiVeUvF1LZforUFBjs93xIxCS6kieBDXLIls3U4amii1yFBrd
 bImN3csKWPydnYS8ws1DH/U9oUDn8Y2TWBO8x8ozMj4iTTGfWRm20VGCRzWLij5xIdkZ
 XD/tppILCMBu0RHcE/TofrPrhi/6Nr6pOPRJ6s59LIReVmNgw7Y2XsskYaLd5orNMDK1
 88YA==
X-Gm-Message-State: AOAM532UdDlq7hIMLoqFdrv+SOW/xNUoCtBF1UcNv0V4/oyWcBcearNu
 tS/80AJ7CJYhH6Qujl3ihBnB2g==
X-Google-Smtp-Source: ABdhPJwnQFrsiZDsceVMa/OZGRYeitM4Z0qYBnUmfRNKn4bmhYo6FC4ZmxJTPdc3V0yS8KdYKve8gg==
X-Received: by 2002:adf:f802:: with SMTP id s2mr9115823wrp.328.1601125207121; 
 Sat, 26 Sep 2020 06:00:07 -0700 (PDT)
Received: from chromium.org (216.131.76.34.bc.googleusercontent.com.
 [34.76.131.216])
 by smtp.gmail.com with ESMTPSA id e1sm6740101wrp.49.2020.09.26.06.00.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Sep 2020 06:00:06 -0700 (PDT)
Date: Sat, 26 Sep 2020 13:00:05 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v5 8/9] arm64: dts: rockchip: add isp0 node for rk3399
Message-ID: <20200926130005.GC3781977@chromium.org>
References: <20200722155533.252844-1-helen.koike@collabora.com>
 <20200722155533.252844-9-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200722155533.252844-9-helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200926_090011_797651_7CE4D051 
X-CRM114-Status: GOOD (  19.20  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 eddie.cai.linux@gmail.com, dafna.hirschfeld@collabora.com, heiko@sntech.de,
 zhengsq@rock-chips.com, linux-kernel@vger.kernel.org,
 karthik.poduval@gmail.com, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, hverkuil-cisco@xs4all.nl, robin.murphy@arm.com,
 mark.rutland@arm.com, kernel@collabora.com, ezequiel@collabora.com,
 jbx6244@gmail.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Helen,

On Wed, Jul 22, 2020 at 12:55:32PM -0300, Helen Koike wrote:
> From: Shunqian Zheng <zhengsq@rock-chips.com>
> 
> RK3399 has two ISPs, but only isp0 was tested.
> Add isp0 node in rk3399 dtsi
> 
> Verified with:
> make ARCH=arm64 dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> 
> Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
> Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> 
> ---
> 
> V4:
> - update clock names
> 
> V3:
> - clean up clocks
> 
> V2:
> - re-order power-domains property
> 
> V1:
> This patch was originally part of this patchset:
> 
>     https://patchwork.kernel.org/patch/10267431/
> 
> The only difference is:
> - add phy properties
> - add ports
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 25 ++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index dba9641947a3a..ed8ba75dbbce8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1721,6 +1721,31 @@ vopb_mmu: iommu@ff903f00 {
>  		status = "disabled";
>  	};
>  
> +	isp0: isp0@ff910000 {
> +		compatible = "rockchip,rk3399-cif-isp";
> +		reg = <0x0 0xff910000 0x0 0x4000>;
> +		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks = <&cru SCLK_ISP0>,
> +			 <&cru ACLK_ISP0_WRAPPER>,
> +			 <&cru HCLK_ISP0_WRAPPER>;
> +		clock-names = "isp", "aclk", "hclk";
> +		iommus = <&isp0_mmu>;
> +		phys = <&mipi_dphy_rx0>;
> +		phy-names = "dphy";
> +		power-domains = <&power RK3399_PD_ISP0>;

Should this have status = "disabled" too? The mipi_dphy_rx0 node is
disabled by default too, so in the default configuration the driver
would always fail to probe.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
