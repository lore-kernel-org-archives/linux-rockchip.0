Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61343C63797
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jan 2023 17:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DJ//7DqWShdVxm7imzyaskN747/GxuANIAuOI17/Zso=; b=pMGnwibZURvH+6
	ZeEQBSeYpGJq3PFSV1+RFkT0VSrPjzH+KjO0FZqn+xEgPZCadPX8/JtJlo3eFdDU60x8gkW72O/mu
	Nc2CfNSG5ceKBPghMYoLwpWbzeOe/ooqk+5PHB+WTwloUiJ/SHZTg1vX5pH2qxbmzilIlMZRBlrnt
	ep4Tbe5yjc14bM+nCeBsbR/TofEokelyWY7fhQPoF3JCocUFWrXGQyx3UZMXedXxjYQdyNtkHHnGe
	XOn5vsIdTYcuIu9IWmEn6NYsSUmyeQqp3BRJhlyyyPovgICPINzOLiV+9VrBIAWz2zWJS4rvKzFrc
	T2y1+ULGFFm6b3TbS+uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1mE-00G87e-Ra; Thu, 12 Jan 2023 17:54:11 +0000
Received: from mail-oa1-x2f.google.com ([2001:4860:4864:20::2f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1m9-00G83d-M9
	for linux-rockchip@lists.infradead.org; Thu, 12 Jan 2023 17:54:07 +0000
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-1322d768ba7so19690391fac.5
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Jan 2023 09:54:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BU3kvftwMs6INtMUgzqd1f4M3QxV4J18BuRGXET1rSU=;
        b=Dn68AytckgZ7+FPEqEDwQYnMDY+s4G1xQJSPT3IQ4RL6aocKkEiRqJoh/FRCVnAkPU
         QmQWJECCTDlnu6hw+rzNl+YevmwKwu/rFWeYqz6beBkpxuDysnVLwPlfgYU7LJPuA0rx
         52cOz60NhYgTWsPuOU7ES7hBQWA+PV1RGyPQ3EDmglodBqjyV7X6/g+02zDy8pF6ijtz
         XH5sEytuEFxd5ubjGlAcetAwXWAqHoaxEnZYit3nVJTURWpMbg+mZrYghscZqS7HiI56
         lLd2DTkfpk+7zxhxSOvhZIloMMYq11L3xjQoyY+wct91WPocfU54WbW5Asn4yXl/USsk
         UCwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BU3kvftwMs6INtMUgzqd1f4M3QxV4J18BuRGXET1rSU=;
        b=KU76d9qotQxA5P2nPZ1v3RZOfTU+qwF4UdzrjqwRe9+7dUlDvY5ewm3BC/KVchGFTa
         Z7VqoGJm40bMa9jNY8b8Xlth7zNSH5wclsbB7HkTRLbuK9lhBU1rqqbaqKzCp6vh+AvA
         jiUNkBASY01aWIb2tGDNKRnbgAMfFxfgk5ZkKiQI2rTcRsNUMs9emSBNak5lzWLsNGql
         FsNAO+XaqoR4dh480E7jMGK5PBLV60qlI84eIFLYbGncBhom9GSBqCIXzXwLpWYHxElV
         dP1GIHwGdeLg3jE6N5NF6UWJiTr0yIYy1l5KIigR4+AlqoF1Y2Fq+2zbGn3V1WGtnxvn
         Z0Vw==
X-Gm-Message-State: AFqh2krzik5QSzu/uq4Ak5QfvlMgCxzNhrrQNxXCRHIxJ5ihdc5Z6CO1
	X3jLJFkQfFs1IE5XshjP66k=
X-Google-Smtp-Source: AMrXdXu7QWa0JZDKzKRsAcHFiqARAJXzgvzwpquK9O0+yrU2ZIMFBKsYzhmCYKIuxBXfVh4H0nj87g==
X-Received: by 2002:a05:6870:f707:b0:14f:f223:faad with SMTP id ej7-20020a056870f70700b0014ff223faadmr32092520oab.15.1673546043699;
        Thu, 12 Jan 2023 09:54:03 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id v17-20020a05687105d100b0014866eb34cesm9317049oan.48.2023.01.12.09.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 09:54:03 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linus.walleij@linaro.org,
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
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V10 0/4] drm/panel: Add Magnachip D53E6EA8966 Panel Controller
Date: Thu, 12 Jan 2023 11:53:54 -0600
Message-Id: <20230112175358.421975-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_095405_809682_85DA94DF 
X-CRM114-Status: GOOD (  20.07  )
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
 drivers/gpu/drm/drm_of.c                      |  70 +++
 drivers/gpu/drm/panel/Kconfig                 |  11 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../drm/panel/panel-magnachip-d53e6ea8966.c   | 522 ++++++++++++++++++
 include/drm/drm_of.h                          |  10 +
 7 files changed, 726 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-magnachip-d53e6ea8966.c

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
