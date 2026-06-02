Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10521CD6E67
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 10:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQV4nNEmQmgA0EWVqBQzKPHqpXnZ2AGALaek2V1MFtU=; b=Q+mm1GvaY2YZ45
	ugMK/iXBJU64x2ezHEnuY2fyH4OHlda6dr4Pk4eXTMyub2LSyzRyvPjkXJwXJ5uM7GaueCm2gPBcr
	ykxBa/E/m6krLMmTlzfv9CwlYudzsDFHIcNn1kw2/DyOAesJ39uDQ0GvHrTqmeRqh9R5qHZDXvRHv
	5Gg1IMzLk5yuUNnJ3gm8uDvBLpSiLlhdwKe9fvI9YFKK/8GeAJVMASyMgJkxkcK9Wld9gNiIYynkI
	0F76UItx7sUgUDwHRhfKMqn/N4wKip12xvNX/06GCO6Svxp02s/7PyEwS8rwcLtbjBeQvXPBdb4Db
	7+x7IxHtmxw/4ZZ1wsrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUMAz-0000000CkTD-33KD;
	Tue, 02 Jun 2026 10:16:49 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUMAx-0000000CkRj-1I4O
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jun 2026 10:16:48 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2bf2e8ccca1so22878155ad.0
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Jun 2026 03:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780395406; x=1781000206; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zlqWTxvd2nybMb9oOkq3B+WZ2+KSO9DV36s9D60SrZ0=;
        b=o/xhyL2hXom+YowGp67VwsUwDMCzLXbWKLlWAG0vFG+y/gpbgu4Ur/FmC58/NxjCTC
         0eFwFiyfwgQ3x5scpAJZYJvYs7kpLlei8X5tWi8EcKOtm9l8XU7Vaimprts9yzEvP05L
         CJDhXXmqRxli2cRlsyZhF4nGkq0q0cJAQuPhzpsq2nP78XDV9TQErmswqW3dTKEfYl2b
         UCHulfA6tgBVKljJ3HwMHgBU12NVBwd2muMJlXvp1Lyv3Tnn5YWK3lwCdcv5d9ixvIel
         Cx1krt3efz5cO6FZCUzlPeTFhriRy8sKjbu35K0edUzIzL6YCG6EENGsZs7GGyOqYTkg
         XgHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780395406; x=1781000206;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zlqWTxvd2nybMb9oOkq3B+WZ2+KSO9DV36s9D60SrZ0=;
        b=m5VL+uedGYYpW3sHQtQLAZvfW0O9udPeDt0ouynTDwSTPhPzZI0Thz7rxTQov/xB7Q
         BwyJj5lqA2y8aVGNf/eFnqwxu4KtwNHWJ8QC66QD2nB1SqLNROBU9uClqZ/RIUJ/ntPK
         GfbXNPcA6bfccqxS7UpA10SKKnwTXifz1mGl3kmEgr9EsRpEPDJ4Y2MbiT9qR7CZxrlY
         1dd5d7gElyuTU+hA/F+O98A0KlZ6Ce/PXO2pauVKeZhnEN69vqBRRbybWNEDlwIKOlWr
         l1xE3xd0grF9UkpwWU4a6V2uc5sgm2lYwjLkp37ZHkUMs0La2y8Yl5kd6gZtmBJXDr1s
         H9FQ==
X-Forwarded-Encrypted: i=1; AFNElJ/FYoeieb12iJ+nnzocs5PBa/K1YayxS0Vu++zIL2ouVDWOYKpAi/gqrKLATM9XVN2lSS7u2s2fxeCMO98few==@lists.infradead.org
X-Gm-Message-State: AOJu0YwjbF7l/aNz/iUsAhUUCxMsM6N/Dw52Cx+VEr4hd7RrhvCd/Zuc
	UlmDv7N7XktJuQvrLvudIJ2SvgADrwJQa4+gd3UgvCVoxmlP6KPGGLkp
X-Gm-Gg: Acq92OGWa+47QIyR+/QckET3gIzwJ02NPXKGTurVAQ0/eh3OFMFYV/W1WwaFLpTN/7q
	k76eFKSj70/5HM6RMH7Ig/cwGmefozsQAaIpZQ8xLdXbGICoi5TU66veuitr74XdnLvIJ+aPsyA
	yW4gECYFSjAOrYj7WUgiY5pKR5SrqSKlbUZDoFfay/NTCXXXnipZrSHjk+Nic1WACqsLfGabgfY
	M+4CroHj1QjPNFy9jRJKD6T9g5W8IxVe22fbLJEbwhq7peBiD1ZbPzglOeKq55uFGwYvX/L4zM9
	l3a7yFcEUv7MaBpRLhY3XUeB5XV83p0rm2U0D3wsN07EWii9j73QWEU2b7wUq4NWPtGMGqjGjLb
	BhXX31mXBJSBeWXiJITtN4XS0pSdrUiJa74xiY+qSZ3U7NPXK7Rq/IOQQ2/DhRT4WPxgXkFACFH
	aGAHvMgSRlpLlOzWDpiYiimXL83iKHkgxG7WtDQ7l7a8PuXQxLlXC2kwy5x9aToL88jVBN
X-Received: by 2002:a17:903:1983:b0:2bf:23cf:3e4 with SMTP id d9443c01a7336-2bf367d9da0mr164110925ad.17.1780395406357;
        Tue, 02 Jun 2026 03:16:46 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bf239fd84fsm132766305ad.23.2026.06.02.03.16.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 03:16:45 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Heiko Stuebner <heiko@sntech.de>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	devicetree@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH v2 2/5] ASoC: rockchip: spdif: Reorder clock enable sequence
Date: Tue,  2 Jun 2026 17:16:05 +0700
Message-ID: <20260602101608.45137-3-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260602101608.45137-1-phucduc.bui@gmail.com>
References: <20260602101608.45137-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_031647_349359_02D2AEE1 
X-CRM114-Status: GOOD (  13.23  )
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

Enable the 'hclk' bus clock before the 'mclk' controller clock during
runtime resume.
The bus clock provides the register access interface, so enable it before
the controller clock. This also makes the resume sequence the reverse of
the suspend sequence, which keeps the clock ordering consistent.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---

NOTE: This patch is compile-tested only. Please help test if you have 
    the relevant Rockchip hardware.
Changes in v2:
  - Clarify in the commit message that the resume sequence becomes the
    reverse of the suspend sequence.

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
