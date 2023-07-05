Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36CDEC001B0
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jul 2023 14:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kV3sGCfrdl4EE5ZDENUdTEUN3jibzuHryEkBNGFCd4U=; b=qhJhuxboFZdA8h
	VvtDUruVkYZEaOqJOrgnCOs4WnQqqWi7w8RRiDRRTNskVOuHGwJSdcRdYP02tTQouNuD1GBpjP1n/
	AzmwB0q6tyf+SiwnjjAIEsOcYzcT3R7vtDCbwvSDpw0R/1Jytug/oKDz0jPpYY2guziAXhoWrq/IS
	vWdNwQCn0ewx7MWPLKoKPUeiJLui1cSkG4pHFhCjk7wkk+9c4WeRr7zxAeN5Lae0GUDh1mYPUFew9
	BCxPrM0VBoszIRJsYwGEk92VgQ1ZXyu9YI/77hp5BAOHWD/SU3c4zZd4GitO03UYAvS1PByqykX5V
	O8Y4BfIKOlKW8ZL7makw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3in-00GB9W-2f;
	Wed, 05 Jul 2023 14:43:09 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3ih-00GB53-1f;
	Wed, 05 Jul 2023 14:43:05 +0000
Received: from obbardc-t14.home (unknown [IPv6:2a00:23c8:b70a:ae01:7599:ed26:1798:f430])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 35DA16606FBC;
	Wed,  5 Jul 2023 15:43:02 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1688568182;
	bh=V58cBnqk19ExhjbGA1KcziLl4pEqWwYt10fdubSKHPk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eCJKws57Os/TNHkGMeIsQr10uHdrPTuGAqhHwMGkGzhXWzoLTs/dveUTQt1OORGV4
	 zZPvfXH8fWegzcL8oWKoyo3tj6O/hH0bfnk4QetgKnhnehDuzjz8XMT2t6VFpew2AC
	 1POWAKxZYd8H5VPN19pq2sxa/JstaXv6OA1pKpYgJnc1xQitaAXdlDZbWxhce+cJvN
	 Yk2yevmq98l4+mdFH9UMguG/ajpF5msAfU7717QMFixGXDzzWpy9Z8lJeRXFsSzqfZ
	 lAT0m+b5KleRUF/HjvYs2xNoLbqGSSiBjJWs8gejxZQIIRq697yJjEho5m8YAJrUUa
	 lSWp4dDn1isLA==
From: Christopher Obbard <chris.obbard@collabora.com>
To: linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com,
	Christopher Obbard <chris.obbard@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manoj Sai <abbaraju.manojsai@amarulasolutions.com>,
	Rob Herring <robh+dt@kernel.org>,
	Stephen Chen <stephen@radxa.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] arm64: dts: rockchip: Disable HS400 for eMMC on ROCK 4C+
Date: Wed,  5 Jul 2023 15:42:55 +0100
Message-Id: <20230705144255.115299-3-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230705144255.115299-1-chris.obbard@collabora.com>
References: <20230705144255.115299-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_074303_679440_8AB6B1FD 
X-CRM114-Status: GOOD (  13.40  )
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

There is some instablity with some eMMC modules on ROCK Pi 4 SBCs running
in HS400 mode. This ends up resulting in some block errors after a while
or after a "heavy" operation utilising the eMMC (e.g. resizing a
filesystem). An example of these errors is as follows:

    [  289.171014] mmc1: running CQE recovery
    [  290.048972] mmc1: running CQE recovery
    [  290.054834] mmc1: running CQE recovery
    [  290.060817] mmc1: running CQE recovery
    [  290.061337] blk_update_request: I/O error, dev mmcblk1, sector 1411072 op 0x1:(WRITE) flags 0x800 phys_seg 36 prio class 0
    [  290.061370] EXT4-fs warning (device mmcblk1p1): ext4_end_bio:348: I/O error 10 writing to inode 29547 starting block 176466)
    [  290.061484] Buffer I/O error on device mmcblk1p1, logical block 172288
    [  290.061531] Buffer I/O error on device mmcblk1p1, logical block 172289
    [  290.061551] Buffer I/O error on device mmcblk1p1, logical block 172290
    [  290.061574] Buffer I/O error on device mmcblk1p1, logical block 172291
    [  290.061592] Buffer I/O error on device mmcblk1p1, logical block 172292
    [  290.061615] Buffer I/O error on device mmcblk1p1, logical block 172293
    [  290.061632] Buffer I/O error on device mmcblk1p1, logical block 172294
    [  290.061654] Buffer I/O error on device mmcblk1p1, logical block 172295
    [  290.061673] Buffer I/O error on device mmcblk1p1, logical block 172296
    [  290.061695] Buffer I/O error on device mmcblk1p1, logical block 172297

Disabling the Command Queue seems to stop the CQE recovery from running,
but doesn't seem to improve the I/O errors. Until this can be investigated
further, disable HS400 mode on the ROCK Pi 4 SBCs to at least stop I/O
errors from occurring.

Fixes: 246450344dad ("arm64: dts: rockchip: rk3399: Radxa ROCK 4C+")
Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
---

 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index 028eb508ae30..8bfd5f88d1ef 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -548,9 +548,8 @@ &saradc {
 &sdhci {
 	max-frequency = <150000000>;
 	bus-width = <8>;
-	mmc-hs400-1_8v;
+	mmc-hs200-1_8v;
 	non-removable;
-	mmc-hs400-enhanced-strobe;
 	status = "okay";
 };
 
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
