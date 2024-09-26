Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A86C5CDE006
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 13:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RLd5B592hMyl7N5QDegbbz3vyuqKUeVKRLbHOwa4u6E=; b=ja2R7qXvtLYj/m
	vzxGBeYM3ZjuCjNQq6ga8yWljjedS3wEqM6Vky6+d617NB/vTwbj7GuDJEbqOPHFnvVqAG8uIcdT0
	xslZeiOlJtpK4hV12yT5iEdyxZEIX4V5Pc5czEksKkr6Sz4YbXmuwOwtparoGkc3DfW2+gFDyJv6/
	yiKGmcQCsA2T6GVmrZ4UfFORS4MchGtGkUlO3EFDUe3YPV3rkP/hvJMaKWX/ccMUW6TP6p8k4cb4W
	8VJHWM50wc9Sz0gxgosgUpeZDPpUTmwKMB7GKxs/qLBOurmBpEvqXQxAg8FCpg2hdrVVEbXT9sn5X
	urKsPKe+WyCplETlmF/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stosh-00000008V0a-1ACV;
	Thu, 26 Sep 2024 13:50:07 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1storT-00000008Urk-0tAs
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Sep 2024 13:48:54 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:7bd9:a854:38c6:ce04])
	by baptiste.telenet-ops.be with cmsmtp
	id H1oj2D0043fTnLU011ojXx; Thu, 26 Sep 2024 15:48:43 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1storF-000bcY-Qh;
	Thu, 26 Sep 2024 15:48:42 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1storK-001yEd-Od;
	Thu, 26 Sep 2024 15:48:42 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Jacob Chen <jacob-chen@iotwrt.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 0/2] arm64: dts: rockchip: rk3399: Fix rt5651 compatible values
Date: Thu, 26 Sep 2024 15:48:39 +0200
Message-Id: <cover.1727358193.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_064851_630914_893726EA 
X-CRM114-Status: GOOD (  17.68  )
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

	Hi all,

This patch series fixes two occurrences of the "rockchip,rt5651"
compatible value, which is not documented in DT bindings or supported in
any upstream driver.  Presumable these are typos for "realtek,rt5651",
as the "simple-audio-card,name" properties in the "rt5651-sound" nodes
refer to Realtek codecs.

This is untested due to lack of hardware.
Thanks for your comments!

Geert Uytterhoeven (2):
  arm64: dts: rockchip: rk3399-eaidk-610: Fix rt5651 compatible value
  arm64: dts: rockchip: rk3399-sapphire-excavator: Fix rt5651 compatible
    value

 arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.34.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
