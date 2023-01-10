Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13922C54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 20:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5nyer73rw7xdYhhePENw1cDAOaKV724rFmIjBo4tsvE=; b=JG5xUvncP4nzXM
	tt1qntaNoYtgmGCn/MLRlqxfStX3X0MpdxLPEnGWuuDTJ1OZJEBVuuJLu6nV6UnDJpQKol3NaT/UM
	dDLF0kTG5vc9PlD7IM4M217kZLBgVG9SjAl3hWzGcstOOVv+fAuc/8FaSZWlnv+m+nG4s+hCERjtH
	7ZNvBMqO4RXZXa1yDq+IbbVGM8YHGRIph0etX3tN1QLyh9FZXarplm7+FkQ7np5nbAFQ292pP5Mdp
	mDq9e9iBzOE09gycLISk4gXep+ntfxzMxYpMBuZHfn2YktB1a6U+iXVQxUZaRw7t7TZfi3xU370HG
	6f/EEORCWZ0MdcgD9ong==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFKpx-008QUo-Af; Tue, 10 Jan 2023 20:03:09 +0000
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFKpu-008QSj-Sw
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 20:03:08 +0000
Received: by mail-oo1-xc29.google.com with SMTP id y15-20020a4aaa4f000000b004e6b4e0acc0so3514444oom.0
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Jan 2023 12:03:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZIZAQ7FO4CZGj3dZTTG5OAyA7lcqHMiys9+DWMrDW2Q=;
        b=UKGzI8uY3xEF0vdZ/Ohb91g38rPExonbRBdEMO0WnryE1zNyFMv46RacCm2/W2ru+H
         xQQhHYI1ToVVivDsr8dH0CD5gL5gbUrj6LaVF7lvR4wByv1lIgPrXm9Em/cWoTvTuybj
         kw8SJvQFtLDRnEnY09Y7x3iHahvPoAQJMBRwIQCIDwXYTcfwQQ82CZT8997SabnPNpqr
         IvMlBL/nYFF8utdu/8SXUNaY7WoJTMjNM2zVn3RDM244GtovWIvgS59RGZFZUMGI9VmR
         jE5IVSqZGoCtUj9R3yZ6datsiscM8g1VRFObAsEySMB8QsuxcMsh490xOeSHVLmHF2mm
         XXAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZIZAQ7FO4CZGj3dZTTG5OAyA7lcqHMiys9+DWMrDW2Q=;
        b=SWVbXf1vCdHXqgtwNidHOtS+l8nlRWqbt7+2BXWTWvjLQY/x9V/onbje+uHClxa0KO
         hFlwpuLfhZvDhe/JoBiX7+bJxq9fptpSOnvQZrbkwDNyItmOZXw20N/ebMz5mLKRIRTo
         hmed83+n3Xx1WY7+y+eI07p3jTFHWcfrUdC4Ktz0OofkgjcuC8wM1uDRO4HXhZB3ycZt
         tKAaDYnl6CMgUzMsmnvZ70agvOQu1vQOeS4HWtPNkbB6Xx7JMQwktH6jH0mCzlvHUbtL
         sHQgU8EFjpH/gAkE5nGwW3tw22qUxa8nVO10eVaYIOZ8NE8B4N2MdbxmnEOcOGWcWhA3
         UkuQ==
X-Gm-Message-State: AFqh2kqdED1/EcHb2R44Ar5NZLzgBB8fkZxxhf8gXEQgAr0rLtZ7WQRv
	oJuW5OjgIevLhfq/7vXrQn0=
X-Google-Smtp-Source: AMrXdXv0XfdXOiVrysJFccTGAHXaxSR0nxtxpNTrXlKSzD0F0bIQWmuOVoNIFlzqlye/txlYPGRvWg==
X-Received: by 2002:a4a:ba94:0:b0:4f2:9e:3e90 with SMTP id d20-20020a4aba94000000b004f2009e3e90mr3433752oop.6.1673380984099;
        Tue, 10 Jan 2023 12:03:04 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r4-20020a4aad04000000b004a394578e14sm6089779oon.32.2023.01.10.12.03.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 12:03:03 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
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
Subject: [PATCH v8 0/4] drm/panel: Add Magnachip D53E6EA8966 Panel Controller
Date: Tue, 10 Jan 2023 14:02:51 -0600
Message-Id: <20230110200255.1218738-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_120306_974803_2A702E3C 
X-CRM114-Status: GOOD (  18.88  )
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

Changes since V7:
 - Removed Linus Walleij review note due to substantial changes.
 - Corrected documentation of drm_of_get_dsi_bus function.
 - Updated the drm_of_get_dsi_bus function to return pointer to
   mipi_dsi_host and use ERR_PTR macros.
 - Refactored drm_panel_funcs so that the prepare function calls
   panel specific function for init sequence and uses generic
   functions otherwise.
 - Renamed non-panel specific functions.
 - Changed backlight value to int instead of u32.
 - Corrected brightness function to use backlight_get_brightness().
 - Fix an error reported when CONFIG_OF is selected but
   CONFIG_DRM_MIPI_DSI is not. Add an if function to drm_of_get_dsi_bus
   function to return -EINVAL in this instance.
   Reported-by: kernel test robot <lkp@intel.com>

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
 drivers/gpu/drm/drm_of.c                      |  70 +++
 drivers/gpu/drm/panel/Kconfig                 |  11 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../drm/panel/panel-magnachip-d53e6ea8966.c   | 522 ++++++++++++++++++
 include/drm/drm_of.h                          |   9 +
 7 files changed, 725 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-magnachip-d53e6ea8966.c

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
