Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B80E5ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Sep 2022 17:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=43uii45PJu0/+Xg2C5HYY/tiNswpZ08RlbdLqwYuBAc=; b=fGmrwfa0Xk/gRV
	P//IiYQDQX9mAfi7Bwpb2nnM0o/YqK/KDZbGY4V/5xp1RymLID61ir9NtVtAk227R3rmujt4ac2CB
	pwuYNugg7vJrRxRofSw5MNjqfDdIPLqny7GzxyIicDpdZyIOSiTIj6GYSeXVrHYebshOxkT3e3wi9
	WAeBktHowGmJRy5SkosNXXV1xnZqMGNbwB4mWA0tY6i/i9DyxyaHbf3Ynk6OfCiyTsyokdeOrNB4O
	nyWb/ISpYZihQVXOpkVvvGr5OdXLLcbZ/RamZ1xf+vW6L5eU22jpEJGlzAJjUFD6CaAhv+K/SbUWB
	CWEkTZ++ZpqjIgfxs6MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUtLV-008Unw-6P; Sun, 04 Sep 2022 17:23:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUtKM-008Tup-9y; Sun, 04 Sep 2022 17:22:35 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oUtKB-0000tW-61; Sun, 04 Sep 2022 19:22:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 0/3] Add support for rk3399 based eaidk-610
Date: Sun,  4 Sep 2022 19:22:16 +0200
Message-Id: <166231195329.2423948.3022216609132415714.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220709102902.2753851-1-andyshrk@163.com>
References: <20220709102902.2753851-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_102234_367712_400E4C1E 
X-CRM114-Status: GOOD (  11.14  )
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

On Sat, 9 Jul 2022 18:29:02 +0800, Andy Yan wrote:
> EAIDK-610 is from OPEN AI LAB and popularly used by university
> students.
> 
> Specification:
> - Rockchip RK3399
> - LPDDR3 4GB
> - TF sd scard slot
> - eMMC
> - AP6255 for WiFi + BT
> - Gigabit ethernet
> - HDMI out
> - 40 pin header
> - USB 2.0 x 2
> - USB 3.0 x 1
> - USB 3.0 Type-C x 1
> - 12V DC Power supply
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: vendor-prefixes: Add OPEN AI LAB
      commit: 467dcf345613a779efc3af1dce88a576079666e6
[2/3] dt-bindings: arm: rockchip: Add EAIDK-610
      commit: a15ca48b6451b7af27323749f35d0f9929f83f73
[3/3] arm64: dts: rockchip: Add dts for a rk3399 based board EAIDK-610
      commit: 904f983256fdd24bde974bf2f38fbacd3edbcd80

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
