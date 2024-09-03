Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CBD8CD3420
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 12:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LKTdTQ+xZ7dEhEmL7VLduNttbS80//rKVAJK3Myl/8A=; b=p9hzaOHxNT9v5S
	uZWAXXCY9R7UqFkRHyV0Yadfu2u6J9gAgG4HBh7HmcINGnZ3r/LPjwG+K81tFmO7bwaXG/F+1bJZr
	llxiMGtXIENv7ZxbBg8HoTIPkxQWmKhXr4AOJUqQ6QZ9Au+zv8tNeWC9oTgzsmuELUdC3Z04CAUJB
	oCzFVcv04RjZ6PmdQRkqnBS1OVT5PshC5bYqrJ95GdLY+Vj/ak7VVsjpkNOsFq92s2qvmXLSDn5Ih
	ZzLamRW7VuVZGgim/jjxNlwMTZZzggzdye7hXZOW/cM+gxSBenJH6dO3XiZH8ovuZjm0CyUBsItTN
	t7sP4sMCedbiPfQQAJng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slSie-00000000AwQ-0Ohi;
	Tue, 03 Sep 2024 12:33:12 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slSi4-00000000Apd-3PQY
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 12:32:39 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:b015:4053:6b25:396c])
	by baptiste.telenet-ops.be with cmsmtp
	id 7oYU2D00S0nYyzV01oYU4U; Tue, 03 Sep 2024 14:32:29 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1slSht-001z5k-TV;
	Tue, 03 Sep 2024 14:32:28 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1slShw-003ixp-JX;
	Tue, 03 Sep 2024 14:32:28 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Mark Brown <broonie@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-spi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] spi: spidev: Add missing spi_device_id for jg10309-01
Date: Tue,  3 Sep 2024 14:32:27 +0200
Message-Id: <54bbb9d8a8db7e52d13e266f2d4a9bcd8b42a98a.1725366625.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_053237_017790_29FF8CFB 
X-CRM114-Status: GOOD (  11.93  )
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

When the of_device_id entry for "elgin,jg10309-01" was added, the
corresponding spi_device_id was forgotten, causing a warning message
during boot-up:

    SPI driver spidev has no spi_device_id for elgin,jg10309-01

Fix module autoloading and shut up the warning by adding the missing
entry.

Fixes: 5f3eee1eef5d0edd ("spi: spidev: Add an entry for elgin,jg10309-01")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
What is the protocol used to talk to the LCD on the rv1108-elgin-r1
board?  If the LCD is just an HD44780 character LCD connected to a shift
register, it should be modelled as such (see [1] for an example), and
commit 5f3eee1eef5d0edd should be reverted.

[1] https://elixir.bootlin.com/linux/v6.10.7/source/Documentation/devicetree/bindings/auxdisplay/hit,hd44780.yaml
---
 drivers/spi/spidev.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/spi/spidev.c b/drivers/spi/spidev.c
index 14bf0fa65befefe0..face93a9cf203569 100644
--- a/drivers/spi/spidev.c
+++ b/drivers/spi/spidev.c
@@ -702,6 +702,7 @@ static const struct class spidev_class = {
 static const struct spi_device_id spidev_spi_ids[] = {
 	{ .name = "bh2228fv" },
 	{ .name = "dh2228fv" },
+	{ .name = "jg10309-01" },
 	{ .name = "ltc2488" },
 	{ .name = "sx1301" },
 	{ .name = "bk4" },
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
