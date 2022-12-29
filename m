Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDEA7C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Dec 2022 12:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zVGWcQQqVug6PCnsoIWt4G2ixFkmfmtubQd/L9JKpGk=; b=W4AJN7NFGt700C
	QktFaG+fFbvhr5BXkkfjgFFWYidGk7D7WaPfOJsMLK8Zfho66fM5ncL4nBB5OID9VvTiK13URjLvg
	VuQaTmqmPmqHkeRUTm0B5NFtlHZ0Nt+8m04QMpzEFZdJ8JLPTaK8mSM4h32KeMr3+iYybBIKvXSBw
	lYSjVxfkgB7NSqUaBk576F4FtQnulNTETDVjzHsb/WA1vAQUOzgZcfUGgWveveBxIbgD2KWoHKoei
	rjkSA+9jrl/LRk3X2gLjRBKCP8vP51+yAKAaQ2KORN6R+Ce+7oS//4B1F/zNInUC4Q5ZWDUwKZcSP
	i8hQGZZU5sQfjKXHRJ/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAriA-00FRJY-Ip; Thu, 29 Dec 2022 12:08:38 +0000
Received: from m12.mail.163.com ([220.181.12.217])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pArh9-00FQmE-Mk; Thu, 29 Dec 2022 12:07:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=FPYog
	8VHYYQIw1Wnto4/o37NSMT3g91TZKJFzlnQXlk=; b=RAh3u5B4aDWz+BfCZmF3x
	c2SaDfVJXm2uKTMrfznYfe9KA/SzbG24xtC4wTV78oE76YLbyvo+L2C4h9CGCmU7
	7YPI5aY9BMvJ/euMAVGlAdqF9vi4cJM2PNntZdSA06assDrh/L6CyILziOMEE2m3
	OrfgQC9GkqZkPgDoDZKPTA=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g4-1 (Coremail) with SMTP id _____wCX5SUxf61jRl5hAA--.5754S2;
	Thu, 29 Dec 2022 19:51:16 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	piotr.oniszczuk@gmail.com,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Enable wifi module AP6398s for rk3566 box demo
Date: Thu, 29 Dec 2022 19:51:11 +0800
Message-Id: <20221229115111.3899793-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221229115043.3899733-1-andyshrk@163.co>
References: <20221229115043.3899733-1-andyshrk@163.co>
MIME-Version: 1.0
X-CM-TRANSID: _____wCX5SUxf61jRl5hAA--.5754S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxJF15XF15Gw45JF4kXF1DZFb_yoW8Aw1xp3
	sxCrZYgr1kCr1jganxJwn5Xrn5Kw4kta1qkwn7u3WfJr1I9a1DGF1Uurn5AF15WF48Xa1Y
	9rs8Aa4agrsFqw7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0z_wZ2hUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbivBnmXmASagkixwAAsp
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_040736_178506_C82F4E77 
X-CRM114-Status: GOOD (  10.68  )
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

There is a AP6398s wifi/bt module on this board.
Fix the sdmmc1 dt node to make wifi work.

Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip rk3566 box demo board")

Signed-off-by: Andy Yan <andyshrk@163.com>
---

Changes in v2:
- add vmmc/vqmmc supply back.

 .../boot/dts/rockchip/rk3566-box-demo.dts     | 24 +++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
index d956496d5221..2671f207cfd1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
@@ -324,8 +324,12 @@ wifi_enable_h: wifi-enable-h {
 			rockchip,pins = <2 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
+		wifi_host_wake_h: wifi-host-wake-l {
+			rockchip,pins = <2 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		wifi_32k: wifi-32k {
-			rockchip,pins = <0 RK_PB0 2 &pcfg_pull_none>;
+			rockchip,pins = <2 RK_PC6 1 &pcfg_pull_none>;
 		};
 	};
 
@@ -391,9 +395,15 @@ &sdmmc0 {
 };
 
 &sdmmc1 {
+	/* WiFi & BT combo module AMPAK AP6398S */
+	#address-cells = <1>;
+	#size-cells = <0>;
 	bus-width = <4>;
+	clock-frequency = <150000000>;
+	cap-sdio-irq;
 	cap-sd-highspeed;
-	disable-wp;
+	sd-uhs-sdr104;
+	keep-power-in-suspend;
 	mmc-pwrseq = <&sdio_pwrseq>;
 	non-removable;
 	pinctrl-names = "default";
@@ -401,6 +411,16 @@ &sdmmc1 {
 	vmmc-supply = <&vcc_3v3>;
 	vqmmc-supply = <&vcca_1v8>;
 	status = "okay";
+
+	brcmf: wifi@1 {
+		compatible = "brcm,bcm4329-fmac";
+		reg = <1>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <RK_PB2 GPIO_ACTIVE_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake_h>;
+	};
 };
 
 &spdif {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
