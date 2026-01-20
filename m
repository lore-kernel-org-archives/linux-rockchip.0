Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FEB4D2ECF7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 12:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kDCfK8P/I7ZLq4yPeupLuEtXQt1bF6rgtxAAlM/ij5E=; b=HBS5gK5GY+hBJ8
	QiP8CxLbOGq4vYj8bNi9OUsMAFWxrn5etu77EiFktk9xvrT28DZThyLVFzspbzBF0kFhF+k+ZdESt
	VXkEtnFwlF8/ZkV0PaA/RHKfFQIFLnm/11/g06fwLUj1FJxsWKEyTncfeYciQiMZaIZATf+5UJeyR
	eiLR7z0vkDQKzvrr0eV6lyVKeu/RtSE3x461kk9u2t6fp8O0cBoDO8MlRtoAoxx8EY5YvcYJI3Cz8
	81w7tzKMSh7VbgZ2HrPMcKx6CQyYu9vIDuKF7BvfTAkJUsbiXWtJKE6cz++vrgZNqp15sKB8gj/Ri
	3neLKkN0wCtscLk26cLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viBFE-00000003s7C-0QD8;
	Tue, 20 Jan 2026 12:54:04 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viBFB-00000003s6I-4ANn
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jan 2026 12:54:03 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-4359228b7c6so341601f8f.2
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Jan 2026 04:54:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768913640; x=1769518440; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=upZyTdYXHRuOjxM2BwCRC4m8vkbpnnQvQrullGYrig8=;
        b=LXYe0iziOjcZZkGz9SG7RacyULfrrpTduLsRSBMHY6sCNgfdMGthD/Qz6grVVUd2w+
         O5II6dpMfO/fcP436wyNyHCoKy5nzUiHjkVvL+cS2XSlWn91R7d1le8drvCOO/B+QnJx
         bsM2PJQJMzcQ3GEWXs0mqsFadvVABRMOVMy3VAlWDrVx6UnGD0sfWlbogvtjpdMa+3HN
         ipulQxddBn56qOpA+lKy6/R8ZbIPqen0PB8Jgb1RKix+oPlUg9L/EcDsasWnykV/3aVe
         CxcOqFFUreCpHQ3mnczvXBucyF3tPXfSZN8AMEpaAY5nupAv8uHAh840NddITtFJV8gh
         V1/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768913640; x=1769518440;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=upZyTdYXHRuOjxM2BwCRC4m8vkbpnnQvQrullGYrig8=;
        b=R/tBD3DPpKtsvU8m/ITvKh4Wvx8SZYpw0mciR32i6X7uSlpO293F/M3nI6Hs/uMJJx
         sgVtXaqP116MhAGK/89QCpzbbE1Gnicwe4sNa4Jjum3eeu/+UUXfZTrM//S34qR14JKi
         neC6sSytFloFhsrPNQe43z3ozEP1Ae1njlp6K5QnSqUwy0EHgQbDcDN6ecLM/j/2cDtW
         ff+m3f1wNPIt8tOAGziiA1n0qfx/T61kIMzSDKB6G0/jctLWN0akYKzw6nPxm9PM6bc8
         yvqEICVNyTzZCadMZDuhSSUxJ9wExK2Ix7rEc95rjP8px+AU+48LEnp0iuuukqJaCC5I
         HC2Q==
X-Forwarded-Encrypted: i=1; AJvYcCVq5zO8/mbC64FdYin6zhomMzUPyN91XUNMBixdQ0dwjgWLrh7gg2gKlfxHlfqhLj7g8XsmHufbGvT/sf0NwA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwMYbMxMpESTrlGlmhNW29Ks1WpBK9SwcgErc30B74XgTKRyzBh
	nLAciSUIZG6yp6IvyIQyZomRATznf2sdPSI0Pq3ga7wd/+h7f9SHNkF5
X-Gm-Gg: AZuq6aIVQhLGFcLx4DQOfs/7eLDyZHgvoYn2zFDPrytIGb1HNbqZMQW0eNqe2A64q5C
	KibRw8t2hUZ2DM2KYNq9t1DIIsH6JilK8p9/vQ8lXJ2vZOpqHhWUwvSEQdYk7H2Yad09J/k68G/
	tHjLp+9jmwUN4j14E4kR4kyvS/imPofScpHq4y/W3MnZh6+1oRAiKw09L779Zi4zV2Qhhl6rYx4
	XWUKbk1cXoqgPZXw4nBCIxkL9qD7c8NHYKNfggSoI52Vz7OayNYuXVM7PY9wKQqeMsC2c4bkSCK
	DadrhJNH2pdcqZYYsZylHAxpEofpo3ufnQhUgHBF1vLDETuOXs/HTkADKDmBz6MQ+Q/kWrVQQqE
	D5bIonMpeL1Qn4JOjWElbpOObp46RhvgqMuxMkNNs4QjQaypWXiDGdmJCKDd+OR0lx1H9LvHQ0L
	qvGfz+J1CYAmcw6fZwjukmA8bc7Cmh/eRpF5tgGviv+EXBciENj+BNTuEGYyCXoqA=
X-Received: by 2002:a05:6000:2504:b0:430:f58d:40cf with SMTP id ffacd0b85a97d-4356a02c4c3mr18942565f8f.16.1768913639446;
        Tue, 20 Jan 2026 04:53:59 -0800 (PST)
Received: from alchark-surface.localdomain (bba-83-110-134-52.alshamil.net.ae. [83.110.134.52])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4359314bbc6sm2404931f8f.12.2026.01.20.04.53.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 04:53:58 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 20 Jan 2026 16:53:54 +0400
Subject: [PATCH v2] arm64: dts: rockchip: Explicitly request UFS reset pin
 on RK3576
MIME-Version: 1.0
Message-Id: <20260120-ufs-rst-v2-1-b5735f1996f6@gmail.com>
X-B4-Tracking: v=1; b=H4sIAOJ6b2kC/2XMQQ6CMBCF4auQWTumrQRbV97DsMA6hUmEkg4SD
 endrWxd/i8v3wZCiUngUm2QaGXhOJUwhwr80E09IT9Kg1GmUVo7fAXBJAuGcPeKvLWkzlDec6L
 A7126taUHliWmzw6v+rf+G6tGjd6Sa2p3crX1137s+Hn0cYQ25/wFnfrYUZ4AAAA=
X-Change-ID: 20260119-ufs-rst-ffbc0ec88e07
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 "Martin K. Petersen" <martin.petersen@oracle.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: Quentin Schulz <quentin.schulz@cherry.de>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3949; i=alchark@gmail.com;
 h=from:subject:message-id; bh=rfOiA6dgd2q0nYUa0afVp2YzXs7KfO8y6Iz2Tj9FhBc=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTmVz3XL1lyvd75GNP0eb61RZziFU95Xl/9JufO+euHZ
 1/TbTO5joksDGJcDJZiiixzvy2xnWrEN2uXh8dXmDmsTCBDpEUaGICAhYEvNzGv1EjHSM9U21DP
 0FDHWMeIgYtTAKZ6kgYjw5mWgCsLt615obBhzdf1sW2hq2tunGW/kRGw+7/1kR2F63QY/ns83rl
 iguGy5HC/X5uftM4tUF5Y53WUyeLuSZFLLwNOczAAAA==
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_045402_065230_C3DE1062 
X-CRM114-Status: GOOD (  17.71  )
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

Rockchip RK3576 UFS controller uses a dedicated pin to reset the connected
UFS device, which can operate either in a hardware controlled mode or as a
GPIO pin.

Power-on default is GPIO mode, but the boot ROM reconfigures it to a
hardware controlled mode if it uses UFS to load the next boot stage.

Given that existing bindings (and rk3576.dtsi) expect a GPIO-controlled
device reset, request the required pin config explicitly.

This doesn't appear to affect Linux, but it does affect U-boot:

Before:
=> md.l 0x2604b398
2604b398: 00000011 00000000 00000000 00000000  ................
< ... snip ... >
=> ufs init
ufshcd-rockchip ufshc@2a2d0000: [RX, TX]: gear=[3, 3], lane[2, 2], pwr[FASTAUTO_MODE, FASTAUTO_MODE], rate = 2
=> md.l 0x2604b398
2604b398: 00000011 00000000 00000000 00000000  ................

After:
=> md.l 0x2604b398
2604b398: 00000011 00000000 00000000 00000000  ................
< ... snip ...>
=> ufs init
ufshcd-rockchip ufshc@2a2d0000: [RX, TX]: gear=[3, 3], lane[2, 2], pwr[FASTAUTO_MODE, FASTAUTO_MODE], rate = 2
=> md.l 0x2604b398
2604b398: 00000010 00000000 00000000 00000000  ................

(0x2604b398 is the respective pin mux register, with its BIT0 driving the
mode of UFS_RST: unset = GPIO, set = hardware controlled UFS_RST)

This helps ensure that GPIO-driven device reset actually fires when the
system requests it, not when whatever black box magic inside the UFSHC
decides to reset the flash chip.

Cc: stable@vger.kernel.org
Fixes: c75e5e010fef ("scsi: arm64: dts: rockchip: Add UFS support for RK3576 SoC")
Reported-by: Quentin Schulz <quentin.schulz@cherry.de>
Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
This has originally surfaced during the review of UFS patches for U-boot
at [1], where it was found that the UFS reset line is not requested to be
configured as GPIO but used as such. This leads in some cases to the UFS
driver appearing to control device resets, while in fact it is the
internal controller logic that drives the reset line (perhaps in
unexpected ways).

Thanks Quentin Schulz for spotting this issue.

[1] https://lore.kernel.org/u-boot/259fc358-f72b-4a24-9a71-ad90f2081335@cherry.de/
---
Changes in v2:
- Change default pin pull to pull-down in line with the SoC power-on default
- Link to v1: https://lore.kernel.org/r/20260119-ufs-rst-v1-1-c8e96493948c@gmail.com
---
 arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi | 7 +++++++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi         | 2 +-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
index 0b0851a7e4ea..7bcfa393416f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
@@ -5228,6 +5228,13 @@ ufs_rst: ufs-rst {
 				/* ufs_rstn */
 				<4 RK_PD0 1 &pcfg_pull_none>;
 		};
+
+		/omit-if-no-ref/
+		ufs_rst_gpio: ufs-rst-gpio {
+			rockchip,pins =
+				/* ufs_rstn */
+				<4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
 	};
 
 	ufs_testdata0 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 3a29c627bf6d..db610f57c845 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1865,7 +1865,7 @@ ufshc: ufshc@2a2d0000 {
 			assigned-clock-parents = <&cru CLK_REF_MPHY_26M>;
 			interrupts = <GIC_SPI 361 IRQ_TYPE_LEVEL_HIGH>;
 			power-domains = <&power RK3576_PD_USB>;
-			pinctrl-0 = <&ufs_refclk>;
+			pinctrl-0 = <&ufs_refclk &ufs_rst_gpio>;
 			pinctrl-names = "default";
 			resets = <&cru SRST_A_UFS_BIU>, <&cru SRST_A_UFS_SYS>,
 				 <&cru SRST_A_UFS>, <&cru SRST_P_UFS_GRF>;

---
base-commit: 46fe65a2c28ecf5df1a7475aba1f08ccf4c0ac1b
change-id: 20260119-ufs-rst-ffbc0ec88e07

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
