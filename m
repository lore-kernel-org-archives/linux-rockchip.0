Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F13E3C38142
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jan 2023 16:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f8fMn40iUWX5nF9S3Rsw/Kp2HkP7uhue34Te9lyIl9o=; b=Nbj6UBstDvQ/hy
	m+Q4Kuk0ORQVOrj2l5KqOEUwbNGJROENpLdYyTbk/POxLHOB7pG6XdRHzTAOKg+Pdk/j2Shit8Lto
	K8iInv4verd4dvMRysXvtdGtTtScX4T0ljH1l9iodAUF3vwiGiO+9plbsq6dMGC2mXX23w0orXKkL
	4zHBaXTMUnpCy0cC2mR1vzpfrUo6WCzhXpgeGy6wsmXVc9xgXT9WEMjl1nmZ9WbOzGjjyA4tPY+wa
	QCQFmq4PH8r2XV2qjgy+uJ4ySZNboholN6vmZnntoeCp6RDsa8RnYH/RkYCsqyMG6AeJ7vG9WFIRC
	e1nYcC2r3t3z9LIYBdpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJzH0-000Ocl-Uk; Mon, 23 Jan 2023 16:02:19 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJz1R-000IbV-Eq
	for linux-rockchip@lists.infradead.org; Mon, 23 Jan 2023 15:46:17 +0000
Received: by mail-oi1-x22d.google.com with SMTP id r132so10677552oif.10
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Jan 2023 07:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VjT+KuUSRPoSSIx/ak1Yf8ilLHFBmPSpHObnSxuVDlk=;
        b=JkI3xCrdDTYGwjodwTGGhTGHwyPZCXe9UxkxyJ+qOV+Rxb/hr3pndUmtXFZAMlsObM
         +LBmtttWAsEfuB0V8CgqlCjAPnUTup4USr/X20JZFkU7uEZV1ADIWFIIWeRGBZHZIfdu
         95cLe0PQ9fdZuK99Yu0MDVkh3BMB9ul2l5wIOd9hSiFACONeFDDE8yyB0E2aTFz46NtS
         MOpYvu297eKpfvmEdiIHBN3UgFczNsqvPnSHEsF3E622rqrkQ9ATRqeL5FOio1T4JynI
         X9rWkhPW56RW0/jywW5icpKwcWTfkGF/ecuBxJoj6yAXXFbIFFSMEIhnm7PYpaqQdWra
         fqyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VjT+KuUSRPoSSIx/ak1Yf8ilLHFBmPSpHObnSxuVDlk=;
        b=MaM3YSpSgdlNHAD/qiKq8Pz/VR+Qkq96DcUYM+EYDiZR125w6BiLYY/uDG24el8Qq6
         oFZw6CONq1ry359HxG9hnVphxri8w4aRUHv/+Aw2qUd/CpTJWeeklRc/GW19yVn2Jl3k
         KuuQGttuQbzNn9khXXS8yYSnyO+uzRBBfOt0z0NArRNaFD0RyDTweW/L/YsgMVlPH5Eb
         4L5c5PM9TMVlhrgTqnLHzzCNuGdIqKpDwNjoY5979MyhMdrZOjVyjhzdF7C85IkuAHcR
         ZsLiGt7Za+OquPyPMoW9+z51x0Z046Tjy9MWZl5wmJ8h8UZ9PgNhGQgTVVDeS4bkfJUa
         ONcA==
X-Gm-Message-State: AFqh2koqnTEZLnAEhLxHffl4gVOLZ3+T6nSgddq9GlvBPL4vhr7Uiu3u
	bS7l1r4J+Dt2FENLf+23/fc=
X-Google-Smtp-Source: AMrXdXttBP2RmIY/4xw4OecWvT/GDZd3INZ+UJThZtbK5vEoxoW8KXfllMWRlNxkI6euPvlYpZ+tpA==
X-Received: by 2002:aca:d956:0:b0:35a:33d:5651 with SMTP id q83-20020acad956000000b0035a033d5651mr10895196oig.14.1674488771053;
        Mon, 23 Jan 2023 07:46:11 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id w13-20020a056808140d00b0035e7ed5daa1sm10040132oiv.26.2023.01.23.07.46.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 07:46:10 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
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
Subject: [PATCH V12 0/4] drm/panel: Add Magnachip D53E6EA8966 Panel Controller
Date: Mon, 23 Jan 2023 09:45:59 -0600
Message-Id: <20230123154603.1315112-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_074613_593098_63D2D7E0 
X-CRM114-Status: GOOD (  20.24  )
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

Changes since V11:
 - Added a "Co-developed-by" tag for Maya to capture her contributions
   correctly.

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
