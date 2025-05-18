Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0CBEC3ABD8
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 May 2025 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6gchf9nVcbfdaIfoC9FKa08ZsdBSlhgBQYIESMOZOlg=; b=yJm5B31IG45fAN
	He1rDfFhn8xuFkQA1MiGPQV3FJ+/XCaN9+v1gpeJLALz76q7x78R3HAtUSmx9PLkNm2uVx7zAX1af
	cuzbYg6TriWxyCouWx1xNsnqrEn41mFubJtB4q2YlIQeZ+jcJ8q7XmhQv1RWODRFzx6gLpHy2ZqW4
	l7O0OyFsPDpNFO9q4qa1VOOh29JH90LXryXejtSEIcAjYBaammHjjseekJNDofDiGlIrM1oo9/Kkw
	LLsIQpdl8WZcaW9Kf9g8D7bcRr7heJAyV/oYxzUtLJS4dsQ3DBCHYhrw3D7oCmQknsJ0W1HS7S84o
	aMN9kBOZ/YWxSFZfQtOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmzx-00000007fxh-1aUe;
	Sun, 18 May 2025 23:00:49 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmuC-00000007fT1-3xUU
	for linux-rockchip@lists.infradead.org;
	Sun, 18 May 2025 22:54:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1747608892; bh=L371iAHTquiamr1qOBIkRG8ZfA4URTmo9Yt5n9upXbQ=;
 b=G0apgmD1Ni9fl2laBHnbZo3HrJV0xllghzNWIy0/0vVb3VZ3FrBKzYZCrI+1/9kzXQo8ajX6+
 3Eir4MkIHS0TIpOKMh5uTt0gZA2u4Wibs4ERE5JP7UD31VZN5c1EMBvqdFyLdz5R2YSP3zHoFDq
 SjVWtKU2v5i30osjl5vI2+gc+ZkK7+SyroXob+UKnxOsejlHckLXjBxxC1HxjojIb30zDmOYtvZ
 p/22JjnWMXhoo7Xl+wYQ5/qJSiZCdzuQ6mauY94b+sFrVYzNip8OtCI2rmYJF8MaIQ1R8ctdUZC
 1IHBJp5sF0tD3Z5BFIZPVMbOj88pQwyI8MhkBBcqFwKA==
X-Forward-Email-ID: 682a6536db63046e3392f2dd
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.0.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: rockchip: Enable GPU on Radxa E20C
Date: Sun, 18 May 2025 22:54:13 +0000
Message-ID: <20250518225418.682182-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250518225418.682182-1-jonas@kwiboo.se>
References: <20250518225418.682182-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_155453_016154_A2893058 
X-CRM114-Status: UNSURE (   7.73  )
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

Enable the Mali-450 MP2 GPU on the Radxa E20C.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
index 9f6ccd9dd1f7..e4333674a0ec 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
@@ -198,6 +198,11 @@ &gmac1 {
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_logic>;
+	status = "okay";
+};
+
 &i2c1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c1m0_xfer>;
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
