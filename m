Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE2DCC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 17:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oxZXRwowN6BPJ1Foj0HUFoLfTJlUMmd1qEjpzJRu0K4=; b=oQL5qUvb6Uor6T
	DqJjYN/chaIWktyIj41ZXxYOVLAz8QB0nAreDibKox+3SdLY90rxYcr/vOZnNSdmirq1trYsDjdR9
	HfxM7Iap752l5GGRlWrYWnp7PnCn+FJP6ig/mnaBTH0LaLyvakJmsHDXB+EVUT6FaJoXt1mJp7GOt
	FXVQX0nxoGW3wBipr1r383mgSNNy8QFjj4wdTjixQ+Qo7oCexmdpIXFF9vtt7XqMs9pvSFERNJETN
	OeofwTp6d701tTLNax6Esbjtu4x6rZsDLVXwlksh17I5e3KI/jQ8Qx6rZ4fdJhNBHQ2MCe7a9pQOP
	FfUdu3wJ3aXhZb0240uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi4s-0038Gv-0W; Mon, 28 Nov 2022 17:37:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi4R-0037yy-Ci; Mon, 28 Nov 2022 17:37:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9AB2E612C9;
	Mon, 28 Nov 2022 17:37:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8DAAC433C1;
	Mon, 28 Nov 2022 17:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669657050;
	bh=H2oHa8QR3fMnJ/60rPPFl//0EEV8mINvvNg5ljevOTQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qUZA1V3ZzJZLP6nnqoElvJdFb20TCbg5CiN31QHUkK+vvIBRHV8fsU18MERdgI2p2
	 PqeC+Fum6etUkYsFU0Es//sEs84FAxaHrowZcrHNGD84NczeWyawxVs9i19G9lxLIX
	 WvOZRpoZL0lyioZl5d7LIGYlwWtqfxdLlyhozZm08QNy7vQTqkmg+2qId/bWgElJjw
	 MoYxHImmD91QCWpdNZmf5TH+2z54NPy2lXWt+7OztrIIG58Sr2b3C/K3MbL8kmemI9
	 Dax1c/vZJJqc6nut7kIm0CBr0zAPmt6PVnFNXnVIuhpcr5Yz2mfjQgeAZ3SokLyqDZ
	 hmcUal86fzhLQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Furkan Kardame <f.kardame@manjaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	michael.riesch@wolfvision.net,
	pgwipeout@gmail.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.0 03/39] arm64: dts: rockchip: remove i2c5 from rk3566-roc-pc
Date: Mon, 28 Nov 2022 12:35:43 -0500
Message-Id: <20221128173642.1441232-3-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221128173642.1441232-1-sashal@kernel.org>
References: <20221128173642.1441232-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_093731_493678_8409DEEC 
X-CRM114-Status: UNSURE (   9.94  )
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

From: Furkan Kardame <f.kardame@manjaro.org>

[ Upstream commit b44bc59d0d279fa4f3dc11b895f2c8f77719885d ]

i2c5 is owned by hdmi port

Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
Link: https://lore.kernel.org/r/20221010190142.18340-4-f.kardame@manjaro.org
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
index b8ed215ab8fb..ab1abf0bb749 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
@@ -401,10 +401,6 @@ &i2c3 {
 	status = "okay";
 };
 
-&i2c5 {
-	status = "okay";
-};
-
 &mdio1 {
 	rgmii_phy1: ethernet-phy@0 {
 		compatible = "ethernet-phy-ieee802.3-c22";
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
