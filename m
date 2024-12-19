Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB528E7718B
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Dec 2024 14:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GtQno0dkp18EqlKpVVEy7xvHDhkinD70+T4t3vRiFd4=; b=yrdp58sFbB102e
	F2WnednXG7KPfoaGKFxdlVZ1FSa+elslyKmUxfXhUsI/kAdvgER40yBgJT6n4PomNH3Hy0icYFxtT
	QGUGEsxQ6jzJa6t1XS0zJSVa9ROXu/Ycn6qIyinmCVrZAnPn/vJEI7XsriNXC61hQMKPpm4eU1jRA
	1lr8gRcB9BKpBjXltfURu/0LW8N5eMlL3wPrmxKZgC3caM0/HqbnXLUD8nLXDTPKBAIBEPmCbGErt
	xVKtcz9/kYxkFZdaA47FIdJEoHhhpaq1w/CX4VXooeRBKVtm5wQyupK9HdA7Vq497IGqjLg9CODEr
	E3oFTBWlYpiCIi0YPwmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOHQv-000000022yq-3ipw;
	Thu, 19 Dec 2024 14:23:21 +0000
Received: from mail-m49195.qiye.163.com ([45.254.49.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOHQ0-000000022sJ-2DV1;
	Thu, 19 Dec 2024 14:22:26 +0000
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 63cf60df;
	Thu, 19 Dec 2024 22:22:18 +0800 (GMT+08:00)
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	heiko@sntech.de,
	jon.lin@rock-chips.com,
	linux-arm-kernel@lists.infradead.org,
	linux-spi@vger.kernel.org
Subject: [PATCH] spi: rockchip-sfc: Support sclk_x2 version
Date: Thu, 19 Dec 2024 22:22:16 +0800
Message-Id: <20241219142216.2123065-1-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhgeTVZPGR9MSB9MQx5LSUNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93df4c475409d9kunm63cf60df
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MUk6Tgw6FDINPgsXODhOGBMe
	T09PCwJVSlVKTEhPTUpDSkhCSElKVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
	QVlOQ1VJSVVMVUpKT1lXWQgBWUFKQk5JNwY+
DKIM-Signature: a=rsa-sha256;
	b=BXzSyWmVT/sY1tB/1XsRSqr4/YT7MXKhG6dbJWnM/Xg0ZtSqnJDBRI3qbSyuEnor/xO7POBv19f9X/RyVbYobAW6+EfDIPeoRewmVp/iVSiwVscfqTivF5viM5CaNnhDklaO0+tH9Jc6LQVBMxj7tE9nh00IslIoPb441fALTO4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=mogB8Z2BaCep1O7h/L6gI4XBbJfzWmp9owLVw4u/w3E=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_062225_151690_CE6AFB10 
X-CRM114-Status: UNSURE (   9.95  )
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

SFC after version 8 supports dtr mode, so the IO is the binary output of
the controller clock.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---

 drivers/spi/spi-rockchip-sfc.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-rockchip-sfc.c b/drivers/spi/spi-rockchip-sfc.c
index 36509bcccc27..59de351499a0 100644
--- a/drivers/spi/spi-rockchip-sfc.c
+++ b/drivers/spi/spi-rockchip-sfc.c
@@ -112,6 +112,7 @@
 #define  SFC_VER_3			0x3
 #define  SFC_VER_4			0x4
 #define  SFC_VER_5			0x5
+#define  SFC_VER_8			0x8
 
 /* Delay line controller register */
 #define SFC_DLL_CTRL0			0x3C
@@ -217,6 +218,22 @@ static u32 rockchip_sfc_get_max_iosize(struct rockchip_sfc *sfc)
 	return SFC_MAX_IOSIZE_VER3;
 }
 
+static int rockchip_sfc_clk_set_rate(struct rockchip_sfc *sfc, unsigned long  speed)
+{
+	if (sfc->version >= SFC_VER_8)
+		return clk_set_rate(sfc->clk, speed * 2);
+	else
+		return clk_set_rate(sfc->clk, speed);
+}
+
+static unsigned long rockchip_sfc_clk_get_rate(struct rockchip_sfc *sfc)
+{
+	if (sfc->version >= SFC_VER_8)
+		return clk_get_rate(sfc->clk) / 2;
+	else
+		return clk_get_rate(sfc->clk);
+}
+
 static void rockchip_sfc_irq_unmask(struct rockchip_sfc *sfc, u32 mask)
 {
 	u32 reg;
@@ -519,12 +536,12 @@ static int rockchip_sfc_exec_mem_op(struct spi_mem *mem, const struct spi_mem_op
 
 	if (unlikely(mem->spi->max_speed_hz != sfc->speed[cs]) &&
 	    !has_acpi_companion(sfc->dev)) {
-		ret = clk_set_rate(sfc->clk, mem->spi->max_speed_hz);
+		ret = rockchip_sfc_clk_set_rate(sfc, mem->spi->max_speed_hz);
 		if (ret)
 			goto out;
 		sfc->speed[cs] = mem->spi->max_speed_hz;
 		dev_dbg(sfc->dev, "set_freq=%dHz real_freq=%ldHz\n",
-			sfc->speed[cs], clk_get_rate(sfc->clk));
+			sfc->speed[cs], rockchip_sfc_clk_get_rate(sfc));
 	}
 
 	rockchip_sfc_adjust_op_work((struct spi_mem_op *)op);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
