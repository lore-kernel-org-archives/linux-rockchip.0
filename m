Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA77CC2BD09
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jun 2024 14:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ShIW4iHHdWvCpIjF/6f5fhuBDiorqqtz7uaExNnGXA=; b=M/wM3cBec54ch5
	H5LU3vmhcxpl/BtqQVbz9TjJuI7R+bin+C9fM+JD59/RPy3xQHuvXV3/MW/3+q94APNSu6hRXw8ss
	bi/PysjwhX54S0le6qD7ZwEnQrOn+3XfSE5NERgpuU+/KwhtjelfdRq5v8ROQV4ngu2DjN7rQmeEg
	aVaO2XQw1e+rjy7vsX4BPrfmr+UPDdkj4NDjUYndcCHaKrrdViD4mbDgIqWNuFm52//h9vjqvh2fh
	o36i3Gz/4GVaVmXAHij0u0Cls6Ivf/S9bPFVn9/3djLGJmo0Jzs8F4K5rnN2y5DQkfP+YxlVnZzlM
	MzxtR4umGcjD5p5sdegw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNCBA-0000000DuJa-2gNe;
	Fri, 28 Jun 2024 14:02:20 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNCAZ-0000000Dtwz-16QZ;
	Fri, 28 Jun 2024 14:01:47 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c01:1720:7e27:c507:902f:f5f3])
	by smtp.qiye.163.com (Hmail) with ESMTPA id D36FA7E0173;
	Fri, 28 Jun 2024 22:01:17 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH 5/5] arm64: dts: rockchip: Enable UHS-I SDR-50 for Lunzn FastRhino R66S
Date: Fri, 28 Jun 2024 22:01:04 +0800
Message-Id: <20240628140104.551760-5-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240628140104.551760-1-amadeus@jmu.edu.cn>
References: <20240628140104.551760-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCSBpMVhlDQhpMSU8fT0hNHlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtKQUpMSUtBTB5JTEEYTktMQUJLSR1BHU4dSFlXWRYaDx
	IVHRRZQVlPS0hVSktJQkNDTVVKS0tVS1kG
X-HM-Tid: 0a905f26841b03a2kunmd36fa7e0173
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OTY6LTo6OTNCFRoPNw0ZDzAs
	CRQKCi9VSlVKTEpCTkNISUxDTk1DVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0pBSkxJS0FMHklMQRhOS0xBQktJHUEdTh1IWVdZCAFZQUlITUk3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_070143_552821_7EBF15D2 
X-CRM114-Status: UNSURE (   9.70  )
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

This board can work in UHS-I SDR-104 mode, but may not be stable,
use SDR-50 instead. Remove the max-frequency property, which is
already defined in rk356x.dtsi.

Fixes: c79dab407afd ("arm64: dts: rockchip: Add Lunzn Fastrhino R66S")
Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dts b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dts
index b5e67990dd0f..8e5c182ef76c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dts
@@ -20,9 +20,9 @@ &sdmmc0 {
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
 	disable-wp;
-	max-frequency = <150000000>;
 	no-sdio;
 	no-mmc;
+	sd-uhs-sdr50;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
 	vmmc-supply = <&vcc3v3_sd>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
