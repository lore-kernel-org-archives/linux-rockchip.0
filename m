Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 971E3C36010
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Apr 2025 12:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cXo22r2hdXUuQL5rcLDaayOXhVf8h/Ww1X8iCHaEbUM=; b=GeM+Mum1bkU66E
	F/PKpH0KxCis6XZG4X5BPA3+ry6oWVGXKIDpGDz1F2HiHyJNhe+NfV4BZyCNrGKVmXNDDWz0whkV1
	muNDMN+P2JJ4OVTNsnwZkjIFYTz1r1aaJMA/a4YjZ3KhrM0P4OexbUrHWplUXui/4ZHX0X/0PRXx6
	DeYxEpf5Cjb/BeWGcKh4cSWBrgOp+rB4x9XjM/bQyRiS7+bH314kArmYVDkIrWHcMn1s8yiPzrmKx
	PIHFlVW9POX3CPu6r8qZbsPmg3tm8LU0imrkk594mYjqjQBokh5/N734VFjRC5sQ74rXL99ggzPGS
	6C6AGmtkbDLHcxgU7cxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzaM2-00000002tt8-256i;
	Tue, 01 Apr 2025 12:04:30 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzaI8-00000002sQ6-1zg3;
	Tue, 01 Apr 2025 12:00:30 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:430:ae31:3177:4f09:da96])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1053fa3ed;
	Tue, 1 Apr 2025 20:00:23 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Yao Zi <ziyao@disroot.org>,
	Rob Herring <robh@kernel.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Jonas Karlman <jonas@kwiboo.se>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 0/2] arm64: dts: rockchip: Add pwm nodes for RK3528
Date: Tue,  1 Apr 2025 20:00:18 +0800
Message-Id: <20250401120020.976343-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDTENMVh5NSR5PHU4aSRhCGlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtLQU9IS0EaHkhKQUhKTExBTx1LQkEfGkJNWVdZFhoPEh
	UdFFlBWU9LSFVKS0hKTkxOVUpLS1VKQktLWQY+
X-HM-Tid: 0a95f1395ecd03a2kunm1053fa3ed
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6KzI6NRw*EDJIHwoiTDM5MA02
	CTlPCilVSlVKTE9ITktDQ0lPT0xLVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBT0hLQRoeSEpBSEpMTEFPHUtCQR8aQk1ZV1kIAVlBSkxJSTcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_050028_723749_8E70B9E0 
X-CRM114-Status: UNSURE (   7.20  )
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

Add pwm nodes for RK3528. Most rk3528 boards use pwm-regulator to
supply to CPU, add node to enable them. The PWM core on RK3528 is
the same as RK3328, but the driver doesn't support interrupts yet.

Note that pwm regulator needs to be initialized in U-Boot:
```
&vdd_arm {
	regulator-init-microvolt = <953000>;
};

&vdd_logic {
	regulator-init-microvolt = <900000>;
};
```

Changes in v3:
  Adjust regulators order of E20C dts nodes
  Use PWM_POLARITY_INVERTED in pwm-regulator

Changes in v2:
  Remove merged bindings patch
  Remove pwm pinctrl in rk3528.dtsi
  Enable pwm regulator for Radxa E20C

Chukun Pan (2):
  arm64: dts: rockchip: Add pwm nodes for RK3528
  arm64: dts: rockchip: Enable regulators for Radxa E20C

 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   | 73 +++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 80 +++++++++++++++++++
 2 files changed, 153 insertions(+)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
