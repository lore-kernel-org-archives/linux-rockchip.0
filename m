Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8800C52D71
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 04:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C2rQEqrU9RFSMUWt4JdHHwUYXJQjkSXU4lKl2Uq65jg=; b=xaX7yJkFrQXRh+
	4v8Cik1EgLv4y9MnEtm0myOtY02D/dbMLnNjGucDlpaE0yANz6mLI3hFyyRlpZ2DbUTQ5QFyMrPo9
	NAatWSxrUu7OYGjMItd0UdoZALmn3jQYaKwy+SNDJXW2IV2gyDRf30afnqX4WeOFo5X6YqxWMQMau
	sxiCq98sJhP3SC0hhN7fdzppw5VA9fOtYdYzMzmFizFhX1kgALNt6f0F8sU7zRGF+xn8a9GJMRmxD
	5sBDlhqcIRTdLXKaLTHSP/PChEadMeqdmlpZMcajhMUOS/BDHq0EFaHC0ggrjDsjXKbHvfmOyrpk9
	ObwFjlYA9eMGj4BJy8bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZjrq-00000007Zlw-2T0r;
	Fri, 02 Aug 2024 04:26:14 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZjrm-00000007Zjs-3fLM
	for linux-rockchip@lists.infradead.org;
	Fri, 02 Aug 2024 04:26:12 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4724Q2er004551;
	Fri, 2 Aug 2024 13:26:02 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: amadeus@jmu.edu.cn, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: make USB gadget functions usable on Radxa ROCK 3C
Date: Fri,  2 Aug 2024 13:25:52 +0900
Message-ID: <20240802042552.663-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_212611_150772_7ED6555E 
X-CRM114-Status: UNSURE (   7.69  )
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

Radxa ROCK 3A and 3B use a USB 3.0 Type-A OTG port as "otg" mode for
USB gadget functions.

Radxa ROCK 3C also has a USB 2.0 Type-A OTG port, it should be "otg"
mode for USB gadget functions.

Fixes: ee219017ddb5 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
index f2cc086e5001..a9535eaa5235 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
@@ -664,7 +664,6 @@ &usb_host0_ohci {
 };
 
 &usb_host0_xhci {
-	dr_mode = "host";
 	status = "okay";
 };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
