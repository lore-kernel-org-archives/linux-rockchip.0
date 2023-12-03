Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD527C10DCE
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Dec 2023 12:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ybk+tmbVjCZBIDzids+Z+2DjXO2FFVLCaQxaH4mbLx4=; b=HQnZK7511Mzf0e
	yKdqfSPRoVeJzwqtVBChspUypZs9FXJqL1Y4VskPE+Y03edY1Kb6lmFzwYPfngPmPMnG+zm0iBhwt
	xH2IPz7SkerVPv9j4L9DwmZvXNItoSV6aAGs06+9Ibj7DeLsKcGfQ/Vwn9GMp7Z9+0/Z80iSEWxyp
	HtkzW1vRAzzpTPHSUwtUunIQ537JM1z9+hPsqBFvq5QKTmEqte6CtCeT78ALoxMjjYGrQKINSKMkC
	RLeI7vCgeSJAU5r1vIWgEPuWtGnOvm3G/o150SH7pLv/c8bpWYYhuZSnFUy33UU8LyN2VI8P0ZINw
	ovEZ7UKkT1UWoEAQ15GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9lmJ-00H0DM-37;
	Sun, 03 Dec 2023 12:40:56 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9lmD-00H09H-0m;
	Sun, 03 Dec 2023 12:40:53 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 8C37B5C0076;
	Sun,  3 Dec 2023 07:40:48 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Sun, 03 Dec 2023 07:40:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1701607248; x=
	1701693648; bh=+Del4iSvYaB+bdbizoUiixSrtj1TkFKJ0EVqpksXCBU=; b=c
	hpjXniszslvYopdZ3BMmOSZPaiE254+Kqy1Sro/Sc2Lzn2YXnNbFEjo4pTRPmdqO
	vr9dnzMDSIMFW6prsPFiqLKKqYZlLogugjspZZa0hJhj/oer8q2CbaeNTWwQ5gOr
	W9Ch7uY9lmEdOm6omLnkBFNuIU1nv1FRd54hP4KUUmItsv0YTpvyx36wkBMa1CsH
	sTOw955ny+WC2mblthw97dIvUMHoZbkURGpXotcIpTVhC4FuGZmvURUclxBfV4UD
	Z30N0Xbe3Vn8QJ8vmIxaW0xz2LJVCsSd2G1pCWt9eHBCGMfT/c4WTu/N+t2r9CIQ
	oAhKikKFQLoEjB8lEs2VA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1701607248; x=
	1701693648; bh=+Del4iSvYaB+bdbizoUiixSrtj1TkFKJ0EVqpksXCBU=; b=o
	GXui6FBNrJhHGXZrgY4bRemzHP4jJKqnKsM4aDR6BpowPfJAf8GJ/Dl6Z9PI/2U0
	feUtzCssE7+DxyM0BCR7hDS/3V0H5UxDpbShCUw1EirLr0fBNhOWrTkUspc0FMA9
	xDgl8urVg1PHq0YZvTjO6bvfCQvjcS+umXLWcJKfDv+52xaX8dDFIDhQ0I7dAzwi
	AlU63eMzsvJgrmVq1iYgcL2lG6u+9joPnvuyNhaW6WVFWyagkvTX4A/BhccjxkGN
	Y5JHXjm4vyIrvoWef956DEtwHo6yu+wjBsfZ9zXbUIuss41D5bMDZNOog9SatfN7
	6qbwbXHMsjRVnxa02FytA==
X-ME-Sender: <xms:UHdsZebd4Buu0lC9_pEjkIHYpDbU0cLuxS-lH4ZdCtdN1_SHqMorNQ>
    <xme:UHdsZRY7GTKP4ixzjxKG-ZKV_qgapYQJIZrvopAdZH8UxH3qwmy98oyJ8rudmLyAv
    4VN8InqCA>
X-ME-Received: <xmr:UHdsZY9EfIMnwo6pKobHO2K-vwz51pE35yKqN71BnoDCTkFB1Nz80ku9x8rn0efYFYOD5NQiostGmqmJ-4jXVJ-sFZeYuUvlt1w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudejgedggeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:UHdsZQoXORzsXFoyOmTGJYI-PsEcfwROBpISHHx2z6S5q7crxTQVrA>
    <xmx:UHdsZZqPfXTdfsiy-6S1nW-sa4JDvjj7vJsIIwEhUtGPNMWMzQpfGQ>
    <xmx:UHdsZeQcWdf4WNSTuW-pqgVVDkcEu3NX8rw_xrbjynGOhkTGn_k7Xw>
    <xmx:UHdsZU0OSupgBe33r76fAk9WMpLYkBiVokKUlIHRWRlygqD4fmtn-w>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 3 Dec 2023 07:40:42 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Sun, 03 Dec 2023 23:40:39 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tim Lunn <tim@feathertop.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	linux-i2c@vger.kernel.org
Subject: [PATCH v3 3/8] i2c: rk3x: Adjust mask/value offset for i2c2 on rv1126
Date: Sun,  3 Dec 2023 23:39:59 +1100
Message-Id: <20231203124004.2676174-4-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231203124004.2676174-1-tim@feathertop.org>
References: <20231203124004.2676174-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_044049_440042_A0C53865 
X-CRM114-Status: GOOD (  13.26  )
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

Rockchip RV1126 is using old style i2c controller, the i2c2
bus uses a non-sequential offset in the grf register for the
mask/value bits for this bus.

This patch fixes i2c2 bus on rv1126 SoCs.

Signed-off-by: Tim Lunn <tim@feathertop.org>
Acked-by: Heiko Stuebner <heiko@sntech.de>

---

Changes in v3:
- i2c: add code comment and clarify commit message further
- i2c: Collect ack by Heiko

Changes in v2:
- i2c: clarify commit message

 drivers/i2c/busses/i2c-rk3x.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index a044ca0c35a1..06fec2344575 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -1288,8 +1288,12 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
 			return -EINVAL;
 		}
 
-		/* 27+i: write mask, 11+i: value */
-		value = BIT(27 + bus_nr) | BIT(11 + bus_nr);
+		/* rv1126 i2c2 uses non-sequential write mask 20, value 4 */
+		if (i2c->soc_data == &rv1126_soc_data && bus_nr == 2)
+			value = BIT(20) | BIT(4);
+		else
+			/* 27+i: write mask, 11+i: value */
+			value = BIT(27 + bus_nr) | BIT(11 + bus_nr);
 
 		ret = regmap_write(grf, i2c->soc_data->grf_offset, value);
 		if (ret != 0) {
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
