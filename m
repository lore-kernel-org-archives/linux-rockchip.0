Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72A49C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 18:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=msals5m0TVH34MP8fgF7Hrbd/61J9vUg4Kl2rBgtZ10=; b=zYS4Tn/NpkIITw
	c/JD/ZGvj9kfkGtE+66+nRBnEMcXEijZpkE8UX2VntpBnRhDX/8bYK0ogoca1P+veGRfDVxdHkAWI
	7uVyGukC9oxI6LCSW9+LqGJ/J1/oNEUqHmmNhv8pUPS8II6lUlu77PreJi/hIEnTmsECGRFNB7af7
	G/ck23wLW0h8sTEssagmBnI4AktdJbLKvvikHxLMI4v3NaNwe+Wh2o/xp1OByOUheI3puC1lRNaa6
	9pu+MKSxK+szdsCb6d5pUUkMCvxQ1S+p8iyXd6qssrV6Oh0bqa5feX7xmIJ4JYjCjnz2XrJHnmiB6
	Ib+3doxUqvOty+Zf+lZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozioE-003Y7Q-OT; Mon, 28 Nov 2022 18:24:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oziAC-003BYE-SC; Mon, 28 Nov 2022 17:43:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6FCD2612C4;
	Mon, 28 Nov 2022 17:43:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C884C43470;
	Mon, 28 Nov 2022 17:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669657408;
	bh=mz3vz6o7JaaQKhVGgMgC8tbJOFZ1haZmzuc36K26sU4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=prbmVLienj3oKODpc/zdDzwV2GEdmI+6ScR0z6o2Jv/9/zUy/P3fU2iztK6L3/BlZ
	 GfRxm1j+8LYJy9QE2lV0fDkgjidza6vxTQPEvJMKjrTJePju5fw+AOekLBPl3sVBmR
	 VsxA5em24rdJOZq2gHB0+28lDzrGdvP6AvIboqygwYxvO+Er1YUbCqJPUyVJwGRq9Z
	 tHc2qob4EgwDCFx5xU8CCw71SBkJAgR5ys0uosks+Mg2CAx2I6fvlqlJfG+HjROIiH
	 IKSpjZGTUsOTeOaI3agok/SvzsvF5DwCtVHqRc1MVM2Gz2OVPa23r34qlyIA0BdtqO
	 wASz5htZU7goQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 2/5] ARM: dts: rockchip: fix ir-receiver node names
Date: Mon, 28 Nov 2022 12:43:20 -0500
Message-Id: <20221128174324.1443132-2-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221128174324.1443132-1-sashal@kernel.org>
References: <20221128174324.1443132-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_094329_000603_B9CAAFF2 
X-CRM114-Status: GOOD (  11.87  )
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

From: Johan Jonker <jbx6244@gmail.com>

[ Upstream commit dd847fe34cdf1e89afed1af24986359f13082bfb ]

Fix ir-receiver node names on Rockchip boards,
so that they match with regex: '^ir(-receiver)?(@[a-f0-9]+)?$'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/ea5af279-f44c-afea-023d-bb37f5a0d58d@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3188-radxarock.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3188-radxarock.dts b/arch/arm/boot/dts/rk3188-radxarock.dts
index 1da46d138029..54e8e5dca93b 100644
--- a/arch/arm/boot/dts/rk3188-radxarock.dts
+++ b/arch/arm/boot/dts/rk3188-radxarock.dts
@@ -104,7 +104,7 @@ spdif_out: spdif-out {
 		#sound-dai-cells = <0>;
 	};
 
-	ir_recv: gpio-ir-receiver {
+	ir_recv: ir-receiver {
 		compatible = "gpio-ir-receiver";
 		gpios = <&gpio0 10 1>;
 		pinctrl-names = "default";
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
