Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04B53ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 17:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AZ8pY8OgFj5zmHMYZQC42hFEST0g7QzSfH7EJLZxkbo=; b=k4sI7k3uB+fUIu
	sRnHVmVWegLNsU6AMx2QX3UeBwfROJXHb+rMS62Kuq4QtgvZ1Qc148p3UYvIsALCax0Q1kyYULSmO
	wgPeCfT8D3bzmHOkK/9Cz6bMEBcCNkAx0TC5JLk1MfMyJKzYL8/6gDu8cUNmCgvWe9fGAO1/GFTCh
	UbdvHeFykZ4oN3w3ZNe605RK7Pmlcw9VippGlOCwX08ZhYJ2rl4foOEi0xv9VEZznvErDYYZR0k6u
	Vh63mud0XovP3eCjsbj5haojRzIkze1SGNu/Y5rGfwbNOfOkrPeOMt8Wu9oYsRx1SwxB3OKr0pMeC
	NXxtz3Gezdt7oMxuZN2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVcj8-00G7km-Ik; Tue, 06 Sep 2022 17:51:10 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVcgZ-00G6AI-HG; Tue, 06 Sep 2022 17:48:33 +0000
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-1278a61bd57so11485207fac.7;
        Tue, 06 Sep 2022 10:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=V+Mmbr5yPt+hzlxY76gjjX8n/7WZsL2sfwWOuEEeXvE=;
        b=QqhEVMt8kblJwysbyUcRBMnek45NF0eS6ZcED+xizTm/mIQ4SMEdit2M7Wm9C6ek0q
         LM1rMLUak2/pOfeVfHYsEGe68lV++x9DJL6IUQLKoVflrokh+91pnBXt5s1Gbi8sjdvJ
         +NCwvh+mfWPIOiR4XlhhTRxduBER5LYDLsoYzqfj+FPTQt2T4o9M6DAqyDCKPOaZe8z3
         E41w2F+iySUatH36XEBYA004nEmRUumvQqRvaMQyWdytpcO4iHxNeCqQohWZN8JT9YqR
         qgo30y8D0nvNd0YkezKUmHLDjkD10TcMjNp1Rjw1IvZleYn7cShcN5dTOqL+jPi8kvOI
         QGOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=V+Mmbr5yPt+hzlxY76gjjX8n/7WZsL2sfwWOuEEeXvE=;
        b=pU07fR2yKse4W9G82mPq7JpudoYx2SaxszUxvuhdJmB4SJ08r7cgDtqJ06BRyQy3Ma
         ZOx0k+h83qPx4Y6mHZ6be8RLcAZ69NwAluchDhcumb5Y9QUx8z4oJDBT2it9CqfYSK8l
         psTbH49BwQGQRc290N51lyGz3XUVuUtMjAFArSE7HP3maOoN1dCPT7BewKNmgwnsreYq
         bDzJl5qDnC0MNhUtnPrHOBYFPhZeq7mHkMZJssihVdadRYlBgmNR8/1i3K921NW6DH+t
         VhWU8x3hu9OI8LBmbz82Od/mMCpIUd7uPZLpsZlG9v4ZEFOMopOA/O9tp7yAClEM38aq
         tCvQ==
X-Gm-Message-State: ACgBeo3Te/QRLvs0Sd0F4Vg4mOwxVs0kGMN2p64xMGm5XMdMJE5wuzMo
	q7UTCxaONfnr/yi/F27kNpErx3lPjBk=
X-Google-Smtp-Source: AA6agR6HtjFhOOV4l9cuIu//XrbRVuTn//iCK4t2CYBvn25ACKq2aILTOYUKNNymd0pNMDltxtxwnw==
X-Received: by 2002:a05:6870:89a1:b0:10e:4357:45b3 with SMTP id f33-20020a05687089a100b0010e435745b3mr12123039oaq.127.1662486508233;
        Tue, 06 Sep 2022 10:48:28 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id o186-20020aca41c3000000b00344afa2b08bsm5568065oia.26.2022.09.06.10.48.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 10:48:27 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	cl@rock-chips.com,
	s.hauer@pengutronix.de,
	pgwipeout@gmail.com,
	vkoul@kernel.org,
	kishon@ti.com,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@linux.ie,
	heiko@sntech.de,
	hjc@rock-chips.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2 0/5] rockchip-dsi for rk3568
Date: Tue,  6 Sep 2022 12:48:18 -0500
Message-Id: <20220906174823.28561-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_104831_629833_9C602604 
X-CRM114-Status: GOOD (  11.85  )
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
current series DOES WORK now, but it requires rolling back clk changes
made for the HDMI driver. If the clock changes are not rolled back, the
image on the screen is shifted about 100 pixels to the right.

Clk changes in question:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/drivers/clk/rockchip/clk-rk3568.c?id=ff3187eabb5ce478d15b6ed62eb286756adefac3
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/drivers/clk/rockchip/clk-rk3568.c?id=6e69052f01d9131388cfcfaee929120118a267f4

Tested on an Anbernic RG503 and RG353P with clock changes rolled back,
the hardware works correctly on both devices.

Changes since RFCv1:
 - Identified cause of image shift (clock changes).
 - Noted that driver works now.
 - Added devicetree nodes for rk356x.dtsi.

Chris Morgan (5):
  dt-bindings: display: rockchip-dsi: add rk3568 compatible
  dt-bindings: phy-rockchip-inno-dsidphy: add compatible for rk3568
  drm/rockchip: dsi: add rk3568 support
  phy/rockchip: inno-dsidphy: Add support for rk3568
  arm64: dts: rockchip: Add DSI and DSI-DPHY nodes to rk356x

 .../display/rockchip/dw_mipi_dsi_rockchip.txt |   1 +
 .../bindings/phy/rockchip,px30-dsi-dphy.yaml  |   1 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  72 +++++++
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |  51 ++++-
 .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 204 ++++++++++++++----
 5 files changed, 281 insertions(+), 48 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
