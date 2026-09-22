Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12173C982F1
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 05:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W+hMZ8E/QC1+HN+YrRUboZ9aqDCJWKEfSFSvhe1Sa08=; b=wYl0KB1BRUI5aj
	81wffPuMQdM4q0+wnQvkA2Hsunf+mxLlGJl5P4tfPV9Rvs3Qm4Us8NCXOaK/oxq3xXs4axd8GvutY
	Mw6dWDDvUN+64GyyC9fKu6VHxqbyx323V8oFzBvxbWK9nRknhCPoDX6p7ijtDLTU7ge09pNUlw3sI
	gK0Yi4ehM4iCrnkOM/f99hwCTKDpBvVUGWZNPAHxEoycEglb9IQDS56Mvdw9xGqmYIW4lQNQiFdlP
	sTRn+P1AmjsSABINPCefe+pwdAtHE4StylIiT48K0bIcUiYN0JDMbmQ379F+CAHF+p+E/vqi92w8d
	NQPBk2+CFikXgGMg/hlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8tOg-00000004HrZ-2NCU;
	Tue, 22 Sep 2026 05:50:30 +0000
Received: from mail-pz2-x10.google.com ([2607:f8b0:4864:3b::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8tOa-00000004Hq7-42AS
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 05:50:26 +0000
Received: by mail-pz2-x10.google.com with SMTP id 41be03b00d2f7-cc1cea34ef3so3311425a12.0
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Sep 2026 22:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790056224; x=1790661024; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=wEjY10yWPqOIxCzS+748nVAC7CIJtj2SuZkNNhW59Ds=;
        b=VV/8MDTITi3NOwLIQef5V4l7y76+DI6cJnER/sPEQQRtEudOFd8eCp/zK06aA4D+Lv
         aGi1Zxil6UYR+ycNVkGmwNKDfu5SzwatfysR21H1i4ZnWXktemgSZDMIwTMXr7A9YMwF
         J7rfXFpHXgxMjUsXxkJxFXlCwdpIiUPYaNYPljor49N31yNcaTspr4pNHywnJ247C4Jb
         OHUHKenBpqz0ZmNRF6H/hTa6SsUbzKhm9X8nsOok6a5mr+xGRO1OLaXLRbjxWYotCXTx
         8w89YIR4A09oBX7FKQZvBCwBlJz0dB/Grp8uW8npAk3AOI/VEsYfhwO6xh4ZH3QFWJYQ
         sRVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790056224; x=1790661024;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wEjY10yWPqOIxCzS+748nVAC7CIJtj2SuZkNNhW59Ds=;
        b=cwKwcZHueSLo8HXaYOKits0zKYB9z+CSwICQn6MZa2XFEpX37Tcguqk6XjV3ueW+bO
         A+VMBHVLKrxBThBWeAoJdXnmePd+7morpiKBT5ZobpRnYzRWg+019SVq2LqnEIy80Knh
         TXqgVl0DAcy6H20A3cdPvNCNenG85uVq+jGbpqDYMh2LhwRX509nYArOefCk9oTFiD5P
         RY1mFdBQYC+M7GjDlgHveR0BYDRVLYu/+p6wgmBmkVB5BZjlSjQTUsIdFdjuAO9BtZvD
         OLi4B3MdjDopzMfcJXMNMBzdfvppTQDamDP5NE8NQGQ8FK5Fow2djXfI0RkfewD+3Gz+
         3SZQ==
X-Forwarded-Encrypted: i=1; AKwUvBxFIGIsAGek/MBMi6y69Bxpgz5/pStvGk619mNaRqW9fqpoM/16rI/pdyNSu2NVUroQXico9XTQcj+Ohk4pOw==@lists.infradead.org
X-Gm-Message-State: AFuF++nAYfLn5jZYaFnVjoIaqIFbOyZRbNs8icgMZ+wP2dXa0ayRRaGZ
	UTDqgO4SECoeHXektn0bTX2Fk3eLOM81fUBlXfcbljlByOUUc0f2WNKE
X-Gm-Gg: AYBFou29E4+oTjt9GlijYlqLIxsZ5bAZx1Si+uhZQqQP4TYWJYMl31RT+0RU2k65qwR
	gjf4lS9cwLX2/+pLWulv/hXdcobao9WVFmi9x6f/QyQBuyA+JYkTCTtzeqVeU6EQCN/zSxknQAL
	1csUotC9gDAMh1jSr6n2YhsLXLruCkvv8B3F8EXzY3pVyez1btcrZ/vFTdfcs4NPTcPro7kr/KR
	u0i9S/3kdP/LApSyqXjt0yuGLr6fY+xvWEWyvxkheYXuiQOkujY5c2LmMiwBpaauLdqMj+QBY3Q
	CAIarvn4ewhkgzydn2++kdtIiZxrsGWDN+B6Xy16b0LOHN0axM64+HmCxPCNnJAlakHT70SXZtX
	QvlZxyNat23SHV5opq5aKQRgX0hEWkJnU8+8g7yIBAeeSdw/5X6F0wQfw243iTNam6PHgA8G4bF
	Xx1qAyASeB0PGo3GkN9ID5BmXPn+lEmogGzqPyCZ9q2LS1OZMPHGmwh4V2aya0vzBrtmEAd3oSU
	SIKpNOMc/k=
X-Received: by 2002:a17:90b:586f:b0:3a0:519e:dac4 with SMTP id 98e67ed59e1d1-3a07321fb38mr69642a91.45.1790056223883;
        Mon, 21 Sep 2026 22:50:23 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33e612708d6sm2078247eec.7.2026.09.21.22.50.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 22:50:23 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Yaozhong Li <yaozhonguwl@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: enable SD UHS-I on Firefly-RK3399
Date: Tue, 22 Sep 2026 13:50:10 +0800
Message-ID: <20260922055011.14972-1-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_225025_027566_D4B6D761 
X-CRM114-Status: GOOD (  17.21  )
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

The SD slot on this board stays at 50 MHz with 3.3V signalling. The
sdmmc node lacks both a UHS capability and its vqmmc-supply, so the
kernel never attempts the CMD11 signal voltage switch. The vendor
shipping firmware device tree declares sd-uhs-sdr104 here and points
vqmmc-supply at RK808 LDO4 (vcc_sdio), which can switch between 1.8V
and 3.0V.

Declaring those two properties alone is not enough. vcc_sdio is also
listed as the vmmc-supply of the WiFi SDIO node, and that consumer keeps
the rail from being taken down:

  vcc_sdio: Restricting voltage, 3000000-1950000uV
  mmc1: error -110 whilst initialising SD card

Using the same regulator for the WiFi card's power and for the SD card's
IO voltage is inconsistent with UHS-I operation on this board. The
vendor device tree reads it the second way: there vcc_sdio is referenced
only by the SD slot's vqmmc-supply and by the io-domains sdmmc-supply,
while the WiFi SDIO node declares no vmmc-supply at all. The WiFi module
also remained operational with the rail at 1.8V. Its own IO rail is
described separately and is left alone:

  vqmmc-supply = <&vcc1v8_s3>;	/* IO line */

That property had no effect for several years: it was added without the
brackets that make it a phandle, so it was an inert string until that
was corrected.

Drop it and declare the two properties the SD slot needs.

Tested on a Firefly-RK3399 running an Armbian 6.18.45 kernel with the
board-local device tree blob. With sd-uhs-sdr104 and the sdmmc
vqmmc-supply in place, toggling only the sdio0 vmmc-supply property, in
both directions:

  with it:    mmc1: error -110 whilst initialising SD card, then
              sd high-speed, signal voltage 3.30 V, 50 MHz
  without it: sd uhs SDR104, signal voltage 1.80 V, 148.5 MHz

Sequential read goes from 22 MB/s to 60 MB/s with a 64GB SDXC card. WiFi
remained associated at 5 GHz, -50 dBm, with no kernel errors.

Assisted-by: LLM
Signed-off-by: Yaozhong Li <yaozhonguwl@gmail.com>
---
Notes on testing, which does not belong in the permanent log:

The DTB built from the unmodified mainline DTS was not runtime-tested
with a matching mainline kernel. Built from mainline DTS and booted with
the Armbian kernel available on this board, it hangs in early boot,
before MMC initialisation, so nothing could be measured from it and no
claim is made that the patched artifact itself was boot-tested. That
baseline failure happens without this change applied and is independent
of it. The DTS was compiled and the resulting DTB inspected.

I have no schematic for this board. The claim about what LDO4 feeds
rests on the vendor firmware device tree plus the measurements above.

The analysis and the commit message were drafted with the help of an
LLM-based assistant (Claude Code), cross-reviewed with a second one
(OpenAI Codex). The device tree change, the measurements and the final
wording are mine.

 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index 0568dfa..7cabbc1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -777,7 +777,6 @@ &sdio0 {
 
 	/* Power supply */
 	vqmmc-supply = <&vcc1v8_s3>;	/* IO line */
-	vmmc-supply = <&vcc_sdio>;	/* card's power */
 
 	#address-cells = <1>;
 	#size-cells = <0>;
@@ -804,6 +803,8 @@ &sdmmc {
 	max-frequency = <150000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
+	sd-uhs-sdr104;
+	vqmmc-supply = <&vcc_sdio>;
 	status = "okay";
 };
 

base-commit: 940de590b839f71d6dc846160534bf202401b8b7
-- 
2.55.0.windows.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
