Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63DB0CD5BB0
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 May 2026 10:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hmzBwT+uhmK85FVoL7wkozjMiptd3LIM7fB9g3d4tk=; b=E0cCbk3RJtxNEh
	YWIUcqerQ3X27kBujDgoohqg1dNXjq/dtWRzmivUpZnbo6oswBirwg94p0Hy0faFYBQrBRdfGzBEq
	uIuu2MpbiuPZhB8NwX0QXHn8Jf8BkpyZGt+ynvZqkcboKGakUg7oJiY11YHbA3JTheeDqQcPPNFiS
	XFU8+hAstlSUfCiVFmVfW3LF65wLXjJaeB9FOk9Gstp5qVX87Xo28oxOa/664L9wxskf5NRojZUbM
	RH9bb86hiH02JcaDz6O2UnI2PEdmZpEx6ad94S2D8QageskYkhBwodvOHQpoIEcBIMESKS3z8cNGF
	oOI4+EbG/31oCxA4ApXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQMjR-0000000AQe6-0kz4;
	Fri, 22 May 2026 10:03:53 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQMjL-0000000AQYE-2llU
	for linux-rockchip@lists.infradead.org;
	Fri, 22 May 2026 10:03:50 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-36608b2f2dcso4561104a91.2
        for <linux-rockchip@lists.infradead.org>; Fri, 22 May 2026 03:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779444227; x=1780049027; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=78Vi4OavJbre02Pi7gJRdT8U7hvyFu4xORETXxXDTp0=;
        b=XMebFBGGh1WK3gJmWK+saolwCOiDZtgX/aGj3RYFTXQLneKmJVQySZ54RQtChED0ET
         zEdd28C37S71rubZQNIdjPCpJbp9aYLCrbu1IY9vbgVDRaUyIbQtBceyvfZ0O+Egfceu
         c2APS+hPDvMsp17Mm1j3ClmBWKO/vyqNoC8B8QTwdB0uJbJBtUWB6gAQ7VWn6rZDmZql
         k2T4LzgApWK665sUSFnw9nZ+a3kaq/qwCnF1ZiTB+WCuilZMrS0NvXE+d/oULaVvM6Rd
         pcvekV8UPcqO/2cX+QBoxLX2gskmR99g0KkgpcovPvHlgtnnBJcaz5P8X6NLq7VxAKkr
         MlUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779444227; x=1780049027;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=78Vi4OavJbre02Pi7gJRdT8U7hvyFu4xORETXxXDTp0=;
        b=RV6bqoY4601pFlCUudDZUimPcALPsTBFWuixQ1PRk/FdZ7b12oaty2qu4fTBaOywBJ
         XylRJFq1XcgoLq5wxa7ryELS6r3qs9sSrS1Alpt3QJFsQxBJ1bjPef0+kKYl2+cS2AoH
         LmoZV0liiFn00JZ0bxdh3tnoUUzw8HCP/ogCWD9PwfjXgJdVRh5W1c7o7RhmDNDJ5SWJ
         PpXY7U2gPDqHYnJ2m5n2v+6PvNViKbOOM7xD4PyDwsbrgK1H1/k9giG0ud8bMp7EdObU
         IvJJaGqchdmfIbDfoTRqjDJb+FZRpMIIVGTr5IuvXN7mVK6Uw/xToGykazN0lvjkG5u2
         GN2w==
X-Forwarded-Encrypted: i=1; AFNElJ+Hv+egPce/sI4c762TvzM57FbpTjFFpPeBINqrYmRyP8L3tH+kWw/vl1nUt0is84XRYg3nMfHk8TTTKDIiow==@lists.infradead.org
X-Gm-Message-State: AOJu0YyEsUflF8jdzjnj3EuuOHMx7Qx5PKP/ouoSi0n9QN27RRnmj6gr
	/mS+bYsaOaSkcXPhFvqfoo7sH0s201lFK73s/xHhouXxpEY1CIkcEuOm
X-Gm-Gg: Acq92OHuuvmpMp43Al5QcfRwJYMPfmhxK1M0gdR/IZUfbNWS3LBWmxyIhPyYTY41gtz
	qhdDDQ7/UN4ZhK9mm+75QEXxZcR+fsni1q05JgUpTGQ/tnb9hYdRraI4X1ejs1l7g11uTscwmOI
	C0WWbbyz1jx5jWIl+lCEZx976UJ/QZ39XIC3V9RAgaWAaAqM1dv1Yyf+uV9tK7pe8gGzXSOQG1s
	2iHqqWGolWgKQlj2ADR9kgPwp2oWjkyK17oTukFGtSY5Q/2urvrfpTovpVNvOXT7dpTpTi0xj6O
	IsvgTCCKUTjsPQTCZ0EDmb8fRamUT1K/9V4JPht3wjOkB+UMM6dCnOn++e3mXlm1BmkmVsFOlos
	gjAk194EIxcRfjxQG9snQNtDg6ozLbIlbx1T7N+RcvS5as0dJ9Z7/ap4T3HHKYd5gOVUIrxdzdY
	U8fEXlsDKxY3N2Wj06oezaLl1gjOBF8GS3/m3hvdBXhKy6AOld3V674EDQCCqo2LQ+GeYw
X-Received: by 2002:a17:902:ce84:b0:2b0:917c:bc4 with SMTP id d9443c01a7336-2beb03661a2mr27377715ad.4.1779444226741;
        Fri, 22 May 2026 03:03:46 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beb56f4343sm18683455ad.36.2026.05.22.03.03.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 03:03:46 -0700 (PDT)
From: phucduc.bui@gmail.com
To: broonie@kernel.org
Cc: lgirdwood@gmail.com,
	perex@perex.cz,
	tiwai@suse.com,
	heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH 2/3] ASoC: rockchip: spdif: Reorder clock enable sequence
Date: Fri, 22 May 2026 17:03:17 +0700
Message-ID: <20260522100318.73474-3-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260522100318.73474-1-phucduc.bui@gmail.com>
References: <20260522100318.73474-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_030347_701763_0641D718 
X-CRM114-Status: GOOD (  10.26  )
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

From: bui duc phuc <phucduc.bui@gmail.com>

Enable the 'hclk' bus clock before the 'mclk' controller
clock during runtime resume.
The bus clock provides the register access interface and
should be enabled before the controller clock.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rockchip_spdif.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_spdif.c b/sound/soc/rockchip/rockchip_spdif.c
index 581624f2682e..8de5b76cfe79 100644
--- a/sound/soc/rockchip/rockchip_spdif.c
+++ b/sound/soc/rockchip/rockchip_spdif.c
@@ -76,16 +76,16 @@ static int rk_spdif_runtime_resume(struct device *dev)
 	struct rk_spdif_dev *spdif = dev_get_drvdata(dev);
 	int ret;
 
-	ret = clk_prepare_enable(spdif->mclk);
+	ret = clk_prepare_enable(spdif->hclk);
 	if (ret) {
-		dev_err(spdif->dev, "mclk clock enable failed %d\n", ret);
+		dev_err(spdif->dev, "hclk clock enable failed %d\n", ret);
 		return ret;
 	}
 
-	ret = clk_prepare_enable(spdif->hclk);
+	ret = clk_prepare_enable(spdif->mclk);
 	if (ret) {
-		clk_disable_unprepare(spdif->mclk);
-		dev_err(spdif->dev, "hclk clock enable failed %d\n", ret);
+		clk_disable_unprepare(spdif->hclk);
+		dev_err(spdif->dev, "mclk clock enable failed %d\n", ret);
 		return ret;
 	}
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
