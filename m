Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 846ECC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 17:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQg4P2cgOMtiif9B17ATuOtxlB7QmjRr17MPpNQGNbI=; b=DPWQV4M4hnx7uG
	eAkzb3NzgbrV8vcEZVj9HWPHlNDO1hzAjkG8upBJg0p4awNbeyPfS7CHLrrbzeRZKACgmgv20GtPU
	ig8N4yDTqUrd70n6qlubZCEHHJMSn0HmYmr90YoBKmWHHaZIDtRVK7q5ox4kLOVLgSvnzIanVbFYI
	UlssTlCwQFgrqbKK2ZC/1RuYAg6351avQwSfWLvZKfegBDrLhBBORAwxJD/mGvpiqaZt36JZtStyp
	CPXWMFiiALnDJJjpnyF49Jf6fwUCM09NcDfa+RA9TbncqVcoVB5p3lOVvUAcvRbVcqIcYUR6Z8M68
	b46stBUAqb3EFnyaWoxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi59-0038RR-AP; Mon, 28 Nov 2022 17:38:15 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi4W-00381t-5U; Mon, 28 Nov 2022 17:37:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 8392CB80E9C;
	Mon, 28 Nov 2022 17:37:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E4CEC433C1;
	Mon, 28 Nov 2022 17:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669657053;
	bh=Ih164wO2yIVSdRfklyHjNqO9eU+8S3Va5loJX4++x7Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=K1J4kKcMAgj28JOyAoNMvRuo5VnkEOe845PqD0uuJSua0Lh7s8Xx1ifvXFj1RR6sc
	 hwQpbB6TYXmt58Xwmqw+DAhpmcgwvaj0qHr1PeomU5fb368JuJQhaAroy1cWxF3g/N
	 LJOsNWANm1iU99bLmBEhVsOfzOJDSFQhMgY6toP1lreSC1rT8MY4fPj2g/29Ws2FeE
	 5hm0TQPfNO0y+KQ0NqJKQwzauFj0hi+2UG94v43U8WUq/8o5zaoXnkSw9jXi8mDI1x
	 cXbVH5a1bzywlRy4eTymmK6icIDHk3cKKYqD6M+0VaUMOfW6wuCgNuIsfULE03jpI3
	 jOWbK7JsGGCpA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.0 04/39] arm64: dts: rockchip: keep I2S1 disabled for GPIO function on ROCK Pi 4 series
Date: Mon, 28 Nov 2022 12:35:44 -0500
Message-Id: <20221128173642.1441232-4-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221128173642.1441232-1-sashal@kernel.org>
References: <20221128173642.1441232-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_093736_380506_C287E629 
X-CRM114-Status: GOOD (  11.37  )
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

From: FUKAUMI Naoki <naoki@radxa.com>

[ Upstream commit 849c19d14940b87332d5d59c7fc581d73f2099fd ]

I2S1 pins are exposed on 40-pin header on Radxa ROCK Pi 4 series.
their default function is GPIO, so I2S1 need to be disabled.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
Link: https://lore.kernel.org/r/20220924112812.1219-1-naoki@radxa.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 401e1ae9d944..b045f74071e4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -491,7 +491,6 @@ i2s0_p0_0: endpoint {
 &i2s1 {
 	rockchip,playback-channels = <2>;
 	rockchip,capture-channels = <2>;
-	status = "okay";
 };
 
 &i2s2 {
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
