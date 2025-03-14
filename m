Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64D14C35FF3
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Mar 2025 15:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Exw1Ysp0tMp2hooKy0GrOTVf68WqL49qBAdMncd1zs=; b=nuY9L/VjJrRFhV
	nto3xxfJuq6N5Zm92yWNBPSabe97uvx8HVa9HnqNU8JSAusAWyptxs5GExlt01DuXV7j6kglA2h+C
	GdzFqSIEIYueHfeUZYteaKGnKeJowf8rw4mRQnJxQsm06zXvvi+41djFnkhIulotJzHZ1olUmLmNd
	2buMaX2HJg/aGPxoCjoCQ1y0vi/bNnocmpWg+jS42rwhBnoXvK3428ih0ELeNnu2xBkKn8ueI4Eh3
	OMr1Ix2QVQDFy7cXpBrdAdqg64j/zIMhBfBs12t0AvX1Z405cks7fROfseE1xKP8NGwtI2NjEPbwa
	wz+eGk0FNNLPSm6MEZlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7Cx-0000000EbsA-3wiM;
	Fri, 14 Mar 2025 15:44:23 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt793-0000000EbJZ-0hAU;
	Fri, 14 Mar 2025 15:40:23 +0000
Received: from localhost.localdomain (unknown [119.122.215.89])
	by smtp.qiye.163.com (Hmail) with ESMTP id e524c720;
	Fri, 14 Mar 2025 23:40:07 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: jonas@kwiboo.se
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	ziyao@disroot.org,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Add pwm nodes for RK3528
Date: Fri, 14 Mar 2025 23:40:02 +0800
Message-Id: <20250314154002.1844394-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <22d849c3-8a0d-4704-b69c-8019c7f70ca7@kwiboo.se>
References: <22d849c3-8a0d-4704-b69c-8019c7f70ca7@kwiboo.se>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaQk5IVh5OHksZSkJOHx0YHVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVDQllXWRYaDxIVHRRZQVlPS0hVSktISk5MTlVKS0tVSk
	JLS1kG
X-HM-Tid: 0a959550128103a2kunme524c720
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PxA6Pgw6CDJRDAo9NwgIUQw1
	Nw0KFE5VSlVKTE9KQk1NQ0tDT0hIVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	QlVKSUlVSUpOVUNCWVdZCAFZQUpPQ0M3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_084021_408066_4697F3FA 
X-CRM114-Status: GOOD (  12.56  )
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

Hi,

> Interesting, good that it works with the updated U-Boot. Main change
> compared to v1 is that it now use clock/reset id and DT closer to what
> has been merged in mainline Linux. It also has DT params to help
> initialize the two pwm regulators used by these boards.
>
> I will try with the old v1 U-Boot series and see if I can replicated
> your issue.

Hi, I found the reason. I did some experiments today:

pwm-regulator  pwm1 | pwm2 | pwm3
-----------------------------------
ArmSoM Sige1 |      | work | work |
Radxa E20C   | work | hang |      |
other 3528   | work | hang |      |

This looks weird, so I tested it further:

In the new series of u-boot:
```
--- a/arch/arm/dts/rk3528-radxa-e20c-u-boot.dtsi
+++ b/arch/arm/dts/rk3528-radxa-e20c-u-boot.dtsi
@@ -8,9 +8,9 @@
 };
 
 &vdd_arm {
-	regulator-init-microvolt = <953000>;
+	status = "disabled"; # Cancel changes, pwm works
 };
 
 &vdd_logic {
-	regulator-init-microvolt = <900000>;
+	status = "disabled"; # Cancel changes, kernel hang
 };
```

I looked at schematic and found an interesting thing:
1. ArmSoM Sige1 schematic: VDD_LOGIC Default 0.901V
2. Radxa E20C schematic: VDD_LOGIC No default voltage

Therefore, the default voltage of VDD_LOGIC (supply to
GPU and LOGIC) needs to be set to 0.9V when initializing.

This can be done by hardware or software (such as u-boot)
Should we support this in the kernel driver of regulator?

Thanks,
Chukun

--
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
