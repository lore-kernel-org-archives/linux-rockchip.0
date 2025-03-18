Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFE3CC282EC
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Mar 2025 14:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZSZ13sRVAIZx7ujMnBVWtQv3X4szefIM1QmHNnFEbDM=; b=kUm9LNbZvj8Ej/
	0SlCBGZdOzl1YeAuW0AqwzVhb+y1Gikqq9uG7qrIC0jwy5Yk+gwrr4ofpK1jXVSMRWo1KWjYt3Hmb
	xbmyjFjl2A3WSUi//WiJ8U1ksP3dOdfr7p1/qw2lnnNrDge8tRYFOe+8AiF7Cz9ZsSkiN2MmyVG8e
	lY4CvhpU/e9gBUqbCerT2rYZtW3yKNTIEzNMXwtzfgrQI1Papp7DA8Olh9HC0QS/NZsd2tnvWBW9i
	H24QEQfNriVDFwfBVqcfAJBmimoSgNfJ5fov6k8Ldj8H1RFoQgpk+1RPg6LBPomE9EVBUO2wRM7SR
	SmTsHsPsDaAODNJF+qzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuXbO-000000068Bq-2KSb;
	Tue, 18 Mar 2025 14:07:30 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuXXi-000000067OW-3XYj
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Mar 2025 14:03:44 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:2568:e3d1:1e11:17f3])
	by xavier.telenet-ops.be with cmsmtp
	id SE3b2E0011Mz0fJ01E3bzP; Tue, 18 Mar 2025 15:03:36 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tuXX4-0000000Eeni-1Zsa;
	Tue, 18 Mar 2025 15:03:29 +0100
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tuXXV-0000000AOnB-1Nhv;
	Tue, 18 Mar 2025 15:03:29 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Shreeya Patel <shreeya.patel@collabora.com>,
	Dingxian Wen <shawn.wen@rock-chips.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org,
	kernel@collabora.com,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] media: platform: synopsys: VIDEO_SYNOPSYS_HDMIRX should depend on ARCH_ROCKCHIP
Date: Tue, 18 Mar 2025 15:03:27 +0100
Message-ID: <fa5622428f071a20ca5df96218aedc84fb7edc1a.1742306464.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_070343_023238_FA2DDB40 
X-CRM114-Status: UNSURE (   9.07  )
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

For now, the Synopsys HDMI HDMI RX Controller is only supported on
Rockchip RK3588 SoCs.  Hence add a dependency on ARCH_ROCKCHIP, to
prevent asking the user about this driver when configuring a kernel
without Rockchip SoC support.

Fixes: 7b59b132ad4398f9 ("media: platform: synopsys: Add support for HDMI input driver")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/media/platform/synopsys/hdmirx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/synopsys/hdmirx/Kconfig b/drivers/media/platform/synopsys/hdmirx/Kconfig
index 27e6706f84a37375..4321f985f6320611 100644
--- a/drivers/media/platform/synopsys/hdmirx/Kconfig
+++ b/drivers/media/platform/synopsys/hdmirx/Kconfig
@@ -2,6 +2,7 @@
 
 config VIDEO_SYNOPSYS_HDMIRX
 	tristate "Synopsys DesignWare HDMI Receiver driver"
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
 	depends on VIDEO_DEV
 	select MEDIA_CONTROLLER
 	select VIDEO_V4L2_SUBDEV_API
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
