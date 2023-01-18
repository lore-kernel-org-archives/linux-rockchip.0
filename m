Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DCB7C32793
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 23:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XfLnOmSUt3DiKMNNP3gZNeTY3Zl5Z/6ICjkDH5INy0U=; b=zjeWsSQCrpEz+H
	y0hF5ZXN1pYLbnO+tccPqPfjDOXACw62y5G8OuLUo6kbmW7uAzApU+MGU2yuCLLwk+nRptzaan7bc
	/49v4oHpZR7LoJm5sr26+cJVbw2BGXtfYMDTTiLkNMPqdC4N/TXQAqPHVJVDjEsPtrIGTdUa3lPng
	ADYmImbjANAy/CVL6YZ3KBKDI0sr8BFRIgo6/BksG9j2zXCfV+c6zKa6eSIh9Yd++Oz+zJnPapJGP
	qsq7IrDGkjphAQI/j2WXjFFdbkEWJboCZBOLwl/gnqgmGz4a3IEeAqx9YvU0r7dQTUra01CeUJ2Qe
	OMjj91/nxtd5buvaI0pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIHuH-002xVy-2c; Wed, 18 Jan 2023 23:31:49 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIHuE-002xUi-MI
	for linux-rockchip@lists.infradead.org; Wed, 18 Jan 2023 23:31:48 +0000
Received: by mail-oi1-x235.google.com with SMTP id s124so380021oif.1
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Jan 2023 15:31:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XH1y5rYKFViuRcNHtWtYtPcA4DgWz25CCTQfZyUbrnE=;
        b=YtIE4pR1tODUTIgOvw1JqbI8004hDZmscHvqRVxzq9kZ73DHZ2Iqhf74G373R2UoRg
         Ao19vel3ftF8PoHac3WfPeFHjue7PVHA33YljmzYQ9x3zKnkwulBltGdlY0//2y5HSGv
         U2j/VP7Q0k3UDh8lPtUFjVDB0EUd2F1aZ6h5QPmQk9Be7gUAf956Awpbpa7tl2VrExNZ
         PTD8UP7MWCqorIwserlHx+PG++PzEFGLznPtmui6PJ1vgHco3FpaF74lFcYO3Iqs4ogY
         sRgquV8m6PBiL0lT004DrnmQ58rMo4RGjGNkJG3jTAydmduzM3z3w0r0bxddP0v2aEzr
         tpwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XH1y5rYKFViuRcNHtWtYtPcA4DgWz25CCTQfZyUbrnE=;
        b=Yebk7o6P3hZKbIfDOecdafEMqRkgaWLGFAFToiS8HqoppNXaxsaoz+vJpty/iVyzTV
         qZKlEymoTNAAl9GVrNAKKkjLCcnUxfbhSq8ntE9HDRKGzk54xRSlcyMgYQ85GPBhCDUi
         vRRVGuP29PNxJEbAwnP8zTI766Cv9lAa8zHapUgNIbqsPSh3P14FvyVR3KyhMEpMuHbV
         bpN3u/fK3QUa5WoaFyYopqifn852938Gts3IpYrmLwoxQ1HlBo/rbOlkmmPgbPvcK2aC
         CPpqWUTTU4eUqCTkl+zgxuuA3hmFm52iL03DzJ6RWZ89NIegHkCaSkWBsTRLv4ZtSmua
         Hn2A==
X-Gm-Message-State: AFqh2kogtTZb426sbQ4BeSrsNUcfeaablQFAbBOrQilsCWK1TCgxmHdA
	vDS396Yb35iN/l/tw9f92Nw=
X-Google-Smtp-Source: AMrXdXvvelMHakqU4zG4NmZUORZePP0oEuYsi/sQ99//LN2eo/vCvuYpX+Z3uZeT11B6UXturv0iCg==
X-Received: by 2002:a05:6808:300e:b0:364:f962:afd1 with SMTP id ay14-20020a056808300e00b00364f962afd1mr4990268oib.56.1674084704012;
        Wed, 18 Jan 2023 15:31:44 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id q10-20020acad90a000000b00354932bae03sm16966933oig.10.2023.01.18.15.31.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 15:31:43 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
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
Subject: [PATCH V11 0/4] drm/panel: Add Magnachip D53E6EA8966 Panel Controller
Date: Wed, 18 Jan 2023 17:31:31 -0600
Message-Id: <20230118233135.1174859-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_153146_775730_B970CC6E 
X-CRM114-Status: GOOD (  20.13  )
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

Changes since V10:
 - Guarded definition in drm_of.h with an additional #if statement.
 - Narrowed focus of drm_of_get_dsi_bus() to only return dsi_host (no
   longer populates node on the mipi_dsi_device_info struct).

Changes since V9:
 - Set an ifdef to not add the drm_of_get_dsi_bus when MIPI_DSI is not
   part of the current kernel config.
 - Made "info" optional in the drm_of_get_dsi_bus() function.

Changes since V8:
 - Set "placeholder" drm_of_get_dsi_bus in drm_of.h to static inline
   to hopefully eliminate the reported errors once and for all. Tested
   with 4 different kernel configurations provided by Intel's kernel
   test robot and no new warnings or errors were introduced.
   Reported-by: kernel test robot <lkp@intel.com>

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
 drivers/gpu/drm/drm_of.c                      |  51 ++
 drivers/gpu/drm/panel/Kconfig                 |  11 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../drm/panel/panel-magnachip-d53e6ea8966.c   | 522 ++++++++++++++++++
 include/drm/drm_of.h                          |  12 +
 7 files changed, 709 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-magnachip-d53e6ea8966.c

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
