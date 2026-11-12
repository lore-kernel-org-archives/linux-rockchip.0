Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D90C607021B
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 01:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ymNdtinT;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=DWdBIx47
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FoLm+x0dXJwApsyd666LTvUM2K+epSMiILlwwZbrKdY=; b=ymNdtinTb8D19cOJ5sxg0QpSYs
	riwNFXVmJf0I+sZSO6Go+uJOZDIVkR1zgxzhDS26lmho2DlZZw0vr2mpV7+q0nB1fvep4CRXV3rci
	CHuXYDFoXPtuxTTt+ltLqYe5tbZLSD1UP3vpoyTg3tBH7Y3yEDO1ez0jGmwSg53LuP5lEOsuwHRhm
	2c8rMoVkfuFXn+NFvoNEgtf//Dw1+xndAENhcxAkBH8kx4knLuSfuUSFrrg0YX8q9Z4TyhCGfrWAk
	9pllPYOBY+2NcDkBipLHRLKssqN3iR6eaqopNopXhrrgLkxF30FGXMNdmKoU+Jkl0gPPJL4+p40jI
	dw3IqcYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRJcm-00000008MFL-41yA;
	Thu, 12 Nov 2026 01:29:13 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRJcP-00000008LSx-0cll
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Nov 2026 01:28:56 +0000
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-53ec92375d2so1479109b6e.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Nov 2026 17:28:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794446928; x=1795051728; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FraXL6TvEduJvf5AaveEnMU+FvEiUNO/y+vqECKLnSg=;
        b=DWdBIx47OiBwmOY4OLXEF+Urr20hO2V2yN7exjIXna8jA8XtkM41mAXFSfcQdjSlJn
         JIh8YntRXXHSqKAsT5a5qEyzrdXy+6gZmBxejiQ9N/lWV/CdLPAfC0czqv9sKzH8uM/q
         HIoWwWFZ74mjPmSshwDbBW+zOahaoe0zKN7UKFwZ6BqVdQQBtfe5yHxrB4FsxwjJq1lU
         o+h9LdFilUiqtQvyXxrMoybeEttcV0GFVClGnEozg4smh5EGucYzsFeZM4rSPNPxBmCk
         Tp6hlG5iTDv7LX16Jvopml8lpGLfvdU05JZbGwa0kXptutoBSA8c2qluEeuT8x/kJIlM
         Hhlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794446928; x=1795051728;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FraXL6TvEduJvf5AaveEnMU+FvEiUNO/y+vqECKLnSg=;
        b=M6ODua0wpYjfcR3U5ffiVFcCip5MWibynR1vrRDsf0H8xUVn0MDQNRAl8FD9kjnErP
         aFBwVP7c+xSoBtYCW7WUFOk+nsQkP4g3E7eDRyIWofnMKYOdw1laTjjcKaDH3LG4WTHG
         OOJolSoRoAwuTDPp1l9iXBidjTyeFaZTRVIg9UUHKxMVIj3FepTElJK6QNPqyDWwEroT
         J65TeWApJWXAJYZs/JJs8yHLyEWrhh0uBFAarDxP5nuP0SDY2rbu70HzLrp2gI7u9mzQ
         IBXEaCERgthx4sL1lZ0n033311bKVN+zAuEKI+W1poKI/FET76l4fRjzeRwW05UFM1dT
         RlIw==
X-Forwarded-Encrypted: i=1; AL+hErH8ZVIepCihnhdc7WDKnr4TYZc7XyJQ8SFCRgHKjALe7Ywi6pOVWOyArSFB0m5ckq8pDjyc3hiMZvF589vFjQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z/RduP+obmkm9fCc6WiC2J4P8TJaK1tgwL42wTwJDAvN7JaRnTP
	t2INd8fU3NHgfqW6vwybpLXGzszNH07sYG0H/54Rdsd79D2rR4J1GCdy
X-Gm-Gg: AYBFou23NV+ln2RE3uDNAy9yXYPb9CrmZlsFbyVUqeq010pIEzLMr2GD06dY57o3Ckc
	lGrolG7SJEMGVzMKgwWpmEj8Owq+Bqz1Rnkx41riuYuqbgrdr4AnSYW1nfTSzzoEZK89mqm0+WA
	pqrIAlbN/ORT+AC01HzBUVosrfgXQUsPXS28fEJrzIUGyf+NwxkXwxxeqzHqVT3zDukfdUrtJXp
	SHsAQDEqYLBQ0PvHOw2FSrudiNyOSnWDc8PUqhvinOqPjtTPuGY0qWrifMFUNZZ5o1OB2S70vNC
	oTMJ8qQ6omEQYwmU+byzGxHMWhFm9bUN9LYA42XOlb6H3eL5WfCAkNpgxX6busppE2L6EOwj/hO
	OG5wNPKOdzQAu8eCZy9eFIUzGhiQTdaXAtn757a9L98SBhuI9eMITbglcpIviGfH2WJMobipgrD
	pKKDST3bMstT33DowCtuS3U8uxqTw/ddnAFhxxdA25WqMet2pJ5c8jpmchlF8eNAH0uC69ZbMk3
	rVNIP0pUQ2FI55kAmdzGSl1y/7miVH4PoJGdjz1nYOhyNffWbW8pyL4/t18QwBRsiPPLDdwE+1p
	6/iOXEVvG44nGspq2WrlV+n2K9KgdvP4Bu9Huye8H23UyzDnxrObBQ9ROK3g+yszDXz2QcCUJNS
	XJ+T0Q0cYq7CL9XFYS9WZikqd8BwVnPpc9HF1x1Wvu/88I6yCjcNrTlkS8QrVShuZM16UA8sJXu
	spF985nGtj/yYnv7I8JQNhxzCSt/LzAR1lukq3qY1OVzzHNRnKEozPf44QnSL9VEvBh4V/LKy1u
	Q==
X-Received: by 2002:a05:6808:1924:b0:4d6:92b3:5c8d with SMTP id 5614622812f47-56b98d27ee0mr4382489b6e.67.1794446927783;
        Wed, 11 Nov 2026 17:28:47 -0800 (PST)
Received: from [127.0.1.1] (174-29-1-49.hlrn.qwest.net. [174.29.1.49])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-56905738049sm6823481b6e.10.2026.11.11.17.28.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2026 17:28:47 -0800 (PST)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Wed, 11 Nov 2026 18:27:56 -0700
Subject: [PATCH v3 17/58] mtd: rawnand: rockchip: retain chips across
 controller removal
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261111-submit-rawnand-retained-handle-lifetime-v1-v3-17-ce537999741d@gmail.com>
References: <20261111-submit-rawnand-retained-handle-lifetime-v1-v3-0-ce537999741d@gmail.com>
In-Reply-To: <20261111-submit-rawnand-retained-handle-lifetime-v1-v3-0-ce537999741d@gmail.com>
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
X-CRM114-CacheID: sfid-20261111_172849_596529_7A2DF34D 
X-CRM114-Status: GOOD (  15.15  )
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
