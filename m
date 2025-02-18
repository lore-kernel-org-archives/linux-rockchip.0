Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBBF8C021AD
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Feb 2025 12:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+rr7dZWSYmNmagk0023ypHpknMzQhO2i/XqQn3oekg=; b=n70wLnJHhx5htq
	e7k7xK6+yGBIVrzAsa8fGiy7Xu0vATczixKEJw7UAD2V7dZj8BydLqOw7Z7AhHMRUm7epMw4+ZuaW
	BDSwSoMDg0kiroRvqnLUDDSyRvNpHAwKjSrdFAQZpZGwShfMI9b5EdTujueX3mjbeBrq9RW4xNqr7
	U8pdUfmfbuW9AfDIJmJQMz81SKIOkRqlbS00gxfRn+K/I5qcakTkWYCYQ1SQI44E+rIxqlYCPBiwB
	w/GKChiA5NlXyQdjvI1WN9L4Kpe8/07AV37sfmzp3R2RDRT9FsYYGmYj2wyOm/U089V2vmiqANzzS
	gTatLqj3SzKnEkMXcJMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkML5-000000084f3-3hos;
	Tue, 18 Feb 2025 12:04:35 +0000
Received: from smtp-190c.mail.infomaniak.ch ([2001:1600:4:17::190c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkM6X-000000081Vm-3Eok
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Feb 2025 11:49:37 +0000
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246b])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YxyVd6cw2z3GT;
	Tue, 18 Feb 2025 12:49:29 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4YxyVd2XrpzkJJ;
	Tue, 18 Feb 2025 12:49:29 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Tue, 18 Feb 2025 12:49:12 +0100
Subject: [PATCH 1/9] arm64: dts: rockchip: enable UART5 on RK3588 Tiger
 Haikou
MIME-Version: 1.0
Message-Id: <20250218-tsd-align-haikou-v1-1-5c44d1dd8658@cherry.de>
References: <20250218-tsd-align-haikou-v1-0-5c44d1dd8658@cherry.de>
In-Reply-To: <20250218-tsd-align-haikou-v1-0-5c44d1dd8658@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_034933_955801_8EBF5BF6 
X-CRM114-Status: UNSURE (   9.17  )
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

From: Quentin Schulz <quentin.schulz@cherry.de>

In its default configuration (SW2 on "UART1"), UART5 is exposed on the
DB9 RS232/RS485 connector. While the same signals are also exposed on
Q7_GPIO5 and Q7_GPIO6, a GPIO header, and thus could be used for other
purposes, RK3399 Puma Haikou and PX30 Ringneck Haikou do enable the UART
controller exposed on the DB9 connector, so let's keep consistency
across our modules and enable it on RK3588 Tiger Haikou by default too.

Add a comment while at it to explicit where this controller is routed
to.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
index 3187b4918a300dae49fe05d760fb7e1fd55f14d5..7bd07e5026ed914063965c9f1ec6a29357b0c05d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
@@ -310,8 +310,10 @@ &uart2 {
 	status = "okay";
 };
 
+/* DB9 RS232/RS485 when SW2 in "UART1" mode */
 &uart5 {
 	rts-gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_HIGH>;
+	status = "okay";
 };
 
 &usbdp_phy0 {

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
