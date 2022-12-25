Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99736C4332F
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Dec 2022 12:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KXdNxWT2CpbFAGjs7UT4ffdqANnfPZpfbAwqi9zCcvU=; b=jdw41yp/C8nQFk
	fQj+taGi9bei9TzbLH7uQId4nVdD3eGaOOBliA2ExBPtniCtFa4iawHPiFmpJvcTIzY0MWWy6HWNC
	TKiPy8Gjip8Xe0JWrxJr1jRtm6m9NPexVcRg1KNrl5wmx/QlAAv590T+sqIWWVkhiKVNvp5Ib/rrN
	hTf7GEXqqayq0uy1cq3Ov1AnzVhSzHDHSSKilscSPRk4VpLm05afIr24Ur/hWGzLjylcCw5/ngbEr
	fCHCFMP+f4oaheNldGn7N2c5j9wfONAH9LH8nvAcluj5NPSWVkH5D3EY68bxznH5ZhAtsd5f/1uRv
	4ITjN1nrJQX9vBtL62Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9QKs-00AyKS-Gg; Sun, 25 Dec 2022 12:42:38 +0000
Received: from m12.mail.163.com ([220.181.12.216])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9QFJ-00AvFc-R9; Sun, 25 Dec 2022 12:36:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=lYD3w
	XNUFmWhBTXZjF8aH8HBuUSp1esXXHCXlQj+fyE=; b=IcoUKgmsGm8ucyKR4cN+B
	8QK0lLQE+SwzwGYuZkxT9BVLBdegzV7bh2gwTEoZmfqX15BkA8H0czvOYPEN3EmE
	eqk7xhnN6ak33aP1xYi32BpoY8dnSIPIBiGa1zuZXBLRphahExjSaGCoCU8AY7pE
	jgePJqc/XiiKcgSvY9ePXU=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g4-1 (Coremail) with SMTP id _____wC3jPniOKhjahJ1AA--.53952S2;
	Sun, 25 Dec 2022 19:49:58 +0800 (CST)
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
Subject: [PATCH 2/2] arm64: dts: rockchip: Enable wifi module AP6398s for rk3566 box demo
Date: Sun, 25 Dec 2022 19:49:53 +0800
Message-Id: <20221225114953.3518595-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221225114915.3518502-1-andyshrk@163.com>
References: <20221225114915.3518502-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wC3jPniOKhjahJ1AA--.53952S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxJF15Xw47Jr4rWr1kKF18uFg_yoW8AFWrpa
	sxCrZYgr1kCr4jganxXrn5Xrn5C395ta1vkwnrua4fKr1S9a1kGF1Uurn5AFn8WF48Xa1Y
	9rs8Aa43Wrs2qw7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zMKZXNUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbivBriXmASacxd7AABs9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_043654_258055_B8C56A2F 
X-CRM114-Status: UNSURE (   9.80  )
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

There is a AP6398s wifi/bt module on this board.
Fix the sdmmc1 dt node to make wifi work.

Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip rk3566 box demo board")

Signed-off-by: Andy Yan <andyshrk@163.com>
---

 .../boot/dts/rockchip/rk3566-box-demo.dts     | 26 ++++++++++++++++---
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
index d956496d5221..6c0c24226b52 100644
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
 
@@ -391,16 +395,30 @@ &sdmmc0 {
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
 	pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk>;
-	vmmc-supply = <&vcc_3v3>;
-	vqmmc-supply = <&vcca_1v8>;
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
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
