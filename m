Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48E90C3DA5D
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jul 2024 12:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bh6vcBkv2q2GQkwF2Q1x+thW0LxlOEn/WDfTVyd6TxM=; b=Xphno5afbl1m9p
	nbPZNo28sMQ/31ByeXzvXyuecsDDrFwZBwR5K69dg3jAc+bhKzHn44aBgQQKWLSfRlSaddVVH7QyU
	mlXZ1L22HOrE9BG0Smu3bo2CfsHKtZgoFspkQE2WFhWXqOVScDLkwUAs8E8bsYAOvzS0GQ3q7JcSU
	dO65uzHhAxX6XYwfcojkAs5+tSSWwzRxZ1y1wald/GQSE7lroI7XU3vLc47R+p/kL1HjGS03rDQDP
	i3tIofzHsDEOQIOdn7/lhQgjCXjpBH7YALRFqKtn3uTlrAeE1QE8oooskVp3w5Axn+mPqxS3gd+Pa
	WLym0xjdVEmq1kNVTxmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUmvw-00000002g1D-0lpB;
	Fri, 19 Jul 2024 12:42:00 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUmvE-00000002fkU-1yQv;
	Fri, 19 Jul 2024 12:41:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721392875;
	bh=nSjpH+2FTX7vA0HzX+iLQciUFE/mclraJcSs9Fxc3hw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=E+RzyYNSCOTZZZQ57X8OclNBqrsJTYamXetE6ZNGZcTLodGsNqs0G06G7+Ox+BcJ3
	 ABofdmBAeSgafCU8TxLJk9oPwx72wWXH3SfE6IRsKiM99TyKJY87gHWyST892kUWOO
	 DdpvvM3C2VsDSG90vVho9EYKoyrLyUq6SeGTbo0J6T0o51DpXQrEs/g6yGW76WEfyA
	 WJB1vnHwv0th8ip98dxSM3408RKw391NJ3782NQwahQDDK68m/J1CBDrInElKAgS3k
	 PbM/Kvnxbr/uchPeC3rvPLGz4+pzIrJvQrns3dQOWNvRk2vnFoyr5zcS3u1eXQkebO
	 SD6HMhdy6thBQ==
Received: from shreeya.shreeya (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id F195B37821B5;
	Fri, 19 Jul 2024 12:41:10 +0000 (UTC)
From: Shreeya Patel <shreeya.patel@collabora.com>
To: heiko@sntech.de,
	mchehab@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	shawn.wen@rock-chips.com,
	nicolas.dufresne@collabora.com,
	hverkuil@xs4all.nl,
	hverkuil-cisco@xs4all.nl
Cc: kernel@collabora.com,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Shreeya Patel <shreeya.patel@collabora.com>
Subject: [PATCH v4 1/4] MAINTAINERS: Add entry for Synopsys DesignWare HDMI RX Driver
Date: Fri, 19 Jul 2024 18:10:29 +0530
Message-Id: <20240719124032.26852-2-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240719124032.26852-1-shreeya.patel@collabora.com>
References: <20240719124032.26852-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240719_054116_654905_E8938389 
X-CRM114-Status: UNSURE (   9.19  )
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

Add an entry for Synopsys DesignWare HDMI Receiver Controller
Driver.

Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
---

Changes in v4 :-
  - No change

Changes in v3 :-
  - No change

Changes in v2 :-
  - Add a patch for MAINTAINERS file changes

 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 1c87b471941c..0f0e1d58abff 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22138,6 +22138,14 @@ F:	drivers/net/pcs/pcs-xpcs.c
 F:	drivers/net/pcs/pcs-xpcs.h
 F:	include/linux/pcs/pcs-xpcs.h
 
+SYNOPSYS DESIGNWARE HDMI RX CONTROLLER DRIVER
+M:	Shreeya Patel <shreeya.patel@collabora.com
+L:	linux-media@vger.kernel.org
+L:	kernel@collabora.com
+S:	Maintained
+F:	Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
+F:	drivers/media/platform/synopsys/hdmirx/*
+
 SYNOPSYS DESIGNWARE I2C DRIVER
 M:	Jarkko Nikula <jarkko.nikula@linux.intel.com>
 R:	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
