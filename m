Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27DD3C4708D
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Jan 2023 19:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uQ+79rYvs7eR89q3H83wJRjtuL38yUh+b91BJYSJN4g=; b=0b7xsA8eZqifyU
	GAK3aYH92aIq1f/2VJlfLE38ol+XNswJ7adDUOFcnj4aau4NbpXUc7QoFYI3+u34t4LegzzFVNikM
	LP63MNK6srkW/StcB/m9S2rA49o5HzARPNFQ6UJXL7wEwfQt1td5YhGJmYCgL/+QdcF0/n6+vkRsB
	az0kUqqK+hhHMP1cKl6aOmmh1CLEVv20IQ3ve3E9yCu/uiN5U7mG7wQTDaSmTnggk6p3p6X4261EB
	VlIc3RdO7BacwHr7gWe+bWU15coRUOP9ixK5oSVQMXY94NWnOu42aYDNJdENxxR9vaesVYcJALc26
	kb2gbuzX/f43HXaV9ceQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCmt8-004Mm2-Hb; Tue, 03 Jan 2023 19:23:54 +0000
Received: from mail-oa1-x31.google.com ([2001:4860:4864:20::31])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCmd1-004De2-Cv
	for linux-rockchip@lists.infradead.org; Tue, 03 Jan 2023 19:07:17 +0000
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-14ffd3c5b15so26340610fac.3
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Jan 2023 11:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=USvKgiAPMhAy/9BXMiGdBIzgvIIPEyBr90rzPBia1lQ=;
        b=BogNOQMXGscV/PNfPtNIXQ+l4PnWaHfNKE/mkN9S01aQY33TCcu+rCsD2VJf1f+eaT
         g9Oes7chIW9wFsiteJVsY20YSdqrtiEzsibVxhu+OiqEsdebNQtPsx878WFL41115e9g
         UVBZ5rHq32tygcnioTYh068/FqMauETJHOmhvElIYwEcYDpVM4NyXklZ918Qecw6XtLB
         o4AIGRd2AoH+74KIsLb2Q7Q9d97hO0juN+7hF+eMpvt8CsTgix4Fo9rS7lEjWBozqW8m
         rPmecvoM1BxJcWl5cS+uzLtcVqJXTunAJS+4qxwuicNEm0hJZ4mVGqE40f1VFFr/unIe
         R6fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=USvKgiAPMhAy/9BXMiGdBIzgvIIPEyBr90rzPBia1lQ=;
        b=WWYzFTfNn+Tfnryj6GQRVt+bgjVsXURBCqYSiD5ZvZj4brb7n5Mu+4l42c9h5KzzrC
         GhHibE+q0/An2sa8CsvHbciqOcKQPs4fI4pcvnyoZfxTIl07IjPgYOyQ37w2CboTCC/c
         u97QjUkFBLzD8LEYSQ/9LKpZl9RrTB1c17o9mjNdLwUeNOnX2I9JcLCoJhlUIn22PfT/
         xzLjFb67caX7vEX5xIbhSb6peU7yMmlXKCfhQbkv65wWh7Z6WIMi5d3S0Soid2CyzDcm
         AohOXfTgVrTOSQLQdrYEFjpinGQI/rZWOCjX1BzTIUEPH9LwIC0bK/d12Y7D7IPAHC4Q
         ap8A==
X-Gm-Message-State: AFqh2kr1a/dgj6QIOVXaAhs6ezQYFkgnF6q8GJ9CSpfRRuZBIW3o4ZTJ
	V4xLj3A7DJ1iXEAGNy/+E8w=
X-Google-Smtp-Source: AMrXdXtGNMtBwha02Tmu9U+Hj18evMBRiTxlYHZoPF3iuu+S6yMosoMfI7g0aa/7E+6zd4xLHpZHDQ==
X-Received: by 2002:a05:6870:f707:b0:14f:f223:faad with SMTP id ej7-20020a056870f70700b0014ff223faadmr15526419oab.15.1672772832000;
        Tue, 03 Jan 2023 11:07:12 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id s24-20020a056870ea9800b0014c7958c55bsm14752207oap.42.2023.01.03.11.07.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 11:07:11 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	maccraft123mc@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	thierry.reding@gmail.com,
	linus.walleij@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v7 0/4] drm/panel: Add Magnachip D53E6EA8966 Panel Controller
Date: Tue,  3 Jan 2023 13:07:03 -0600
Message-Id: <20230103190707.104595-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230103_110715_674329_1ECF3555 
X-CRM114-Status: GOOD (  15.75  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add the Magnachip D53E6EA8966 panel IC controller for display panels
such as the Samsung AMS495QA01 panel as found on the Anbernic RG503.
This panel uses DSI to receive video signals, but 3-wire SPI to receive
command signals using DBI.

Changes since V6:
 - Fixed a trivial error with definition of drm_of_get_dsi_bus().
   Reported-by: kernel test robot <lkp@intel.com>

Changes since V5:
 - Reverted dt binding documentation name back to
   samsung,ams495qa01.yaml.
 - Removed no longer needed of_graph.h header file.
 - Added backlight as a dependency.

Changes since V4:
 - Renamed driver from the panel model to the panel IC controller per
   DRM team.
 - Added a drm_of helper function of drm_of_get_dsi_bus() to handle
   finding and populating the DSI node when the DSI node is not the
   parent of the DSI controlled display.
 - Converted the documented commands to constants to make it more
   readable.
 - Reset GPIO is now required and documented as GPIO_ACTIVE_LOW.
 - Removed "prepared" logic from panel.

Changes since V3:
 - Updated documentation to add spi-peripheral-props.yaml per updates
   made for similar devices. Note that I removed a "Reviewed-by" tag
   from Rob Herring since this change probably needs to be confirmed.
 - Added binding for RG503, since this device is now accepted with this
   request: https://lore.kernel.org/linux-rockchip/166274831283.21181.6861718157177507544.b4-ty@sntech.de/

Changes since V2:
 - Added 50hz mode at request of userspace devs.
 - Renamed "dupa" to panel name. Good catch Maya.
 - Added Maya's Signed-off-by.
 - Removed check for max backlight, since it is already done by
   backlight_device_set_brightness.
 - Fixed minor formatting issues on devicetree binding documentation
   and added port to provided example.

Changes since V1:
 - Removed errant reference to backlight in documentation. This is an
   OLED panel.
 - Made elvss regulator optional. In my case its hard wired and not
   controllable.
 - Added "prepared" enum to track panel status to prevent unbalanced
   regulator enable/disable.

Chris Morgan (4):
  drm: of: Add drm_of_get_dsi_bus helper function
  dt-bindings: display: panel: Add Samsung AMS495QA01
  drm/panel: Add Magnachip D53E6EA8966 Panel Driver
  arm64: dts: rockchip: add display to RG503

 .../display/panel/samsung,ams495qa01.yaml     |  57 ++
 .../dts/rockchip/rk3566-anbernic-rg503.dts    |  55 ++
 drivers/gpu/drm/drm_of.c                      |  62 +++
 drivers/gpu/drm/panel/Kconfig                 |  11 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../drm/panel/panel-magnachip-d53e6ea8966.c   | 514 ++++++++++++++++++
 include/drm/drm_of.h                          |  11 +
 7 files changed, 711 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-magnachip-d53e6ea8966.c

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
