Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81AEAEDE994
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 03:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cr6NPmoRd7SvrpO3A8QaHomZouj+r52S3/9fhAu6r5E=; b=Xj2bES9JEKMocH
	Qx31diPxMt82g7P3b0JlpJhT1CsXwWz5w+rO8sHL/xlHpuwWYk9iRA0D/3ztZn2/u9JMDcE5oIEql
	Q4b7LBYu2q45zU5KksT0WqyafXq5v00gzFU6kQYCVXeD8/LZ7hlr1ClATFIQl/IwILMBwXxvXfs+8
	UrqJaay+UggJi3xc7C/y1iKfoMeOwe8hiXLv7JsWcJmCIRTj4z2O+k46CsDbPK3z/TGwnIFENtB/T
	KPSVKBnK8O9hRPhRQShyiyPglrzgl5o5e7GN3IydbQTV8y1QxtHp7lpscjwZ4MHNI95lrN1NOmr6s
	8TYWD+5FjLXjjiiRoFmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snrIf-000000042bJ-1zE1;
	Tue, 10 Sep 2024 03:12:17 +0000
Received: from mail-m3288.qiye.163.com ([220.197.32.88])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snrHd-000000042Pp-2Uji;
	Tue, 10 Sep 2024 03:11:15 +0000
DKIM-Signature: a=rsa-sha256;
	b=M9EENae7dm9lrvZydttnTOhjp+1HrXCuKXNZddCnkvrgJBW3zC3wjS62FKIpOHbW1IEGyAut0Gry7+iWs5MmXegTV06jLowE/RaObwQ7xUkUAwDfhupGnIr7zuNTQmKPZgCp6dlqLdWMdBAc+9kUZQ0iumSnwmtRscsgFKVwUKs=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=OyCjbYBCeFbpBOCm7HDwCrJogQYorO3TUDUejbm/lqI=;
	h=date:mime-version:subject:message-id:from;
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id B57D81004DD;
	Tue, 10 Sep 2024 11:10:01 +0800 (CST)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	macromorgan@hotmail.com,
	jonas@kwiboo.se,
	tim@feathertop.org,
	knaerzche@gmail.com,
	efectn@protonmail.com,
	andyshrk@163.com,
	jagan@edgeble.ai,
	dsimic@manjaro.org,
	megi@xff.cz,
	sebastian.reichel@collabora.com,
	alchark@gmail.com,
	boris.brezillon@collabora.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v1 0/2] Add support for RK3588S Evaluation board
Date: Tue, 10 Sep 2024 11:09:49 +0800
Message-Id: <20240910030951.3670653-1-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhhIT1ZOTh4YTU4aSUoZSBpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a91d9e8de5e03a7kunmb57d81004dd
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Phw6GTo5ITI5PzUzTSpDSxRD
	PA8aCg5VSlVKTElOQkhMQ0tIT0hOVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJSUNINwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_201114_114042_22D25EB0 
X-CRM114-Status: UNSURE (   6.97  )
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

Specification:
- Rockchip RK3588S
- RK806-2x2pcs + DiscretePower
- eMMC5.1 + SPI Flash
- Micro SD Card3.0
- 1 x Typec3.0 + 2 x USB2 HOST
- 1 x 1Lane PCIE2.0 Connector(RC Mode)
- Headphone output
- Array Key(MENU/VOL+/VOP-/ESC), Reset, Power on/off Key
- 6 x SARADC

Damon Ding (2):
  dt-bindings: arm: rockchip: Add rk3588s evb1 board
  arm64: dts: rockchip: Add support for rk3588s evb1 board

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 1120 +++++++++++++++++
 3 files changed, 1126 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
