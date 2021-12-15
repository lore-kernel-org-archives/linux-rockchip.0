Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B12FC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Dec 2021 21:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ypzRuVF/3AvRYM0OjEzZJ1j+1pxdopGjshfQd8YJw7o=; b=ApA9O49ZUs/U3r
	BaueowAB7YnjBufNHnlsOcSexnb1+9mTl4jtSjQA2xLxLOVGs3O3eykBMu1f/BG0N8ysmRhEqFmpD
	wg5BQKyaOiHnsAN7BDhcEuq1BLZ4NXolCgysKJP5IyjBzUA4baCrAem20AuKaI89S1BI4IQnnrz+g
	pa8zBn1cHpPar0c/Pp3aZu4Nbjx/lMKoIkNg1NizFJURMm78BW4pj7NviLUciUeZfJBtJmNVDrgzZ
	cKzWArskwYEIUtTUbL8sjeMbDf9BpvkGRt3ooztfPUb3ezm0YahsCog0hWGVId4SVBCS26Oq4dfto
	1L/iaAuDZ1agGYfGaYCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxbQr-002igR-La; Wed, 15 Dec 2021 21:03:25 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxbQS-002iVs-Nk; Wed, 15 Dec 2021 21:03:02 +0000
Received: by mail-qt1-x82d.google.com with SMTP id l8so23257950qtk.6;
 Wed, 15 Dec 2021 13:02:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rg/3hN0e0TCpLvswI7fQ10BFOQtPWlta0LiifXq1NbI=;
 b=m4vnhxHPtB66eBAgJXgtLtT1LXEt8GiBufJHnBQbk/kyJwztY7pNerexrZ8bvsfRTn
 sZDCZzgeeP+tARmrEhqM7xtYKA25U0DyxIezpPGkudj48aLWgFD/6+ycrY5HjS+9BKK1
 Dqek4Vlbw+ID3u0AhVx47wHOIlSJh+z7DC5EALE1qZu2Fy7v3vEJ5U1GU+MyfhTjQr4V
 3ZFoYgQvcucjF+wl6JhPVO4AvQKcaGq3mZMyv2G2mC8rAr5lqM/8CTxIPH+0Q9BGfmzl
 Hf+fMVrKwnjoFpGasxy+dnKBMhLvX0a2rCdw04xKGsSfNPQUMqwyugeruZzORTw7t+Ot
 2bvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rg/3hN0e0TCpLvswI7fQ10BFOQtPWlta0LiifXq1NbI=;
 b=Oze/AHnIzmvBB7shmI5QDBlqfAwTXhnHOVzMA8MTh/lv1r582BG8JHH4Op2ytrPpHJ
 0NUro0rqu9Vuf5ZKxYKP1IqFpur659guWpEJVwICmWF+EA8iTqq8BrJw1Yb+7mlxBIWV
 meRat+kOQ5asesRCX2s0JeHV0MBZvBDQLaA/NO+6CMMrLxM+hOjpbCobxnJ3PRackOmm
 EaldvqAjCp5LfMuu2JkpqV0+uWMnXx9YbVNtp5Nz3SqUtrcU2mP7WLh/xBd5V3cBz6y1
 pQtE4nGqGnlHISNQyBR0AH6byVL6WQr2ytnahb3h0VVdV2p87g3Xa7lqVml4q7MD16e3
 PTZw==
X-Gm-Message-State: AOAM533NznrYRiO6KUZ0tOY0km3Wb8BGFEC7Flag5TsfLNB3Y5V6FRVB
 BLdC0JY+LsTa6hTxWLOSo2c=
X-Google-Smtp-Source: ABdhPJwAzzADLtXZ0TSEB0cgsuZRavn1+kgANRdz7FqzEtZGT0zjUeqO3qZbwWB7F0PQWd6Y5qbdYQ==
X-Received: by 2002:a05:622a:15ca:: with SMTP id
 d10mr14054429qty.81.1639602177604; 
 Wed, 15 Dec 2021 13:02:57 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.md.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id a20sm1644356qkh.63.2021.12.15.13.02.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 13:02:57 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: 
Cc: Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Johan Jonker <jbx6244@gmail.com>, Rob Herring <robh@kernel.org>,
 Ondrej Jirman <megous@megous.com>
Subject: [PATCH v3 0/8] phy-rockchip-inno-usb2: support rk356x usb2phy
Date: Wed, 15 Dec 2021 16:02:44 -0500
Message-Id: <20211215210252.120923-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_130300_796842_0B793BB5 
X-CRM114-Status: GOOD (  10.71  )
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

Good Afternoon,

This is my series to support the usb2 phy devices on the rk356x.
The rk356x phy has a single muxed interrupt and has moved the usb2phy
nodes out of the grf and into their own nodes.
The phy needs to tie back into the grf for register control, similar to
the rv1108.
By moving the phys into their own nodes, they now have full
#address_cells = 2 register addresses, but they still reside below the 32bit
mmio range.

This driver series only supports the host configuration for the rk356x.
I have have tested it on the following:
rk3566 - Pine64 Quartz64 Model A
rk3399 - Pine64 Rockpro64

Please provide feedback and comments as you see fit.

Tested-by: Michael Riesch <michael.riesch@wolfvision.net>

Changelog:
v3:
- adjust usb2phy dt-bindings to filter correctly, thanks Rob and Johan
- adjust usb2phy dts names to fix alphetical ordering, thanks Michael
- squash "phy: rockchip-inno-usb2: Don't print useless error" thanks
  Ondrej

v2:
- correct the order of the usb2phy-grf dt-bindings patch, thanks Johan
- correct the conditional requirements of phy-rockchip-inno-usb2, thanks
  Johan
- drop increase generic-ohci clocks patch, thanks Heiko
- correct rk356x.dtsi ordering
- fix a dtbs-check callout

Peter Geis (8):
  dt-bindings: soc: rockchip: add rk3568-usb2phy-grf
  dt-bindings: phy: phy-rockchip-inno-usb2: add rk3568 documentation
  phy: phy-rockchip-inno-usb2: support #address_cells = 2
  phy: phy-rockchip-inno-usb2: support standalone phy nodes
  phy: phy-rockchip-inno-usb2: support muxed interrupts
  phy: phy-rockchip-inno-usb2: add rk3568 support
  arm64: dts: rockchip: add usb2 nodes to rk3568 device tree
  arm64: dts: rockchip: add Quartz64-A usb2 support

 .../bindings/phy/phy-rockchip-inno-usb2.yaml  |  44 ++-
 .../devicetree/bindings/soc/rockchip/grf.yaml |   1 +
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  52 ++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  98 +++++++
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 259 ++++++++++++++----
 5 files changed, 396 insertions(+), 58 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
