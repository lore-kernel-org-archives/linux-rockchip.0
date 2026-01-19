Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 440F4CCF2D1
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jan 2026 09:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qY5oUCvPw+FZQLjchmazF8Hw43nW/AoQ66fxGXtQIvI=; b=jjDorVwtyZ7WLQ
	xDsJ1oM5f2IDGSkfpUZxlvWOe4zYP/Kk6KylQKZFixwWQ2p2VMPcBddiBZPFTJN7kd7o8KHXk+5PR
	H7lqcAwak5VeR8lPaovnjJGZtwQau2ndpZN8MFgzJCBLEtgz9xx8YjyFpHhYwQaxnXmUNxo7mKwyU
	01HqAGgiAHkOG+LuNnHCKZslW5x93lRMrlnhwJT7WUNhCeTjQWpSC4r06HJuTCu54T5BlTS1NWE6S
	gM5Zk1wbmD7Yb6AMosEL9w+SpGFmJPViv+oAKuKooHw76JnXcKPUDSRlTY6h0S3gfXkmbpCi9nn3N
	vRVLywudXrYyR22rn12g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhlT7-00000001cwO-3s0V;
	Mon, 19 Jan 2026 09:22:41 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhlT4-00000001cvJ-33Zm
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Jan 2026 09:22:39 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-432d2c7a8b9so3539932f8f.2
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Jan 2026 01:22:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768814556; x=1769419356; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a1TGTP9bNu4UHfSQMVaG1aEb1WfL6DST40MmwW/KTbs=;
        b=E3xuEcgElwwmsXou2jB1Eer86WlKc/ls0M1BMJ4/Z7YoxEB4CW6Vx35ofkxGLtkW86
         x1LHVSdt5GogQIpCOFaekustUKybQV3zMJw+q7aYHbpxVMEW7B2a9xKR+IJZ8NJl383t
         Aao4KUYl7Ni4KB9w4+8pHjqtWcKvaXKZk8fvrhsxwHWDpvyHMJflnsL10GH8pQRG3aIR
         pNusQhqCx4rm82h2YeeadQbb0tLEPlzg/TryF8Iautm/rorPra/WkY4RTSVOuqTPUm3c
         u3g8QfJ9Wex7VY73ydpG1PXIwk6ZsOKd4wThvPKG03uyFhHLDnIjdloDx1N/2UDpZ1Zq
         r30Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768814556; x=1769419356;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a1TGTP9bNu4UHfSQMVaG1aEb1WfL6DST40MmwW/KTbs=;
        b=Gewj7q5VYv5nKTKacMjW3wOQiwe7HWKRcOZmixBaflRCeksK/bjvFXW6+0I2diojls
         kqEAcKUoJjtkFotpbE0QS1iFX6XyEpnSa/p964yk4/v4uKYH1psNb/bJrp/AHSVuBtX2
         7osY7RXdXTSr+JVbGgvEv5nkRvHzNe+FYg6YWVrYgviOvjb32ov5O94MRUW4dxPh7i+O
         JbBNdbGsAWIWUvYUnrdEr1+XWOgtBfB1FwVF5peGRWwv1tjXCVj20X36iyzuqzfeGDSR
         qHlZCMWhZbBF0hxpv98puZbpzjt0SItmuNwXqSZjs+x9gM90tLqzjfjtwusLn0yMHWqd
         GMgA==
X-Forwarded-Encrypted: i=1; AJvYcCUaGinat7Gv1A+tZC/mkkPihC2vniZW8YcXtKJhuSGZmGcP841qUlKj8PIsFNc8uBN+l9jHZt0pNRc0fe5ezQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7ywYogUq0ANG3h/MbRRGuwhJbq3N2BbgAZUYFZ3w2F1XuZDSu
	fbzge6vCNPa5jOdHtPcQQ8Fev7xpREi94aR3OvSXVzC+aNL+sPWA7+s3
X-Gm-Gg: AZuq6aLyUYns8hWp1meOyL7zX242VL1BPueI7jgUdoJoHM2TA4ijJPGWwnD7PmdiyIx
	PGv06Di+i0ms6DKNyMOTo57FqAlJgKLnYqc1KhvdMfFPeQ1R2x+zaXszonSsBC8sfdrnAiNtE7T
	Eoxk3hURpJJyiSxsrIlaCL8Q5BQ1X9FujW/U2tPYpiGXWz3aF3e0J7YVricLerGYRYlw7/ti94p
	Wg++N4LGTOVu4ELE2ZgdzpGaU/XHKhl5XbCeR1prGeOTs8m6tVCsif8/jGk8kqxjmdW1ppzHCWp
	gijE2LaJoC/AzjI2LheHprqlFG3ejysvJE/19Tj8dIdAzHlGRy8MBFD0YPVwQDH1Qt2TNS0VyLY
	87r7/qZZijFfx6G/INcyRG/AHiRAQ45A9NDuKgAcEi71U+JeGA9JNeLDzxOvYp/b/UmF5pcWEhH
	eOLhS5zpg7tR5P7m/LpsCNk1Jd0h21MnLumNO3uOsUh9mS+yvSPpCRaVQe8XxpEoWtJ3/DXY7H9
	A==
X-Received: by 2002:a05:6000:2306:b0:434:32cc:6c86 with SMTP id ffacd0b85a97d-4356a039819mr13103624f8f.14.1768814556321;
        Mon, 19 Jan 2026 01:22:36 -0800 (PST)
Received: from alchark-surface.localdomain (bba-83-110-134-52.alshamil.net.ae. [83.110.134.52])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4356996d02dsm22113042f8f.23.2026.01.19.01.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 01:22:35 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 19 Jan 2026 13:22:26 +0400
Subject: [PATCH] arm64: dts: rockchip: Explicitly request UFS reset pin on
 RK3576
MIME-Version: 1.0
Message-Id: <20260119-ufs-rst-v1-1-c8e96493948c@gmail.com>
X-B4-Tracking: v=1; b=H4sIANH3bWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQ0NL3dK0Yt2i4hLdtLSkZIPUZAuLVANzJaDqgqLUtMwKsEnRsbW1AKC
 VxLdZAAAA
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3764; i=alchark@gmail.com;
 h=from:subject:message-id; bh=Q5L1vRcMlZIpl7txxOw3lzUvlYNyoF2f3P4G6tmb3IU=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTmfr9z0OzeiQfiskqxnP0RL1N4F7mxMF4OqUgu35l3e
 /YKsZW8HRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oaGOsY4RAxenAEx1bAbD/6I50yV3xV3vE7SI9HdKsisNjiz9La7tYf7EfFr0o0g/HkaG5ucJ8v5
 6rTtqNlzUcMqa5uBT7b+zOOL6lqJt34UFtuSxAAA=
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_012238_785715_8707920E 
X-CRM114-Status: GOOD (  17.14  )
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
 arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi | 7 +++++++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi         | 2 +-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
index 0b0851a7e4ea..20cfd3393a75 100644
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
+				<4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
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
