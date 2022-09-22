Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5C5EC6FA86
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Sep 2022 10:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SRxeCPmxdh5nZ7XRUxKZW1bTzQ/iBFZoNsZiPfSf22o=; b=XTs29VKebqRDNS
	EYah4EGTItQoRXWHbosHzup4IbtMMHts3djLCx+q9viFCnJ1oeQdSzC/wOIWsgP2yg0YXk5XWzkP6
	rvnFn2W4tnRgt6hjOUF9GRixRgQbt8AV7Zd8n5IY3071kQB4ALMjfH+DU5g4tMCREMWhgmSoVvLK9
	rreE6umHmF8h/cYAIsjEaNbwEOFlrRk9gN+IvuRATgOqcz/xNMLMxBgMDywrCclYMnzAGDfEk3S7l
	BMEV5bQi7Sg/VuR6b2pBJTTNUoj2gFXMWYYjlblY8twMy78OE8igOQuzlUZAM1DcjG42byN9AU8Ws
	sgdv+ohja9PVp/ADf7AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obJDq-00ErR5-SO; Thu, 22 Sep 2022 10:14:22 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obJCN-00EqZ3-FX; Thu, 22 Sep 2022 10:12:53 +0000
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id BA06B40003;
	Thu, 22 Sep 2022 10:12:41 +0000 (UTC)
From: Quentin Schulz <foss+kernel@0leil.net>
To: 
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	dmitry.torokhov@gmail.com,
	klaus.goger@theobroma-systems.com,
	foss+kernel@0leil.net,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: [PATCH 1/3] Input: add `SW_BOOT_ALT`
Date: Thu, 22 Sep 2022 12:12:09 +0200
Message-Id: <20220922101211.3215888-2-foss+kernel@0leil.net>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220922101211.3215888-1-foss+kernel@0leil.net>
References: <20220922101211.3215888-1-foss+kernel@0leil.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_031251_706250_A685F49F 
X-CRM114-Status: GOOD (  13.40  )
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

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

This event code represents the firmware source to use at boot.
Value 0 means using "standard" firmware source, value 1 means using
"alternative" firmware source.

For example, some hardware has the ability to force the BOOTROM to load
the bootloader from a secondary firmware source (say SD card) instead of
trying with the standard first and then the secondary. This event allows
the userspace to know which firmware source was requested *in hardware*.

Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 include/linux/mod_devicetable.h        | 2 +-
 include/uapi/linux/input-event-codes.h | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/include/linux/mod_devicetable.h b/include/linux/mod_devicetable.h
index 549590e9c644..009e71376a61 100644
--- a/include/linux/mod_devicetable.h
+++ b/include/linux/mod_devicetable.h
@@ -326,7 +326,7 @@ struct pcmcia_device_id {
 #define INPUT_DEVICE_ID_LED_MAX		0x0f
 #define INPUT_DEVICE_ID_SND_MAX		0x07
 #define INPUT_DEVICE_ID_FF_MAX		0x7f
-#define INPUT_DEVICE_ID_SW_MAX		0x10
+#define INPUT_DEVICE_ID_SW_MAX		0x11
 #define INPUT_DEVICE_ID_PROP_MAX	0x1f
 
 #define INPUT_DEVICE_ID_MATCH_BUS	1
diff --git a/include/uapi/linux/input-event-codes.h b/include/uapi/linux/input-event-codes.h
index dff8e7f17074..8cd2b58c81d7 100644
--- a/include/uapi/linux/input-event-codes.h
+++ b/include/uapi/linux/input-event-codes.h
@@ -917,7 +917,8 @@
 #define SW_MUTE_DEVICE		0x0e  /* set = device disabled */
 #define SW_PEN_INSERTED		0x0f  /* set = pen inserted */
 #define SW_MACHINE_COVER	0x10  /* set = cover closed */
-#define SW_MAX			0x10
+#define SW_BOOT_ALT		0x11  /* set = alternative boot firmware source */
+#define SW_MAX			0x11
 #define SW_CNT			(SW_MAX+1)
 
 /*
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
