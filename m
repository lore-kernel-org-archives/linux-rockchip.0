Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96782C5472C
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 21:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Cc:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8HqTwZZMKKH1VJ3z37+b2Y7aJJkf7H5M0940dAltKc=; b=2O3SoMw/4m5+0s
	dS3aiSnrdJL9EU9wxjFOiZmD6yB3DiUW8YWevgFYrcNol7hcPZ4vdv9whgctsb8YQCsl0Afjk3fH/
	RiP81d3tD6bdO7qIaw4JHe8rBpxVygBamg1FZZs3phZ35WDpRbtyJOOun3hmcdSLk47TbPkbNtMK8
	czN0yeVyQGj/lCGVsVtINWbUM+Kyj8DmAg/aA07RZ9dU/vr3ras6pdVOeoB45aV+VHhwj4+jigw3K
	0vSkrPEdxW8M6w77QUUCZueFbozV1tVa7uDfJWiBEY4oQM+fLwtC36GN+GnduyfvkD7JUJmZiyJnQ
	W22hFD8ndLn5u9iJLxXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sigtM-00000008jh8-0OeI;
	Mon, 26 Aug 2024 21:04:48 +0000
Received: from smtp.forwardemail.net ([164.92.70.200])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sigkv-00000008i0e-2pmd
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Aug 2024 20:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To: Date:
 Subject: Cc: To: From: Message-ID; q=dns/txt; s=fe-e1b5cab7be;
 t=1724705762; bh=pCqv5neFrZz2AJ4AKmo3ddlk7/Ez4GptnTqfIqKAGgU=;
 b=TMBFS5vaC5kegUuJ4Jql+NM9xkdymdwbxKoa5eXIaZu77UI5OZC7i5pfIZ36eDwx3V5RgJCa2
 UkaYhoCaAUsKnmOq+CUwr/KlCA7hpuzeoqKgctuxM5cywwCf0bzUhJoiOQLvDPGptQYVmAHq2DC
 sfsyx3VSKvY5XUZ7EAqBEnxbAV3dbzDfLnJM1/ZmiHGJdyb8moVJJV3Rs9QfKBQg8yfR+HY9a5y
 eivp2g8PPBiAsIyMcDzuzjpcyyBKZmF9dJ5GrjaMGh3WsrTptmE7/VF5DadUQcOmxyVBa8GYmXz
 rs7sVeMBZzu4djwWbAes2v2F0ButVPf2LeY4LSXABjwA==
Message-ID: 20240826205538.1066103-3-jonas@kwiboo.se
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Dongjin Kim <tobetter@gmail.com>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 2/4] arm64: dts: rockchip: Correct vendor prefix for Hardkernel ODROID-M1
Date: Mon, 26 Aug 2024 20:55:29 +0000
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240826205538.1066103-1-jonas@kwiboo.se>
References: <20240826205538.1066103-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 164.92.70.200
X-ForwardEmail-ID: 66ccebdde59276ede820348e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_135605_735064_052AD867 
X-CRM114-Status: GOOD (  10.61  )
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

The vendor prefix for Hardkernel ODROID-M1 is incorrectly listed as
rockchip. Use the proper hardkernel vendor prefix for this board.

Fixes: fd3583267703 ("arm64: dts: rockchip: Add Hardkernel ODROID-M1 board")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
index a337f547caf5..9a122f67a6c4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
@@ -13,7 +13,7 @@
 
 / {
 	model = "Hardkernel ODROID-M1";
-	compatible = "rockchip,rk3568-odroid-m1", "rockchip,rk3568";
+	compatible = "hardkernel,rk3568-odroid-m1", "rockchip,rk3568";
 
 	aliases {
 		ethernet0 = &gmac0;
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
