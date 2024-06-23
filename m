Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79FB7C2D0D0
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 02:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RlU8pMb2dZQBZIQjHUEDaEjWMZLZC5MsC27MvgUIE70=; b=kC2pSLECSiDili
	eTRG3syH4JNo9iLhIAHX7+kUkq6yJ2SILFouic0rFb5AnVT83BXELZT6x9eO6VJ+FIk4ubtF/l6Gu
	lVUBlI+7nM+GP9tZE2A4iGFbWMBvoVPyX8YJYKi1jGZnt9w3l1r7rvEJSQAWnzTePJUx/NT3q7MwA
	R5kntOV6C8pQy8MfMXSPFxuax1NfA2ejgXinJKToc6/yeItK6v2S0aUzU5oc8MGMfh74blvPkQ2S1
	Gdz8r7Hyx+UccTPQX3AG/px5BgjI7q0Q9WIoLRFo4SJ7VvLbQl+dl0ZyKLDJJG1St9yFNhk/btBOR
	tHmlgJW80FRaBP/D4IhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLD3z-0000000DCGn-38ER;
	Sun, 23 Jun 2024 02:34:43 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLD3x-0000000DCGO-3MXe
	for linux-rockchip@bombadil.infradead.org;
	Sun, 23 Jun 2024 02:34:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ifYpq61e7V92foiuY2U6mqalmp1ulA4wZQr6HWkRWFI=; b=t5obUYlC8SrgmZSZCqhnhUuyyU
	8esJBe+FeH2zudfAeA0EbUD76ckRWkuTKo8FOnjk0DWWcXQ+gD60VVm5ARno+JGx56foLeJ+cgi2n
	Dv5BgK0sWJ0kYo1R8eyM343KXjXHJpKPuK9YeJmr062yiGoGUDppnxzPp7N8zNOYN84OetVRp491g
	0589WVFgxXUELECZtGV5YeDuyXhtuBetou/uIuHLDYnhxzi2DdU7KavbITw+CI31O3GntKxv5l+4r
	6FdM2tv+pOKcCNFi0nFgiux3tau+62oEJgkP0B7Tk70PtHG2S7DufNAtIKaqTJUa668f3JY3KKcde
	Rx5Gz7rg==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLD3r-00000008kOH-0qlo
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 02:34:40 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45N2XZ4K004959;
	Sun, 23 Jun 2024 11:33:38 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        amadeus@jmu.edu.cn, chris.obbard@collabora.com,
        sebastian.reichel@collabora.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: change spi-max-frequency for Radxa ROCK 3C
Date: Sun, 23 Jun 2024 11:33:29 +0900
Message-ID: <20240623023329.1044-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240623023329.1044-1-naoki@radxa.com>
References: <20240623023329.1044-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_033435_721200_0DA18840 
X-CRM114-Status: UNSURE (   8.32  )
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

SPI NOR flash chip may vary, so use safe(lowest) spi-max-frequency.

Fixes: ee219017ddb5 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
index b242409d378c..f2cc086e5001 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
@@ -633,7 +633,7 @@ &sfc {
 	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0x0>;
-		spi-max-frequency = <120000000>;
+		spi-max-frequency = <104000000>;
 		spi-rx-bus-width = <4>;
 		spi-tx-bus-width = <1>;
 	};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
