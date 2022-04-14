Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47843C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Apr 2022 03:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f/vDsr/euis/CULmsb+xaJHWAN5WYLY93CCEamEA/+g=; b=REGbWuqG6RY+dr
	abwS01GYh2Cgh5WJZQXHXbr3wp90/EPPfWh3bK//jgg2uQKsEF+uvWgeKCLZNQ4QjsraDTD1QEzEw
	+R1mOCcaxfTXMwv87tWVfMJ8XP6mvH3hJoMfHo6FnMCSniB0y0oX1wWJ/whOstn6ibkbZbbwKW0ej
	H8FUecodRvaR3zFNQ9MH4G+HsDW8HapMchVBLeFFgzpDR8KCOB55CmzpeSf5o0r72wuUZj6mlKYti
	y1JAeT+iwyZqG2+MTp7PpzAiM4OJgn58bIJj8TyGoIXp1Lg2/99XBtJKGulYvDbZvUeBTF+krcKBU
	S3VES8IFXBtVTi2rQvUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neq5u-003hKi-Bk; Thu, 14 Apr 2022 03:24:30 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neq4a-003gf1-6S; Thu, 14 Apr 2022 03:23:10 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 8E1A05C059D;
 Wed, 13 Apr 2022 23:23:07 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Wed, 13 Apr 2022 23:23:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm2; t=1649906587; x=1649992987; bh=2c
 yAbw+mxipdsb5EEU66tvRgQBKhpd5IuKusyVkj874=; b=XhA3LcPh3lLoixI8By
 KPeESI1K8CIRU6LzaxuhxxpdHsCg1mlkij18LLftHN/jxp/7L4IwaavHbQ4fXOJx
 J7LJd5hJ6CgrZwb4AMQRaYY4oQzm28H0pfVxLWU3XKhCfWb2BKyPHkMn7S6iHGO+
 CDniwfwMOSUd+NPd8vxYqomYatgRkx36sVDAqFwoC/TMlLH/t5E0w3oY/IovybNa
 thTPsYmprGhG77OubEhQe456t/WDboT1Blmy1dUSAtCFjLRTRMthN2Q1hKc3rkkR
 t2bPY+SC+mmGbmP5YFmPOwSkaXqe8fpULT8XIpES6nwG/J1Ce7+oVLcfNEUitnbM
 WcSg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1649906587; x=1649992987; bh=2cyAbw+mxipdsb5EEU66tvRgQBKhpd5IuKu
 syVkj874=; b=wxBVsRHPd5Jv5jy5SiqA2q32lXcafNFvG0H1ZkO8lk8lFc+yPXP
 WhR8kRwzrndJyLKkZmz65vz857eZexMxWe1G5TxYa5jeVUlUlKMt9tixJrNP3BCe
 FBwYfP2Rozt7VJjLiRB4Pw8jcgYgNX9KPL7gUBOkUnsYa2G3UczROmSOCYRSAbkK
 Gy+6RotiHwzRKK28oOVuLnTMkXkgZCBJoiOlwECdMg44fn1iReU11qrToGtGD7AW
 GoOSht/AUTmV9IbJwUzQk/CpukqLX5Aqs3SclkcJvWrdITlNblmufsf6Gfup/ThD
 2F+akDUvB1rqHUbQNJWc8351A1czdb4vwvw==
X-ME-Sender: <xms:m5NXYrl3TcjRTUtDc76XRCk14l-n7yb1JGhJWZKNv9a7alF4ukxGMw>
 <xme:m5NXYu1LDvdoM6Cx0LEsZPYhjJI9cp2ENqmXXeQHvDrocIoZ0h6WCEqxfCTK5QNai
 ereCgawomqzQ1_r0A>
X-ME-Received: <xmr:m5NXYhqaKYU3w9bXAyoefZRx_eRvbT6d9EBTN4wSx3eehnMIPwnUMYD9mTKGJfV_EKtYA_DnGEXYDga5GiTsOfaCKMIjhdL8zH9S2UYHRJzXfW0rihf2HMpaNPjgwUNcKfi8nA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudelvddgjedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
 frrghtthgvrhhnpeduhfejfedvhffgfeehtefghfeiiefgfeehgfdvvdevfeegjeehjedv
 gfejheeuieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:m5NXYjllBfQmjTdABLa4I8f9CZzBRhMEmjH09wjqAGotUfz4zpoxvw>
 <xmx:m5NXYp0TDbrP8-oFAWlPtmyfrUHJ6wn7uwFOZZnKWqZRHiHsSEWyUQ>
 <xmx:m5NXYisE07IBkt07wUdjdpPQN3-ZYe295PT7Z_HDX00-PvC7hy_l4Q>
 <xmx:m5NXYmmrBhGTQPss8g92kpMAQepJ9tjStVuzEc_tpFCbi7uCRZQhhw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 13 Apr 2022 23:23:06 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, Samuel Holland <samuel@sholland.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 5/6] phy: rockchip-inno-usb2: Handle bvalid falling
Date: Wed, 13 Apr 2022 22:22:56 -0500
Message-Id: <20220414032258.40984-6-samuel@sholland.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220414032258.40984-1-samuel@sholland.org>
References: <20220414032258.40984-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_202308_382882_D4331ED2 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Some SoCs have a bvalid falling interrupt, in addition to bvalid rising.
This interrupt can detect OTG cable plugout immediately, so it can avoid
the delay until the next scheduled work.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---

 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index c694517496f8..2b29f5dd8873 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1345,9 +1345,9 @@ static const struct rockchip_usb2phy_cfg rk3308_phy_cfgs[] = {
 		.port_cfgs	= {
 			[USB2PHY_PORT_OTG] = {
 				.phy_sus	= { 0x0100, 8, 0, 0, 0x1d1 },
-				.bvalid_det_en	= { 0x3020, 2, 2, 0, 1 },
-				.bvalid_det_st	= { 0x3024, 2, 2, 0, 1 },
-				.bvalid_det_clr = { 0x3028, 2, 2, 0, 1 },
+				.bvalid_det_en	= { 0x3020, 3, 2, 0, 3 },
+				.bvalid_det_st	= { 0x3024, 3, 2, 0, 3 },
+				.bvalid_det_clr = { 0x3028, 3, 2, 0, 3 },
 				.ls_det_en	= { 0x3020, 0, 0, 0, 1 },
 				.ls_det_st	= { 0x3024, 0, 0, 0, 1 },
 				.ls_det_clr	= { 0x3028, 0, 0, 0, 1 },
@@ -1388,9 +1388,9 @@ static const struct rockchip_usb2phy_cfg rk3328_phy_cfgs[] = {
 		.port_cfgs	= {
 			[USB2PHY_PORT_OTG] = {
 				.phy_sus	= { 0x0100, 15, 0, 0, 0x1d1 },
-				.bvalid_det_en	= { 0x0110, 2, 2, 0, 1 },
-				.bvalid_det_st	= { 0x0114, 2, 2, 0, 1 },
-				.bvalid_det_clr = { 0x0118, 2, 2, 0, 1 },
+				.bvalid_det_en	= { 0x0110, 3, 2, 0, 3 },
+				.bvalid_det_st	= { 0x0114, 3, 2, 0, 3 },
+				.bvalid_det_clr = { 0x0118, 3, 2, 0, 3 },
 				.ls_det_en	= { 0x0110, 0, 0, 0, 1 },
 				.ls_det_st	= { 0x0114, 0, 0, 0, 1 },
 				.ls_det_clr	= { 0x0118, 0, 0, 0, 1 },
@@ -1512,9 +1512,9 @@ static const struct rockchip_usb2phy_cfg rk3568_phy_cfgs[] = {
 		.port_cfgs	= {
 			[USB2PHY_PORT_OTG] = {
 				.phy_sus	= { 0x0000, 8, 0, 0, 0x1d1 },
-				.bvalid_det_en	= { 0x0080, 2, 2, 0, 1 },
-				.bvalid_det_st	= { 0x0084, 2, 2, 0, 1 },
-				.bvalid_det_clr = { 0x0088, 2, 2, 0, 1 },
+				.bvalid_det_en	= { 0x0080, 3, 2, 0, 3 },
+				.bvalid_det_st	= { 0x0084, 3, 2, 0, 3 },
+				.bvalid_det_clr = { 0x0088, 3, 2, 0, 3 },
 				.utmi_avalid	= { 0x00c0, 10, 10, 0, 1 },
 				.utmi_bvalid	= { 0x00c0, 9, 9, 0, 1 },
 			},
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
