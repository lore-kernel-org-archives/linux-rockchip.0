Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48E74C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jan 2024 09:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KEYV2NoEGMyjnTsMEwl/pesoK/X1wn7LpkGNNrH5crw=; b=wbY5b0bCEHKUjI
	CDrKff7taWPpYvp0gANIGOUeo3uIgVneaXGZHSTT8mqg5YdT0YioVueJgaXQKW5sHE5St7q8LIbah
	l+Hb2Nh3OiN5BjuKw0aFOnJCPu6725np3yM9guHCNPsv7JC/uBZaNMt2kIZZ2isy9MJ08SUG3A8n/
	nYEtRCuNYRAc2eK+C/flUe0T0Wzt+4Kl7zCFVCAcxQB85dazAYzEMMSxLsjA1tx1PRMuHVgwkpxvN
	yFvD8KJcMXRJohz5ThJr2xsTChpTb+gLBOtw4yx2lhg5LLr6/TqkVElMpjdbKAfXqzGNqKuoCnu6z
	zDxSCRKlW2KdHdLMLcPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTesC-00000007EFf-2TAl;
	Sat, 27 Jan 2024 09:21:12 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTes7-00000007ED8-3KCL;
	Sat, 27 Jan 2024 09:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=qXKs7
	77YlJXMt8Y4vLlzfp04iXltM/VO9c7EPLhu6nw=; b=Sc4R8pCUrKIpDXgH3nint
	QC5KH+JKw6vI94XXIkW//286CO9ZTOUkcFsLwmlBDvcVk5bxUJleGtsoX8I/aYnv
	JSGpg+I9AbMnltWh0OLFam33344uQSgctM8Ccex0Nwi0vqkNuENx0352saCzvFnV
	B2gcMad4UevhPPCW9OaDe4=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g0-4 (Coremail) with SMTP id _____wD3rzHkyrRl5GopBA--.2976S3;
	Sat, 27 Jan 2024 17:20:40 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH 2/4] arm64: dts: rockchip: aliase sdmmc as mmc1 for Cool Pi CM5 EVB
Date: Sat, 27 Jan 2024 17:20:32 +0800
Message-Id: <20240127092034.887085-2-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240127092034.887085-1-andyshrk@163.com>
References: <20240127092034.887085-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3rzHkyrRl5GopBA--.2976S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrZryDuFyDGr4kXF1fWF1kuFg_yoW3tFg_ta
	42ga1kJayrWr98W34Dtay8G343C34DCw1fJayYvF4kAFW3X39rJayrKa9FvF1jyF429r1f
	JrZ3ZF18Jw15CjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRN-BM7UUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqApyXmVOB+QgpgAAsA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240127_012108_239783_D5066FD5 
X-CRM114-Status: GOOD (  11.28  )
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

Follow others rk3588 based boards, and u-boot only use mmc0/1
as mmc boot targets, so aliase sdmmc as mmc1.

Fixes: 791c154c3982 ("arm64: dts: rockchip: Add support for rk3588 based board Cool Pi CM5 EVB")
Signed-off-by: Andy Yan <andyshrk@163.com>
---

 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
index 0b02f4d6e003..cce1c8e83587 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
@@ -16,8 +16,8 @@ / {
 
 	aliases {
 		mmc0 = &sdhci;
-		mmc1 = &sdio;
-		mmc2 = &sdmmc;
+		mmc1 = &sdmmc;
+		mmc2 = &sdio;
 		serial2 = &uart2;
 	};
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
