Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1DADD25035
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 03:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AoEh4HmvvMMmWCnHTTLU3BLOaaa73S0Z3Ww1T++n0jw=; b=vH9s9HbPnZz+u/
	L9NxCHNtSQmEYmQ1rztQQr0+eyrLTLYdjIXnuOjW3/hy1cLguWi1KB2tFLfiH4XvbKh8pyeN1kAS1
	uxqkl2RSNhQX3IHZ052RF4U+f2HTtzIx/G5yIJtAUgCvxPBSMWMnE3hNnutiB1dVpEtItpgdi7dcX
	ShZ7P1nro10avhrJtneDaoz+FL5OTRoJ+QvKyvbABlv4NrMCKpjel52Zt6zDc39J0Xjer3CmDE4nw
	tulau1ckAnotahj/49IYNljVGMTa3IwLd1whpLlcd+vTaSssomoU9aLjLzm026N5ju2Vf1Rz0iWzC
	m5a28iPJqEBVEaJ8bi4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf8wO-00000004jTO-2wRc;
	Mon, 12 Jan 2026 03:50:04 +0000
Received: from mail-m1046.netease.com ([154.81.10.46])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf8wL-00000004jQa-1GxF
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 03:50:02 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 30449dd3c;
	Mon, 12 Jan 2026 11:49:56 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Marco Schirrmeister <mschirrmeister@gmail.com>,
	John Clark <inindev@gmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add cd-gpios for sdmmc of RK3576 EVB1
Date: Mon, 12 Jan 2026 11:49:28 +0800
Message-Id: <1768189768-96333-4-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1768189768-96333-1-git-send-email-shawn.lin@rock-chips.com>
References: <1768189768-96333-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9bb0531eb009cckunm0fb8f84327b714
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ01DS1ZNGUIeH04fGkoZGU1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Hm7r4mnZGsMHolJEGpjV6HVHHXu5WAJv5hGCjic0mXggjnTlhzRPdvJ5rZ73VcwOzbTgWxg8JV9dNh+T2EOlDc81vyFZztLq/tH5I33fQZ7Qy/ld7K9P8vTXIOHwpI9SkKJ11Q426keGV6/8SFg0d8z/s0OI1FpGoOg8R1XU3Ww=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=eGUBLzX9nH7916SqdKS42gC2wyBsTB0DYb8ntavVXOk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260111_195001_577400_3210A4F4 
X-CRM114-Status: UNSURE (   8.76  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Without cd-gpios, the sdmmc would not be detected, because during
runtime PM, the clock is gated which prevents the irq from issuing.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index 0789733..b583cec 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -958,6 +958,7 @@
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	max-frequency = <200000000>;
 	no-sdio;
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
