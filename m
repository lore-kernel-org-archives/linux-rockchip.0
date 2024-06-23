Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79D46C2BBCA
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 12:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C5GY/imRnpNbtdrPJVCJxLrnbn4kYQYEKQOsZFRhF5Y=; b=sXw05jVmxBYUzl
	Qcd/Od5mQM5knZz+nOftbtZw3g/C0DijsaXU6c4KlWI5lFuCYAdUURxcx0G9EA0KKVK20+q5YfMdB
	gGfqKTQIEbVfgtD4VEgW2F/0U71yclaizswtLnoCXcfjO7UTVMqCz2K7XQZhOYkNdfun5oAhEZqpr
	1/yEwdzaIFFMMMkNL1HC74qD2qQDczq5Ab72lYOGBc+7dmujxcx9NPjDwL+zu3ApNHXxcmMDoh168
	Eho6NIJ6lmLkF04qAt8XuQ0XG2qOdRnxdFYhcDZD0722WR9+IBJIGwh1RQWDF6/jwqlv7PiPhVJ6d
	wEoxqwbGL0LtkPQFBqMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLLz8-0000000DwRr-1ZpB;
	Sun, 23 Jun 2024 12:06:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLLz6-0000000DwRS-2OGv
	for linux-rockchip@bombadil.infradead.org;
	Sun, 23 Jun 2024 12:06:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Q36v1l+rRx7GJt6wGCUZGWr637IC68BDH9m6YJULIbw=; b=K9ldsos6uyHQLixrZchzjF9DOt
	9x316dl84131gHjc0ER6mWbOBVzo5r9/BoDRSE+wL81U9z9q0Sej3kpC4YzDlTirsxrFA8vWgKFvp
	Zg23li7HRaAI0KJ6dzPsM8pbDnbh2CAlzv6HYxr+0PspPWILboQ+tZsZE9uvUFomxIg4+BwUjMFQ/
	zBoeuio8w5YLGMHwosBNqX81KsuWa4SR/EM48UGG5Qo05LSlECqWCzYAcjVbIMxJzlMEONae2Hv23
	gPmfzrQp12Iu3EHY+ZaGJOzBEVoFubvx81trjH9030kO0ulebGbItR+DLiQUL6Do91tKiMwVJIkNy
	rXastW8g==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLLu8-0000000828N-3S8W
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 12:05:36 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45NC0fJC006059;
	Sun, 23 Jun 2024 21:00:42 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: add support for Radxa ROCK Pi E v3.0
Date: Sun, 23 Jun 2024 21:00:16 +0900
Message-ID: <20240623120016.82990-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240623120016.82990-1-naoki@radxa.com>
References: <20240623120016.82990-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_130320_718049_5BD060AE 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

ROCK Pi E v3.0 is newer version of ROCK Pi E v1.2x. Changes are

- Upgrade DDR3 to DDR4
- Elevate eMMC connector to onboard eMMC
- Update silkscreen to ROCK PI E V3.0

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts | 10 ++++++++++
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts    | 10 ++++++++++
 2 files changed, 20 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts
new file mode 100644
index 000000000000..be369dace843
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3328-rock-pi-e-base.dtsi"
+
+/ {
+	model = "Radxa ROCK Pi E v3.0";
+	compatible = "radxa,rockpi-e-v3", "rockchip,rk3328";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
new file mode 100644
index 000000000000..bdb2ca1a225f
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3328-rock-pi-e-base.dtsi"
+
+/ {
+	model = "Radxa ROCK Pi E";
+	compatible = "radxa,rockpi-e", "rockchip,rk3328";
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
