Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D42FC44500
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 08:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	MIME-Version:Subject:Date:From:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JR0hFFqE7niYi1681ZPsfWRJNz0IP9d+dg5Sx9E3hNc=; b=3vn0be3KZVd3uXmCQUGONJVbXW
	hyBddzlX9QvXXUGNngHgTQdHnwXi5t2AFAg7hqs/Xy/VzMNY+sexjlYjwLFIT/t8RY/Jfp2e+G2KK
	ndZZwDa8+wlceBYW6GuZTDPCYQcd7p4pnWEA4wpEEi8JMDPQZYlx6ih+WhQtz/9hIrXe5VAYRhySW
	JXPs30gpaEgC27+3yUP8gEY1yn3y8sItYI/ixpy++R3H+ahUXrOx3mY8GlwVy2G5SMH2SCkD9+wES
	CMEwaSxNqlumoA4ciaZWpeY3jTBTcoDf5xjWaAvHaj54OhVZSaWUbAnBZ/bCU2ITPbY2r3C6Uxuyx
	yUipFhyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfYqS-00000006K73-0Rki;
	Fri, 03 Jul 2026 08:01:56 +0000
Received: from out203-205-221-149.mail.qq.com ([203.205.221.149])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfYqM-00000006Jxj-1Xsa
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jul 2026 08:01:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1783065708; bh=L3LDk1ob8lSeDF4p3l0ihZVgutygUEgJnbVoCOXhudc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=CJkK6acFoXnX1g4vVLV7fnFp+2GXjTG7P2Qg+s//tKFrB9bFtpPCQvJgflRsZWYg4
	 SlzQ48vo6w0DSEhkonQ/8L89kdZjXg/0cQ35/rC+xn9c0QPJbKF2QzsVQGw7R6qCOG
	 TRoHFSFCUU8/OXsVAEECkPu6jlPITRwJlMeJFeng=
Received: from ubuntu2204.localdomain ([218.4.149.66])
	by newxmesmtplogicsvrsza73-0.qq.com (NewEsmtp) with SMTP
	id 6622C6D; Fri, 03 Jul 2026 16:01:38 +0800
X-QQ-mid: xmsmtpt1783065705t0731270v
Message-ID: <tencent_F79E849B11AF805A4401BF9F263B1A469907@qq.com>
X-QQ-XMAILINFO: OVgMLYsdica2Wz0L0+6ObtYbjk6wIdyR5Wos+YJH6r63OA5+Uza/FQzt2opDAe
	 ntbf42XNICyNsU+n+lax6FnTNI1u3IjGgcywXwXNzrQOO8FffjvjYuzzTV87BjI7L578uRguwFlk
	 JTai/U0UFg6v/PuJpy0XNhHJziBKNISsy0Y/QOvceKUQuwJKaMM/9b5m3bwdAG9Jt6khp0tmNmnN
	 nlBdCW2Jl58dajDsGG/0UzYD5/3cbTCRZ+QoO4aZc6ypSryk7X1taaJISqN8lZ3ICsuDi9k3A5Mw
	 KG5GxbvS/UjsmJ4FxHMPTcG/6419XHUdHyzq3EjaSANXRnxt58GwBe10PgMJ8KFEdtN4otNirq7S
	 Ko6ftKajQQUxcTCkVFyOLI9pUCN76AriLXlFvMyTi1OACj6FhS7f/Pth18xhcdRvDWtQ01tGED8Y
	 YIYm8NhOywA9ALphT3cAabS+R19ETEXcyPE2CXM+2eiZ+SXUwiR+aaV4EobW1K+qUXjxObmKE/Ux
	 GCyy/Dm5rMz05jrae6jCUui2bwFFlhvBa3z6a2U3yL1yq+KF8gC/A4gx4dKCtY3v5wWWfdSGzwPG
	 4mDFoQcZtTak5LQIZtxFkRg1yZ+Dvbrs7ZO9y4Z+HVhIWZFvTHTYai0SG/09j5Ob6RWnQr5fiJBX
	 K+RYyEidMSbcr/n78Bjc6AAg7sqgklwjQpnAXU6BxiNadlgmBlMdcwraHnS3Mpz0WZz/nVpZwXXq
	 yIQRx0Isk+gHsVEzvvgWpDwnUx57peNhxSBETomveJfoZddCXUbOGgAKo/DtZh4vBukIRFsxt4bF
	 f4nbOeUbHy2Vliwg0YMB0wzBa/v1q+uJXQ6GK4oUoRTrBS5OI1/6AfkXp75EzCPDpzsXtUCR+WK4
	 it2EDTqDPdMjydh6WPfJkhzFUy+wUb8q+TBYaGrLGqsFIqPj2AtdpMrotDC6B589XORsaFzExunw
	 2kFG/sULQNm4dAy3ROQsgEfZ/PjDnXFnBccultOl5GiR4ABDIbUzyWHmEpGyuVW+XRBUI+5QUJCU
	 XjoBZ4w29KR432sMUcUMRMYwxmLKqB/eVfyMQavvJ4siOL+glVObEypRj0RY22aoeIE4wEoA0pTw
	 vvuHdoygroDWN6xribPtRHD7BOQJR+vPd/tyc9tbCOwF2CNC/Vlzmrrx2miygPmFtlsKvk4Y5KXt
	 XjzTrQmoSklY9ixjbeDsLDlADu
X-QQ-XMRINFO: NI4Ajvh11aEjEMj13RCX7UuhPEoou2bs1g==
From: Cunhao Lu <1579567540@qq.com>
Date: Fri, 03 Jul 2026 16:01:29 +0800
Subject: [PATCH v4 4/4] arm64: dts: rockchip: Enable CAN controller on
 RK3588-Tiger-Haikou
MIME-Version: 1.0
X-OQ-MSGID: <20260703-master-v4-4-47d40bbf5fda@qq.com>
References: <20260703-master-v4-0-47d40bbf5fda@qq.com>
In-Reply-To: <20260703-master-v4-0-47d40bbf5fda@qq.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, kernel@pengutronix.de, 
 Vincent Mailhol <mailhol@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-can@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Cunhao Lu <1579567540@qq.com>, 
 Heiko Stuebner <heiko.stuebner@cherry.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_010150_739159_E0FC4CAC 
X-CRM114-Status: UNSURE (   8.78  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

CAN0 is piped through the Q7-connector to the CAN-Header on the Haikou
base-board, so enable support for it there.

At least on RK3588-Tiger, the CAN clocks default to 99MHz, limiting
usable CAN bitrates without skew. Errata documentation mentions
300MHz as the default frequency on RK3568, so replicate this here
to allow more bitrates.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
index 873fbeb8daa1..6273e695b039 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
@@ -155,6 +155,12 @@ vddd_audio_1v6: regulator-vddd-audio-1v6 {
 	};
 };
 
+&can0 {
+	assigned-clocks = <&cru CLK_CAN0>;
+	assigned-clock-rates = <300000000>;
+	status = "okay";
+};
+
 &combphy2_psu {
 	status = "okay";
 };

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
