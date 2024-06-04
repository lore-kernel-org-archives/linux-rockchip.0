Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4AE0C27C54
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jun 2024 14:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6C8t3COyi3ZPjvZIuA2gpRYy0Ej/XNSC46gXVam6GI4=; b=LUHYC9hdWEvOMH
	QJtR8ydNcxzkMbqA8+132W5cPhAnQukTnjbCwwcWaWuqOUKio0ciGdY4vhoNXnGz2PbKHVPmVMV5r
	RxirGB0eA9Tj7lwPVMXDR+1nMOjMjO4rjlWvgu9T3JapprQPxy2QYV7ir33xgBiayj+3erDrRQmnr
	1c8cUPKpEtxfUh2qhr0Gr5SspP0EO6owqtO0cvCPA87KQIJuTXDLwX2IM+RcapADjrxf32EZhr/th
	D+wkTRZWjneJTD6LR0BIjumq4ywe35Uexu+p6DGVuryzPHD/peYNxFHxeiEGhBU8JWui6SlRtGFx8
	x2CIDUdrSow8CUsDPtBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEUte-00000002dr2-0JT7;
	Tue, 04 Jun 2024 14:12:18 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEUta-00000002dpc-0isU;
	Tue, 04 Jun 2024 14:12:15 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-52b8d483a08so4545482e87.1;
        Tue, 04 Jun 2024 07:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717510331; x=1718115131; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sTI0bo9QlSR3jF5fzKL/lNTXRRTehVU4sAkZtkhRBzM=;
        b=muZWQsYJEnyT/XypFGhYEzPeecjYIaCzvkL20enqLsVL9974vyVGPu4cpTJvFKwHSA
         L4QkCILTLPz3xffBQu+VZth4NOP3Z7TQ6mWELfMZBWK7L5bZZ73PFSdxbnnqdZ3ObMP7
         mUwR6Ri8LIYi3+ZpaFrHbZFIl68MhGaChTCrn6b966KWDaRzO0jfa2vv1gtC19n3ttma
         8Gpv3CKVR5Kl35y61bnFLA39n9Xez6Dc9z4zo2FxKI8+1c0gyOQHbAU+nqwu5EXQy6/1
         Vj2MW4+fnjHVveHzTRgvO58gIUnTUv5DF6ZMstfGBiUmSDsCl5NCVGWYd56daXweuiBl
         uA8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717510331; x=1718115131;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sTI0bo9QlSR3jF5fzKL/lNTXRRTehVU4sAkZtkhRBzM=;
        b=ahmSGkx44zq8hC2zxzgP7yYK4jP/c0HS/D2ieuk3WQ+bFFMsl5H8farye46gZAIdbq
         IbAXeNElcMx1S9D/WUfLa67BeXeix5l+abOnJe3M92uWUkxvA5/FKzQffdpKpxHQ+Y3k
         /nYzp0DMfWce+iZkt4bNAeurlqx1zXqjVf6tXoOCwt3Q9iahhzDcN2B7egmoRXagTt8N
         KDe3gUXiLR3fOBe8C6lbcPgBoB5zJmFUvT+qSdu4dzinKMETVAesPEYyAv+xO/cktLpx
         7Or0lvAc1zogG9HMjYwT9+hL6bMpuL1eO7vyKsCk7XcAhSdsU4rDLnOUN4d2WS/iZmvM
         7rdA==
X-Forwarded-Encrypted: i=1; AJvYcCWHS68ZGeotgMNZCuxGavt8UQtUNTjbk3Vof7yrM5XNnMut9XtDfqPEmO+BY32b+P9KaY1Jm9cL5POIDUP5iJ36BpIUMJ3XbTSyAgka0hsrk0vND7OQGCPvzby6zftOn56icrNO8/zFH98V54/oMf1h8bY9N2D16g0=
X-Gm-Message-State: AOJu0YwMoApflIqQYRXRIirhjJDMmEjh4Rgu+fPmoPaz2tC3VpE0I9pu
	gzWcWhgufdD9sfOz547rlY4IN2IAXnc6LEsotDJ0APGKjXhEH6wn
X-Google-Smtp-Source: AGHT+IEX+hO1fjOTWqgdmiNAEFg0qrDQFDw6cG1U1FlLDxT3z8cZCdVuh8JspRxuIl3ApF0IENghfA==
X-Received: by 2002:a05:6512:3e24:b0:52b:874a:7df with SMTP id 2adb3069b0e04-52b8955c5bfmr9728475e87.12.1717510331074;
        Tue, 04 Jun 2024 07:12:11 -0700 (PDT)
Received: from yoga-710.tas.nnz-ipc.net ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b982d3de7sm742743e87.2.2024.06.04.07.12.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 07:12:10 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Jianqun Xu <jay.xu@rock-chips.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Yashin <dmt.yashin@gmail.com>
Subject: [PATCH v3 0/2] pinctrl: rockchip: add rk3308b SoC support
Date: Tue,  4 Jun 2024 19:10:18 +0500
Message-ID: <20240604141020.21725-1-dmt.yashin@gmail.com>
X-Mailer: git-send-email 2.45.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_071214_231993_BBE308D2 
X-CRM114-Status: GOOD (  12.86  )
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

This patch series and adds support for pin controller found on rk3308b.
According to rk3308b TRM, this pinctrl much the same as rk3308's,
but with additional iomux routes and 3bit iomuxes selected via
gpio##_sel_src_ctrl registers.

Downstream kernel [1] managed this SoC's with rk3308b_soc_data_init,
wich picked configuration based on cpuid. Upstream pinctrl patches
droped soc init function.

The function rk3308b_soc_sel_src_init sets up gpio##_sel_src_ctrl
registers, making SoC to use 3bit iomuxes over some 2bit old ones.

These patches have been tested on Radxa's ROCK Pi S, one based on rk3308
and the other on rk3308b (from the latest batches). For the new boards it
fixes broken spi1 clk.

Similar effort [2] was made several years ago, but without keeping base
rk3308 SoC pinctrl support.

Based on feedback from Luca, Heiko and Jonas, the v2 series droped dt
binding in the favor of runtime SoC detection, so iomux_recalced and
iomux_routes updated for the new SoC's and patch 1 delays recalced_mask
and route_mask init.

[1] https://github.com/radxa/kernel/blob/stable-4.4-rockpis/drivers/pinctrl/pinctrl-rockchip.c#L4388
[2] https://lore.kernel.org/linux-rockchip/20220930102620.1568864-1-jay.xu@rock-chips.com/

v1 Link: https://lore.kernel.org/all/20240515121634.23945-1-dmt.yashin@gmail.com/
v2 Link: https://lore.kernel.org/all/20240529143534.32402-1-dmt.yashin@gmail.com/

Changes in v3:
- Witespace cleanup
- Add Luca's r-b tag
- Rebase onto linux-pinctrl for-next branch

Changes in v2:
- Drop routes fixup patch, already applied
- Drop dt binding patch
- Add new patch to delay recalced_mask and route_mask init
- Rework last patch from dt to runtime setup with rk3308_soc_data_update

Dmitry Yashin (2):
  pinctrl: rockchip: delay recalced_mask and route_mask init
  pinctrl: rockchip: add rk3308b SoC support

 drivers/pinctrl/pinctrl-rockchip.c | 286 +++++++++++++++++++++++++++--
 drivers/pinctrl/pinctrl-rockchip.h |   1 +
 2 files changed, 267 insertions(+), 20 deletions(-)


base-commit: 32335efff386d04961b178d4c6b7d1ccbafb729f
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
