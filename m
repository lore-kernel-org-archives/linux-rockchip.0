Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E1AEC47258
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Jan 2024 16:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9UutwQgoaKOY+3zlZroth/m97GHpQ6CItyFlq5ZQw8=; b=0nZx1HLlxoIjgM
	6EpPwyvRL2DiRSEjioin/TBNgjHNNtzwMsruAt2jOgDtksInfs9nGmqM1I8TdXpdHAxIoirNbQK2O
	uVKZWzgiiIH6gy/9+o8iBpEgvCNC8Ma30Dnj8+GH96t+Q5yD4py7EwasuqIC3uJVUJVi2tVd6kpL5
	vbe7vUiVGMnaH2tllg+qJm4X8tLenkzDWvLx9RsO9qUd1erk1cjafj2YgMMPR6yYZ3FYvcsZ1K+US
	IMp72u1k/vTbUYMF02QOEJfZfAnbXcXVpVJLk0MMJJh2AxDCQzSnb3ZtwZ1TSqv0aQfBXTv6QkREy
	z7chCcwLoQp0Hs+Mx2mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rU7o3-00000009qhg-1tPb;
	Sun, 28 Jan 2024 16:14:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rU7nu-00000009qdG-2Urg;
	Sun, 28 Jan 2024 16:14:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1030D61BB6;
	Sun, 28 Jan 2024 16:14:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97D7CC433F1;
	Sun, 28 Jan 2024 16:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706458451;
	bh=4Gqb/Kft+ydmG62lfpNUxY10aIVDjYIQjA1SGPOZj7U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GM1TlSKZ4fucQqpQWAGBbXOWz/4ME9lbto9ilQZewvMNTPcqOv5X2mc54ysTP/18h
	 ltTUlJFHkpZFD93DCcv9DVwDBG+dU8wjs5yTjd38OOjjnFkbf1kvEhTHyFSkwXaoOH
	 k4ubFM+v3OJGqcGUPXGTVv/imPMer/CLN9j3mnJaO1ncmZjuf78iGAWASVFVImDeGu
	 lja0dtRfhXje7hUlPrT8+XaJbCUsAm7SYcsv9VOA8AIvcfZSS/kBBlHAbyA5AhlzF3
	 J3JgxiAlPsCZYRul83JEr4HuRVgjUv7DIYpNamcmPptpvFA94PxG0yB/wUrZ2TEDGC
	 QLde+SwL3SE/A==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tim Lunn <tim@feathertop.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>,
	Wolfram Sang <wsa@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-i2c@vger.kernel.org
Subject: [PATCH AUTOSEL 6.6 31/31] i2c: rk3x: Adjust mask/value offset for i2c2 on rv1126
Date: Sun, 28 Jan 2024 11:13:01 -0500
Message-ID: <20240128161315.201999-31-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240128161315.201999-1-sashal@kernel.org>
References: <20240128161315.201999-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240128_081442_757095_CE2F21E3 
X-CRM114-Status: GOOD (  12.00  )
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

From: Tim Lunn <tim@feathertop.org>

[ Upstream commit 92a85b7c6262f19c65a1c115cf15f411ba65a57c ]

Rockchip RV1126 is using old style i2c controller, the i2c2
bus uses a non-sequential offset in the grf register for the
mask/value bits for this bus.

This patch fixes i2c2 bus on rv1126 SoCs.

Signed-off-by: Tim Lunn <tim@feathertop.org>
Acked-by: Heiko Stuebner <heiko@sntech.de>
Reviewed-by: Andi Shyti <andi.shyti@kernel.org>
Signed-off-by: Wolfram Sang <wsa@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/i2c/busses/i2c-rk3x.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index 4362db7c5789..086fdf262e7b 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -1295,8 +1295,12 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
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
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
