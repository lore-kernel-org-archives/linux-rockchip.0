Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02157EF99CD
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Feb 2026 19:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LRvZo5d8xom4NiKYF4eRg3Wy6Rl0MNUL4lhDPm16l+M=; b=vTD5sULRKBgMV6
	YDZ+AKjY0QXKBQDFvB9l7o/K1xm76Svagdiec4PHQQSN+o559vVAXPZ6d5/6Pf3s4UquMfmYGOdVR
	zZR1DMS+xRrism8HZjFYulLX3cGtlx7/Qrjbb6m8RJd12WJ9yFidwuXyc03xrRbjxcQf6Vr/yXUBI
	bpkU9Fbx+6zsktDao1ty9E3qdKppcRcZtN5AcAzWLCPSk+Y0W5cvmOEenSTovEiereTbl4QqxCu8c
	WG81Nu8XNjEsd6ZkY9zY3ah7ayyDitDbxKukVWuB6dEbEkFSRA132Ck23lVdpNrfpxDvK7Z/1PWCO
	ahHstH1ukX2JMhNJVTCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqylM-00000003qfZ-3jo9;
	Fri, 13 Feb 2026 19:23:36 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqylJ-00000003qe5-21sz
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Feb 2026 19:23:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771010610;
	bh=M+WLPqbnlvkdrK7+r+T1xzP3XzAmnVGjqP9vT+jSuFY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=qrk9arAqOKjfK7Zoo6GBGaLw7yCzoeMpkyz8oNfRsfuo0GYGPRo1L5nGDVi3LObvP
	 CEHBEJj1IvBxAixS2Ghb95JNFTgHPYmJOVtnW4U12bKtr8+k/ShgqCeDUCMsY2l1NH
	 PtzznVd4AdFeL2Eo7kTR11Lifjwfx+I9BE3ZcL55d48dmQPBY5r/HqHhBxp/h8yDoR
	 K6LaHPnID8k14+RikeePOJ7K126AdEwPKS2c6e1tb9Z0koQChX9LChmIhhjA7vcpJ7
	 hot1Vd/Uxb2N27gtbUlrcQ0BMGCOcQ+rKnGorldnrq+tqL09rJ3yBfRvf3CCG+N65z
	 fbpmKp499jEiw==
Received: from jupiter.universe (dyndsl-091-248-188-214.ewe-ip-backbone.de [91.248.188.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 23A7517E0C21;
	Fri, 13 Feb 2026 20:23:30 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id D0DB6480026; Fri, 13 Feb 2026 20:23:29 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 13 Feb 2026 20:23:29 +0100
Subject: [PATCH 2/2] usb: typec: mux: avoid duplicated mux switches
MIME-Version: 1.0
Message-Id: <20260213-typec-mux-duplication-fix-v1-2-70076a7c5691@collabora.com>
References: <20260213-typec-mux-duplication-fix-v1-0-70076a7c5691@collabora.com>
In-Reply-To: <20260213-typec-mux-duplication-fix-v1-0-70076a7c5691@collabora.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1443;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=M+WLPqbnlvkdrK7+r+T1xzP3XzAmnVGjqP9vT+jSuFY=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGmPejHBuJRulD+JZiy2b436nL5C+jYNipJI6
 C64SuRIuwsoQIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJpj3oxAAoJENju1/PI
 O/qa+CIP+wRvR/qbmvwsKYSI7kEiJsh8df74ID+xdDyHxh8L04nzMXYrXSMAxVqkph2eBPJPDua
 0IcUptWZaLi7OYAwwj4W7hIgyYVCKaycqwmBnKVLcAYV6GFnkUguiW8WrwMetNs4TXd4dtC+sJS
 T5RAXD/djc02/a+YRQ5A0fnm00nC4qMXioDCWVsG25WWmHMF2T93870JRAWDKnsBGBSTFuu4mA0
 q274mySLQS3z4L2OF/92WdIywGMeXzGtRlUGpY8q3dWD86EKSAOJuHQsPn94XPKmSs5viCPFP8A
 maTW+uAUXROYY0FfHUKLZoww1BZ+s5XV0gHDEOCuiWWJIAnM0wtH03GjEbtQODFRImdgEmPZX/j
 TXBPwkYy8io9AA/jqSHNNmrvrrcqoKru/Sl8YeBHwRvzQmPMlAv9qD3YBCemGvLmj4ZK2y/3kW+
 EHhd46W9VrRcpXe4mQRB2I8LkfYTI5u6YoNijQG8nWT5Sb7esozip7bquZcoe6pwLB7v4Tkwqcx
 jSJrr7toyFRj0X/tpj50+OpwDqJlraqNMefELsRluY4fM4UoMktwNZQRoAFRWcVUPAcl36G9jfJ
 0juSjXe1IFje+7/HeRQLUqb1+Kq/2tgnAT3c+UgZx4rkVFwup+jFeoId3XWkAvSlHZqgf0MiNZi
 aNImpOpaQ5Geq+rWhRYAt+w==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_112333_695331_A9B4EF05 
X-CRM114-Status: GOOD (  11.72  )
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
 drivers/usb/typec/mux.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/typec/mux.c b/drivers/usb/typec/mux.c
index db35b7398343..6a394326f236 100644
--- a/drivers/usb/typec/mux.c
+++ b/drivers/usb/typec/mux.c
@@ -309,9 +309,9 @@ struct typec_mux *fwnode_typec_mux_get(struct fwnode_handle *fwnode)
 {
 	struct typec_mux_dev *mux_devs[TYPEC_MUX_MAX_DEVS];
 	struct typec_mux *mux;
+	int i, j, k;
 	int count;
 	int err;
-	int i;
 
 	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
 	if (!mux)
@@ -333,6 +333,18 @@ struct typec_mux *fwnode_typec_mux_get(struct fwnode_handle *fwnode)
 		}
 	}
 
+	/* eliminate duplicates */
+	for (i = 0; i < count; i++) {
+		for (j = i + 1; j < count; j++) {
+			if (mux_devs[j] == mux_devs[i]) {
+				put_device(&mux_devs[j]->dev);
+				for (k = j; k < count; k++)
+					mux_devs[k] = mux_devs[k+1];
+				count--;
+			}
+		}
+	}
+
 	for (i = 0; i < count; i++) {
 		WARN_ON(!try_module_get(mux_devs[i]->dev.parent->driver->owner));
 		mux->mux_devs[i] = mux_devs[i];

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
