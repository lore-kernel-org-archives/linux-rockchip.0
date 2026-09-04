Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BF08C624D3
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2026 14:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2AhjE4N92GP6tYpx5FKNHUSN3YsWYwT9ma6Ub3WvNCc=; b=VNlG3tqbAmOF1X
	1QrED4jcblt0bRwB1FSKBveQjiJRZSTaBeHrKeUPhbciDgEYcSxUMv4264+RCVu0lXCNAxISRXSeR
	riEiJEtyVVVhtLj/FUOge/MWWfjGvl6mLYhJS56Qseg7jeOm6md9q4aoS8mZpsuWchNp8k9LAChN6
	MTsRp5VZ0JrG2R/ZpdoebxAViz0JWY/4izrJA+9LHmuVo2WzUWwi9B2a0b8sSlfaCPcHUMT1DMMDl
	X2MS1ky4o17jYE3UFtLxzZ3vDX6seMH6Tq14xCQiw6RKVkm7FxabCfarQy9BwNZoDCdVZ3v0q5n3u
	SehVeIDnkDoIy1+3BiZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2VCs-00000002QwN-2RgL;
	Fri, 04 Sep 2026 14:47:54 +0000
Received: from out-155.mta0.migadu.com ([2001:41d0:1004:224b::9b] helo=mta0.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2VCo-00000002Qvt-3JWq
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Sep 2026 14:47:53 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=2qjd3TpmOeGjaY4RGdVPRxQxmNjmgQXHJo7tx0jZ55o=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1788533266; v=1; x=1789138066;
 b=R9iLwfOLh1H1TCRG6cKCMNnU72x35HlvvkYUMLh9K/FGpF1M8MGVSiPvamiCb6x3m2aEUi1y
 0A3y1KWa9ZRfyiG+5tnOt2qzKUFP0RUoVsQ7BX41NXFiSNQiptgR6wgJibVOc5alL3+zxLQ/zYj
 JOBTSxxde3clGx4iQM9MzkUJ/F3q4unrxgyQRWC+VkCEcqcprsTZOpw8EyHPz6cNEfXxqvYmTBr
 DjcY2Hj2hjFUvS6dnp6srh2ufHl+yNLDUV1E6feu9LptvrWJOJ+1mOVscvHH4nLn7xGxFyyCyEH
 INQ0Tx28MzqQbJUiFUbNioc1KLtXatDiv/SxBP10Lb5DA==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 0447f76df38ae06a;
	Fri, 04 Sep 2026 14:47:36 +0000
X-Mizu-Trace-ID: 0447f76df38ae06a
X-Migadu-Flow: FLOW_OUT
From: Diederik de Haas <diederik@cknow-tech.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	Andreas Kemnade <andreas@kemnade.info>,
	Yufan Chen <ericterminal@gmail.com>,
	Surendra Singh Chouhan <kr494167@gmail.com>,
	Mario Rugiero <mrugiero@gmail.com>,
	linux-rockchip@lists.infradead.org,
	Diederik de Haas <diederik@cknow-tech.com>
Subject: [PATCH] regulator: tps65185: Remove redundant dev_err_probe()
Date: Fri,  4 Sep 2026 16:46:31 +0200
Message-ID: <20260904144728.1629471-1-diederik@cknow-tech.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_074751_281576_53E2760A 
X-CRM114-Status: UNSURE (   6.96  )
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

The devm_request_threaded_irq() function now automatically logs detailed
error messages on failure. This eliminates the need for driver-specific
dev_err_probe() calls that print generic messages.

Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
 drivers/regulator/tps65185.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/regulator/tps65185.c b/drivers/regulator/tps65185.c
index 6a3130177e7a..4865227e444a 100644
--- a/drivers/regulator/tps65185.c
+++ b/drivers/regulator/tps65185.c
@@ -392,8 +392,7 @@ static int tps65185_probe(struct i2c_client *client)
 					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
 					"PGOOD", data);
 	if (ret)
-		return dev_err_probe(&client->dev, ret,
-				     "failed to request power good irq\n");
+		return ret;
 
 	if (client->irq) {
 		ret = devm_request_threaded_irq(&client->dev, client->irq,
@@ -401,8 +400,7 @@ static int tps65185_probe(struct i2c_client *client)
 						IRQF_TRIGGER_LOW | IRQF_ONESHOT,
 						"tps65185", data);
 		if (ret)
-			return dev_err_probe(&client->dev, ret,
-					     "failed to request irq\n");
+			return ret;
 	}
 
 	ret = regmap_update_bits(data->regmap, TPS65185_REG_INT_EN2, BIT(0), BIT(0));
-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
