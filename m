Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E07E8C00140
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Aug 2022 14:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f/MOoiBQoULu27J59o9gUWdWc54t+pBTI3f/Gknqm7s=; b=A6jJwvfnus/2yi
	oCk0FGETHHdooPNCsimdE/EIJtnG2joJFTfmjCxsMw9yCtk5jHc6hxRVu6vMH0KmfTxWT4Glh79GC
	CzHpODInnjxanEAJyGLcxV7CIrHeENThWun/QH8ESE0xhM76jr4VkelB55hHAqYmdMVI09sx2y6Dz
	rihIpX1InV5XEIDvzy5tsKWUbM30hbxfd+SvLqa0XqVGXQoPU5qGmJuQWu7axHdmw/h5Qd6JBbfDb
	8vaQaDhr7G3Z2om4vnGnwtbZPy7FyKAk5aQunlJ1419Jz2fAaEatLXKY5sxZzGYmMomU9UUZ1oL66
	hH+Y5qAT/nSq6h9eXY3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMVig-008xpe-OJ; Fri, 12 Aug 2022 14:33:02 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMViY-008xiM-9G; Fri, 12 Aug 2022 14:32:59 +0000
Received: by mail-ot1-x332.google.com with SMTP id t11-20020a05683014cb00b0063734a2a786so661164otq.11;
        Fri, 12 Aug 2022 07:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=hTos8OHgwFshY7dxk6YkVaVl45UAbrAfHyN2eZ+ZjUc=;
        b=DFtvGARmm+GsyUAA3dGxfVZOL3HaJlJjuzo5fkGeRjK1IBhyqZxNK5MsHPZE5TnCeP
         5pgK0WZF1wEJkfwf5fn1OU4cw+/d/vzFq69g3cJyiD2j1G3TnSoBFzAhQ27pMSxIuhnH
         h0PWCibH5HVdSPe0lVy8LSIebmlgHfrejSDkZ6+s1XM41mUcxzHXEWbK9l/M9Sgf6WiX
         EGNjXA4RTdEbcf9jBrj9SiUBRZXTfnjdl42M/HAvezBVX+soLPsn6XGIfiLI5AkmK+eK
         f3ITY+y53bC0R86QHqgvXVmog0yBpLFSxZ9s9QFTJiI86/m4xpsXlBhOpCb+thM11kju
         iLWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=hTos8OHgwFshY7dxk6YkVaVl45UAbrAfHyN2eZ+ZjUc=;
        b=WpZQR/EI6lEBTj13dYv+aUzGZ8uGfLW5bjWqPT6i3a7WCzbYV4LrsrO0DAAyQ6fSeS
         yoiMvRTa1l+RrrLgG5bU7B891R81ItHCwZDAiRxYCIppYGG5cSeQ3SpM79Yf+/YUTWnU
         U0BP9Gtyrg9wr7XRngNKzYEPixssGzirFKiGS4zMAHcw5Lj6eq6u+RiZWLl6CpTHnVBE
         XDRTM2KPVx1v2DxV0qVzcYZSEYCC4lD/1qcFVK/PPbUid0u/CE/GlpiinPNWYdLZDTG7
         GMu7TN+l65TyXm3WGCqPKYLaDJui61SWcFbD0/9tFWi5nZiHP/EDdwxjpliw+87k8aJP
         Dylw==
X-Gm-Message-State: ACgBeo02DDVPuWQpQw9Mz1NodBdFdrhMq8Osxd0jxqXxnYBHRPm+J5NN
	jmPkvyfWNMWjgE2ycsb1UOFoNORhoug=
X-Google-Smtp-Source: AA6agR4gGe3vsOcQQhWRpqOHohyJTInaQR4HayXakB9KjD3urVkHTl1NNhMiBgegZArCRWUv7LE8FQ==
X-Received: by 2002:a05:6830:1699:b0:637:1f6c:f9eb with SMTP id k25-20020a056830169900b006371f6cf9ebmr1555004otr.17.1660314771414;
        Fri, 12 Aug 2022 07:32:51 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id n28-20020a0568080a1c00b003436fa2c23bsm282879oij.7.2022.08.12.07.32.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Aug 2022 07:32:50 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	vkoul@kernel.org,
	kishon@ti.com,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@linux.ie,
	heiko@sntech.de,
	hjc@rock-chips.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [RFC 0/4] rockchip-dsi for rk3568
Date: Fri, 12 Aug 2022 09:32:43 -0500
Message-Id: <20220812143247.25825-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_073254_364958_49D027C7 
X-CRM114-Status: GOOD (  12.38  )
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

This series adds support for the dsi and dphy controllers on the
Rockchip RK3568. I can confirm that for the Rockchip RK3568 this
current series DOES NOT WORK properly yet. The image on the screen
is shifted about 100 pixels to the right and does not appear to be
a timing issue. This behavior was observed on both the Anbernic RG503
and RG353 portable gaming devices with different screens. These changes
were also tested on an RK3326 based device (an Odroid Go Advance) with
no noticeable regressions.

An example of the issue on multiple devices:
https://media.discordapp.net/attachments/973914035890290718/1007407064647221299/IMG_1999.jpg
https://media.discordapp.net/attachments/995430498677571604/1003754966932008960/AB25898E-73EC-40A9-BD47-3FB970DDFB31.jpg


Given the fact that the DSI controller is identical on the PX30 and
RK3568 aside from different grf registers I am assuming the PHY is
likely where the bugs are currently. I'm posting this as an RFC in the
hopes that someone more knowledgeable than I can help identify the
problem.

Chris Morgan (4):
  dt-bindings: display: rockchip-dsi: add rk3568 compatible
  dt-bindings: phy: phy-rockchip-inno-dsidphy: add compatible for rk3568
  drm/rockchip: dsi: add rk3568 support
  phy/rockchip: inno-dsidphy: Add support for rk3568

 .../display/rockchip/dw_mipi_dsi_rockchip.txt |   1 +
 .../bindings/phy/rockchip,px30-dsi-dphy.yaml  |   1 +
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |  51 ++++-
 .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 204 ++++++++++++++----
 4 files changed, 209 insertions(+), 48 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
