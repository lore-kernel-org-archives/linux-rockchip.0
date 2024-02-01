Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78621C47DDF
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 12:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S6BgAemEnYBvwcZDBQvaHqAhSBe1J8mqPhEXVqQmZlg=; b=mxVJgYzTuBNROp
	3srQ9uScZ9KvRKpkWsegcYMGSzWbw1t7K+NgegilT85ZCJ+OWsNyAsQP73DtBkizp4aoSq+p6rfyG
	exWaZGcwLcY1+MGOOWDmUQKNEklDybCdRklUO4uCjj41THN1qtTJ/O3lTrXIa0v78Pg2Sbpb9RHEm
	BRLUtAVIPqEOnqdjV/pUPOMZ3LzWt7XYD3OGT3k0rA8LOKrMtj4sP+dtkbLDwoip5IHPCY2+zGMjd
	F3EiZSNXL9Kf44eMIYK4InbpdiVcnfy4du1CUhktf28uQdAt0uCKcrKiRe3l50BF4Ugi/ZtvMrZCp
	iwwEjSdzujc6qXnP5BIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVVvD-00000007hin-2QdK;
	Thu, 01 Feb 2024 12:11:59 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVVv8-00000007heC-2Ryp;
	Thu, 01 Feb 2024 12:11:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=1SUtL
	q72uZ85U/njlejKUSRLnfESJ7Xgoity5J6Gns0=; b=mz0FM6FxJs/naHJbIoQce
	8l37kZYWwW8vvN5DNB2llmW8i1o21fuZEwXELoWOOgK+FDs8cJi43AzYcTKuIHtc
	eCTx5F/p30aoF+IFqTp+BsmQuoP4MVr5dOJVxqc+btrqIpCAIKUWWssvW2YnTPdG
	cACDlQkQnwJHj+fLD9S4wE=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g1-0 (Coremail) with SMTP id _____wDX_35birtlKEO5AA--.30092S3;
	Thu, 01 Feb 2024 20:11:13 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>,
	Dragan Simic <dsimic@manjaro.org>
Subject: [PATCH v2 2/4] arm64: dts: rockchip: aliase sdmmc as mmc1 for Cool Pi CM5 EVB
Date: Thu,  1 Feb 2024 20:11:04 +0800
Message-Id: <20240201121106.1471301-2-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240201121106.1471301-1-andyshrk@163.com>
References: <20240201121106.1471301-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDX_35birtlKEO5AA--.30092S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrZryDuFyDGr4kXF1fWF1kuFg_yoWfAFX_ta
	42ga1kXa1rXry5Wwn8tay8G343C34qkw1fJ3yYvF4kAFy5X39rJayrKa92qr1jyF129rn3
	JrZ3ZF18JwnxCjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRMVby7UUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqAN3XmVOCDrNTgAAsY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_041154_983036_104F048A 
X-CRM114-Status: GOOD (  10.93  )
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

Follow others rk3588 based boards, and u-boot only use mmc0/1
as mmc boot targets, so aliase sdmmc as mmc1.

Fixes: 791c154c3982 ("arm64: dts: rockchip: Add support for rk3588 based board Cool Pi CM5 EVB")
Signed-off-by: Andy Yan <andyshrk@163.com>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
---

(no changes since v1)

 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
index 0b02f4d6e003..cce1c8e83587 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
@@ -16,8 +16,8 @@ / {
 
 	aliases {
 		mmc0 = &sdhci;
-		mmc1 = &sdio;
-		mmc2 = &sdmmc;
+		mmc1 = &sdmmc;
+		mmc2 = &sdio;
 		serial2 = &uart2;
 	};
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
