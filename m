Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9BFBC47422
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 19:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SI2yc5QeiJwICkuU+3iECe2JCsuB86YHABj8hq9gLzI=; b=WSfGwX68a/fKLS
	UCLNAtyDsTC1Mmc4xj2Cr4TWuIkCN1PtguqnjW4l9ZVgv3Ygz5X+Cr/I7CR2bpR+RDkvQJUkhWz6C
	wtdrXnDPbzCSMIMq6ZMBFuKgqFIeUUY60Lx7Uk+4z2X5Z44c40LYFHYpybbgW4l+/+Uh1+fwjYTpT
	qPZuQ2NMpLTIWyHXBsoIuHC/t1NIQ0AYxjJo7JK42OPKe3e4a6QYUHstknZ2Z7q9OhJXdNIe1Kt0t
	R6P8BdKdC6GTkgLQR0rLfHL06DgfidoYiFWeTi6Xe/qlfXLj+l9imEQHmAwNPITrEaYf8+0eD5saD
	lokUgeO3GpuBUyf7u19A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTS00-00000005Fln-24yt;
	Fri, 26 Jan 2024 19:36:24 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTRzx-00000005Fl8-2Blr
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jan 2024 19:36:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1706297777;
	bh=jT1yiOFNr0zy2VndOvm5oXGEcUf+bKXQciXRbfuUul8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CvurSKtn9FRcfO+oCvUDW4fFxhqqwN0IQZvEu0gFyFiYO9FDo2SlHmIekg0DIuRfu
	 xlhdU/wB9H7HTcLNiLVfavZsK2xB/D47a/ucc87tzjnvwCPDjyyoq71JfyrONj6vMJ
	 M448VNrd92Gf5Y/VCrpVtvcHwqaQysjJKBnM6QQZqkwRB7/V5k6uk/NlSrkcXcRtOy
	 fCF69UAcxCHId1lM6WMgMpziAcvisA/qzrT3uPZytFlsHrU4BmIH5y2+RFWFQnfzaA
	 ZTYluhaXE5OWmPfToGLY1L9ZYJls/opbfenac+CqSX8uXZNPGNOJ9RZ1IR3lm2hNrA
	 sH5Rxc7oX79cw==
Received: from [100.109.49.129] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 4F8383780022;
	Fri, 26 Jan 2024 19:36:16 +0000 (UTC)
Message-ID: <8b4214a5-6ba7-402d-b2f6-f2424783d455@collabora.com>
Date: Fri, 26 Jan 2024 22:36:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 7/7] clk: rockchip: implement proper GATE_LINK support
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, linux-clk@vger.kernel.org
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, huangtao@rock-chips.com,
 andy.yan@rock-chips.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
References: <20240126182919.48402-1-sebastian.reichel@collabora.com>
 <20240126182919.48402-8-sebastian.reichel@collabora.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20240126182919.48402-8-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_113621_730733_104763FD 
X-CRM114-Status: GOOD (  13.23  )
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

On 1/26/24 21:18, Sebastian Reichel wrote:
> Recent Rockchip SoCs have a new hardware block called Native Interface
> Unit (NIU), which gates clocks to devices behind them. These effectively
> need two parent clocks.
> 
> GATE_LINK type clocks handle the second parent via 'linkedclk' by using
> runtime PM clocks. To make that possible a new platform device is created
> for every clock handled in this way.
> 
> Note, that before this patch clk_rk3588_probe() has never been called,
> because CLK_OF_DECLARE marks the DT node as processed. This patch replaces
> that with CLK_OF_DECLARE_DRIVER and thus the probe function is used now.
> This is necessary to have 'struct device' available.
> 
> Also instead of builtin_platform_driver_probe, the driver has been
> switched to use core_initcall, since it should be fully probed before
> the Rockchip PM domain driver (and that is using postcore_initcall).

Why clk driver needs to be fully probed before PD? The PD driver
shouldn't probe until all clk providers that it uses are registered, and
then both clk and PD should be registered at the default level.

-- 
Best regards,
Dmitry


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
