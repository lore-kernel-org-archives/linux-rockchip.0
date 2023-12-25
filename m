Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ADCFC46CD3
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Dec 2023 00:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tQX8yVAcQXqBMIzO3/3WhzdSBFAzdmAwgxSyR55bI4A=; b=cWvrm8lgj3+GnP
	jU+LEM3lAjUQ7A+ovpV01iK0mteO6pUiVOBkWftC5ICkqKKhjLfptW/Sz/JSsJgz0yrDfJQ8zBeBM
	Ky22bl/DqLgDYWwkOKfZsUieQw14g7HpNy3MWjeBFhWPPUb2BwwzVg1z3o7NMGogB/we4f09maDO5
	VLQ154/820CdrdeJxH/8fWvqDg99mOfycuc0mTKiSXS/ClATZBm8KS7RxK1bNc90zo0JHLegy1pfU
	yOekropSbRfBSB9hAfFf5a44rP2weMBd06YEhUtnUXRadhbItVwWjMQXg5cgXAzxwG/bA3nZ4dG6Q
	ycOiWfjha9/kQEEvbitw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHZBn-00A2xX-1M;
	Mon, 25 Dec 2023 00:51:27 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHZBi-00A2x3-15;
	Mon, 25 Dec 2023 00:51:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=PCPH+
	8SVMJT5ORmwxUBbY5agPi3Em+ScLQ2lM/Hrli8=; b=Q7qT8tVXXsNOXNYVvnOtl
	zigxPV+UiiPRrNL8wOWQ878n8ij0NIuG7s1Wyu/2gr2arDMO2JfCZ5bZ7LHUXEFE
	opSawQ3jvAbLHrSYfBbyECFXkCu9BeicNbNoaGFRBMBThZcHOuoUYwxqqA2ZSHsV
	R9LWJ3h4frT3fzwI8/Gdac=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-1 (Coremail) with SMTP id _____wDXf_bx0YhlDExdGg--.45426S2;
	Mon, 25 Dec 2023 08:51:01 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	lasstp5011@gmail.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	zhangn1985@outlook.com,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v2] arm64: dts: rockchip: Fix led pinctrl of lubancat 1
Date: Mon, 25 Dec 2023 08:50:55 +0800
Message-Id: <20231225005055.3102743-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wDXf_bx0YhlDExdGg--.45426S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7WryrXFyfKF4DKr1UCF4kWFg_yoWkArbEga
	4Ig3W8AF4kJryFv34aya95W3sIk3sIk34rGa47AF1DKay3XrWUAFyrJay8Cw15G34Ikrs7
	X3yDXF1kCa1Y9jkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRMFApUUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEBdRXmVOBJ60+AAAs1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_165122_968878_52B7403F 
X-CRM114-Status: UNSURE (   9.44  )
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

According to the sch, the gpio control sys_led
is GPIO0_C5.

Fixes: 8d94da58de53 ("arm64: dts: rockchip: Add EmbedFire LubanCat 1")
Reported-by: Zhang Ning <zhangn1985@outlook.com>
Closes: https://lore.kernel.org/linux-rockchip/OS0P286MB06412D049D8BF7B063D41350CD95A@OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM/T/#u
Signed-off-by: Andy Yan <andyshrk@163.com>

---

Changes in v2:
- remove "boot" in subject prefix
- Add Zhang Ning full name in Reported-by

 arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
index 1c6d83b47cd2..6ecdf5d28339 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
@@ -455,7 +455,7 @@ &pcie2x1 {
 &pinctrl {
 	leds {
 		sys_led_pin: sys-status-led-pin {
-			rockchip,pins = <0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
