Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99086F9D0FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Apr 2026 21:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xsdwt08Mtw2hT+pnMEW05of+4KtHAERvHR0XpbQpaUw=; b=xuBLSecnW6+KjT
	8CnB+dEnJ/gBPzHYY2wTB0FzKfPwREs3s3HDJzAcyqDteHfOKrv5xUI6VJy/R434AZSK4EjYf7JHr
	ObnR97Qe4/p9j+3JWHM36gFuWn79vu6Fz8lEob+AYCHnbghp0tYJxrmUfe35orf/o1D4uGHGBR+dM
	cptRWxbNGINNMD2Uq0ezm61O3sBFAo62k0YppGq2EKPXfn9E8o30PLj5G8szqpfTLnD46gRseNxhb
	ZdYpgklEXIIkBR93xbVh0MoTDZJKGKyCO5DmPWnUElAgozdfcf/LNYPGIjcmWBP1TjnjGE9b1NcbS
	JEnZat+dMTFvL5aebC7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wClVZ-00000000FkG-2HbK;
	Tue, 14 Apr 2026 21:41:21 +0000
Received: from mail-vs1-xe62.google.com ([2607:f8b0:4864:20::e62])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wClVS-00000000FcY-0ZmW
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Apr 2026 21:41:15 +0000
Received: by mail-vs1-xe62.google.com with SMTP id ada2fe7eead31-60fbbac2938so1174425137.1
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Apr 2026 14:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1776202873; x=1776807673; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iCAekC6JihikkAEuEdzid7oOkeSPTTqIBC2dONRzXqc=;
        b=ig6/TNQIEy8TANp/I4fmzMCwW8N912RQVXtRrKPrt9xDkZEBNm1Kyz9Zi2ZafuqiAK
         88xW18+NC0oEdi++JZHpq+QlLhuIN15erFt7Qns0+zI4fEGf18CUHIXOC2yDFLSbSQk9
         1DB+NxavVDjtD5r4+jDreDKcP9dWAZPjELY3M349rutRgJhV0XkpMa1zzVGL14+qfxjd
         YoPKq7Z1HSo31N8BfV+mjuY/42uCuqCdbOsOmJuHdh4l5SlzQHEkt2Pdsfjqjh4eERvu
         11+fmwIommgP38cHISZjuz+YYhyOlKLCo/jZJXo1dqf1BRmbu5UtoJnguTQGeHzuh5Iz
         Y9yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776202873; x=1776807673;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iCAekC6JihikkAEuEdzid7oOkeSPTTqIBC2dONRzXqc=;
        b=Eu+B/dF4IVeghSpA9uAvH/f5e2FZZWFFN0JP0AtrY/EQ/s65FqH0QAb0l6+MaAi2eM
         c3hIS/Rxv2pCSkhbNRlA/AFqsTg0cyDpI5qYjMW3LOVfkIqW4NKIOQ9GRU49M8TkmHTb
         Bb3vcQ6icbU9NhY5/3W4Zw/oRkLCbNyJ0gjKemJl3J///7Rbty85BgX9qWK9Tn7i/wU9
         ACjVFiJyl0XGOLZffHwLqvTcsBLYrHvfH6rJC4dAuGKYm3iIXklltXObIE+am/gR5xPi
         hjorwU/DxqtqL2EVR9+NLjlg6MpR/acgVGWx0TnUfZSxjckq/gET2YU3sFCPDVnYxARr
         yxsw==
X-Forwarded-Encrypted: i=1; AFNElJ89OmzafDm3s7guyuPc2h8b+JkTe06y+aUama0AHdPdZS/VPUEuMfq371viyVxWOZZ95trK3bUKRbrRpnsPmA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxLzYj3K0vs3GxiCdaN5Lj+rdJhYhs1r/ygnXfCjp25SWsw7n5B
	m/PpiD8QHkl1+sshvsE3oEF5c69x4VaMw7qs1mbv4Idwn5n9/uvbkyPmN5tij9vMBs+nW5lG4bZ
	2tEf1TnXfjnJUZRoRbIzlX2iKsBEdPLsZLGWh
X-Gm-Gg: AeBDievT+nDplLb+CaYvHy9i1U5bNoUJKvqXOJ2tW74dFNQgkAxXwp3hf5pmBW1J1NX
	cIsjjkF4xCF9LPedLX/zzBMUBWrmfBSqfIZt9P4bjUFlCV+OBTfdYQoobt8PsnOhAwOB5LGaieA
	KaoFqmAjBLL38ok2C6+mk302EnJwk8X8faTQTE4Z3SCbIrvfpbhJ8tHlNHTcnMD0UBlZckoHj6e
	1gn9VSVteM6A68UV6riLWAd9yhdHPFNcnMyKm9CKPqit9h11HxpDu9hulL9SxQyOQKUiPUie+ml
	+v4Hxw8ry737albaf0PoRUIGyViXSA4KDP9uDHAaqJQch9wwz2ap0uWYJhKQap3aYVXofsUcHMy
	ZLunYhtjSJ6Dv42s8EV0YUYkJkShwtc8sOgJtMx95ZPE1trsqCURVSRE=
X-Received: by 2002:a05:6102:48:b0:611:959c:86e with SMTP id ada2fe7eead31-611959c25e6mr1708483137.32.1776202872864;
        Tue, 14 Apr 2026 14:41:12 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id a1e0cc1a2514c-95691131afesm346899241.1.2026.04.14.14.41.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2026 14:41:12 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: Dennis Gilmore <dennis@ausil.us>
To: 
Cc: Alexey Charkov <alchark@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Dennis Gilmore <dennis@ausil.us>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Hsun Lai <i@chainsx.cn>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	John Clark <inindev@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	Mykola Kvach <xakep.amatop@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Peter Robinson <pbrobinson@gmail.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Robert Foss <rfoss@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH v7 3/6] drm/bridge: simple: Add the Lontium LT8711UXD DP-to-HDMI bridge
Date: Tue, 14 Apr 2026 16:40:54 -0500
Message-ID: <20260414214104.1363987-4-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260414214104.1363987-1-dennis@ausil.us>
References: <20260414214104.1363987-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_144114_189042_E72AD645 
X-CRM114-Status: GOOD (  10.29  )
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
