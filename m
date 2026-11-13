Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0D6860A2627
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 18:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=c8zs8j3g;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=zDrfaLyM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FoLm+x0dXJwApsyd666LTvUM2K+epSMiILlwwZbrKdY=; b=c8zs8j3gSW0Dv7Lq5ury2kRvBc
	hcX4bLNczU5vRVTI2PQpCLgHDfffqy6QNWV0zPqQvm7g1BHIKIytSGFAYQNqs+0QQYsH/hsbqZMMP
	BS7xxytL4YmkYrwsIOFKsN09/sfTQStEWQDSzz+18F1QJIIgUoy3D4Fi8wySQq0TWycwT+pl+COI1
	umUmsW+rFm8YxNEpmFz5V1dTU/K7PW/0GEHidftsk+4L8fPjR5XwtpYIEQo4K51/kwWCVE16UEGP3
	DIbDCv25ydpe7acCsFIq8xU46YbIguRjZIyGrPIbuv6QTiZQWfzSq6bo60MEHx+CdOyYgcGeCo5kz
	yflJ7Qww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRvoU-0000000DrGW-37kS;
	Fri, 13 Nov 2026 18:15:50 +0000
Received: from mail-oo1-xc2e.google.com ([2607:f8b0:4864:20::c2e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRvoH-0000000Dqrn-3wc7
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 18:15:41 +0000
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-71acdd32a53so54073eaf.3
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 10:15:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794593736; x=1795198536; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FraXL6TvEduJvf5AaveEnMU+FvEiUNO/y+vqECKLnSg=;
        b=zDrfaLyMrae/ieMGfeLsXKI9wmPzNf2+LZ0XYwVnHzwZ0Knf5XSMu0JFtwRw1w2S93
         Fd0wwMQDAHD2Z3ciqGVXWTEzHC6NFoVI0MYspweqm1dm6UK4740BJshOaj10IDDxoQ8i
         P8L99bOti0weYu8+/DSvyQ0b1Ow9g7qGGtFcf4l1ADH6IcK3ojsnjKpQKUKkIKzn+nQD
         AET+Siq77MSCo1IIqf/UyPmXBGGKok91mpWN5HG/iZQQl4MlQsa3yjsgF9514cGxD5kI
         ISogDXQ1Gr04ZBxziNpF2lp2uqa7WGBtUhcBDdiqztyKm5CC5kmSSP1Qp4ItaT9JdzP4
         ebSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794593736; x=1795198536;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FraXL6TvEduJvf5AaveEnMU+FvEiUNO/y+vqECKLnSg=;
        b=nTY5vvLD0FBuFSNw9TZx4sH8x7OfKlIt9sUn/UsNGfvP2QiteYe1ODOt1XetHMgoTQ
         kSNyWrHha1pqaNrx2UoR1ySKW2TepbQ4vzgZxNCYo1H3GeZaUx4srqMZ03CBoNAbO0qm
         F48vI7nXd6XjnQpzsWvKE60gal8u83pIlpVwdCSMvgINq3ESgWu3i1xTFwwkOHJGDo+P
         ZQpbPpKZo1To4fu3nFsVmgJBFYxiHSeacDvXyOISw/Of/OfdMnot9O0gntCKHLYhKiRY
         OJl2xWKs8GMlCsXCtNgI5Z4AXwkIM2Bfbug5PrXqTdmNByNGZmtcsDGCaYISk3nwmcOn
         hwwg==
X-Forwarded-Encrypted: i=1; AL+hErGCQycgJ91W3ByNFZAVBAWE9bGiIy18VgV7aYYbrgize8ll+lzG0kMjJZvIf7KD9TQLp/NOGgknlAvNtun4Zw==@lists.infradead.org
X-Gm-Message-State: APuU4Z+U1dfGstmn5wwgS3r4bzqK1aSJoM89fnxKN0giZSqqAUSMAaDp
	fJgNUuEV8A9UAnRFZINUk18m+n4HGfpQdHnKKQGElwYr3Q/472Ha9EIl
X-Gm-Gg: AYBFou195WaZhihS1hrfv67BbNDd3VS7Sp7axQBXRPaRz3OYCjcSIGjEwLzDYozltqx
	PQM1/uTypellFsQE21P7q+uWdAumQ/ICPXdLNaR4Mes7vRByKiQcI8kAYQXBusD5M9Q8Oi4RI4E
	7cShopKP8kULFs8BcnHu8/JvfZpQ9TF4F8UH/zv+g8xeF3Im6lwKx0mA4oatYmrac2TGuYc25Ua
	9TKV7n3OmXyAD5DXhNnuiJh6QIrW4ebZdJlLHdoSuaxZAks4zIwDqzoOo1U5+FCt7pyfAub7QL8
	LNx6uFwmVk+lr9buA4rK1nXo3VqIWqscXqjYFMbi2rlIJ9X9ns47bqMYxYaC3EhUqS7rCqBV+lv
	h6u0BRO7buGhQ1B725bjMxAi2mPTpB2cp9e/3CGoCKhjFsVgPDvVHwI0BOMScWHmuSDJTWMSP7U
	eP+QUQmh/MfLXQDfG9hNEEWt6+cHonzagzaAkT846YIXI+siLB8oHrshGmoU+ogqOGWYHkx7qM3
	rd5qQaXz3AHltLpXtAMMKcX90SvVxa5QnlMW0xp69pz4ZKhtN5Acj+iK13/fOlviBQUVz3ulkll
	LppD6wP73cKzf0fKT4OGkBE2rHHwwk+4fq6ze/is0QWxGNYvaocAGvJt2pC8Qq292e2TCl9h54C
	c0AozM/ay9AlWSG01woyopuPouSfurCsanB5RKcJQUo62elA/Y5xUIbWpkyQVd7N+IUoZlziqfy
	Os+5VENf/TnTXNtzB+w5KLKiXM6yjjnS08GovulGNBZ9XO/p2UCBI=
X-Received: by 2002:a05:6820:55c9:20b0:70b:8307:9bd9 with SMTP id 006d021491bc7-71ab518ad5fmr1331750eaf.78.1794593736452;
        Fri, 13 Nov 2026 10:15:36 -0800 (PST)
Received: from [127.0.1.1] (174-29-1-49.hlrn.qwest.net. [174.29.1.49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-8628817d979sm3253414a34.22.2026.11.13.10.15.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 10:15:35 -0800 (PST)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Fri, 13 Nov 2026 11:14:33 -0700
Subject: [PATCH v4 17/58] mtd: rawnand: rockchip: retain chips across
 controller removal
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261113-submit-rawnand-retained-handle-lifetime-v1-v4-17-556b1d7c6221@gmail.com>
References: <20261113-submit-rawnand-retained-handle-lifetime-v1-v4-0-556b1d7c6221@gmail.com>
In-Reply-To: <20261113-submit-rawnand-retained-handle-lifetime-v1-v4-0-556b1d7c6221@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 James Hilliard <james.hilliard1@gmail.com>, 
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Yifeng Zhao <yifeng.zhao@rock-chips.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_101538_039317_B0284464 
X-CRM114-Status: GOOD (  14.85  )
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
