Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2CBCC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 10:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j0LjGP/fLZV+w4aXZoTVy/zJL4eD/vYQtoOXrDddakc=; b=G61P/Hec9YbwbV
	jRNUR0xb1KS7+GpR4f6PRIRJyfbQHdpDRoUTsEegsWdLDRu/D8m5tHUkxTbzZ5JljB60Qri+t/w1x
	enWauREqBRI7mJqt8xPyIIhW3gqQnJTRpSfnpE1JpPFGlHgxPsXu2ixVE5eSpInCa0eeZvsP/JfDi
	G71eG+j3m9LftQ6snRnoAk5u0Y/8ImDoXroMlRZZexx8zGPt07j1Q3wKqSFpbvidjocjWzLpWgE7u
	hg/I72RjRgv9yx3C/ZOu02izqCPA6uGhpWd6wwj8937SiTIBHgpLbyH3iDAnckb2qL1shLdgEiJzc
	Dfax2vNBC/kPFkEpeb4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7D7f-00BhKs-Nr; Mon, 19 Dec 2022 10:11:51 +0000
Received: from mail-m121145.qiye.163.com ([115.236.121.145])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7D73-00Bh3B-3R; Mon, 19 Dec 2022 10:11:22 +0000
Received: from amadeus-VLT-WX0.lan (unknown [120.42.184.107])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id F03458001AF;
	Mon, 19 Dec 2022 18:10:58 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Michael Riesch <michael.riesch@wolfvision.net>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH] arm64: dts: rockchip: remove unsupported property from sdmmc2 for rock-3a
Date: Mon, 19 Dec 2022 18:10:52 +0800
Message-Id: <20221219101052.7899-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZGU1IVkIdSBofSklOGUhNQ1UTARMWGhIXJBQOD1
	lXWRgSC1lBWUpJS1VPSVVKQ09VSktMWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OjI6TRw5KD0vDTMROBQZSAE*
	FBMaFElVSlVKTUxKT09PTU5CTUtDVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpJ
	S1VPSVVKQ09VSktMWVdZCAFZQUpDTk43Bg++
X-HM-Tid: 0a8529dd7c02b03akuuuf03458001af
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_021113_363043_AA0CF583 
X-CRM114-Status: UNSURE (   7.78  )
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

'supports-sdio' is not part of the DT binding
and not supported by the Linux driver.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index a1c5fdf7d68f..5af11acb5c16 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -737,7 +737,6 @@ &sdmmc0 {
 };
 
 &sdmmc2 {
-	supports-sdio;
 	bus-width = <4>;
 	disable-wp;
 	cap-sd-highspeed;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
