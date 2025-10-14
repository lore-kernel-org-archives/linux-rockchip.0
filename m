Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72B85CCD184
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Oct 2025 21:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFUEB4A1zNOhlvP/RO6dR7I2Sa0aaN0GF90L7cdw6gk=; b=mQxatiFY+NVvFM
	PoTOCJFs9jqNWExRunsksr2ulQoC5pTv467K6lLgSjjkZSkZ6xog35YSDuD2qFaH2ozHGnNAry4ws
	nxAz9IOVSwdytPDjRP2hgDPYJPjgXBRKdPHfMOH49iHKtUhlPowo3fJ3mZOIFAnS68PceQvDd56sr
	TOJcTsafQcddeEKfuJB3OWbdqTd3Q31srqUYGRu1LFKmLQEDJPwkINiSj7CBGbfe1l/3B2O/fPcex
	O8Fv5oAcAPv951YtADtVMYHK4mVN4YSx/qblH0/MLNVSdSf4+KZmgxl1AeV3cGRbOoow3ZP+WlH0g
	mCzj9Wxy/zdQpo6w0teA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8mrq-0000000HTfF-223n;
	Tue, 14 Oct 2025 21:47:38 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8mrn-0000000HTdn-2Lx0
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Oct 2025 21:47:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id EBA46409EE;
	Tue, 14 Oct 2025 23:47:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1760478450; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=dydcnTVUuAbLmXZJFV5DtuO7kXIF77fhzGOLPlAWyaI=;
	b=Zq3E+YZPHxSvcaUf0pyIY0MmoHAwXtzp+UYrMz/b0n04QRPnG6zO3E0NK82UYfjichERrz
	iIRKOvG63PF8RnP8LaGhOuuEIz/dtjexVU+2aHF2z8sPMtUvC+4rNa/gJW0AWV/jBjqsDH
	m1wU35zgZfmWn9FPHJDQ7aiJ8dgYd/PnI8qUsB4H7+fHDDWVbDAIR7oAZNUxkEZrLrI4+d
	7RUaXh9L2LZD+HJbMgVG6zcnhGFelmF8JZFQXxgAGjlfKlS3ESDKmje+tICp0DUZDM0mhD
	5wmbpknpThcyq/GwtRQuNFHV5rLGt/243H2sBhMX20xN8yhesBU1/iCz88iBnQ==
From: Dragan Simic <dsimic@manjaro.org>
To: sebastian.reichel@collabora.com
Cc: adrian.hunter@intel.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	kernel@collabora.com,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	ulf.hansson@linaro.org,
	yifeng.zhao@rock-chips.com
Subject: Re: [PATCH 1/2] mmc: sdhci-of-dwcmshc: Add command queue support for rockchip SOCs
Date: Tue, 14 Oct 2025 23:47:00 +0200
Message-Id: <20251014214700.4182858-1-dsimic@manjaro.org>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20251014-rockchip-emmc-cqe-support-v1-1-918f03de0cb1@collabora.com>
References: <20251014-rockchip-emmc-cqe-support-v1-1-918f03de0cb1@collabora.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_144735_849671_421C516B 
X-CRM114-Status: GOOD (  10.51  )
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

Hello Sebastian,

> This adds CQE support for the Rockchip RK3588 and RK3576 platform. To
> be functional, the eMMC device-tree node must have a 'supports-cqe;'
> flag property.

> As the RK3576 devicet-tree has been upstreamed with the 'supports-cqe;'
> property set by default, the kernel already tried to use CQE, which
> results in system hang during suspend. This fixes the issue.

Thanks for the patch, it's great to see this implemented!  Please,
see a small nitpick below.

> +static void rk35xx_sdhci_cqe_enable(struct mmc_host *mmc)
> +{
[snip]
> +}
> +
> +static void rk35xx_sdhci_cqe_disabled(struct mmc_host *mmc, bool recovery)
> +{
[snip]
> +}

The function rk35xx_sdhci_cqe_disabled() should obviously be called
rk35xx_sdhci_cqe_disable() instead, i.e. it should use the standard
imperative mood...

> +static const struct cqhci_host_ops rk35xx_cqhci_ops = {
> +	.enable		= rk35xx_sdhci_cqe_enable,
> +	.disable	= rk35xx_sdhci_cqe_disabled,
> +	.dumpregs	= dwcmshc_cqhci_dumpregs,
> +	.set_tran_desc	= dwcmshc_set_tran_desc,
> +};

... which corresponds with the struct member names.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
