Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DAA5C3DA50
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jul 2024 06:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4LgY+RjV7HLdTeZ00BUD5AR+m/V8XfZrM96QqiZuvBg=; b=WNU+0G9rMwYYEt
	8T9D2Sh/Pbdg3k+QdzEo+Zjn93vZ0sMJxGCWbLEi60S0co09Z4fFfDTUZ49DfcQ7vyxIugJEgZC1w
	eHOj4JRcVMpqus68c5+CVqK3LqOkAzOUY6C2OFrNefOAy4OUqBqaolEIJhXppLGVFIKQeO6yld0UL
	CCTKJjhHNmg5zyqy4HYTY3yrZdbDdTwvhh9pxBTEa0feuacysOd1HULLKGEcd1iJgCQyuXn4tYT7+
	qEFnzQ8KZIK1muQA13QLqUk2bhwkfoLNfiiBnqBPwjngeakPolXDrZ7GVXuZO202O+7fuUK+LdkeD
	UCvHQjcc3aUAH+AXg63g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTFH0-000000062VW-3ROv;
	Mon, 15 Jul 2024 06:33:23 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTFGu-000000062PC-20Q7
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jul 2024 06:33:18 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2eede876fcbso18580811fa.2
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Jul 2024 23:33:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721025194; x=1721629994; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YgUa5kzPxeKRnm4gmgQB+wDns4r7Lup1w0YNsdAWOCs=;
        b=Rw0F+pwvh6ecNlsP75Pi/ayEGWFUFzi6EaXhfU21zRvxGfLvT2c0R22BTmmU16LFkD
         +CCUIVWryybRutwkJM0da5LvkA1A9PuYLfapoI6BmSENCUe1yk+/xz4rVF+gMtwGUnTT
         NXZXrs+aCwwFf01wak3+j3yNNSXzFcXY+TO5dnPCW+Hg1m/NPEDotc+R1vvjhV2MBqiR
         JgRv5vIi3xA0DGlVHbynKULf5wUbRxtHXJOekz9h8yGR6adCUkx656GMw2vMxEbdbDVu
         LfXDLL+BQm6q6TR7y3yoTyLlWVcCLZImZa62iI4wL0dc6wRceSaUA3yFH5T9mgDxuU0a
         2pOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721025194; x=1721629994;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YgUa5kzPxeKRnm4gmgQB+wDns4r7Lup1w0YNsdAWOCs=;
        b=qnvpLF2JaZeT72pmgl3hOezESycL5ct6LIt8zXx6m64uSLsMiBup2XCFHPfeqsglo+
         O5+AeMo7qpxoIUjVJJVJ52wpD6w/ynaEJ/gHE3BIR04/Wfezh9GFUe9FOb6SD8r+ol4q
         yR88FqqIWfwQHmd8Bv3USaHmYZYeH2mOmocfK+TsSrHpugy9cTReEzi8hD1+n1g51Z0j
         A480q2hzgvwBQE8VZZT0sl9oFW6XDGLa3AIQiA5cmVR9P6OGP/gYz27jGIreSWKC1V+j
         E02sPN1DhdLU4rY3GHw3pvMyJ8ZigHG/eBmoTkmLUtfSxqO4c418f2OzJTgOftCvHX9Q
         67Dw==
X-Forwarded-Encrypted: i=1; AJvYcCXiXrBSXvHJrhm5sexclAzZiOwwPKiS20c1lU6EPlgyP5fLfnrPKwVBcqxZQGAk7B7Pw+S82IKY1P5LOO3xGW5R5zMZTFaydhfxcHqBtnkMri25
X-Gm-Message-State: AOJu0Yyb00Mizu9xAjjsmEiqKyg6SbGkhIyY1++6hXrTx84c9leEhDLW
	25J7UU5RFU8YvrUeVZEEZUSC4E8KjrHxAx7l+QDQfR4/Wsli9zChekvv7+ATU80=
X-Google-Smtp-Source: AGHT+IF0VjTw1K6MhesN5YsTG+trLH2ksTK9vmpMlTq0f2CRXPdu0k2mF7HtB+KTdSOIvOdGMqJLuQ==
X-Received: by 2002:a05:6512:b86:b0:52e:9ebe:7325 with SMTP id 2adb3069b0e04-52eb99a3299mr12878900e87.31.1721025194058;
        Sun, 14 Jul 2024 23:33:14 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ed24e188esm743543e87.47.2024.07.14.23.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jul 2024 23:33:13 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v4 0/5] drm: fix two issues related to HDMI Connector
 implementation
Date: Mon, 15 Jul 2024 09:33:00 +0300
Message-Id: <20240715-drm-bridge-connector-fix-hdmi-reset-v4-0-61e6417cfd99@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJzClGYC/53NTW4CMQwF4KugrDFKnEBnWPUeFYuQGMYSJMgZj
 UBo7o5hU1Vs2i6ff753N42EqZnt4m6EJm5ci4awXJg0xHIk4KzZoMVgN+ghyxn2wlk3qZZCaaw
 CB77CkM8MQo1GsIm6TTzYtY/RqHQR0otXy9dO88BNv26v0sk9p3/zJwcWgqO+60NOmdLniUuUu
 qpyNM+CCf+BoqLdurc5hN5hojfUf6MfFn+HekUd7i15hyHF8AOd5/kBpZf9poEBAAA=
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, 
 Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>, 
 Anitha Chrisanthus <anitha.chrisanthus@intel.com>, 
 Edmund Dea <edmund.j.dea@intel.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
 Biju Das <biju.das.jz@bp.renesas.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Mikko Perttunen <mperttunen@nvidia.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Jyri Sarha <jyri.sarha@iki.fi>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 dri-devel@lists.freedesktop.org, igt-dev@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-mips@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-tegra@vger.kernel.org
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3388;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Kf60wOnocntCYjHw62V/2EfBf+1HRmYhh2TPix7OkEw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmlMKocUnfYLehIHLnhjn/YpzPQGYcZbZYpR1xe
 NasM4c80MmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZpTCqAAKCRCLPIo+Aiko
 1dVwCAColXJjF6PCrF5MkX7SZctjCE45P3YoT+ofdNiLLdzra1QLPkG11tWvr7FNxQeMooIwBT+
 kPIgczU7r6aCEZtetqb8KHb9z0qxQkWjU0eAGVpVvL5QXP5J8e0C4/q4LA7eoxyn8I3hXMZMYY1
 1+3RFgC6uMKkxY7ZHe2nRRaE1IOaTUthxnHohXBP9esLDcSucShFO+ZMuSXJxbMJ62O7BNVyHBR
 7tJLeqX9nlI9mm5oHN760QaIXr6dVJHjgzhHvwojU+t8LcFQd55Ft/cqHbwMHYPx/Bb6AZhRken
 J51R8XlcTuMH6ZsPIjlQUcKK6Fo+sdudAprTi/uDXGJ1I8us
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240714_233316_554737_4F355902 
X-CRM114-Status: GOOD (  10.02  )
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

Running IGT tests on Qualcomm Dragonboard820c uncovered two issues with
the HDMI Connector implementation and with its integration into the
drm_bridge_connector. Fix those issues.

Note, I'm not fully satisfied with the drm_bridge_connector move. Maybe
it's better to add drm_bridge_funcs::connector_reset() and call it from
__drm_atomic_helper_connector_reset().

Depends on https://lore.kernel.org/dri-devel/20240704-panel-sw43408-fix-v6-1-3ea1c94bbb9b@linaro.org

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v4:
- Fixed DRM_MODE_PROP_IMMUTABLE to use MUST in the single-value clause (Maxime)
- Rebased on top of DRM_DSC_HELPERS patch
- Removed 'depends on DRM_DISPLAY_HELPER' (Maxime)
- Link to v3: https://lore.kernel.org/r/20240702-drm-bridge-connector-fix-hdmi-reset-v3-0-12b0e3124ca4@linaro.org

Changes in v3:
- Document the DRM_MODE_PROP_IMMUTABLE requirements currently exposed
  only via IGT tests (Maxime).
- Move drm_bridge_connector to drm_display_helper.
- Link to v2: https://lore.kernel.org/r/20240623-drm-bridge-connector-fix-hdmi-reset-v2-0-8590d44912ce@linaro.org

Changes in v2:
- Actually pass the flags to drm_property_create_range().
- Link to v1: https://lore.kernel.org/r/20240623-drm-bridge-connector-fix-hdmi-reset-v1-0-41e9894dcdec@linaro.org

---
Dmitry Baryshkov (5):
      drm/display: stop depending on DRM_DISPLAY_HELPER
      drm/drm_property: require DRM_MODE_PROP_IMMUTABLE for single-value props
      drm/connector: automatically set immutable flag for max_bpc property
      drm/bridge-connector: move to DRM_DISPLAY_HELPER module
      drm/bridge-connector: reset the HDMI connector state

 MAINTAINERS                                        |  2 +-
 drivers/gpu/drm/Makefile                           |  1 -
 drivers/gpu/drm/bridge/Kconfig                     |  1 +
 drivers/gpu/drm/display/Kconfig                    | 25 ++++++++++++----------
 drivers/gpu/drm/display/Makefile                   |  2 ++
 .../gpu/drm/{ => display}/drm_bridge_connector.c   | 13 ++++++++++-
 drivers/gpu/drm/drm_connector.c                    |  7 +++++-
 drivers/gpu/drm/imx/dcss/Kconfig                   |  2 ++
 drivers/gpu/drm/imx/lcdc/Kconfig                   |  2 ++
 drivers/gpu/drm/ingenic/Kconfig                    |  2 ++
 drivers/gpu/drm/kmb/Kconfig                        |  2 ++
 drivers/gpu/drm/mediatek/Kconfig                   |  2 ++
 drivers/gpu/drm/meson/Kconfig                      |  2 ++
 drivers/gpu/drm/msm/Kconfig                        |  1 +
 drivers/gpu/drm/omapdrm/Kconfig                    |  2 ++
 drivers/gpu/drm/renesas/rcar-du/Kconfig            |  2 ++
 drivers/gpu/drm/renesas/rz-du/Kconfig              |  2 ++
 drivers/gpu/drm/renesas/shmobile/Kconfig           |  2 ++
 drivers/gpu/drm/rockchip/Kconfig                   |  4 ++++
 drivers/gpu/drm/tegra/Kconfig                      |  1 +
 drivers/gpu/drm/tidss/Kconfig                      |  2 ++
 drivers/gpu/drm/xlnx/Kconfig                       |  1 +
 include/drm/drm_property.h                         |  3 +++
 23 files changed, 68 insertions(+), 15 deletions(-)
---
base-commit: cfbc154f11aaa32b4b2887323e4372390648046d
change-id: 20240623-drm-bridge-connector-fix-hdmi-reset-0ce86af053aa

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
