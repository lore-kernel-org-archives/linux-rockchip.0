Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD5BBC67861
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Apr 2024 15:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aHhABPK1apOfSrewIhY0L8w70L7BJOI+ceU5ip+8yyc=; b=ucz93Ks9Xehu4W
	L8WphBE239MgM82UuEBIYH/FywdY6FEOg1PlX/6M6p8l7HDRo8Y1AvFS3t6jrBAPPMhl1QmL4vwEc
	aszJRhoyPZcWoDRl0FQt1iG0d1cf1HVODCREzaoCSZLU1SlB3mjsBIEZMB3pS9OFOsHXmprypbh5Z
	QgX0uDkWDEH33hw+XcJI4+uwy2g9D5ZiaOZ3BWlDWo6vo6mRex0LE1JyHceqHCqZ6QLzO8r7jZeco
	nwIuL4fcYX+l2Y6M50ktLEe9F5bInJvSlLJa0odrg+WJyexL3B+6TBFJDbgM7mzaPu8VQFBJi/Iyk
	KyqLwVqGyU5AQ3h+qiYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruDV8-00000002jg3-2QLW;
	Tue, 09 Apr 2024 15:35:10 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruDV3-00000002jct-3tZH
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Apr 2024 15:35:08 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:76d0:2bff:fec8:549])
	by michel.telenet-ops.be with bizsmtp
	id 93ax2C00N0SSLxL063axyq; Tue, 09 Apr 2024 17:34:57 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1ruDUP-00DtrG-Nr;
	Tue, 09 Apr 2024 17:34:57 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1ruDUv-003kJW-8g;
	Tue, 09 Apr 2024 17:34:57 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: linux-sound@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] ASoC: codecs: Rockchip on-SoC codecs should depend on ARCH_ROCKCHIP
Date: Tue,  9 Apr 2024 17:34:56 +0200
Message-Id: <6cdbaf4afcf4d2059b257f6cb3a8a61bf5e17688.1712676714.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_083506_141221_543F15D4 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
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

The various Rockchip embedded audio codecs are only present on Rockchip
SoCs.  Hence add dependencies on ARCH_ROCKCHIP, to prevent asking the
user about these drivers when configuring a kernel without Rockchip SoC
support.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 sound/soc/codecs/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
index 4e47bb6850aac5b9..995eab954dd5db41 100644
--- a/sound/soc/codecs/Kconfig
+++ b/sound/soc/codecs/Kconfig
@@ -1173,6 +1173,7 @@ config SND_SOC_IDT821034
 
 config SND_SOC_INNO_RK3036
 	tristate "Inno codec driver for RK3036 SoC"
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
 	select REGMAP_MMIO
 
 config SND_SOC_ISABELLE
@@ -1437,6 +1438,7 @@ config SND_SOC_PEB2466
 config SND_SOC_RK3308
 	tristate "Rockchip RK3308 audio CODEC"
 	depends on ARM64 || COMPILE_TEST
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
 	select REGMAP_MMIO
 	help
 	  This is a device driver for the audio codec embedded in the
@@ -1447,6 +1449,7 @@ config SND_SOC_RK3308
 
 config SND_SOC_RK3328
 	tristate "Rockchip RK3328 audio CODEC"
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
 	select REGMAP_MMIO
 
 config SND_SOC_RK817
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
