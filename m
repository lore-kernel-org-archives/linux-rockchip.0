Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E07AEC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Dec 2022 18:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E84o49d/5LvLH92gXmeeSOBqXh1UZWecKJ4jsGfbVqU=; b=3ElayBStYl6UkN
	cwaGLpVBBJ0p5Z2FhArEcB+i8GnqSZylpwWBN/zGvA8b2Fe9lk9YC6EjSCz/q1VHu1Gb6lXptSdQy
	RDhopZ7bKnPhytl4McktzYP4PcgDDGjnshN0pR6YOxRrhVY/vUKxLA1FIDtDC/SeFs8Msr/ASK0bd
	+GWsKoY++rKv+/71hHEHU1008s+LAnXU3V5Z0z+drG1JbpMAQVNqO5XliT6x+5mg8gHTCnB8IJqWg
	dZ8gGCvt6hfaJmsoMDP1vyhe+TMa5WXoP6KEbGj6DZIqG7sjO+GBHM0612RR9B6kc7cYuuRTX4gc1
	0Uv/uIWw46L2uoOsDiTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5tLD-00Atyh-75; Thu, 15 Dec 2022 18:52:23 +0000
Received: from mail-oo1-xc31.google.com ([2607:f8b0:4864:20::c31])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5tLA-00AtwT-8t
	for linux-rockchip@lists.infradead.org; Thu, 15 Dec 2022 18:52:21 +0000
Received: by mail-oo1-xc31.google.com with SMTP id q2-20020a4a8e02000000b004a0236114ecso24754ook.11
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Dec 2022 10:52:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=obKXGKhdezaANc/b4vG1rAvVdxbFcZUhrsHZMR12SlM=;
        b=OrZUziRz0gZiHIfPRHjEhiLdKTiCM8uoEoqnlOAbUprHIymWJuMVa97AkwLIxIzrRO
         Nuy+tkNlFmsXxLsF8AYidwvQcpV4R9OkhaB0ejhR+uHxEnHKR495CRumwo6si7bVDwCD
         y1hjQN1shf1eP1Fl+grqgmpkhWZkSz0NaeAngJolwCNQ80qg+HGBihIDTe7wejTD5W1i
         p/12Nf2MCWaF59XQOqjJQ1qgEwB1JZdLFvBrwjNYAz1doBXCWxdouT1Ly/grIf6Ta6kc
         GTKw39aYzwLCdasuKzGDAOP7vtn5Apx7eV4mLljp29HzcI6fFNzx71j96mNVAn+jz4eF
         4bEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=obKXGKhdezaANc/b4vG1rAvVdxbFcZUhrsHZMR12SlM=;
        b=hp/iWDyZK8PyGlqpux+ouz+U0HXt8Cg4Ooh61New3SY/0GMv7AeDPpPO1zRoZsWak1
         jR910fKTV7vpQzpxd8TKlXnGQhDzRgsbqB8/eezn7rK6wibPjB12oxBZ1MZLSFS9rjZx
         wQrh2/IvVQXxDuMFROm1jFE4TehPfVfgwpiNL0SKC1bGq9VBF9OUg/1DS4Ghs01JQDXo
         cHCLAqMakGPUf+mkDDXzGmNrT6F0EzquXsPStdded/hqClL5Xero4wCF7kADZN6Jsxrj
         f6AgyAyd1Npot4p/sKqL1ten4LjhBlitEQVz6j+W2XHIFmX5wlDMAfjdmczb1p9QPypT
         C7Tg==
X-Gm-Message-State: ANoB5plt2t1ENxwc/2UNdK6hkI4cXMRw43EAfV13K9aogwRWeHYeZfqA
	IE6hxWkDeVN4LP7BKJ8MiQY=
X-Google-Smtp-Source: AA0mqf5sdfafpVcxAYrRWb4N1scUZkG0vKA8pWjSrX5LXLjb3IwQLRuArYIrCqDJUKTZQa/GHjFrgQ==
X-Received: by 2002:a4a:d010:0:b0:4a3:9f7a:add0 with SMTP id h16-20020a4ad010000000b004a39f7aadd0mr12112492oor.5.1671130337766;
        Thu, 15 Dec 2022 10:52:17 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id g11-20020a4ad84b000000b004a09df5a1dbsm72264oov.8.2022.12.15.10.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Dec 2022 10:52:17 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
	maccraft123mc@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	thierry.reding@gmail.com,
	linus.walleij@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V6 0/4] drm/panel: Add Magnachip D53E6EA8966 Panel Controller
Date: Thu, 15 Dec 2022 12:52:07 -0600
Message-Id: <20221215185211.1560736-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_105220_342001_FD0B5627 
X-CRM114-Status: GOOD (  14.81  )
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
