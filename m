Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E51AC55ABF
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 05:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJiTd5LvJsJGs/xjRLg6uWRnXsFIb7jjiYpfdf03Hh4=; b=vgqVbAFpqGLqou
	IL/t42eSaNRBnBMochCI+7cMsHkVObMe5OGwgJh1grCfz3RpUk6mb5xwKNtZ8nbakldzaRtRk8PCO
	zAXgohBhsk5RbNBaSNMPFN/pOPWOMhqwuRyTst7KvwwSi0JV6lgBbdro/4FiPBC/MdA1Z5wBtr9dL
	ceuBZLnityKMg3lhBguSmwsO2iJIich4XRdnKSaWyPalW9dcstPPwWKQTAIgG1xNaUVsziTz/rlmp
	4YdFMsj64kYRF1hgTamb3X0oIQPDWIFihT8M7c5EVNy9NDM3NhH2epC8RL3XdkyBvvqtbNHxcPUox
	ESyg0WrmUryWTMxfWiVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqZO-00000004y0t-2g8O;
	Thu, 06 Aug 2026 05:23:06 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqZL-00000004xwt-3Vqq
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 05:23:05 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-8453427d3f4so2128041b3a.3
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 22:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785993783; x=1786598583; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GBK+k3DpjSm3fu5kk5NiqqkKTtgyJPYe4ia8RdreH3g=;
        b=gOOV0CRI5A6aN95cRllJtZJLwKeZnPMsul80UjHhaxdA912dpjP4b1aR3CHdpTgsUe
         eg1lxUBItHUmF4eXcJOTg0JhjOJGfloGznCFC2PKbUkgvyGvJgaxRyBVn3K3kxYDb7M6
         S1MffKdJCYNh0U9e5Gb9zfA5N+BTBStIFSe6K4Ha5okmYsFoNFidhgGSRf8ZudjA3atH
         zrvEux+daZMjFU6/1vPauSAz+YZDkopLIW68R1cNN84ukpztpHJLf/w17v8THb0RQE2Y
         jcq7nSJFFsm/YRB/KPxR7qhKPECHPay8aDs98biOpW/+o48NOmLCuO+5e2yJt1wBaUkK
         mixQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785993783; x=1786598583;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=GBK+k3DpjSm3fu5kk5NiqqkKTtgyJPYe4ia8RdreH3g=;
        b=atrI5NrWsD9oXMBb15KZBZrS7a1xnF08gEM4MQypx2xvZNFsYet6/4O6hm6+td/0Hd
         RoLMY5Lq4v5biSkstmws6C5dH1qxtq4SrP4MEeLxdVIqVX+gcZRwp36QWj4G/gs/E8bO
         85lhGh7xRwjjN5R4kMEaP1YZPGGZ+lV+PvLqDS9HATFb1UZGOPOGsdiOqWy7mmjUKrdF
         GWLotbm/e/sy3EdmgMashADtReFvx3iEwGQt/C75/r0Ae/8ce8F+AodhQp8FUzC2f7FZ
         hOy6CyFUXZrdoga06IetKiuuFetmdG3rSyDZ3EXGZdwImO/WY31manQ0Ezq4/Wj76u03
         XoLw==
X-Forwarded-Encrypted: i=1; AHgh+Rp3yJfW4lJEugN+ZUp2KZ0Kqtuw1dKrHsySYvDUboGKCiGke5d6RS+MwoGGkljsvyz6WkDitfpcJwtKgXrPkA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/L5woXoVdjoMM2hcog++WWXxWO3uPxq9vYFPSgez6jeqMD82Y
	aSINzKlGxLdi6WAOTCOj9np6Um84oNDFpeX3DI1B1vGMkSR3mwJx7B0P
X-Gm-Gg: AR+sD10ZMAE1XpaiopS+bf7LtkLcXeQZlJkRs+tsGDChwSO5g6dLZ86H9qNQ1luNqk8
	9ivLSv3XGsNQ2cJV+GwJSws7PjcVV5eiHV8g2glftQeBABC9ASVCRpW9LYkrch93ouF75XZvon7
	AEPIdm8FysmyIdo9J50EdFeyUOquchjpkAdKkn9iFp8RKp3IKalOupecFt4DT1j2c8gDk8UKbKu
	nwkAaETwKUxKTxZBm36W4chvbgjB59jFqDX6eaYAw8JPbICv4a6KP6yiu1nuXYg/ybgX03M6nIR
	3KEkJ0wKP4aONS85HKuSoJZ6Wrt54dYNPszs8IC5TkaBjb8Gjv06jwGtAunZIHCfv52K6D/sMdb
	mUB1rB/iOX0XbDyWmNFn8G/lpkVEg7AHM4URAJTq0n0YYxe53Nd4qYe5wpb5u2ytQErYSklqKQG
	I/f7I5nD75sn6hwi8etlHMQONDzVjZg2m7DgCc393kkKY76UrfR3IpdmvDYzM3cntA91w2/wera
	ks3G+/XKNdrOH1oLlHRfUaEMiI5x57Fz3tzpDvwS+8FerV/HUuuvZ7vDXH9rlB7VmoQsLFNMAp0
	1JQCVINYHZ3dOlAl
X-Received: by 2002:a05:6a00:c81:b0:845:cdc1:a803 with SMTP id d2e1a72fcca58-84f2dfc4763mr13549981b3a.11.1785993783204;
        Wed, 05 Aug 2026 22:23:03 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f45bc9cffsm554279b3a.59.2026.08.05.22.22.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 22:23:02 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Mark Brown <broonie@kernel.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH 12/14] ASoC: rockchip: rockchip_sai: Return the original error code
Date: Thu,  6 Aug 2026 12:21:34 +0700
Message-ID: <20260806052136.21034-13-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260806052136.21034-1-phucduc.bui@gmail.com>
References: <20260806052136.21034-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_222303_875946_86A5581B 
X-CRM114-Status: GOOD (  12.20  )
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

Return the original error code directly and drop the redundant error
message since the called function already reports the failure.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rockchip_sai.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_sai.c b/sound/soc/rockchip/rockchip_sai.c
index 522b4f4f6a7a..1fdec12a0d4e 100644
--- a/sound/soc/rockchip/rockchip_sai.c
+++ b/sound/soc/rockchip/rockchip_sai.c
@@ -1434,8 +1434,7 @@ static int rockchip_sai_probe(struct platform_device *pdev)
 		ret = devm_request_irq(&pdev->dev, irq, rockchip_sai_isr,
 				       IRQF_SHARED, node->name, sai);
 		if (ret)
-			return dev_err_probe(&pdev->dev, ret,
-					     "Failed to request irq %d\n", irq);
+			return ret;
 	} else {
 		dev_dbg(&pdev->dev, "Asked for an IRQ but got %d\n", irq);
 	}
@@ -1458,7 +1457,7 @@ static int rockchip_sai_probe(struct platform_device *pdev)
 
 	ret = rockchip_sai_parse_paths(sai, node);
 	if (ret)
-		return dev_err_probe(&pdev->dev, ret, "Failed to parse paths\n");
+		return ret;
 
 	/*
 	 * From here on, all register accesses need to be wrapped in
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
