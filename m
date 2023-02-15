Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67FB6C677F1
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 20:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L581xPc4m94UbCKKUeFhdukAATQLySfoz0NiNMio7kw=; b=4ibRL0v2dZf5Ae
	Zor8FM0CEJVAbBSZB/2TDTAPjdGbZCG7hjBJuBMFE59Ny1IQ2itb6kCg7cS2xaoFqmcTb4syFklX1
	Bmk1+73ki3Ju4ADXX44gRjM3OFZ/k9a+STk8puvCDX0SDO9bDM7LeMlrJLjdmI3Jepa4ywYkAlTX3
	VL2TfdOsIndL2XDHYPL54yo0uG5QHtPsZQhBDsAjbRKD0St58AYYMd1BtWprEzL7Cr8PHGD4+vz3U
	Ge2Snsr2aUUA+cKBrvjdfBnKzYK5tumXjKfAnV8HFUJZKMv0RM41fSUFs3JsobkX1gOyG6kTJ/B8g
	TA1/Yo2fJ6Q7lFSpsSFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOfZ-007D1h-9W; Wed, 15 Feb 2023 20:46:25 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOf8-007CmW-If; Wed, 15 Feb 2023 20:45:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C0AD561D96;
	Wed, 15 Feb 2023 20:45:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24757C433EF;
	Wed, 15 Feb 2023 20:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676493956;
	bh=Cs+M07axfazicUtMljub5Y2DDqCfcNlViF85M3SkxYY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lZix+C/JCvxLWp5WrpHivRydRyw7ww+YcHkWVAsf5dj0qG43RIsbqC2a5DcXSk2P7
	 /b1T+w6RQxd3UAhXNvqN6kN3ZTgMhr7Cs0DQDYwEU+83c86/Z8vEhHshIjUejVbCfQ
	 oSlJN+9u/gSoMqHLPf0IxDbDWq/22/TEuccqxC34UbVhjmtattqeadGBep2+qM/JXv
	 63GBNf3EwP1dA7Pj1Fpi3wQlqSem0RHweiidIIB9KsA4XiH3ZsaSqhUv0q2PqD8ngN
	 fsJSmovdwTGirOLTA4HQnlpy1ok+/mS0O/DWADyQd1hbVu8EIh+7pxrncknWFmseXR
	 0cUOqDX3D13Vg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jarrah Gosbell <kernel@undef.tools>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	tom@tom-fitzhenry.me.uk,
	megi@xff.cz,
	kc@postmarketos.org,
	martijn@brixit.nl,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.1 02/24] arm64: dts: rockchip: reduce thermal limits on rk3399-pinephone-pro
Date: Wed, 15 Feb 2023 15:45:25 -0500
Message-Id: <20230215204547.2760761-2-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230215204547.2760761-1-sashal@kernel.org>
References: <20230215204547.2760761-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_124558_678341_A42F5BD9 
X-CRM114-Status: GOOD (  11.13  )
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

From: Jarrah Gosbell <kernel@undef.tools>

[ Upstream commit 33e24f0738b922b6f5f4118dbdc26cac8400d7b9 ]

While this device uses the rk3399 it is also enclosed in a tight package
and cooled through the screen and back case. The default rk3399 thermal
limits can result in a burnt screen.

These lower limits have resulted in the existing burn not expanding and
will hopefully result in future devices not experiencing the issue.

Signed-off-by: Jarrah Gosbell <kernel@undef.tools>
Link: https://lore.kernel.org/r/20221207113212.8216-1-kernel@undef.tools
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 2e058c3150256..fccc2b2f327df 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -83,6 +83,13 @@ vcc1v8_codec: vcc1v8-codec-regulator {
 	};
 };
 
+&cpu_alert0 {
+	temperature = <65000>;
+};
+&cpu_alert1 {
+	temperature = <68000>;
+};
+
 &cpu_l0 {
 	cpu-supply = <&vdd_cpu_l>;
 };
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
