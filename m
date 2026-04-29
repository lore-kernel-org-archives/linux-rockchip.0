Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88143FF8867
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Apr 2026 04:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pq87jHUPOF7bBTy0CL1bXYTqktnlB2UqmRxbLEghAjc=; b=fYfR56aIF5tz3U
	H9W7R7VEiEJBFs9XjVrkMSFZnz8sO6FfpwFaR3JN0lNFQAe/Cyd50fUqxiYvr+r247D4JHfIjMRnr
	Mth/RecJORRsSLT2KDi1JKc1Pn2ow6FphKMotmNOK6uXLa0srvtyEsSTfLprPyBjcf0hERrUYyOj/
	VExQepbzaV5k/KC4HlqIrdFyCmcIALE0FYdp+VU2OgouoHIc+he50UC7RDL2z8cHG5XETieG1t7ve
	XpDgwatqarf07vdyMzhYL35yrrbhoPYLRmzDqtZ1ONMtGwWuEsAyyYjKDI/K3PGb8zVLhTEoAdOoO
	jVppIuR0sQE59JmIQuyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHwKu-00000002uGC-1Is1;
	Wed, 29 Apr 2026 04:15:44 +0000
Received: from mail-oo1-xc61.google.com ([2607:f8b0:4864:20::c61])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHwKo-00000002uDI-2XpL
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Apr 2026 04:15:39 +0000
Received: by mail-oo1-xc61.google.com with SMTP id 006d021491bc7-67c250805ccso4567101eaf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 21:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1777436137; x=1778040937; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MhsANxfjmjB7vk5bKYmWUGk+7KV8pJM6GvanWdmMMRI=;
        b=fDf9vtQCDwpN2bVC4xy92nLs6w7sapd6XGjkNEtfVFungtjBD646c9d6NAQhCMYEaN
         WG69dRY3kYB5keRAH/3Ane48VcS+Hwv7+vOVyRDHf9mD4f26D6AE4Tni131Nsmgz6lZP
         LHMnn0C2nOuIaOzkzU+ASmD7y33f5+gcfmswV7x00fP+o7IYbb2g4DZXGd9qcv3YJVJU
         OYymubvMhGt1GozgvFVCynpuMr0u/OOYVX2lEVLwFofFajEQY8IjrZB0hS5oJEnao/3T
         idPToCHuMcyToUb6MhZ4e/yFaj3LJkrmIZgx13dzrybfrFC7TaQ3G/ve/wbmOjLOSaVP
         6Qnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777436137; x=1778040937;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MhsANxfjmjB7vk5bKYmWUGk+7KV8pJM6GvanWdmMMRI=;
        b=CeeOOffQdhSx78ExvBAvckwaIPmBZxi1vJQaGHwfT6uL77DfG+tkopu4/TmgTbp1tU
         7LsO30datfOVkDswumTYiM6pnNQnu64Yd+wBemyLfTsiLZIZ4s9HLZcPW4OUK+lHsv9c
         SPt17KOs+BkqKiJeE8hEJOikPBVp0Lj2cxEZLiejur9LzcANrK7dNYaFnZy8r7T5s260
         8KZ9k6cByyRPDUPtEgYwM7mCU6tPf29zH8tHg48qmSprv3s/MTiZLfx5iRPlm6xywcCg
         g3k5u2eZsl5U7eOiUAWIRZmTaM1dTJ5VavZ2vqY7WpyGfEW6mNMThy2hb7OWn6DVIIob
         k+Pw==
X-Forwarded-Encrypted: i=1; AFNElJ9Pf2wVxhV/BXIdoe638cvlvCg1n8SR/uF7R23/CyNatZiwZ1rwUCjTHkYOFmuvg4VmaxbkLhC52VSMK7VZSA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7GVSOD7xQXL+fM8WrALHXYG4MG6pNfqZ1Q8IMEO3iZOsMue/x
	NIfCunYHRZ8rfIucwKD0fERZkT0sKzKe7vGzLy1sCAh2dD1M14R7OyGN8gJ9EWEtCmRqQPDvfqZ
	fwxtFpyIjQeshCwFuz16n5yVdjmrzizVzxOoa
X-Gm-Gg: AeBDiet/YD2dsx/hVkvJ6XJbFsIAiEELUX55IaNkitRz9ENzNgTFfwEFk91TAnsr30i
	j5OJIVyzSBWLoJN6SLTqMvrB8DoDu6DZbZn0XqxeiU3FYdfV8HdxMIQhq5Bqg4hfLQ/TuE7ODgf
	ONdweSUI83/PNc18XoP58Eaz7OEbhUggOk0rslkc3u4ppoLwQBwFW0Ga/z6V92IOX+2218I0Sht
	BWuG9OOyNKAGVenqyLs4t29PiS/gt4T4Uwy4pqV9/T9Te68A5be50KFesffaJ1mB1R7PHGZtg9v
	vyG/NzwryxQkQpt7L28F7e3lbJQm79y+jaysRlLR1nWK+X64Zb8T2tCWECAFWNMb7lom0X0XeiK
	mqJWU8qPNLrZ2PNXITKjySwj03a820NWUhY/KK+Tz4ogoEf6Nz1prH0w=
X-Received: by 2002:a05:6820:4b13:b0:696:1bda:5dbe with SMTP id 006d021491bc7-6965cbce522mr2941455eaf.56.1777436137366;
        Tue, 28 Apr 2026 21:15:37 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 006d021491bc7-6966baf952asm41557eaf.9.2026.04.28.21.15.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2026 21:15:37 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: Dennis Gilmore <dennis@ausil.us>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Alexey Charkov <alchark@gmail.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Peter Robinson <pbrobinson@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Dennis Gilmore <dennis@ausil.us>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 2/3] drm/bridge: simple: Add the Lontium LT8711UXD DP-to-HDMI bridge
Date: Tue, 28 Apr 2026 23:15:27 -0500
Message-ID: <20260429041528.558254-3-dennis@ausil.us>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260429041528.558254-1-dennis@ausil.us>
References: <20260429041528.558254-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_211538_646290_5430ED41 
X-CRM114-Status: GOOD (  11.57  )
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

The Lontium LT8711UXD is a high performance two lane Type-C/DP1.4 to
HDMI2.0 converter, designed to connect a USB Type-C source or a DP1.4
source to an HDMI2.0 sink. The device can be run uncontrolled or it can
be attached over I2C, this supports the uncontrolled mode.

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
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
