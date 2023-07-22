Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23D1BEB64DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jul 2023 12:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGXhXatzUgu/BLCbe1SHqbcU34dfUtYw6s9PiwPzVgg=; b=pqNZsxD5eOzIj+
	pbdbGVs3qlqh1TVQ1dOhHxNyr6178YUgM6u37UUJmAG2Y8dK7iISKQhhTO3SoprwArdgDcOjPTD6T
	Jx684s+LyeN2ytFlRSQ2zEduPxOGGg0Ij2XvAF+nN/sJCghj51+SDgpLRB1k0Bn4QyeZA3Sw+4ZaO
	k7S+pM5U9Jfn4lznzVSxKZOIlSyO3VR8Vb8er2jul9IyuenQ5dgCodEHI4dlsKp2XDDLQoR4nOqwd
	tqc5WZI8npl5JdLt2CBBrasCSHeytKxlEoWYlqUSet2DiicnQphJAcKujztG0drKKiwC+ZLsxuWUW
	L5+AfTtOHWItDM1ZZhlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNBUh-00Gf5E-2W;
	Sat, 22 Jul 2023 12:13:55 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNBUg-00Gf4D-1g
	for linux-rockchip@bombadil.infradead.org;
	Sat, 22 Jul 2023 12:13:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=PpYrzm1XkB5XPDbTuEbW1Gcs2mdAvJc7A/4UH/nP0S8=; b=U4JCPPKXF5OZ5/VCBFdpxfsywT
	LiMjfRqdPmbLqC9nretnp2I5xaQtPOeEkhZFOhYlucZWUpizW4byqmMN2O/ijr2v4t7p0xJmczF/1
	gBg6fu5IhivG7Eyudswv89rPS8s3XLkBdEycyZ/Iejd3chKcKopHjpfxyflOzPeC7LnNDGWxlh/uz
	00q3UgP7RjaGod2UTajGx9o+6MpKzPErVdXLWo+tgYLaXrhXriNpbeRPgtX54uV69yvdTdA/9eRfT
	6v2V1x1O8upGTYD9hWqILEC9SNi2deQ84BbtEk5ZpaKZro906MdJ2XrOPpx4pAsU2YOkxw8mVMmEh
	lBJvAUaw==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1qNBUL-0020df-TL
	for linux-rockchip@lists.infradead.org; Sat, 22 Jul 2023 12:13:41 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 36MCCCAw009952;
	Sat, 22 Jul 2023 21:12:12 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: sebastian.reichel@collabora.com, heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, lucas.tanure@collabora.com,
        naoki@radxa.com
Subject: [PATCH v2] arm64: dts: rockchip: rock-5a, rock-5b: fix/update sdmmc properties
Date: Sat, 22 Jul 2023 21:11:50 +0900
Message-Id: <20230722121150.130126-1-naoki@radxa.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230722111901.ivpnzgucbrw5pwg2@mercury.elektranox.org>
References: <20230722111901.ivpnzgucbrw5pwg2@mercury.elektranox.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230722_131334_916259_87A555C0 
X-CRM114-Status: UNSURE (   7.11  )
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

add alias for sdmmc as mmc1.
make card detect work.

Fixes: ea3e66e7ad0d ("arm64: dts: rockchip: add SD card support to rock-5a")
Fixes: 2a6d4af5f157 ("arm64: dts: rockchip: Add SD card support to rock-5b")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
* drop pinctrl lines (Sebastian Reichel)

 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts  | 2 ++
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index d029a77c9a1e..6b15a650490d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -12,6 +12,7 @@ / {
 
 	aliases {
 		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
 		serial2 = &uart2;
 	};
 
@@ -349,6 +350,7 @@ &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc_3v3_s3>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index c1b42e1f4477..8e1162aadc87 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -13,6 +13,7 @@ / {
 
 	aliases {
 		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
 		serial2 = &uart2;
 	};
 
@@ -359,6 +360,7 @@ &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	max-frequency = <150000000>;
 	no-sdio;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
