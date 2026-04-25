Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BDC0FF8850
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Apr 2026 03:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=63SbpAhMG6JQTfmzOnyxe7nOw2kY/KQmqyvsHpEMWYA=; b=poeDUbKyhXtYYB
	9Wh2xKPBiAI1OSfFdj7jfwg78Htp85BneIUPG9dSWii6dWn/YL551/7FST5POMZBD6dkoIs0ZptA6
	+8U2qsSOmaIWuJ8YePP0fGsh1J1hu4gILvEZvRTo5s3+tY8sKmeX3vovhlcrUQtZQLOz3xj0zAhbC
	QtWDJLm86DKkymEUDjCdCJLK8PMFQp/ykZoHeSJfqhLBO9+QwpK1Z40CFe6KwWkGL1O1ZSRF3+WBo
	2b3YE7WdQocQJzjMYnikq81GTeIGTycyfppOrCorW2B81XzKwx6hN+O1umynGjLJAnHvkQN7RXenS
	t8Q7eXVZSRb1lY5AmfbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGTPW-0000000E1ft-0Kuq;
	Sat, 25 Apr 2026 03:10:26 +0000
Received: from mail-dy1-x1362.google.com ([2607:f8b0:4864:20::1362])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGTPS-0000000E1cJ-0jgw
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Apr 2026 03:10:23 +0000
Received: by mail-dy1-x1362.google.com with SMTP id 5a478bee46e88-2d8ffdc31d0so2123202eec.0
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Apr 2026 20:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1777086621; x=1777691421; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B2siy8AgvZkarnaqQ1iRlbYdPe6np7TX5Kc2BXRw5Y4=;
        b=B7NxkdzdYrgKmjjYAtd42TOs4LvPB6FA/Laaji1xTsaWKQP2MN+TogHWNlu2E/4S9s
         Z8DAlznnsIX0jNH/Y5XA1LPZighbiNu3nKi2ck9/+/fYSsoHmHs9hl1wFMc6qAiB0uhi
         lsPv8lsRFhaYRb2LvvYn109cgpN7lpHCR2JHJBdH3tkDD3MMtrto/6lTvr8w4N41Qm20
         rfF1tMV0pITJ315yLeqZBlHGIX9odxC74HfzdcZgSe6nzgwY3VV4u6gIxCTUbEnwBbh6
         QJngqUs2D/EVFDFjuYNqQbIGupKy+mguDfiVWd8iXzk7ZgGw8Kn0Bm06NmMpKmaL5Oiz
         FlEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777086621; x=1777691421;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=B2siy8AgvZkarnaqQ1iRlbYdPe6np7TX5Kc2BXRw5Y4=;
        b=MMW3mWM67GUhSJYEGfRL2Sg+hc2bmHzUcuovGuIJsJ3MJndWtwnEgLZNUhX2IqUVmr
         zlUZ+z+Et38K0h1tfipNXudWwuoC3Vw+jyW4eP2CGsFNCV6kQ4X2qvCXaRrZ4i04C3p4
         QCIdbQVGniImfv+WLdGe6128f9a7dpkv9p+Iu4jZwiUnfrIA9P6M5SVE3/tF14aDGA3E
         Hvi95uPurEdd2fH8sioBg6zAihok1vAmxubOB2Inq9JRrCepqY1zMDP7cgPxV401hYGQ
         sHsRT+svjLVFze9ES/wBCbCq/CXb4iIHcw7EQMYYhOZG0ofszcDM6eC84igjFvgLmkmt
         wNxg==
X-Forwarded-Encrypted: i=1; AFNElJ+jTkOQdA4gT6HcShTXa1VnRKjTWjyt35m1vhOdWMgA+/i1J/donn/PzbZG11352OAEnD8PIUnsiVUnUrEl8A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/rh8zpP5wd669H+R8nHm+OMW+Ky74s776tZhe73V5rOc8fYMm
	EvD1ftQKNZIY5f7vmoPJQQSTEbC+rtLRYzCik8wzfYv0ao0/v5yOokOJ6DnCLvZ88rNEuxN8Dy6
	GuGRhfppV4g2my/njxhyhyPVD3fxaqkewm2oN
X-Gm-Gg: AeBDiesaYuEXuY2U7AZYYL2ECIvkXSUVEsIrtVifs72AlymPNnlG4T597oFJXxgwkJa
	GxzEgBjUnuvlvMR/yEx0mO5T5PEICkmrdB5wGDm5obzCYtQk5kKUwC0PWIGW546bVFxmovnuuH8
	x/QPIbFYLlxtRshI9dh1uZ0pDuNId63KHDU35pcKfB9lgS1zgCxhej4RoZplLfeciYqR1noK1ib
	LHJV/N3UHQZJDgNLdnEMx45WmbkkaosGau1AEwE7j58Ct0yc7MxWDYJJ4dXHhq+wypRmC32W7yh
	bqTk3sX2IwLdlS5lbVPfJtYnLAxnoRyLdKWTesQ1oOxvHtNldOp+2x/LuUw5O3qojHw0S1RUnzh
	2lXF34WkMVuCyUOzae5zbo07Y6YNq5VXvuqdqXmlAdN3iPQthjIpqK7g=
X-Received: by 2002:a05:7301:1693:b0:2d2:129a:1682 with SMTP id 5a478bee46e88-2e4786460f9mr18795386eec.16.1777086621591;
        Fri, 24 Apr 2026 20:10:21 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 5a478bee46e88-2e53a3ae691sm1728646eec.11.2026.04.24.20.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Apr 2026 20:10:21 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: Dennis Gilmore <dennis@ausil.us>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Alexey Charkov <alchark@gmail.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Dennis Gilmore <dennis@ausil.us>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v8 3/6] drm/bridge: simple: Add the Lontium LT8711UXD DP-to-HDMI bridge
Date: Fri, 24 Apr 2026 22:10:08 -0500
Message-ID: <20260425031011.2529364-4-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260425031011.2529364-1-dennis@ausil.us>
References: <20260425031011.2529364-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260424_201022_247432_1FEFDFDC 
X-CRM114-Status: UNSURE (   9.37  )
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

The Lontium LT8711UXD is a high performance two lane Type-C/DP1.4
to HDMI2.0 converter, designed to connect a USB Type-C source or
a DP1.4 source to an HDMI2.0 sink.

Signed-off-by: Dennis Gilmore <dennis@ausil.us>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm/bridge/simple-bridge.c
index 8aa31ca3c72d..42c1f3d5ba0c 100644
--- a/drivers/gpu/drm/bridge/simple-bridge.c
+++ b/drivers/gpu/drm/bridge/simple-bridge.c
@@ -270,6 +270,11 @@ static const struct of_device_id simple_bridge_match[] = {
 		.data = &(const struct simple_bridge_info) {
 			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
 		},
+	}, {
+		.compatible = "lontium,lt8711uxd",
+		.data = &(const struct simple_bridge_info) {
+			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
+		},
 	}, {
 		.compatible = "parade,ps185hdm",
 		.data = &(const struct simple_bridge_info) {
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
