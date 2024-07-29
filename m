Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CA5CC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 20:25:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OcLVdigErqw1xBh69AQEL7aRRbbpPuWtjKn7to1emho=; b=LhhIlL8pF0VS6t
	BgdkRMxz5hkBSb+sYafsHy8cl/c9GvhhA9zOhX2XijDVk7SEakjushN/7Kzq1FTrOiCJj0X6oRw0T
	O0mvTU+xdAHcBJ4a/ywA/Iuq7pJPJFeh1BiHs0+aeafQnhKzuLqgJptmcYh/92/B4Z93FYM2A1kLd
	AdvqGdX7LOvOjflpsv4GAp1JRRO4tGFnrgeCb3Km83Iyv9p5WO9C05Ry9vK3wY7+iA6uYOb/qnfjG
	lGnZWqQZUVv4pjYKPx8whiuElJVpilzwUOOtlKTui5wLQS/Cb+ZLzvYSQFlnhXlShBSC3od431TyJ
	OKmAu8fGOjfmEx6fbSIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYWw6-0000000Cddw-1ZBV;
	Mon, 29 Jul 2024 20:25:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYWrq-0000000Cc6V-3Kke;
	Mon, 29 Jul 2024 20:21:17 +0000
Received: from i5e86192c.versanet.de ([94.134.25.44] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sYWro-0007Xp-D2; Mon, 29 Jul 2024 22:21:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Johan Jonker <jbx6244@gmail.com>,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH v3 0/2] sdmmc/sdio/emmc improvements for RK3328
Date: Mon, 29 Jul 2024 22:21:02 +0200
Message-Id: <172228429366.2312452.3957597355505563883.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240710132830.14710-1-didi.debian@cknow.org>
References: <20240710132830.14710-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_132114_915640_15AF9D37 
X-CRM114-Status: GOOD (  13.91  )
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

On Wed, 10 Jul 2024 15:28:10 +0200, Diederik de Haas wrote:
> This is a rebased resend of Alex Bee's prior patches which haven't been
> merged even though there doesn't seem to be anything wrong with it.
> These patches have been used in LibreELEC for years, which means I've
> been using it for years on my Rock64 and I've also added it to my
> latest 6.10-rc7 build and that worked fine too.
> 
> Link to v2:
> https://lore.kernel.org/linux-rockchip/20210623145918.187018-1-knaerzche@gmail.com/
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Add sdmmc_ext for RK3328
      commit: 82e3aaae388199a0aff33e5371db307b3274f77a
[2/2] arm64: dts: rockchip: Add sdmmc/sdio/emmc reset controls for RK3328
      commit: bd6e614356d4fc852480cfb14d705da0561d5777

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
