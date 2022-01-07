Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B225C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jan 2022 05:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IuRhYpRiCiWefWaHlxleg6Kfb9HyB88z3RXxVRG98eI=; b=GBBhJaBeXgxluX
	I1TrY4ocHovZ6nJJ/lr4KHZXMITmO3ZYAJ71fdNqThLMlcFuUHw8vnh1Fiyh5bAPyCQuzlnx72e5Z
	lqgMLfBpQppxU5OtJPvohjoKsac2QnnMs08FxGgBmcbKBw+JvGrcK5zAsateZp8x9rjucxT7wihEZ
	EzILF8+MkCqNVDOoKHXz9bE5davbWpticNKYbYo26WNGcAtViAZkz5AI7DlnmFkF/NxjSBSf5foc+
	XasC8DI1GO3edQhDZab3IHjzPKY1bafzOF/NsCpqcUQbV9k0O82RCAM0u7g7aObkVkJ5I7fE74TKu
	X8KfbuDvFKXJmr6BPwqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5hZb-002L7T-HW; Fri, 07 Jan 2022 05:13:55 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5hZO-002L0i-IK; Fri, 07 Jan 2022 05:13:43 +0000
Received: by mail-qk1-x72f.google.com with SMTP id i130so4947074qke.3;
 Thu, 06 Jan 2022 21:13:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Li/jQ4nlT3gPpvd1NyTQnIxzc9JA+p42BI5110gVryI=;
 b=flgkUHgw4ONbU++HRN0/dcycqmYpQtCeuXbAZ978Y2HlS3hd45yMtsBSdhQcwc8dL6
 69sqSq1ogMCvac19pdxhTNzIZhDwegFYIGfnPiXMZ+4DLXSZt5wRv0OniLkLUBGnB2b7
 XjTjbETLYgbS1L325wN3km5U6+gHDtMKydhcAFVwrcdJ4nebFD1W5I8i/d5AFzezksmg
 R5eCgAJu720OURyKmnAEgKN/CP1b6r0GiTdOTLPcbvcRLtzaC3K+cs4NpK8hSU46Dvoq
 NDsJc9q499uGQ91vEnxGq1JnCW+DAwNuRdUrrOyXZZk/TCHKbbGsUhaormBvLtjqEVd4
 9Ugw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Li/jQ4nlT3gPpvd1NyTQnIxzc9JA+p42BI5110gVryI=;
 b=ENDS+TH5GHosRwBI2ppN5jmm/TBl+IGkV2DTR9abQHDpNemoamUlFETMmHaWYIjCqI
 8dW7DKcYL0wSNVlPusOa2iWQrEZOBmksBVaWwWefxQtny+nx00mgByJJ0D9PdAZWABQW
 kmMtRRfpDC2QGpKkSD14M6SH2YaelLOf2xA2Is8AXOhhlXHOqPj56z+b/tifCQTb80X5
 +KD/s0cOSH8QDx5WO7p6M3k5d+7Oh/lby7bIo2E0w6tDnwuC3KJiy5M2FTilTg/zx1NS
 uWi6qOhNY+Nvxw64Ipg+XDGeXssw4PuOynQ86J0/Mma6H2Z4zAzTnWXJNR1ADjrzEj6d
 jEDA==
X-Gm-Message-State: AOAM531XJ/UNFGrEiNLUTkI+8pd8NjJpX/VAKvEnCBfAtETcesEpuMtv
 3kunMdouwE2pnkV7bbDzJF8=
X-Google-Smtp-Source: ABdhPJwKY6h//TE+tGAQiabm+i9yikHXhF4LBqqUoo9Q9fDk3rh6FQkdWelmqULqZGdTfgcbWDhPpw==
X-Received: by 2002:a05:620a:40ca:: with SMTP id
 g10mr41638232qko.425.1641532417910; 
 Thu, 06 Jan 2022 21:13:37 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.dc.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id d15sm1651461qka.3.2022.01.06.21.13.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Jan 2022 21:13:37 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: 
Cc: Peter Geis <pgwipeout@gmail.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 0/4] add pine64 touch panel support to rockpro64
Date: Fri,  7 Jan 2022 00:13:31 -0500
Message-Id: <20220107051335.3812535-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220106_211342_616400_4ADD71F2 
X-CRM114-Status: GOOD (  11.56  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

This patch series adds support for the Pine64 touch panel to the
rockpro64 single board computer.
This panel attaches to the dsi port and includes an i2c touch screen.

The first two patches involve making the reset pin to the Feiyang
fy07024di26a30d panel optional. On the rockpro64 and quartz64-a this pin
is tied to dvdd and automatically comes high when power is applied.
The third patch adds the device tree nodes to rockpro64 to permit the
panel to be used.
The fourth patch is an example patch to enable this support, tagged do
not merge as this is something for the end user to enable only when they
have the panel attached.

Peter Geis (4):
  dt-bindings: display: panel: feiyang,fy07024di26a30d: make reset gpio
    optional
  drm/panel: feiyang-fy07024di26a30d: make reset gpio optional
  arm64: dts: rockchip: add pine64 touch panel display to rockpro64
  arm64: dts: rockchip: enable the pine64 touch screen on rockpro64

 .../panel/feiyang,fy07024di26a30d.yaml        |  1 -
 .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 80 ++++++++++++++++++-
 .../drm/panel/panel-feiyang-fy07024di26a30d.c | 11 ++-
 3 files changed, 83 insertions(+), 9 deletions(-)

-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
