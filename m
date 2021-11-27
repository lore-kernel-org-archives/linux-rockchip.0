Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 496DDC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Nov 2021 14:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0/ia9BGLt+XJabsqYGVz2TyUj+W5eNCAjfWjPlPKX6A=; b=CIEJ38YDt9qofE
	0OQc17PVLAeH9A++rupbMDC2A56I50ZX0//W6NgHyElPnlQQ4XGQKJVdpvrzVyQ4DaX85foJ2XId6
	Pcx9xGgufuP+WH3Wdn0mxPClR0IF9sIpyPCxg3VWFsUjDPT4ecCtD22Zw6l+qsHfdi7F49STUB1Gg
	/UtPEW2h31OAS/hAwrrzxWDWeh2I3G8WarpDpHXh1ByLcpU44ptiqct1Ghq5J/DkmpjSdO7Zz8FNQ
	M1NU/3/iTN6IDjcBL5Y+Dh+mBv3MxAMIYCsKlE2g7MEE9KGSON3S+W7BFA+uMJ0E0DJF+QXjh+pO/
	arGBDnbFricKrKl3qSwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqyYE-00DmT3-K0; Sat, 27 Nov 2021 14:19:38 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqyY1-00DmQj-EX; Sat, 27 Nov 2021 14:19:26 +0000
Received: by mail-wm1-x334.google.com with SMTP id y196so10467007wmc.3;
 Sat, 27 Nov 2021 06:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xFp9yJ8rZkXgj7ePptPkWdw3Q/P2qqDL2o/jvz8fSVA=;
 b=Dn/5p85mul5rJG5QzcqwN+ymmrQpsTyNF1VyBb2/2WRiYgMzUPB9hGQ11+b0LyEUv2
 ncY3otlJKo7WXwk9WFGo8fPd3fvHZfDvV+nC9rv6ka9AzI36Bwx50riZVrIMKsNSUhcz
 zkbt4l7psn/G8HNBZDoCQbWZX0l0ivQ010vBHlF9yWMZ2rMGoStb1C1Ce7OxiX620dVl
 ALe5zhflAINYKJK8fyI5FLz8jFdc+sZTzmMJiAdMxfiKMDDO27LeAry0i4p/QlvLdd5+
 0534c51K3c+DjQEAKBqha2Q0v16Cm7ZjdBeA4UOkaQpWFRwFN3fmnra7U3hDprTRTfrl
 2hSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xFp9yJ8rZkXgj7ePptPkWdw3Q/P2qqDL2o/jvz8fSVA=;
 b=ztFpKvllNNXlQ673fT6Q2xN5NsSMu2n1FI+sdaNlo4FPg2fUhv5v4STmnsQjJ8D3V2
 eyJeRfLNztTk1m5IWDA5MckIPZtDhb6IUbrdU+VLcEMmibp2PkCrc+DQz3P227KFV7oe
 1+dfXm/A/H/z2uOipY/H2EiZfqdMcv++TwiTUmj5oM7fe9ykQ+Gn+4GljJ/guPyde31G
 0VHKQv/klLaX78pu+N0HfVxsuvfglrQ/DgPbmUypYAgGuLQroI6yeJMXwevzoG19oIsv
 iPWZtN7DNH4PpZl5tuYQiuqoJZhizm51Bfu8qRRKNPDPzM/81ECHJronaHglexW2ZKKn
 BV0w==
X-Gm-Message-State: AOAM531nZxAcJaNJIzHOkbtgvMcRC+Un3wXYgVSGxbYmVwDAWPVlTdeg
 OPDkgSK1Bf36SAXBEA+e7Rc=
X-Google-Smtp-Source: ABdhPJzBzdfHExsOWLTrSNW4E0mEbnVK370gPl2fRqZmj0TWJi+4C4nBiEub4EfNn6LocJn0l3xXOw==
X-Received: by 2002:a1c:f418:: with SMTP id z24mr23529383wma.95.1638022763324; 
 Sat, 27 Nov 2021 06:19:23 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id o1sm8509839wrn.63.2021.11.27.06.19.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Nov 2021 06:19:22 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] RK356x/Quartz64 Model A SPI
Date: Sat, 27 Nov 2021 15:19:06 +0100
Message-Id: <20211127141910.12649-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211127_061925_575779_32083EB0 
X-CRM114-Status: GOOD (  10.36  )
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

Changes in v2:
 - sort properties in rk356x.dtsi correctly
 - remove pinctrl-1 line from rk356x.dtsi as it refers to
   non-mainline stuff

Original cover letter:

The first patch of this series adds a compatible for rk3568-spi
to the DT bindings.

The second adds the SPI nodes for RK3566 and RK3568 SoCs. The nodes
were lifted from the downstream vendor kernel's devicetree, and were
double-checked for correctness.

The third patch sets up the broken-out SPI pins on the Quartz64
Model A; they use the "m1" set of the pins, not the "m0" set. I
assume the "m" stands for "mux".

I've tested both patches by connecting an MCP2515 SPI CAN bus
controller to the spi pins, which initialised fine.

Regards,
Nicolas Frattaroli

Nicolas Frattaroli (3):
  dt-bindings: spi: spi-rockchip: Add rk3568-spi compatible
  arm64: dts: rockchip: Add spi nodes on rk356x
  arm64: dts: rockchip: Add spi1 pins on Quartz64 A

 .../devicetree/bindings/spi/spi-rockchip.yaml |  1 +
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  5 ++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 64 +++++++++++++++++++
 3 files changed, 70 insertions(+)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
