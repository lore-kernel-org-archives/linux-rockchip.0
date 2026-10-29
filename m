Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDC0606A31D
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 10:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PnG2/d2R;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=MgbrLven
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nH8OB9ZgsusyNdW4ODfj5siw4GERI2ynJC81qBZ70X0=; b=PnG2/d2RZUdzUaMrPnELylnyAb
	Yu2HaGHhKm47ORORkvMEiktX3EAFlc1VF24j5ZI744vnz9l10z++6/NTym+6+h0EfhpS/U6xUGH0i
	mmJ931l7VWdjcXqFhlkyel6IZh2RvGhXh49CHKNbZzwjybAI4ZCb6NrGS2yrZ3kKpN3BcSZYhE5cC
	GGiq3F7UdX2ATJQWm/uBNVnlj5Gc5lAcu4OIjBXNrwzx6C+F5Hb7IzyT/89NLRuPP9Zkjqwyl08Dr
	dttMWw98HBfoIpshv3eIjPce2+9ywAscAzOaAlAZgTyNNj55hTmwHHZz25U4imaYLOSQKVGtYzkQV
	BnzZoC3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMN2G-00000008vPP-2p3l;
	Thu, 29 Oct 2026 10:07:04 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMN25-00000008vEY-2bik
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 10:06:56 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4a35a60499eso15816105e9.0
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2026 03:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793268411; x=1793873211; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2m6sqEdIShmvg7ASfXjbhI99Pw56OM60znpq44ByAfs=;
        b=MgbrLvenUYKVKnhfE43rff3H2eAzlM4LPwtHL99fA6l41coBZ8fFkkkQke99DxahBm
         1uavbW2ndnU+99RRjVlAPRuuz1h3FTuCRh8Etx6NO0WqO9q1yGSphP4DNS7vbb8RlPU1
         NCdJiF8byiueMCii1v3pGGHLJVsnE/sT39BDg0qoIATUIxitqusOuZqIsoSkdhMu+x6K
         LOAt0PaQwz2At49Vyw6pUjZdCv12Em1CZXwEhv+YpTDFxdv46GMs45Imws7uk6wz+VP/
         H/K5Mc2INBL1kD7VWSc3u+FojQWOPuNf5HirzKgWEmEx75AbqHyvCtHZDoRotVxCezFh
         A/Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793268411; x=1793873211;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2m6sqEdIShmvg7ASfXjbhI99Pw56OM60znpq44ByAfs=;
        b=kmHOFBDSdpQKM6rt8tn5xn/HV+Aii6OqXO66mHLBBjYWFX2mDeva+mzJHww73NdWne
         4+5g6yA3sp6bf7y7M4DhwQSmI4FioKVwPmERlPZMaFO9KR+GLlOLdI137Ej+dV/DrcPP
         jFVJNgkcMHsNjW+3deXKqp/1S03eIGC7jyQbUTsDVEpbwZeZgZkKWgy3Qv+RCjYI5ImH
         A3/I47X+nt/7knaYcoaLJPdBHy0P5iewq+kIDQz/DA1G7rqnteANVkToQCURK+2o5RB3
         4fFPbrDlKaV5iWjsNNjZgzqx9jni+NPxW+iglvRRo3KP0yg+pc2S+k4Ix9bokUJ2QwXD
         tNng==
X-Forwarded-Encrypted: i=1; AKwUvByTFl2ujo3NdmsvgbTXNDy3tsCYmZDx/RSOOgGi3y92cn9tvXLW6SPc/wAI5a/H+nt01EDEyFi/69IulmK8QQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYKnvjrB8TaR7ZRwyrBkeegmp/2M+H0z0tT43eLjrdQwvQXTpi0H
	+zeeOeYuaPwGZ72fHKOBLwBkZm7mmkvKQJ3UTRMy98j4XnaeBMZcQhQF
X-Gm-Gg: AYBFou1RddFXT1Y10uFCR2mZpPkwJMjB8+o44XG3pIINslNWRFKuTI5VAHRS+Fr5AuL
	M/cIscu4kSYyAGA2ityDYerys9VRmnEib2RxqMYKm41F7Ze+0OgnKp5mzyGG9JT25xkmONzXaU+
	xtV59ivwd0kI5vKM7aAj8d/ImuinG2tw06cwD1ijdmcZ4PRWQRXgOtpM217iqRGcig5Cq/+OCMJ
	bYwSlzUM25yFLfVWYhNrG8pw+tAGhroXLN/XHOnzN8p42hETzuq2DuKsS2tBHOjH6bBB5vzleos
	iTjBSh6kXpFXfQjg2CCo5hSzUuyZBkRB3/sqZHgC7q3/fQpx5P36LhIWd4FOjfREJ0MmFMTX0m1
	TjuY2btBqyJRwWQzGfM+opQdjkylnwDs43hxcUw6i9x5jww+/59P7H/D3xwn+NOFWwV393SEHtQ
	xvoDaCCWvulPbGcO6QBcRUnCuPk5e5v5Qfcp0NcOSyeCQXDd8EKAHkFuv1vggM7kl+f7tA9wyjE
	j9TniAF0CU/A2VKwNxPonh0f1UQG1Tjuct/CQVuS67t9La6wgyoSRPzi6zM8A5b/SyGjKQkQyKy
	mtCrTsscbpvlCkxk3CVlYWThbEgaQYOVWcE+/T+CbmYAv6S4kymiejT48mJSmmWJasvsiyI2av8
	aFbpk5G4gvw==
X-Received: by 2002:a05:600c:848c:b0:4a2:397:73f6 with SMTP id 5b1f17b1804b1-4a966490754mr125374865e9.8.1793268411167;
        Thu, 29 Oct 2026 03:06:51 -0700 (PDT)
Received: from [127.0.1.1] (ip092042140082.rev.nessus.at. [92.42.140.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4aa7fdb7691sm53082825e9.11.2026.10.29.03.06.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 03:06:50 -0700 (PDT)
From: Jakob Unterwurzacher <jakobunt@gmail.com>
Date: Thu, 29 Oct 2026 11:06:25 +0100
Subject: [PATCH 3/4] mfd: rk8xx-spi: add system sleep PM ops
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261029-dev-tiger-v7-4-pre-20261028-tiger-suspend-b4-v1-3-cb12621c1fb4@cherry.de>
References: <20261029-dev-tiger-v7-4-pre-20261028-tiger-suspend-b4-v1-0-cb12621c1fb4@cherry.de>
In-Reply-To: <20261029-dev-tiger-v7-4-pre-20261028-tiger-suspend-b4-v1-0-cb12621c1fb4@cherry.de>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Joseph Chen <chenjh@rock-chips.com>, Lee Jones <lee@kernel.org>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-input@vger.kernel.org, mfd@lists.linux.dev, 
 devicetree@vger.kernel.org, 
 Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793268406; l=1163;
 i=jakob.unterwurzacher@cherry.de; s=20261029; h=from:subject:message-id;
 bh=1zvikwnDADGbJGUr+2C96ExmTpaaJdX4ozWbby5F6T0=;
 b=TCcmm2uv0Oq0jbsQFif9J3wiQ6uFZZOT6azcU9/u4jfR7utKpgVScfiFRlrkXexfBrw4RHf/7
 9Bb1HPxhFwfA2EYYzIpbfsEiuGXaDUD7LUMrp23QF3huhIpCcXvZ3KQ
X-Developer-Key: i=jakob.unterwurzacher@cherry.de; a=ed25519;
 pk=0v1L7pjG4d7PcaYPMOmzP4SjaRtnB+8bMzZLZCRzB8I=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_030653_884747_6A1CFD67 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>

Unlike rk8xx-i2c, the SPI driver does not hook up rk8xx_suspend() and
rk8xx_resume(), so the RK806 never gets its system sleep handling, e.g.
keeping its interrupt disabled while the SPI controller is suspended.

Add the same PM ops as rk8xx-i2c.

Fixes: 210f418f8ace ("mfd: rk8xx: Add rk806 support")
---
 drivers/mfd/rk8xx-spi.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mfd/rk8xx-spi.c b/drivers/mfd/rk8xx-spi.c
index bb85fe60518f6..a0b7d7a058108 100644
--- a/drivers/mfd/rk8xx-spi.c
+++ b/drivers/mfd/rk8xx-spi.c
@@ -97,6 +97,8 @@ static int rk8xx_spi_probe(struct spi_device *spi)
 	return rk8xx_probe(&spi->dev, RK806_ID, spi->irq, regmap);
 }
 
+static DEFINE_SIMPLE_DEV_PM_OPS(rk8xx_spi_pm_ops, rk8xx_suspend, rk8xx_resume);
+
 static const struct of_device_id rk8xx_spi_of_match[] = {
 	{ .compatible = "rockchip,rk806", },
 	{ }
@@ -113,6 +115,7 @@ static struct spi_driver rk8xx_spi_driver = {
 	.driver		= {
 		.name	= "rk8xx-spi",
 		.of_match_table = rk8xx_spi_of_match,
+		.pm = pm_sleep_ptr(&rk8xx_spi_pm_ops),
 	},
 	.probe		= rk8xx_spi_probe,
 	.id_table	= rk8xx_spi_id_table,

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
