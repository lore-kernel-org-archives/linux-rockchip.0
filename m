Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D58FE77188
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Dec 2024 01:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KrrV7U6ppTB5ol5sqgsVeYdO7HnBMtLAK3+0wdtHuHU=; b=NSHWxGk/6xZvCJ
	hYtLDiWGpVmGhQ51znlqlekDpzRh/iEA1hLpVg9CcwiXQ6uyE0W/4Jy+kpe7fEj2UF1Lj9Aarh79+
	bE5K4gXQENZsWo7N4p9lddokPZJCQ65Seipal8nopnS8N6hs29peuO4I6XbQsnerQyvKjSbg2DcL6
	0b/uZ+SC2uAP5Xx+qPPCt/Y2QzXtjZJhx44+eNmwuaLMgZF2N6UbdX8GTz5O9cSsFy6Ae+NBrZmf1
	Nkw7fmlsC8fKwD7ZXJzvZMq4wLmUAFmd3T5t+DZAkakDmBsA1XOtxQuo8qvKyMxJdy6FTh87i1N+H
	YCFMdZNPN88TwJRAzUQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tO55H-00000000T2G-2KfQ;
	Thu, 19 Dec 2024 01:12:11 +0000
Received: from mail-m127175.xmail.ntesmail.com ([115.236.127.175])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tO55F-00000000Szv-0ANo;
	Thu, 19 Dec 2024 01:12:10 +0000
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 626be198;
	Thu, 19 Dec 2024 09:12:00 +0800 (GMT+08:00)
From: Elaine Zhang <zhangqing@rock-chips.com>
To: zhangqing@rock-chips.com,
	mkl@pengutronix.de,
	kernel@pengutronix.de,
	mailhol.vincent@wanadoo.fr,
	heiko@sntech.de,
	cl@rock-chips.com,
	kever.yang@rock-chips.com
Cc: linux-can@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/2] rockchip: add can for RK3576 Soc
Date: Thu, 19 Dec 2024 09:11:57 +0800
Message-Id: <20241219011159.3357530-1-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx9JTFZCS0gdSU0eHUoaTRpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93dc78bc2903a3kunm626be198
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PDo6Fhw6SDIVIhcNFB1RMEkM
	ViMwCjlVSlVKTEhPTkxLTElKT05LVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUNLSzcG
DKIM-Signature: a=rsa-sha256;
	b=gGN/NZG1w4r3Fb4NPDY4FOzxiUj1JzyUyN52IJ13obm4b3yAL1yjWlVw2JtPuZcbb1VSEmwFZSreUcTTTsPiMFQB/rN9ilK0duH3Ou2rw8am3hx5f9yJ55z80av7c7bpEDcJInVP9eOqQcOMw70e6IAIZaD7zitPQoPd6M+qwf4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=v5KQiPBEK7te3XVLhGwOItVgj11ELHSc7Ns4KFJJ4sk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241218_171209_295540_C785C192 
X-CRM114-Status: UNSURE (   6.27  )
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

rk3576 can is a new controller:
Support CAN and CANFD protocol.

There are major differences from the previous rk3568. All errata on the
rk3568 have been fixed and redesigned.

Change in V2:
[PATCH v2 1/2]: remove rk3576_canfd.c, use the rockchip_canfd driver
[PATCH v2 2/2]: code style.

Elaine Zhang (2):
  net: can: rockchip: add can for RK3576 Soc
  arm64: dts: rockchip: rk3576: add can dts nodes

 arch/arm64/boot/dts/rockchip/rk3576.dtsi      |  26 +
 .../net/can/rockchip/rockchip_canfd-core.c    | 453 +++++++++++++++---
 drivers/net/can/rockchip/rockchip_canfd-rx.c  | 111 ++++-
 drivers/net/can/rockchip/rockchip_canfd-tx.c  |  29 ++
 drivers/net/can/rockchip/rockchip_canfd.h     | 285 +++++++++++
 5 files changed, 846 insertions(+), 58 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
