Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 554E9CAC582
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Sep 2025 07:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+n7SkwzZ3fR0G37j78SsV7QzWYzHMnz8XFMtM+sCj7I=; b=i/DJavHS77q5/g
	Cj32C5EwUWRgiXLpsGNCiO7QI/v6glGiexp3UY9cnJvXci7+eM7E4OUYEnL/7NdItGOkjBH5bCgiZ
	wN4pXQ+ydb+I9B6vWlgK3Ymy53u729F9K9WSuhoodp5m3X3rB60SiGW8UOyvsJWyAx2prlIw93X0n
	RfUS52b6fALvZeSQuDjO1GOAqhUd+IiCGw1a2enzKRGcNzFf6KFZ7GSMt20LpY2MpUjDso5TEMmx5
	Mkxxi+gnnTg0FFZU6Y4UhkgbK/+DVjf8IZ3XVKOSGghOrBpP3XP2U2burFXVeuCxWFn9z1LpMTQHa
	qerGtfnJd/x4s8fftxIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwyKw-00000007gdb-1vn6;
	Fri, 12 Sep 2025 07:36:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwyKu-00000007gcO-3nCk
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Sep 2025 07:36:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=iQePpiySKBUe3OfKkAmoPumu7+44E19hPRb0KlPpFxY=; b=t0BOt3Qy+23zPozlFwGCraLr/E
	FK80ST+EDMKRX47D1X8qtqiWYZK9unYaxhxMy2WzG38G2o6LBNfw2xsg5iWA+DCSdF+Z4xkrT6K8L
	7qxtZVz0+7fidgX+xbQeDCEciaegFFMCpqTnnLSvBGhi5y4I7KSjNOsn2vAMbhdAuvtpffvrISGyV
	9G2+OoYOhxlee5FNCZ1hLO55TpPzdnYc4bBX07xL6sDOIdh/Ag9NnrYwoY1tJzwEr0JHmRAl8IQO1
	8yC7/CJiNmCcx5CjBgPpJtMCx8nSruu4j1RVuxE104S7dyJW3J4Hv6o2K5+n9o2BgBSQ+dHi1J6ku
	DmCipxhg==;
Received: from i53875a48.versanet.de ([83.135.90.72] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uwyKr-00085j-5d; Fri, 12 Sep 2025 09:36:45 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	broonie@kernel.org,
	lee@kernel.org,
	lgirdwood@gmail.com,
	sre@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH v8 0/5] Add Texas Instruments BQ25703A Charger
Date: Fri, 12 Sep 2025 09:36:30 +0200
Message-ID: <175766258325.683160.13363723166042765380.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250904160530.66178-1-macroalpha82@gmail.com>
References: <20250904160530.66178-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_003648_969364_C7426E49 
X-CRM114-Status: GOOD (  10.29  )
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


On Thu, 04 Sep 2025 11:05:25 -0500, Chris Morgan wrote:
> Add support for the Texas Instruments BQ25703A charger manager. The
> device integrates a boost converter with the charger manager. This
> series adds the device as an MFD with separate regulator and power
> supply drivers. This allows us to manage a circular dependency with
> a type-c port manager which depends on the regulator for usb-otg
> but supplies power to the BQ25703A charger.
> 
> [...]

Applied, thanks!

[5/5] arm64: dts: rockchip: Add USB and charger to Gameforce Ace
      commit: 36d05f21da4d1879f7e81f18eae85f34e9c64aa5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
