Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BA05CF2594
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 10:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=31S20U3gWq6wi4Ef4eNeU9nPe/VQB9ow/HYZhoWCFi8=; b=3XT/k87QhOvjBF
	DYk+gArI1oAWcFf1mAMxhX/9nxCG4nJQcp1hziz3iehQA9JjsRVRVz76BehEKlTtwvt6Meo+aJ/4q
	CgqZJYntjBzoSkJwANMbz6EMplLwHg9PVwumHv6Xg/o8ryc2fY/j2+m3FsKOKULVutxEvmp8lPwW6
	TD+qFVPpFv2AACoo7rQ2HUUxv+V5Cp4Fb5nilTHTevJn11PBKgcaGlqYFO8Lps2PmcFZZF3BNgyqU
	6+TyO31lQplylBQBofNsLmT8wdZlYu5gOt2taIT94lOr5sBXyXSqGGPmKyd4YSH1Qm7KB19tw6jtC
	X447VZNbzqIxqMJYZM7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0IdO-00000004kU2-3qMG;
	Mon, 14 Oct 2024 10:49:06 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0IYK-00000004jD7-0JmS;
	Mon, 14 Oct 2024 10:43:55 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728902630;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WJylQnN6elbJzXOZExAonx34GilCjnyToPejoTdekBk=;
	b=JqfXECaOZIjE2sclZRG6A8LJFcdwPCzB1g0gmiv7dUGa+bRa95TvU6P8YPwi4qdaGxlVTi
	jkL2+S2jkcNBNlBxYbPQuxQlLQgIeGlinByjHqL/50Mfu8PQd+UnvPIS81Q0ryx2zSLvlI
	cHKYOSl0JRWMRej2bHRGEjkITD/xx8WNMDNogJ0hJca8I9XbaApd1xpdFwPpcf4BGk7zZL
	H1gvpZOwKPy6lbnFn8jS86A8BWb69DfMJZwZCcLPssX2+qvm3bGIE65FgR1xTSz1h3q2MC
	rYrC/5togOejEuuWDXXHqERGKHBmpcqk0xM2evIVkeRyra3GTWzqDv7F2UlQOQ==
To: lgirdwood@gmail.com,
	broonie@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] regulator: rk808: Use dev_err_probe() in the probe path
Date: Mon, 14 Oct 2024 12:43:40 +0200
Message-Id: <2bfd889a35b1b0454952ec8180a53143bd860192.1728902488.git.dsimic@manjaro.org>
In-Reply-To: <cover.1728902488.git.dsimic@manjaro.org>
References: <cover.1728902488.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_034352_296168_9BBCC972 
X-CRM114-Status: UNSURE (   9.27  )
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

Improve error handling in the probe path by using function dev_err_probe()
instead of function dev_err(), where appropriate.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 drivers/regulator/rk808-regulator.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
index e81dbb14a29e..f241bb538e27 100644
--- a/drivers/regulator/rk808-regulator.c
+++ b/drivers/regulator/rk808-regulator.c
@@ -1843,8 +1843,8 @@ static int rk808_regulator_dt_parse_pdata(struct device *dev, struct regmap *map
 		pdata->dvs_gpio[i] =
 			devm_gpiod_get_index_optional(dev, "dvs", i, GPIOD_OUT_LOW);
 		if (IS_ERR(pdata->dvs_gpio[i])) {
-			ret = PTR_ERR(pdata->dvs_gpio[i]);
-			dev_err(dev, "failed to get dvs%d gpio (%d)\n", i, ret);
+			ret = dev_err_probe(dev, PTR_ERR(pdata->dvs_gpio[i]),
+					    "failed to get dvs%d gpio\n", i);
 			goto dt_parse_end;
 		}
 
@@ -1920,9 +1920,8 @@ static int rk808_regulator_probe(struct platform_device *pdev)
 		nregulators = RK818_NUM_REGULATORS;
 		break;
 	default:
-		dev_err(&pdev->dev, "unsupported RK8XX ID %lu\n",
-			rk808->variant);
-		return -EINVAL;
+		return dev_err_probe(&pdev->dev, -EINVAL,
+				     "unsupported RK8xx ID %lu\n", rk808->variant);
 	}
 
 	config.dev = &pdev->dev;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
