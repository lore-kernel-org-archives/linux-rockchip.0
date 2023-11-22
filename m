Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1F28C61D9C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 12:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bN7tVGNe4vHJvfjsSG62eem/202Ys6bmjwkJcpnWY9Q=; b=oBVEkuafKQ4NNy
	XGOWeOAhD+UeW25jE5Hfc2tJF28uFAyWo9j9sKaEAtFab95+HibqulgdYJW70UKrrK1wm233Bbxis
	Fij4OlpceRW2dW6x8uYOtQxK4OW0Bbi/TiQ8qZajzI4mU2cjMg5nYRr1sONMLc9BD1NOGs13G2Igl
	va9yL6u6HOP16Opytt3+B5+ckELYiayV4moyHdx3s+5UKRCIcRaGbz8BrtuTXTzTDmT8nNZDB/GzN
	B4ebvn6KfTnybs0SBds7B1XWuubwzj5ahbP1KgTJGRlnmQrKxEj3lY5f/Pqkfe+8AStMa3jrpvOWc
	SfkBtqwnyjz565LDmFnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mGS-001mkx-2N;
	Wed, 22 Nov 2023 12:23:32 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mGL-001mgC-1a;
	Wed, 22 Nov 2023 12:23:26 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 0A7193200B0F;
	Wed, 22 Nov 2023 07:23:23 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Wed, 22 Nov 2023 07:23:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1700655803; x=
	1700742203; bh=EqvpFO7uAp2dtrS7PSLLP170vBC1DS2T9wR02twt9S4=; b=w
	50EY/dh0oz2zSNEc9IgmM+0kBop2AA1twiXR37JbZWYc4gR/2POSSizxcMKwjpe8
	IA4NMw7ZcSwBi8g6x6KI0TSkrbMRDOQeCYTmvLondazOsD68XgfMjUfOrCTf6Z55
	/ynShZxZvWmt3O72sM4FPFyV6/pubs8w01/CFgriCjz3sMaA73lQQ4v/Ac3F6JkG
	oyRpiIgdHkG+HrrZO4chqDBtOYE6KHW0Lg9E2SQvKWTwbhiVfXXBZEEESkpC+T7W
	2zVkEirKqSq29WogMfzGmOfsuPiwJdoo6O1Jo6wdhLhsbTKJShsgSdP65hzxhCTq
	fjB1hYgAflI5jV7g9FoRQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1700655803; x=
	1700742203; bh=EqvpFO7uAp2dtrS7PSLLP170vBC1DS2T9wR02twt9S4=; b=e
	RQYkEDLXQgIVH1nZCehJYorDBVfwGZiSpAxk9oyqiHpPNBsLqk3MQiwXAHzuKnKg
	1WUraeGGkeVC1gdCKdzigRqeIRWJvBhPX4g1oqxOJX2ZjSEUttgvQEfpsnE9P71u
	XEto2zlbomrJW85c58ncnAa/gKHF9FZBkm9Qg8465B76LrT8pNuoaiWdSFVRzqNr
	o6UYmUhCVyyD9Ae3jDrGPODGme0ElalRq346E5SW3fzN0TS4iWofFt6A1LuSEQxJ
	wiJgLYUezGrhLaKrpadStj5B9JDQNqDx6ehyfEx1IlxFhoZDO29LUxup7NvHbfJ/
	8WhJoJv+l0imGiIcDQsFA==
X-ME-Sender: <xms:u_JdZbyr3X_IMdPdVaEkpZJfmiT4a3OquYWhc7JlWLuOEBqmaasrlQ>
    <xme:u_JdZTQj8zog1yA2KNiBwv5IDXS1-AHDoXpGvbvk-WuCk3OLipja4Vs_9w-v-0V6H
    p5ImIn0uA>
X-ME-Received: <xmr:u_JdZVUNdw6JXYaCHEDwX6FWAyS-b338NNGSputHEpkU1zZMB6YOiLuKvdK8w81bMPVP-7Fa1WEmMjmKDSG5yOE4Vw7oN5n_ZMA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudehuddgfeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:u_JdZVh36mOMtPiF1lyQqmP1t8QiQOrtsSKOgV-_C-Q7IUM6RYmYIg>
    <xmx:u_JdZdCkccMwx0OUttXzBWtJzfq6mBJXqPpPjTmBS7vyGkbTB9HCqw>
    <xmx:u_JdZeKoHCJWs4OroaXBIvn9K0eRun8zoGjXk9vh-h5RGJPkz8PsNQ>
    <xmx:u_JdZRsebGSgzpcE75tupvOUaJhrVRBlWCWkPl3kq8-qD5ZzjnKliQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 22 Nov 2023 07:23:18 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Wed, 22 Nov 2023 23:23:13 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Tim Lunn <tim@feathertop.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	linux-i2c@vger.kernel.org
Subject: [PATCH v2 3/9] i2c: rk3x: Adjust offset for i2c2 on rv1126
Date: Wed, 22 Nov 2023 23:22:26 +1100
Message-Id: <20231122122232.952696-4-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231122122232.952696-1-tim@feathertop.org>
References: <20231122122232.952696-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_042325_572936_D0E6FF3C 
X-CRM114-Status: GOOD (  13.34  )
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

Rockchip RV1126 has special case mask bits for i2c2.

i2c2 wasnt previously enabled in rv1126.dtsi, adding DT node alone
is not sufficient to enable i2c2. This patch fixes the i2c2 bus.

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

Changes in v2:
- i2c: clarify commit message

 drivers/i2c/busses/i2c-rk3x.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index a044ca0c35a1..151927466d1d 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -1288,8 +1288,11 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
 			return -EINVAL;
 		}
 
-		/* 27+i: write mask, 11+i: value */
-		value = BIT(27 + bus_nr) | BIT(11 + bus_nr);
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
