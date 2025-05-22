Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5AC1C54E65
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 May 2025 06:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7XSeT3xroHnV4GwfYF/yHodHEOGnu3wbhJnx+m6gz3k=; b=xOAP2y7alZwyC7
	xQ8bgtrIV6xzasrzrWf+lc1ZmY/IRI/l0r4QHR6yZKJY9G2mYGpVl7D+qRDrPZ/ILzEJTEQY/rINv
	80ObAyHMx/gI4GnLyUh1KM+rqgWf3hQwN9+zGKmXmKPTi6IinIRrhDmI7Df8HCB6Sj7ncVl7LqJfF
	IA7H2kr5xc985XCKVdPpfOQ73Zh4CPXjJYcTLChPrW+m/bdzpyRZ9OVXM5Du5cSzuQsAuxBOdsvwB
	bcgkzx4r8w9Ze2kF2ypIZNk9fYpLIYNRQlPUDXUhc4c43QkC5CenzKZrcvbxEgfp6/gOq6ujVKHSH
	sxa6luBLPdGhzc2Rz3xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHzY4-00000000115-0F9m;
	Thu, 22 May 2025 06:37:00 +0000
Received: from mail-m19731109.qiye.163.com ([220.197.31.109])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHzTz-000000000T7-1Kjg;
	Thu, 22 May 2025 06:32:48 +0000
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1602d155c;
	Thu, 22 May 2025 14:32:33 +0800 (GMT+08:00)
From: Elaine Zhang <zhangqing@rock-chips.com>
To: zhangqing@rock-chips.com,
	mkl@pengutronix.de,
	kernel@pengutronix.de,
	mailhol.vincent@wanadoo.fr,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	cl@rock-chips.com,
	kever.yang@rock-chips.com
Cc: linux-can@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 0/2] rockchip: add can for RK3576 Soc
Date: Thu, 22 May 2025 14:32:29 +0800
Message-Id: <20250522063232.2197432-1-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQksZSFZNHxhOSkpIGRkYTUpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a96f6b18f1903a3kunme211611210aaa53
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NjI6SAw5KDE9FBIwHEMMEB0S
	UTEwFCNVSlVKTE9MQ0JOTk5OT0hCVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUpMTU83Bg++
DKIM-Signature: a=rsa-sha256;
	b=QtY4siXE7thcVpnfPdQKg9euhrmPRsX6hzSia0TPEWB+KPk8q/T/ndhXy/soryqmHy4Sk1zE8jS7KBAsoNftOIuJ0D1KYFedhUB8H56dcwWkWSFldSZHqiNG7tttdF7m5hV85CVeiAnzZt1XTG0FVbsAPsCu94N0W3MrO9Xuh70=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=m/ybV8VaFbJ2uVaOm6miMVmNZ43aDG19ADidxapMFmA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_233247_506070_23B79EC5 
X-CRM114-Status: UNSURE (   7.30  )
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
Support Dma.

There are major differences from the previous rk3568. All errata on the
rk3568 have been fixed and redesigned.

Change in V3:
[PATCH v3 1/3]: Add documentation for the rk3576 CAN-FD.
[PATCH v3 2/3]: Adjust the differentiated code section and add dma function.
[PATCH v3 3/3]: Remove dma, no use dma by default.

Change in V2:
[PATCH v2 1/2]: remove rk3576_canfd.c, use the rockchip_canfd driver
[PATCH v2 2/2]: code style.

Elaine Zhang (2):
  net: can: rockchip: add can for RK3576 Soc
  arm64: dts: rockchip: rk3576: add can dts nodes

 arch/arm64/boot/dts/rockchip/rk3576.dtsi      |  26 +
 .../net/can/rockchip/rockchip_canfd-core.c    | 640 ++++++++++++++++--
 drivers/net/can/rockchip/rockchip_canfd-rx.c  | 202 +++++-
 drivers/net/can/rockchip/rockchip_canfd-tx.c  |  29 +
 drivers/net/can/rockchip/rockchip_canfd.h     | 312 +++++++++
 5 files changed, 1161 insertions(+), 48 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
