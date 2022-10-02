Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98939C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Oct 2022 06:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJTix417PE/T+om+QJ775/IaL2qSMDO1PKkjnR4r518=; b=Jf4+FyAdCBqg2g
	W5pjdY/z7ZE2qNjpp8/NnHpqVFldL3ZvMdHvFK6wS+IhpuQ0rndPVk63l0W0IdM1yxpT4vazn/OlT
	lFUFBJzhZz7gcoy9UBixqrb18eCUrFBtI4GbLvHiRsZLIs9625aVQjFnBcStLYHjyIkQZBIPo04gZ
	kY/8mUgCoeHG6VeQcr6DBeNqC5V0K1IaksJCT2jeDoUtd6EJNhmhlRYbjS6HqXhDp1dzXtLEx+0Hp
	YHM/e9TQFhl0fnY5cyjOuiHxvy28EItk5AezTxJwMNMuJB8YjgUGXC7L3DjfSPn5YPNTJROOd5kpZ
	D0q12Jusax6nHxgBDVSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeskI-0004Iq-0T; Sun, 02 Oct 2022 06:46:38 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oesjX-0003sL-Qf
	for linux-rockchip@lists.infradead.org; Sun, 02 Oct 2022 06:45:53 +0000
Received: by mail-ej1-x629.google.com with SMTP id dv25so16503916ejb.12
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Oct 2022 23:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=gtEJxbrwC/UQVf48sJy2NN3O3k5LpfsDQAoSkyusABE=;
        b=omdSgHFqEeX0hz1EWZZH2RbIMxysW7X/8zVjSEW3VJR+LCkBpPE1odjPVGPcB0lmXL
         5PJDNgHjB0mFXedPPBGByQdvcpVTTIQqvLpluO80BG3siD9Ih2PB8ZIkB6EHqPAuoGBZ
         BMd1fJ7hXzIUUDLgy6PF9mV9Ss/a4NsufzCvo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=gtEJxbrwC/UQVf48sJy2NN3O3k5LpfsDQAoSkyusABE=;
        b=6ASdWBKXf9m0ptwgH3vs4a55BMhDY100eGEw0FQjiTXWpJa3CD6zdehLBKrzcOb4/8
         jp4VCse2oJKTeUAl/GqPYv6WpRd9ibIPyESieEUkFipnm6rfUGXiDI2B8nv7Z23NGw6Z
         NVSPMpGpXpqJBTwwOA/40TnNF1trImkzRzqp3861tWYYQhjBTBY+5bm/aMRYg84mWVd1
         5G+FGWX2fdjBs7n9bQgHJ4QwuIJK6aE6q2ZZ0lnnciykyRGePiG9qWk93VDJnO8dJgMO
         zy7eyzRfd0UAcs7e/5uLsCmw/8ie1eaCLWAXq4L3LYnW/tuqT6P5MpLSLRVBznRPtW0t
         T/Fw==
X-Gm-Message-State: ACrzQf1beLwA6cAiv+v7khQCeX/t0TNNEOti6mYjkW5P88WYxsmMcK1I
	s7KjD1ZGUa60uidHH9KIqAPpKQ==
X-Google-Smtp-Source: AMsMyM4nEOYig64C0tZ3Z7ad76GYPRbuqYMOi4q6qDnpwgFsU96JrriTtL5fgxNnqfSki698dg6/Lw==
X-Received: by 2002:a17:907:3205:b0:770:8554:c4ee with SMTP id xg5-20020a170907320500b007708554c4eemr11785485ejb.39.1664693150522;
        Sat, 01 Oct 2022 23:45:50 -0700 (PDT)
Received: from panicking.. ([109.52.206.103])
        by smtp.gmail.com with ESMTPSA id 26-20020a170906329a00b0077f5e96129fsm3569894ejw.158.2022.10.01.23.45.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Oct 2022 23:45:50 -0700 (PDT)
From: Michael Trimarchi <michael@amarulasolutions.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-amarula@amarulasolutions.com
Subject: [RFC PATCH 4/4] drm/rockchip: rgb: Add dphy connection to rgb output
Date: Sun,  2 Oct 2022 08:45:40 +0200
Message-Id: <20221002064540.2500257-5-michael@amarulasolutions.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221002064540.2500257-1-michael@amarulasolutions.com>
References: <20221002064540.2500257-1-michael@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221001_234551_887188_75EA44D4 
X-CRM114-Status: GOOD (  13.39  )
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

Dispite the commit 1f0f015151727, the rgb output has an option
to allow to sent the output pin using the dsi/lvds/ttl logic.
The only way to do and stay on the same design is let the
rockchip_rgb block to grab the handle if it is present and
enable it. The present of this handle depends on dts configuration

I have a full working example with an hardware with mixed lines
on direct logic and using the phy, with the follow dts example:

panel: panel {
	compatible = "panel-dpi";
	...
	panel-timing {
		clock-frequency = <30000000>;
		...
	};

	port {
		panel_rgb_in: endpoint {
			remote-endpoint = <&vopb_out_rgb>;
		};
	};
};

&vopb_out {
        vopb_out_rgb: endpoint@2 {
                reg = <2>;
                remote-endpoint = <&panel_rgb_in>;
        };
};

&vopb {
        status = "okay";
        pinctrl-names = "default", "sleep";
        pinctrl-0 = <&lcdc_rgb_pins>;
        pinctrl-1 = <&lcdc_sleep_pins>;

        phys = <&dsi_dphy>;
        phy-names = "dphy";
};

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
 drivers/gpu/drm/rockchip/rockchip_rgb.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.c b/drivers/gpu/drm/rockchip/rockchip_rgb.c
index 75eb7cca3d82..c725774a0f40 100644
--- a/drivers/gpu/drm/rockchip/rockchip_rgb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_rgb.c
@@ -8,6 +8,7 @@
 #include <linux/component.h>
 #include <linux/media-bus-format.h>
 #include <linux/of_graph.h>
+#include <linux/phy/phy.h>
 
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_atomic_helper.h>
@@ -30,6 +31,7 @@ struct rockchip_rgb {
 	struct drm_bridge *bridge;
 	struct drm_encoder encoder;
 	struct drm_connector connector;
+	struct phy *dphy;
 	int output_mode;
 };
 
@@ -168,6 +170,22 @@ struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
 		goto err_free_connector;
 	}
 
+	/* PHY */
+	rgb->dphy = devm_phy_get(dev, "dphy");
+	if (!IS_ERR(rgb->dphy)) {
+		ret = phy_init(rgb->dphy);
+		if (ret)
+			return ERR_PTR(ret);
+
+		ret = phy_set_mode(rgb->dphy, PHY_MODE_TTL);
+		if (ret)
+			return ERR_PTR(ret);
+
+		ret = phy_power_on(rgb->dphy);
+		if (ret)
+			return ERR_PTR(ret);
+	}
+
 	return rgb;
 
 err_free_connector:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
