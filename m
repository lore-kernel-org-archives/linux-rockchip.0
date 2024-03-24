Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11EF9CD11DD
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Mar 2024 22:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aOHiYFZnvJ2YUkT8RCIEONa8idP6TGtaoVQcVHgl/9A=; b=v96Xp5oEYpu3Zk
	NrHZEy+O7T8udmLvOr5a5HjMCNX6LiHwemVuyYAkmXmu+fXWd9fJWgAzkCz7j7EGZ6BnDTsBj0faz
	dNIyBEhjkn1ZihKVrWmlbKujlLI5RS7iO2guxAd2qR1sgGk1KWPD6k2fYtpPu8eBwyPcuQ1nwgwgX
	CJxcXd3mLR4ETMkTjkGOF1yhRNPIwwIPxHL07icD7DtJ7gwuKjuiHxoehx1jafAniAkIn9L6uvqWV
	cqIfZ8sBkAQtTJW/B3VANsEAVx24PGn28uUxeK+0veHrXi2pQsYf8LdzsGs5CZVgs4L24Tup7RCvK
	4+ou4rYUUZr3/QvVI6mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roWV6-0000000DdEV-40mQ;
	Sun, 24 Mar 2024 22:39:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roWV4-0000000DdBB-1U3R;
	Sun, 24 Mar 2024 22:39:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=wrjn6GnIBGNgflJsIGoneCMmBCncRDqkZF4ct1Z/6HQ=; b=XiJcV/1p/6+8+na/d05AJpvn2H
	wxO86kFPsQiVgoDDUgAtcPdBX9s0jbbmKQ3DQip4tawyNUMPC8M1ftyahAELep/iO2d0Ae9F+zsfB
	2o2lBfq3dPSDm2hANHn26Qns+W7nZzUDN4lG5ep3C3rfmPLQJAYufnLCRw6QkA0ub/qzyLQfDnQtI
	fxOk4AR4A4GIc4yGxqi/0s4YN76ZPV6R6c/SHzj07Tn8Hc1ER6dmgzlPY0SrRNkLwnxAu5dizJdvv
	2/9GqHO4BHWcvd52XsMefzouSFHv96gB/9V+mFXipH6bRyhTGHI+gJioTTwWYoyhaSpJoQ3vKkgRN
	u6LZiRUA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roWUu-0000000GG9x-0C5p;
	Sun, 24 Mar 2024 22:39:32 +0000
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1roWUX-0007sn-4U; Sun, 24 Mar 2024 23:39:01 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Quentin Schulz <foss+kernel@0leil.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	linux-arm-kernel@lists.infradead.org,
	Klaus Goger <klaus.goger@theobroma-systems.com>
Subject: Re: [PATCH v2 0/3] rockchip: small DTS fixes for RK3399 Puma
Date: Sun, 24 Mar 2024 23:38:55 +0100
Message-Id: <171131986744.918919.9548916004778456551.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240308-puma-diode-pu-v2-0-309f83da110a@theobroma-systems.com>
References: <20240308-puma-diode-pu-v2-0-309f83da110a@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_223924_603764_A27A5481 
X-CRM114-Status: GOOD (  11.57  )
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

On Fri, 08 Mar 2024 16:46:06 +0100, Quentin Schulz wrote:
> There's a pull-up missing on a pin that is used as GPIO input for PCIe
> which will make the diode/level-shifter not let voltage pass and thus
> not allowing the state of the pin to change.
> 
> Also add the missing regulators for the PCIe PHY+connector though this
> is purely cosmetic.
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: enable internal pull-up on Q7_USB_ID for RK3399 Puma
      commit: e6b1168f37e3f86d9966276c5a3fff9eb0df3e5f
[2/3] arm64: dts: rockchip: enable internal pull-up on PCIE_WAKE# for RK3399 Puma
      commit: 945a7c8570916650a415757d15d83e0fa856a686
[3/3] arm64: dts: rockchip: add regulators for PCIe on RK3399 Puma Haikou
      commit: d7ed698abc28b2886c9fc71d17ca6b023fcf47f3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
