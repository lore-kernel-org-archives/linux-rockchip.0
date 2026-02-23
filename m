Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E3DEEC111E
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Feb 2026 18:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+mbx72Yr728SFkMGhmq79ufSVw8NhXGseOq7/6/0hg=; b=gAeu7DQzKj4Jv7
	Ccv4EPsRg6Km/5k/h9Mmxs/+pbc6mV6NhemzVsIje2izaJynFTaA1gCDh1u+NM4Nzp5xlRwHjDkPz
	D4f7foK9yLg0Pu67T+PXPMsVE2CnkyJIE1ebC0KP8DUru08+PtdnIPQrSP7s0Al1dTHBkKzczMlow
	19C2ciyJGLfu7ZcpaJ8qHNbDhMioglpSwxqFGLw7iEzZHg13UPEA3ZgLCAq+s/gSs/UHsb8Q5Kjp4
	Ej064RWfohRpRpGOMKwHZ7mbfHWPZvpfThZ8Cd4LPefHWC8TuCN32DM84wxgqk8ZDpiNnt3yQyftp
	zviA1yIGG56ds1euO/8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuaf1-00000000rqz-0TtF;
	Mon, 23 Feb 2026 18:27:59 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuaew-00000000rpL-2rJG
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Feb 2026 18:27:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771871271;
	bh=Wz4vdsfnheRUMn1NJPAKeUGfoRavSQrri5sfE8QYfdE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=WyNIyzmZ/X4XUurgK4i4TOkb78mh7o+nRhZhVJTCrU0W/hgDQ2ob9oqWFdAcK+CSf
	 bGQjwrONU4x2uOvglGCny1BOdPpXUQCaUkc1dUjBmVx4CEx8YOuEf3DxdhEzwCwyTK
	 sp3aZ2uBmmEsTUesk9+6TpS/HC85X7QGmqZw4BAcYn9SUTn1/oDo92KN6VWljdFwfD
	 uo7jRWjdS4YfFwVYRQHpaL+ZKMckYHskW4Az8Ro3FbGH/UC4nWppiz2TeJJI5beFLy
	 j4ZryKe3PMm+eE9nZN8Qr4Van6SyxCNm2XmB+AN+9c41daRXqNa184yxAIn/HYtQTd
	 FRycn4FqQKSeA==
Received: from jupiter.universe (dyndsl-091-248-208-033.ewe-ip-backbone.de [91.248.208.33])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3FE5417E05E8;
	Mon, 23 Feb 2026 19:27:51 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id E53A9480023; Mon, 23 Feb 2026 19:27:50 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Mon, 23 Feb 2026 19:27:38 +0100
Subject: [PATCH v2 1/2] usb: typec: mux: avoid duplicated orientation
 switches
MIME-Version: 1.0
Message-Id: <20260223-typec-mux-duplication-fix-v2-1-0402fefc222e@collabora.com>
References: <20260223-typec-mux-duplication-fix-v2-0-0402fefc222e@collabora.com>
In-Reply-To: <20260223-typec-mux-duplication-fix-v2-0-0402fefc222e@collabora.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1831;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=Wz4vdsfnheRUMn1NJPAKeUGfoRavSQrri5sfE8QYfdE=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGmcnCaBWimLuXHxcBpFaiErYcWKIDL4Eyma8
 mRYvgjWbUp554kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJpnJwmAAoJENju1/PI
 O/qadVIQAJ6YZd4th8kIg1eQFpweAdS6jAwP02zIJ6IGRDN5P8UAxHgsq/xJGBoui58INu4/FHs
 OHJdZ5P2WSIEyvsLicoZsOZtRE2i94CkZPLlJB5fr1W3yc6fngrgyFyjLRiqImzo9KcDElCyny+
 mHXCPafxdhlC3hOZ2DW2A5qekxt6LfRJNQXAg9zSI3GOEu6xNKbtf/D9rhehszQ7KZOTEmpHuZq
 wPtHnMWoi2YwuGgtpCH10ffwdtG8QLqgT6gZ6Mm4pCuKTJeHjnI5jtujRnfDlrVp1XDxgLfwJiJ
 GmMrVBf4JNdRIXvy5PmPkMBdy/9xNGL9QEaCMd4K0vHI4gAMH0tuCECxN0vN6szHLErQ3OcM4DC
 BwqMLY9p5/h3IJS+GB4xKJV39hVQ1tElkbGAOZ51XRwHKExf4hjJZWXG7x/1fjPEVnStf0zxFTD
 Cc2j5nZ+Bs6kp7J9TE0ZitkabrgBuQD+oomQH2QKGTbh4ICmXj57MIDVPTB3OJZMfTQCqgLpL/U
 OhAOwojkRrdF4ePrdtnlKD+VgazSnR0yseNBDnm8RtcnqbFyjDxi1G2DjD+jBHNfctuKJRHAFoM
 1MmDOgHCD06AA8pIk6H0l/4oNE9pl7oJkjH/sm3DvJL44V/WyZsvTc4CKpzP49oXDWy3XFpX1JH
 41Kr6wYQw/nUfla6noBYj4A==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_102754_883829_3B438674 
X-CRM114-Status: GOOD (  13.56  )
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
handle the orientation mux. These PHYs are referenced twice from
the USB-C connector (USB super-speed lines and SBU/AUX lines)
resulting in the switch being configured twice. Avoid this by
dropping duplicates.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/usb/typec/mux.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/typec/mux.c b/drivers/usb/typec/mux.c
index 58fb97ea6877..9b908c46bd7d 100644
--- a/drivers/usb/typec/mux.c
+++ b/drivers/usb/typec/mux.c
@@ -35,7 +35,9 @@ static int switch_fwnode_match(struct device *dev, const void *fwnode)
 static void *typec_switch_match(const struct fwnode_handle *fwnode,
 				const char *id, void *data)
 {
+	struct typec_switch_dev **sw_devs = data;
 	struct device *dev;
+	int i;
 
 	/*
 	 * Device graph (OF graph) does not give any means to identify the
@@ -56,6 +58,13 @@ static void *typec_switch_match(const struct fwnode_handle *fwnode,
 	dev = class_find_device(&typec_mux_class, NULL, fwnode,
 				switch_fwnode_match);
 
+	/* Skip duplicates */
+	for (i = 0; i < TYPEC_MUX_MAX_DEVS; i++)
+		if (to_typec_switch_dev(dev) == sw_devs[i]) {
+			put_device(dev);
+			return NULL;
+		}
+
 	return dev ? to_typec_switch_dev(dev) : ERR_PTR(-EPROBE_DEFER);
 }
 
@@ -80,7 +89,8 @@ struct typec_switch *fwnode_typec_switch_get(struct fwnode_handle *fwnode)
 	if (!sw)
 		return ERR_PTR(-ENOMEM);
 
-	count = fwnode_connection_find_matches(fwnode, "orientation-switch", NULL,
+	count = fwnode_connection_find_matches(fwnode, "orientation-switch",
+					       (void **)sw_devs,
 					       typec_switch_match,
 					       (void **)sw_devs,
 					       ARRAY_SIZE(sw_devs));

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
