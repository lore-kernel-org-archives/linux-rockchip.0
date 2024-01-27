Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3300C47DDB
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jan 2024 09:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Eg0lpzI4p+fTbTxr2JolcBv7hqIgi21jh4f28fVzEYI=; b=dtlBGRE4m9xSQ6
	E9CeGRH4jgOmCyLUmJGqf+emNFkablzYomzQoHI6RQGrndp4sLcyqLUX/qjM0+0KowQD3140dUjEh
	F0GokCwP9dOhNxDZ/RCfyvUXpCvVSfM2JSZB4MtjeKDp1VC3ndic3TyoJLyR+MscTKRL0K4G+5wLc
	0rqtkfu13u3A+cxgQy7Qq/ukF+i0Z8XMrTzgaiwc8bjG45mFPHvifoXH98xCJTwDfXRqfKhPTrIhg
	jv0VezV4mi3uuBcyPUKcq1Zjwg4TluM1k5f6GGkPVJmIYxVvpz1OF3EElbDb9qiBszb3PNdtmml/U
	t7xdD/kcuD9PSh9gxOIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTesR-00000007ELm-0kby;
	Sat, 27 Jan 2024 09:21:27 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTes7-00000007EDI-3VJQ;
	Sat, 27 Jan 2024 09:21:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=hRdLF
	PkToQCEg+EFjZ96iBxTD5I3RysLL03nVwpagOk=; b=C32EE0x9vy7+8if1qdJ6I
	wP/yZT0FljOx5/VpQaiLdGaTDSTQWjeaui2QA58KrINKiGf3JWunC0uPAFLcAGwC
	5+rQtsg6HqayBfa3Dt1qFHiWyVSaPftv5XpLfrMT3m2UFQhwXbf2/ZOVoVeT5uYu
	zUbOJv2cpph+X6FJ1ED9T0=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g0-4 (Coremail) with SMTP id _____wD3rzHkyrRl5GopBA--.2976S2;
	Sat, 27 Jan 2024 17:20:39 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH 1/4] arm64: dts: rockchip: aliase sdmmc as mmc1 for Cool Pi 4B
Date: Sat, 27 Jan 2024 17:20:31 +0800
Message-Id: <20240127092034.887085-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wD3rzHkyrRl5GopBA--.2976S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZryDuFyDJw1kuFyDZFyxZrb_yoW3uFg_ta
	47Wr1kJa93Jry3X3s8ta45Ga47G34q9w4fGa4YyaykJF13Xan7Jay5Ja9F93WUAF4jkr4x
	JrW3ZF1UJw1YkjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRpHq2PUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0glyXmWXvvkQYgAAsw
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240127_012108_269524_86FFB9CF 
X-CRM114-Status: GOOD (  10.80  )
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

Fixes: 3f5d336d64d6 ("arm64: dts: rockchip: Add support for rk3588s based board Cool Pi 4B")
Signed-off-by: Andy Yan <andyshrk@163.com>
---

 arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts b/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
index 3fae40b9ae1b..3b9d21a6f8bf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
@@ -20,8 +20,8 @@ / {
 
 	aliases {
 		mmc0 = &sdhci;
-		mmc1 = &sdio;
-		mmc2 = &sdmmc;
+		mmc1 = &sdmmc;
+		mmc2 = &sdio;
 	};
 
 	analog-sound {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
