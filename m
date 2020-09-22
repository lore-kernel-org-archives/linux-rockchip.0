Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27752C4363D
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 16:55:59 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A99C722262
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 16:55:58 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="zmmCahWo"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A99C722262
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/h0ukN3Ok9HNtGs3zmVElHtHB6MMH7uETauviQLqX9I=; b=zmmCahWoOn2jKR7ChH/yJgNIjs
	xk4SR2Mr1q8ueO+QAO1gv1c3zicpk5IvccfJ5xdA2pY+eSL/ilFOSdZv6eJXgIgxZSGuiVw2W0j4A
	mVArMhC1I1Fk8c+t+8mSvmZuZZy3K1R9LrZwbTxMW9Gpq9XOSdHbsJZX5uSpw5KkKMI2GWkRUjJeq
	WOnLSti2B6ofMeVuZPkqUzo9tzO7gYbAledZNfB8Pmk3ZX0/xVB8yLEMYizRGQMtcF+U0QnA+qcd/
	0ioTXDrf6ZKo9RLk5MFixqCE9bZ/8Q4jpB4bkL1dpZMNApTddodo/LJCNogAv9yGz47EeYmYSundU
	JJI0HV1w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKla2-0006WQ-El; Tue, 22 Sep 2020 16:55:50 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKlZv-0006Tx-Ir; Tue, 22 Sep 2020 16:55:45 +0000
X-Originating-IP: 90.89.95.46
Received: from pc-2.home (lfbn-tou-1-1532-46.w90-89.abo.wanadoo.fr
 [90.89.95.46]) (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id C8AEDC000E;
 Tue, 22 Sep 2020 16:55:37 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: [PATCH v3 0/3] media: rockchip: Introduce driver for Rockchip's
 camera interface
Date: Tue, 22 Sep 2020 18:55:32 +0200
Message-Id: <20200922165535.1356622-1-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-GND-Spam-Score: 400
X-GND-Status: SPAM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_125543_792994_5DF36A55 
X-CRM114-Status: GOOD (  14.49  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi everyone,

This is the third iteration of the series introducing a driver for the
PX30 camera interface.

This was previously known as the "cif" driver in other iterations, but
was renamed to "vip" following Ezequiel's advices to match the datasheet
name.

This is based on a BSP driver, and I'm not fully familiar with the media
and V4L2 frameworks, so I guess some review is still needed.

This new series adds some stability fixes, and introduces the
double-buffering frame handling, giving better performances.

Thanks to everyone who reviewed the first two iterations,

Maxime

Maxime Chevallier (3):
  media: dt-bindings: media: Document Rockchip VIP bindings
  media: rockchip: Introduce driver for Rockhip's camera interface
  arm64: dts: rockchip: Add the camera interface description of the PX30

 .../bindings/media/rockchip-vip.yaml          |  100 ++
 arch/arm64/boot/dts/rockchip/px30.dtsi        |   12 +
 drivers/media/platform/Kconfig                |   13 +
 drivers/media/platform/Makefile               |    1 +
 drivers/media/platform/rockchip/vip/Makefile  |    3 +
 drivers/media/platform/rockchip/vip/capture.c | 1246 +++++++++++++++++
 drivers/media/platform/rockchip/vip/dev.c     |  408 ++++++
 drivers/media/platform/rockchip/vip/dev.h     |  206 +++
 drivers/media/platform/rockchip/vip/regs.h    |  260 ++++
 9 files changed, 2249 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip-vip.yaml
 create mode 100644 drivers/media/platform/rockchip/vip/Makefile
 create mode 100644 drivers/media/platform/rockchip/vip/capture.c
 create mode 100644 drivers/media/platform/rockchip/vip/dev.c
 create mode 100644 drivers/media/platform/rockchip/vip/dev.h
 create mode 100644 drivers/media/platform/rockchip/vip/regs.h

-- 
2.25.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
