Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BA86C28B23
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 23:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Naz1EgeROu8Y5s5C2MxvT3cvwzCy50vP7vwunWUnvCo=; b=ix6MzjZa+oqW0t
	CXXmT9d1BGqrUpiD45yIqh4Yewa5YdiISLIcSh18TigFU8i+h3z+u3Yuj+UGjD0cZI3LUZrXloQuQ
	5u2GlcLusm7u56Ly6hKY+BO/HxTTbcjsKot/EuCBYYvpFtN2PQBGjtBE44DxehX0+ncggnc46xV74
	qKkELWgVX6tOcvPNS1UVgad3naaqwKg579GRWxzZztCyBRz4+PQQqxmpSdMmK7UvKs4G0Y37oiF/H
	25h1faSc0ag2mdw9KNhIdMuZWNpdM1gJXR6ShyRa5uLdwwMceIKU9Q1L+0Td8xQHuj9M7FPZvYHQj
	Ad0LDr/BiDOiJOXuY+3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpy0n-00000009bVI-1QDB;
	Wed, 05 Mar 2025 23:18:49 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpwpi-00000009Qqf-3HKv
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Mar 2025 22:03:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1741212197; bh=WqE1n99NX7sDOMxvh/YQ7fTw02JcT3CgFfPo9BuRBnY=;
 b=f5YQ9NOUWztjDja8qjsXCW1QRR19vv9xwDmzlcKAEgAKUed9eZkUR8mOSqIaRO3lTLAK5yxSS
 T81yIo9F6+CvfeoBn3AA7ogjpZSUpuXsd0OtnttAt3RYR1B4m8Q3GSvB2pZcqHsYmFLHwMhZiwm
 G3pAKydW1IUpv2No0h5MPJegnLola8unI4EwMDK5nxCTDDeuNxNFTTlEtMhvgIebRiXby8v1HIl
 axllEwFBh4WxnuN0uSadCOvjJOXWR4h4XEC3qkr+OjY4VGcMWBNBJcRjSg+ryOZ/PoOqvDCYdel
 pUZOWYKMgm5nlkhvuMZ/YGnzLAXljWVAE0xfDP3KtG1w==
X-Forward-Email-ID: 67c8c50588fb7bbab4530f6f
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 3/3] arm64: dts: rockchip: Enable onboard eMMC on Radxa E20C
Date: Wed,  5 Mar 2025 21:41:04 +0000
Message-ID: <20250305214108.1327208-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250305214108.1327208-1-jonas@kwiboo.se>
References: <20250305214108.1327208-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_140318_906788_EFC37D99 
X-CRM114-Status: UNSURE (   8.31  )
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

The Radxa E20C may come with an onboard eMMC (8GB / 16GB / 32GB / 64GB).

Enable support for the onboard eMMC on Radxa E20C.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
index a52a7924bb75..a511e2a2d4a5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
@@ -16,6 +16,7 @@ / {
 	compatible = "radxa,e20c", "rockchip,rk3528";
 
 	aliases {
+		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
 	};
 
@@ -155,6 +156,17 @@ &saradc {
 	status = "okay";
 };
 
+&sdhci {
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	no-sd;
+	no-sdio;
+	non-removable;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
 &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
