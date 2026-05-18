Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F98BCD343F
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 19:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DUPHEyeXYB0Cn39AVKdGVPyvffLohuSnRoanyXuJGR4=; b=IzhBCjkDRnl8Zi
	GR4uA482FUB27Q14W4sfMHiAjeoJKeecObMANo0YuEisULAbbo/tN2v/zYV8Ome8Q5UfWCO0QhrTM
	Pqo4tgbZfzmy1WMVdS7kjC5yONsQ8bO4jrajr1Ji3Yh+EJdfITZx/nnZa6XZdQiEl6KT4suN4LOFP
	Ni2kekbp1UIKKCDYUEO1drieG9BOzYZEFHYtVjfjSAPQJEJDV/kyPSG2sucrBDz3uKFE949IzonpK
	ciLhrGWI4gxraPi9Bk202w9U39LHHBzM1yj7+VtiD0pbzUqsb1NeLGh6F1n+dC/mXdaUgTUHhXvMj
	lFdxPPKMJVR9g70H98mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3wh-0000000GlCh-3J9o;
	Mon, 18 May 2026 19:48:11 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3wb-0000000Gl8m-28HV
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 19:48:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1779133685; bh=ix3tqGj9O/73OPDzykQq3AN3AmgT+JSGiiTMGr+5/U4=;
 b=GzWT+PIj2RR026GYHmtCnij+Vi4odGbpru8GuvQgr15NFAHPa6P+306gGYq1ThRkaMK0VR+hn
 mGjyknpcuywf6q/6ufZ8veyH+ptWHuoOdJbxTLD8QkjD30o55pqEhTqmUB0Q2zOdeE/I5aGWmfv
 rRe4fV7Z3G6HV7nBM5b8HVR35eQ6R3/agb5AtcdYiFUUQpWt3I5h+nPpzjcwYTxD8CNo/Bou+eN
 aoOpJazNhUhI7IDx6s3pxYBnoe80oL7sTTapRUeLRkOLTPx5gYTBCp1V4w/tqZtt8aTFKvQp6KZ
 L/Edkryo/pLgCL3/pWxPv1uCIzQFnjsQdvs+OsK2l/rw==
X-Forward-Email-ID: 6a0b6cecb74b0ebd362eee20
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.8.12
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: dri-devel@lists.freedesktop.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 01/13] drm/meson: dw-hdmi: Report connector status based on HPD bit
Date: Mon, 18 May 2026 19:47:29 +0000
Message-ID: <20260518194744.2483580-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260518194744.2483580-1-jonas@kwiboo.se>
References: <20260518194744.2483580-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_124805_637582_57876A57 
X-CRM114-Status: GOOD (  10.68  )
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

G12A added support for RX-SENSE, status for both HPD and RX-SENSE is
reported in the TOP_STAT0 register.

Limit read_hpd() phy ops to only report connected status based on the
HPD status bit in TOP_STAT0, to help ensure that EDID can be read from
the sink in the connector detect() func.

Fixes: 3b7c1237a72a ("drm/meson: Add G12A support for the DW-HDMI Glue")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/meson/meson_dw_hdmi.c | 6 ++++--
 drivers/gpu/drm/meson/meson_dw_hdmi.h | 3 +++
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.c b/drivers/gpu/drm/meson/meson_dw_hdmi.c
index 2a8756da569b..993f6d5d4b29 100644
--- a/drivers/gpu/drm/meson/meson_dw_hdmi.c
+++ b/drivers/gpu/drm/meson/meson_dw_hdmi.c
@@ -457,9 +457,11 @@ static enum drm_connector_status dw_hdmi_read_hpd(struct dw_hdmi *hdmi,
 			     void *data)
 {
 	struct meson_dw_hdmi *dw_hdmi = (struct meson_dw_hdmi *)data;
+	unsigned int stat;
 
-	return !!dw_hdmi->data->top_read(dw_hdmi, HDMITX_TOP_STAT0) ?
-		connector_status_connected : connector_status_disconnected;
+	stat = dw_hdmi->data->top_read(dw_hdmi, HDMITX_TOP_STAT0);
+	return stat & HDMITX_TOP_STAT0_HPD ? connector_status_connected :
+					     connector_status_disconnected;
 }
 
 static void dw_hdmi_setup_hpd(struct dw_hdmi *hdmi,
diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.h b/drivers/gpu/drm/meson/meson_dw_hdmi.h
index 08e1c14e4ea0..cb4616daf667 100644
--- a/drivers/gpu/drm/meson/meson_dw_hdmi.h
+++ b/drivers/gpu/drm/meson/meson_dw_hdmi.h
@@ -157,4 +157,7 @@
  */
 #define HDMITX_TOP_STAT0                        (0x00E)
 
+#define HDMITX_TOP_STAT0_HPD		BIT(0)
+#define HDMITX_TOP_STAT0_RXSENSE	BIT(1)
+
 #endif /* __MESON_DW_HDMI_H */
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
