Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37655606C4B9
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 06:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2c2I0z1K;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=casper.20170209 header.b=SQrqQblK;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=yE0Ni0cD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FoLm+x0dXJwApsyd666LTvUM2K+epSMiILlwwZbrKdY=; b=2c2I0z1KB1eii7OVMY/wDPnVYO
	TSeVooDoyG1Oq9elup5bvRLgTLKx2GCJamh6nCgjFCdCaa1Bq/qpAv1umzQlnJylCMKhIBVEe/Uc0
	GpcyH3CJ31OMVZcX5ApupbkJERY1E/Npvz1P7vpvIEizqeUx54dgQVwGmBLDBKf0UZpzLUlqnBtwk
	7JjCN8HBHcVqASp6jE0ooTDpGxX7OMOFKpy7eljYSG7RBCSpc99es8ETB8qsai1OA56HjOUCmDnUU
	ReA1iIMnkqDgPPxKokEAKBTvtGn1vmORQhyrECVJLO8d5eapFIN6IxbF8Ys45hU8RMVGpsFExBY0Q
	AGnpSDMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSqEN-00000001FWY-2Cj5;
	Mon, 16 Nov 2026 06:30:19 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSqEL-00000001FS8-2kV8
	for linux-rockchip@bombadil.infradead.org;
	Mon, 16 Nov 2026 06:30:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=FraXL6TvEduJvf5AaveEnMU+FvEiUNO/y+vqECKLnSg=; b=SQrqQblKAyhrU079gzyTLlufSl
	1ydEryxtrH2692D8WuR4HRMu+jnbqp9WFswIj68mpIsNK6earwX/mkUg9Qkr867Apsqfl2pLws9HY
	AB+io5t6Q1OhBDjl+R7Qh5PQZY95IRdNxhhJnm0D23DUd6mdj+gotRUPE7s9nXSnpinrDdxkuYwe/
	jQZttSA/M/r5GxiQ1erYQMXImnCf9l2dGof7e2OtKJTQU0+WSJYpSXBxZ2XY5swpCpnLIAkbL2r+Z
	BsHkJRnckXM1lEOjMIFJTQhVILOFAZMX924bqIblIJw2QQ/M92X1f4Y/PA77BY6ne5O7wAI+eiv8t
	stiFbQOw==;
Received: from mail-oo1-xc34.google.com ([2607:f8b0:4864:20::c34])
	by casper.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSqEC-0000000CeKT-3OAG
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Nov 2026 06:30:16 +0000
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-716b58a4365so2119175eaf.3
        for <linux-rockchip@lists.infradead.org>; Sun, 15 Nov 2026 22:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794810606; x=1795415406; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FraXL6TvEduJvf5AaveEnMU+FvEiUNO/y+vqECKLnSg=;
        b=yE0Ni0cDr8FNr5C6NFTlHKLh0QccMUS6QlJSFy/xlQPHo0PXM/WmzVQUQ++EPeRw6L
         ePDRbqSgd810AIk0CCr/gGqYRv+o02VjflS0NCG00qIp48QLb7m2/HW04ttt65kH7Yn+
         5MQbrxSvyjeh5863PrxTbf6I+z/mJjzwp/vUYlNIta/iPrTygSM+OxT3YE+nB7GaP14b
         iPI0wr033m8RcPMfLqChra4Ao08dbFcAmlhDuZMUO5nffj9OfQWT/kqd6he/DKsDkvKV
         4V4WJNLuEHtz8mEOpubB5E3j2cA3ortxK30mARVLjsD25Peh9n+XldLxABkIwbO54AQB
         YwCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794810606; x=1795415406;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FraXL6TvEduJvf5AaveEnMU+FvEiUNO/y+vqECKLnSg=;
        b=po2eOTHZV0SXsFk+8d+QPdUv+Yluj+96GquBwdgwuF1+rWGBXhAc6bIN4E+fjleIf8
         VBiuVSC++Rl88ailaqKmgryY4nJcuNtjGHZCgAudmyhqDJXo2ruU5n0r7h7hPpaZ5jW4
         mXn84I+X/OB5yhL0frSFbploslfpQS6TpxjvZO2xW6jb2c2uS0Idi7UI+S+YOvlzFN6X
         S+2CPAPiJW+5G/ya0k/OqWstFpM2mfBABFHcYYahFJ2YWElOlUgw5B4yYH7VjuMvGcId
         V+nrC/m/n+FX2gJ6nb3kEZ+COVy/YsCyGz8KqrogO5bcqnMM10lQaBZe4YktOidLBlTd
         NLbw==
X-Forwarded-Encrypted: i=1; AL+hErGkgmsmao4imagKQLNotYeipY47EXrVqmm3QrOeFwvjotQSu5RcgiatESSfiv+Bu0b/rNv9iOTKfccvQkBUCg==@lists.infradead.org
X-Gm-Message-State: APuU4Z963RAae7wp8HHJoY2nyinAE8a6wnbQlhWtNiEdO15iMMOVpkxF
	6N7zJhLYNrJfBuvRImEfvw0ZDhT9mwV0wINN06CcPrKk6R23uS47MxVz
X-Gm-Gg: AYBFou06d1XwDSMnQMRPA76B+KZ3GVGm6VInKHTfBYvlRJ18b+s5P5+cP6pWGA3K2Ab
	zUK0sruAdGKM2dGETosnyADBGmUl5d7LvH/6ZfdIqKfTbymQM+8BWL3P9ErWzs67XQ0Zp9zYbTW
	oYSUxdJBodbBM8G7A6D6L/oE1CcMlwJc6SykkZn/DOSR09NjpYTgIw1siL7UBNNu4oQyw9hgLWI
	CRe8l0h6hiTYckM9OD7WHS+GWpeNAGZJAD1WkDuC5p6H1QQao1k8bIP5wHf1zHEfMo3fP5cdb5N
	DRHDtSdVip4NfCzbXMIQfWGD8oLZ4E+XQgm2p7xVSLQaqscs2AHAep1sGALGsY8+Oxt5XGYeI/B
	UUxRRhDWEmgZeXyMOCn5UWISEpTcCBWe0qJncHvwimMWSwf5ORLLBVunKAlEl8+2p9FOexJ6HJV
	ZKe4WRmXGzq9TlJLCyd7r5xdkuVLgY6vt5XMZcMmlh7d/chsh4I8OzrLYcYGJ0uEfozDXtULBhS
	bkWi8HxM/gXEhbAc9keZoCtzDKxK+Dcj5Rz26MYnevd7VpQkK+K4MgqmzHMhvodQy+QETn2s8zV
	uiTlU4XdPsugsIQg0dv/opfo6byQ2YQJW1tC10t4/3VGQRPmNbXpOK3MZoY2tWH+ydC7bpMhIqE
	isWF+PH2/JIBtF1fgJAbAlwRTk2g/YY4T5psn9WGRzry7I+05gskwYstk1VJVOnGQrk4xFMPYzg
	i9XDPrTDkBCK0Yd1xfQqCuYEeG/S/xRMw8vKzM21JmLqAxUP2vSyc=
X-Received: by 2002:a05:6820:339c:20b0:71a:f228:3222 with SMTP id 006d021491bc7-71af22833b7mr1068015eaf.77.1794810606340;
        Sun, 15 Nov 2026 22:30:06 -0800 (PST)
Received: from [127.0.1.1] (174-29-1-49.hlrn.qwest.net. [174.29.1.49])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-71ab42c41e9sm7994558eaf.6.2026.11.15.22.30.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Nov 2026 22:30:05 -0800 (PST)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Sun, 15 Nov 2026 23:29:32 -0700
Subject: [PATCH v5 17/58] mtd: rawnand: rockchip: retain chips across
 controller removal
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261115-submit-rawnand-retained-handle-lifetime-v1-v5-17-cbc49c5c5e74@gmail.com>
References: <20261115-submit-rawnand-retained-handle-lifetime-v1-v5-0-cbc49c5c5e74@gmail.com>
In-Reply-To: <20261115-submit-rawnand-retained-handle-lifetime-v1-v5-0-cbc49c5c5e74@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 James Hilliard <james.hilliard1@gmail.com>, 
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Yifeng Zhao <yifeng.zhao@rock-chips.com>
X-Mailer: b4 0.17-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_063010_526940_DFB2D715 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Keep chip metadata and controller storage alive for retained MTD
handles. Disconnect each chip after unregistering it and before
releasing transfer buffers or clocks. This also lets unregister
notifiers finish using those buffers before hardware teardown. Free chip
metadata on the final MTD put.

Run NAND cleanup during disconnection; the final core-owned put only
releases retained allocation and layout data.

Fixes: 058e0e847d54 ("mtd: rawnand: rockchip: NFC driver for RK3308, RK2928 and others")
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 drivers/mtd/nand/raw/rockchip-nand-controller.c | 41 +++++++++++++++++--------
 1 file changed, 28 insertions(+), 13 deletions(-)

diff --git a/drivers/mtd/nand/raw/rockchip-nand-controller.c b/drivers/mtd/nand/raw/rockchip-nand-controller.c
index 1e56e5e41f79..1616c9335e38 100644
--- a/drivers/mtd/nand/raw/rockchip-nand-controller.c
+++ b/drivers/mtd/nand/raw/rockchip-nand-controller.c
@@ -1134,8 +1134,7 @@ static int rk_nfc_nand_chip_init(struct device *dev, struct rk_nfc *nfc,
 		return -EINVAL;
 	}
 
-	rknand = devm_kzalloc(dev, struct_size(rknand, sels, nsels),
-			      GFP_KERNEL);
+	rknand = kzalloc(struct_size(rknand, sels, nsels), GFP_KERNEL);
 	if (!rknand)
 		return -ENOMEM;
 
@@ -1144,17 +1143,19 @@ static int rk_nfc_nand_chip_init(struct device *dev, struct rk_nfc *nfc,
 		ret = of_property_read_u32_index(np, "reg", i, &tmp);
 		if (ret) {
 			dev_err(dev, "reg property failure : %d\n", ret);
-			return ret;
+			goto free_chip;
 		}
 
 		if (tmp >= NFC_MAX_NSELS) {
 			dev_err(dev, "invalid CS: %u\n", tmp);
-			return -EINVAL;
+			ret = -EINVAL;
+			goto free_chip;
 		}
 
 		if (test_and_set_bit(tmp, &nfc->assigned_cs)) {
 			dev_err(dev, "CS %u already assigned\n", tmp);
-			return -EINVAL;
+			ret = -EINVAL;
+			goto free_chip;
 		}
 
 		rknand->sels[i] = tmp;
@@ -1174,19 +1175,20 @@ static int rk_nfc_nand_chip_init(struct device *dev, struct rk_nfc *nfc,
 	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 
 	mtd = nand_to_mtd(chip);
-	mtd->owner = THIS_MODULE;
+
 	mtd->parent_dev = dev;
 
 	if (!mtd->name) {
 		dev_err(nfc->dev, "NAND label property is mandatory\n");
-		return -EINVAL;
+		ret = -EINVAL;
+		goto free_chip;
 	}
 
 	mtd_set_ooblayout(mtd, &rk_nfc_ooblayout_ops);
 	rk_nfc_hw_init(nfc);
 	ret = nand_scan(chip, nsels);
 	if (ret)
-		return ret;
+		goto free_chip;
 
 	if (chip->options & NAND_IS_BOOT_MEDIUM) {
 		ret = of_property_read_u32(np, "rockchip,boot-blks", &tmp);
@@ -1197,16 +1199,26 @@ static int rk_nfc_nand_chip_init(struct device *dev, struct rk_nfc *nfc,
 		rknand->boot_ecc = ret ? chip->ecc.strength : tmp;
 	}
 
+	ret = nand_set_lifetime(chip, container_of(chip, struct rk_nfc_nand_chip, chip));
+	if (ret) {
+		nand_cleanup(chip);
+		goto free_chip;
+	}
 	ret = mtd_device_register(mtd, NULL, 0);
 	if (ret) {
 		dev_err(dev, "MTD parse partition error\n");
-		nand_cleanup(chip);
+		nand_disconnect(chip);
+		mtd_put_master(mtd);
 		return ret;
 	}
 
 	list_add_tail(&rknand->node, &nfc->chips);
 
 	return 0;
+
+free_chip:
+	kfree(rknand);
+	return ret;
 }
 
 static void rk_nfc_chips_cleanup(struct rk_nfc *nfc)
@@ -1219,8 +1231,9 @@ static void rk_nfc_chips_cleanup(struct rk_nfc *nfc)
 		chip = &rknand->chip;
 		ret = mtd_device_unregister(nand_to_mtd(chip));
 		WARN_ON(ret);
-		nand_cleanup(chip);
+		nand_disconnect(chip);
 		list_del(&rknand->node);
+		mtd_put_master(nand_to_mtd(chip));
 	}
 }
 
@@ -1381,11 +1394,13 @@ static int rk_nfc_probe(struct platform_device *pdev)
 	struct rk_nfc *nfc;
 	int ret, irq;
 
-	nfc = devm_kzalloc(dev, sizeof(*nfc), GFP_KERNEL);
+	nfc = kzalloc_obj(*nfc);
 	if (!nfc)
 		return -ENOMEM;
 
-	nand_controller_init(&nfc->controller);
+	ret = devm_nand_controller_init(dev, &nfc->controller, nfc);
+	if (ret)
+		return ret;
 	INIT_LIST_HEAD(&nfc->chips);
 	nfc->controller.ops = &rk_nfc_controller_ops;
 
@@ -1449,9 +1464,9 @@ static void rk_nfc_remove(struct platform_device *pdev)
 {
 	struct rk_nfc *nfc = platform_get_drvdata(pdev);
 
+	rk_nfc_chips_cleanup(nfc);
 	kfree(nfc->page_buf);
 	kfree(nfc->oob_buf);
-	rk_nfc_chips_cleanup(nfc);
 	rk_nfc_disable_clks(nfc);
 }
 

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
