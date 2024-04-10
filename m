Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80CF4CD11C2
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 11:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QWTJrsPuO1nZQZArh2ENCoQtSmklFzaq7KvkPLfeIY8=; b=HWOwvUVWSBMwX+
	h9fKB6/DWvEsw5BGiR0wjahooul3zaPxLMrlw/NnpbMeh2Bl9w1JWMtUKTvL4OpFgLGU0Klq63Vok
	Z3kp5rYm19dlVtCFlyLz3JLfOaapvzdHPU9m877axIpQA74LyB3FFXVNyyu7vqPs6/R4LidvMvT24
	wl1B/XyRGCwDBKxGflTLFPN/7TCvDe63GgAFxVE0QXRV4I4GrRNvogDTX2HePKDyfr/DcNuNJAfuC
	jbSe4naJzr+DQ45TCbe4mIkaJqpCPVR4Itq6CfnwgOog1aDyshCRSjuxdGR01/dWftPMqjKOh78mm
	y5BA8HtcNlulZJuPfVnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruW4w-00000006bIn-0Nle;
	Wed, 10 Apr 2024 11:25:22 +0000
Received: from www.zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruW4f-00000006b5k-3B2Z
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Apr 2024 11:25:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=RNanGQGWfzY8Ld
	dZN9BtmYbNVKTZHZwObn8fItBAqK8=; b=jT0Gk8bAMORCC3fi5dKtBczdT+SWtS
	Ur90S3Q1uouDlicdfEpBcNSLJfpzszbswwlEqlBkKEo/gJqZgyTYwNnT/l42kg1u
	jCKNParrdoy5IN5KtrND/ODxJjODWMBThyQKunrC8uL76dtK8cijYPbbgs6iM+X9
	oFSOW30Rsp/9ZLXlttGMTaO3E08kWFL0hNIfEIBjQBW2sZJeRUSQge0X2s3omTnq
	n5piJX/YYxgLyxigGcxQANsKl+wdagoI2ckzGc5M+DvPUuA1l9Tehh4xQfo48iZJ
	eKCIINO7NvQHjCrr8EVgyW1i2doKHn0NqksAVd/TzyZNURLygSmZfMGA==
Received: (qmail 521287 invoked from network); 10 Apr 2024 13:24:57 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 10 Apr 2024 13:24:57 +0200
X-UD-Smtp-Session: l3s3148p1@pzTdSbwVgwhtKPEL
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH 00/18] i2c: remove printout on handled timeouts
Date: Wed, 10 Apr 2024 13:24:14 +0200
Message-ID: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_042506_568551_91BF66A0 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
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

While working on another cleanup series, I stumbled over the fact that
some drivers print an error on I2C or SMBus related timeouts. This is
wrong because it may be an expected state. The client driver on top
knows this, so let's keep error handling on this level and remove the
prinouts from controller drivers.

Looking forward to comments,

   Wolfram


Wolfram Sang (18):
  i2c: at91-master: remove printout on handled timeouts
  i2c: bcm-iproc: remove printout on handled timeouts
  i2c: bcm2835: remove printout on handled timeouts
  i2c: cadence: remove printout on handled timeouts
  i2c: davinci: remove printout on handled timeouts
  i2c: i801: remove printout on handled timeouts
  i2c: img-scb: remove printout on handled timeouts
  i2c: ismt: remove printout on handled timeouts
  i2c: nomadik: remove printout on handled timeouts
  i2c: omap: remove printout on handled timeouts
  i2c: qcom-geni: remove printout on handled timeouts
  i2c: qup: remove printout on handled timeouts
  i2c: rk3x: remove printout on handled timeouts
  i2c: sh_mobile: remove printout on handled timeouts
  i2c: st: remove printout on handled timeouts
  i2c: tegra: remove printout on handled timeouts
  i2c: uniphier-f: remove printout on handled timeouts
  i2c: uniphier: remove printout on handled timeouts

 drivers/i2c/busses/i2c-at91-master.c | 1 -
 drivers/i2c/busses/i2c-bcm-iproc.c   | 2 --
 drivers/i2c/busses/i2c-bcm2835.c     | 1 -
 drivers/i2c/busses/i2c-cadence.c     | 2 --
 drivers/i2c/busses/i2c-davinci.c     | 1 -
 drivers/i2c/busses/i2c-i801.c        | 4 ++--
 drivers/i2c/busses/i2c-img-scb.c     | 5 +----
 drivers/i2c/busses/i2c-ismt.c        | 1 -
 drivers/i2c/busses/i2c-nomadik.c     | 7 ++-----
 drivers/i2c/busses/i2c-omap.c        | 1 -
 drivers/i2c/busses/i2c-qcom-geni.c   | 5 +----
 drivers/i2c/busses/i2c-qup.c         | 4 +---
 drivers/i2c/busses/i2c-rk3x.c        | 3 ---
 drivers/i2c/busses/i2c-sh_mobile.c   | 1 -
 drivers/i2c/busses/i2c-st.c          | 5 +----
 drivers/i2c/busses/i2c-tegra.c       | 2 --
 drivers/i2c/busses/i2c-uniphier-f.c  | 1 -
 drivers/i2c/busses/i2c-uniphier.c    | 4 +---
 18 files changed, 9 insertions(+), 41 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
