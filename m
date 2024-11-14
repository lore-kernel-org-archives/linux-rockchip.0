Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22353D637D6
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Nov 2024 02:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PFFxpVMRpeL8E4hKO+J7mLtT5aDt37FoIOTU93TlSX0=; b=gCQxCEPBzRSgjx
	tlRzXhN5SZuh9ulcBvILl+yeVDzoGnSPA91Ud/Tn7DuBSazh+6m7jIVkQGRCMQ0HJUHmVjQ4YVAIV
	uAvowWpH6aoJDUHTgQsUgWkVGQnAf0BvJonvdBshznY9WPg6p62bLi20MUZBJPzJdaDWpqKxooGsE
	jvXqKAU/6jaaEEzuoash/W7+2fk+CJrPPQsUs/PzjEM92gYiY69RyG+5S5wICNBd8y4I7dGy9Yqq5
	gcGP3qO0PZPLiPFk2juK9ye1c2ZkuQS/pmB08azXbOwUtuTlxrxxAd1l/apgEtMq9GPPkV7PwbZw1
	e6OgBAqwszJ5qAN5A2yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBPlu-00000008Zto-3Syx;
	Thu, 14 Nov 2024 02:39:50 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBPkg-00000008ZnJ-3SGF
	for linux-rockchip@bombadil.infradead.org;
	Thu, 14 Nov 2024 02:38:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=rKzcrZF2W7cxnjSr1inVZHeRslphZAf+FdFnlCvnekg=; b=VQgp+qxHNoYEC68TnwPXuDXQ9z
	Hj6SBnAHpSlNY6xVPNr6+0CeCQxmI6XqFEq4VM7oFLhuswnltVDL+DwbxNFIdg6r/DYwcb3e+D/gP
	J9m/IGsq6bZKsf1Ye8H4cUrpXt+cCGGUCW4/xmq7fVM4BKo53GPx8buzXehwrW98BwdOm37OTr4Ac
	l7K4M0bXI2OGxIB7jxEiacTTq8Vpzi4+nhJ9/Xk1G69IBsUSecW3EuPOfp3jau/fuEP+92zKPEhhI
	NNPQcfoHSqp0OanrtuPErkJyFZ1ZCrq1xOVj6WuF+JkRyDhlybt2NIHfD+wkOQ5f1zyAN0T63W0Tn
	ivdPG+9Q==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBPkc-0000000HLk7-08PH
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Nov 2024 02:38:33 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AE2bplr029356;
	Thu, 14 Nov 2024 11:37:53 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 5/9] arm64: dts: rockchip: add property for usbdp_phy0 for Radxa ROCK 5C
Date: Thu, 14 Nov 2024 02:37:42 +0000
Message-ID: <20241114023746.4867-5-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241114023746.4867-1-naoki@radxa.com>
References: <20241114023746.4867-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_023830_637738_A72B359C 
X-CRM114-Status: UNSURE (   7.08  )
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

add rockchip,dp-lane-mux to usbdp_phy0.

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- reword commit message
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index e6a0d123ed71..0389f9e3ba65 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -883,6 +883,7 @@ &uart2 {
 };
 
 &usbdp_phy0 {
+	rockchip,dp-lane-mux = <2 3>;
 	status = "okay";
 };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
