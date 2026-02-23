Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00FD4EC1118
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Feb 2026 18:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/j0rRyup5HoL0cmM7N4V7WCXT0PKuiCfwbRXntjMJs=; b=0W3qUANLkjS3FQ
	MS1Jjn2byD3uAX6N79vgrRZ9Sb/I50PEASKfiojImtewA+jfoXLq55gn/LBKKliG3oqJJPdEKPfG+
	h2ZpkggBEWXqfULTPqN7r0HjR6dcoZYHuX/MWUJRJQ31ov4oVtse+IJKzglp3J8h5YKymgDER1vnU
	twAcb8rM2Mwomzl6QJyuc56GRWDUQkt5ntKKZpq5CVHgZmFBgj5mQKDi8MCEXPm56LqVu59JeM2Df
	dh+nS8X6htWWb3vMkLQ7tOcdgsScBNbi3WslLxqr1ihr6IP8xbxO2si9QC626GVecwbHbXKzbUllt
	pF8H3oqTJE59nRnnqtNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuaez-00000000rqQ-2OTp;
	Mon, 23 Feb 2026 18:27:57 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuaew-00000000rpM-2qng
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Feb 2026 18:27:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771871271;
	bh=ZKTKJXwc+kl7Ab9mU1SVJNsU6LthWfVAAfFAYE4wjoY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Ld8V3TW331cwhDSd3oWPpeMhcKEo5Z9XNOnTZeiUvBLsfFpUfvasDf+j/8ZtxWqpg
	 AW3wnX8ibOTBTT/lJJnsf1mFW0xxotQ3aRwe7FD0uWfLRknWaBBI0yiumy26OUpZ56
	 gfkiN+ePRSidM4WBC15Ogp7V96wvboe9FOHwJoTJF/6aMnLr+cToYNuzFHHQ45J7Gm
	 nUj+/43bUOY8bPrvKSBRUtBFtHvsI+qZd9rSx15foHmn//pvK+c5T5J63l/bCeD++s
	 aXFofTy4yXp/Himeuu+Z56QDOvS2B8Z6zefHeSTPcY+Sgho3YrBCqzecNBUobibZ64
	 Dxs9tX64sf2ag==
Received: from jupiter.universe (dyndsl-091-248-208-033.ewe-ip-backbone.de [91.248.208.33])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3E84517E05B5;
	Mon, 23 Feb 2026 19:27:51 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id E588A480026; Mon, 23 Feb 2026 19:27:50 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Mon, 23 Feb 2026 19:27:39 +0100
Subject: [PATCH v2 2/2] usb: typec: mux: avoid duplicated mux switches
MIME-Version: 1.0
Message-Id: <20260223-typec-mux-duplication-fix-v2-2-0402fefc222e@collabora.com>
References: <20260223-typec-mux-duplication-fix-v2-0-0402fefc222e@collabora.com>
In-Reply-To: <20260223-typec-mux-duplication-fix-v2-0-0402fefc222e@collabora.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1774;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=ZKTKJXwc+kl7Ab9mU1SVJNsU6LthWfVAAfFAYE4wjoY=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGmcnCaum/l9UPE3MDVcAZ5Xfc/Rjp4GpY5Qu
 6fLesuQtgZ2sYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJpnJwmAAoJENju1/PI
 O/qaXksQAI4aqlfRVReFnKOboH85tS8yesiJbV4tGE9NS01dgNjjcjC20WgTYybPNc3cfgTbFw4
 9dRYtq776Dd7yyAn/2P3EUuKLvESlc96OhSaIj5SZD1BoYixEaTsnGOcpNWZqJk9Tjl2phlzLui
 hXZYCFjKOaR+1en0zp/pY/G0oEOEocO47H0Pq8lvGdwmJt6GFsVGDbqyxRZ0Pwf7pyamFKWmQL6
 u7MTL9y1HFzZSuMkIu+4quA40CQp7aUFQVZGBrvQhtRcFES8/09mNZeQXYQPCi3YwahSw48Qp8E
 8MJwsiP81rtWOhcJMq6vM7E4r4gbcNIsoRtA7TLjaqoLLry4JE9X+8pdnhyCoPBAI+ROnE8bOJP
 BqoQbn5QLcKy9O0aMNze7gkwnWifZ0ihu5XvChLurkjM2I8spWgt3flff4ApezJEawsRVM6x0k4
 ViS+VXmp+S23+bEXpP/wugX9mpV1BnN16LLo0B9snfWNe2fuHvH5ROVVKl8vi+skiQqTChvSciY
 H6SgPNcmBLi6heloSBZK5r48uBL8Im2QkX/olGT0LfJDu/QW9jfco1JH6Vj+jl5LGYRUPUgJoEQ
 K3n6Fm1EQdzPa09XifcEdyRfPNVoEPsdmLqPWAdkn3LG+DC6eKIIp8wwHRhUmDmujZeSysmXrRW
 uYC6phPR8m/YRCqxgTuUlmQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_102754_864546_1D50497C 
X-CRM114-Status: GOOD (  13.28  )
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

Some devices use combo PHYs (i.e. USB3 + DisplayPort), which also
handle the lane muxing. These PHYs are referenced twice from
the USB-C connector (USB super-speed lines and SBU/AUX lines)
resulting in the mux being configured twice. Avoid this by
dropping duplicates.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/usb/typec/mux.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/typec/mux.c b/drivers/usb/typec/mux.c
index 9b908c46bd7d..db5e4a4c0a99 100644
--- a/drivers/usb/typec/mux.c
+++ b/drivers/usb/typec/mux.c
@@ -275,7 +275,9 @@ static int mux_fwnode_match(struct device *dev, const void *fwnode)
 static void *typec_mux_match(const struct fwnode_handle *fwnode,
 			     const char *id, void *data)
 {
+	struct typec_mux_dev **mux_devs = data;
 	struct device *dev;
+	int i;
 
 	/*
 	 * Device graph (OF graph) does not give any means to identify the
@@ -291,6 +293,14 @@ static void *typec_mux_match(const struct fwnode_handle *fwnode,
 	dev = class_find_device(&typec_mux_class, NULL, fwnode,
 				mux_fwnode_match);
 
+	/* Skip duplicates */
+	for (i = 0; i < TYPEC_MUX_MAX_DEVS; i++)
+		if (to_typec_mux_dev(dev) == mux_devs[i]) {
+			put_device(dev);
+			return NULL;
+		}
+
+
 	return dev ? to_typec_mux_dev(dev) : ERR_PTR(-EPROBE_DEFER);
 }
 
@@ -316,7 +326,8 @@ struct typec_mux *fwnode_typec_mux_get(struct fwnode_handle *fwnode)
 		return ERR_PTR(-ENOMEM);
 
 	count = fwnode_connection_find_matches(fwnode, "mode-switch",
-					       NULL, typec_mux_match,
+					       (void **)mux_devs,
+					       typec_mux_match,
 					       (void **)mux_devs,
 					       ARRAY_SIZE(mux_devs));
 	if (count <= 0) {

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
