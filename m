Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C778C369C2
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Apr 2025 01:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=khpCLihXVMeFtfzZ7Au6xi02Xyk+xfLl7f28DDkJ/Uo=; b=mqXYpylF12OA0Y
	0D9SsGlzwwhpXqFkt8oqvuYgoimnXAFaACr6sc7u5QHp6uJXevN/LZkYYYTQnrmAD7XW95OJDnI9t
	92JD+4j4rVn8rlyxQ97av+dv37KkBe8AsXYR7iIRoQ8lxkd2gtwqUDJwQF1rbK4Zw6+EBBuYPpuRZ
	jhHPXrE6T+Dxn/YjvmFaHnvT2dpKzYpfEMiOxJYX5Ug8T5raU/a141PZnmWkZT/q3EN8htyxyrH9Y
	yAvIJj9i4HuidwofyOGJRI63/uRf/I7zzrr1eSRJuwGjtiZqedI1rJ4tCpg+6uiWDkB+tJM7SzHNY
	jeeWakrYTHWSEu6hmCEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7OpC-00000008xN6-4C46;
	Wed, 23 Apr 2025 01:22:55 +0000
Received: from mail-m1973193.qiye.163.com ([220.197.31.93])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7OpA-00000008xLn-35EO
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Apr 2025 01:22:54 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 12c927d32;
	Wed, 23 Apr 2025 09:22:47 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: Add pcie1 slot for rk3576 evb1 board
Date: Wed, 23 Apr 2025 09:22:39 +0800
Message-Id: <1745371359-30443-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkkeS1ZIQk8dGUIeGR8fGEJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a96603d870509cckunm12c927d32
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MBQ6SQw5SzJLQ0hDPwMJHhdD
	OQhPCg5VSlVKTE9OSExKSE1MQk5DVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUpNS0o3Bg++
DKIM-Signature: a=rsa-sha256;
	b=DgSekd1UMNw31ZSTg0wpZ48mFl9hATv3aPFNo6nex1Uh5PPXDNM8Tm/oPYi0sSlu4mf5ciU74dAcKy4Dez48GqaJ5xV6KDLQcVcIK50n/A3rgeaB255q5pQm34ozCsvt3T5fXNlfztkeXre9LrnesTcNeWU5tLH7mg/GXJ1BKqE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=FIhCJo3q1AwrUZ/79S564gX+70Ily7amwz9KfqL0qOc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_182253_267374_A6724B3F 
X-CRM114-Status: GOOD (  10.02  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

PCIe1 and usb_drd1_dwc3 is sharing the same PHY on RK3576 platform.
For pcie1 slot and USB interface, there is a swich IC labelled as
Dial_Switch_1 on evb1 board. If we need to make pcie1 slot work for this
board, we should first disable usb_drd1_dwc3 and then set Dial_Switch_1
to low state.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index ac397ac..d51f3f1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -691,6 +691,15 @@
 	};
 };
 
+&pcie1 {
+	reset-gpios = <&gpio4 RK_PC4 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie1>;
+	/* Disable usb_drd1_dwc3 if enabling pcie1 and set Dial_Switch_1
+	 * to low state according to the schematic of page 17.
+	 */
+	status = "disabled";
+};
+
 &pinctrl {
 	usb {
 		usb_host_pwren: usb-host-pwren {
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
