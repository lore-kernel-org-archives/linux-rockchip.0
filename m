Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 661E11048925
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Feb 2026 00:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zw6+Wvp2Bq202WZP0rJviutF8tgfZCQHXc5B555buD0=; b=xqEkKIrppK3Syp
	jkiYoNuHFbkje8ALbm/4bMrItnlaSgMnVuJyiht+GdP8vndOeGZOSQ3t1dMl4Br2n1B0ifwv3Fak8
	15l1SSXUVx8z0VUhTrBPrwu82w2HOlTdnpSFkEA8s1jM2m30v6b/56aPaW9rzoKpxJcnRV2zI7msV
	uLr3DJNIuq5gaOl3i8Q1hqW/LV8z20h2B0Ymj7zZ5ZNB0Dk8xzeQ7vFWPjyjntaj6RMk6SeTV49KY
	FnGqR/0SWPlfgjWGS2hiWMUD9Jd61tYmT5TL0NGu8EQD4KFlYDUtWsIri9cfVFa/Yz4pOlX3hDMY6
	L70KA4gFSHRDMR6HwQSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw8bz-00000009LhH-0j09;
	Sat, 28 Feb 2026 00:55:15 +0000
Received: from mail-vk1-xa29.google.com ([2607:f8b0:4864:20::a29])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw8bv-00000009Ldt-3Adf
	for linux-rockchip@lists.infradead.org;
	Sat, 28 Feb 2026 00:55:14 +0000
Received: by mail-vk1-xa29.google.com with SMTP id 71dfb90a1353d-56a8a20e6e6so1194222e0c.0
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Feb 2026 16:55:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772240110; x=1772844910; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tR8qs9++9EnY6kiO3ZkloT5P8dh9BxfptB2pOEQ7BLA=;
        b=DL//HyC27ixMDPniw0WNwdwxqXcjhMTbGyTeNwlLzcBK1MUC4qZw/O2Y6eQhaWuzkg
         RJj/0HVeUyPrZlyBYb5yUUN/lxOvbZXGPeAA2RW+9gBICV4pKNvX14Sjl5IIBISUQQHo
         rNVuH7kMlFfK1nTwOaBzsXUDHJ7SkkLukqOtaBHHlcLwt1ZNz0bTMUglSsFKtnqoEfRm
         lffuwBxz9UZaHZjR/nO0Z6Ok7ivWXvcPH4QGNR4IfZg0rU5YmWIR4M8paBUS+CIp5v/m
         VTOouXh8zDmfxzmUyghHrmDCRFHhMQ2R33slTsGKruEhB4NLJZ1lPqeld107HjNQiYpG
         ka5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772240110; x=1772844910;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tR8qs9++9EnY6kiO3ZkloT5P8dh9BxfptB2pOEQ7BLA=;
        b=BMuqFarlpdTUcz9kQUo0rAikUi+od2obCdZW3LXkZxk3b/0WP/kqmZQw9rzUUxSKou
         U7tRWw86tESpxExocZlX/9COovTR8HpRTEKoN43H+6KrAHYzpK+jIdxK0H12/zjZUVoi
         a8v6C2wSyDOTsb2Z7Xa0cJWnX/YGltUMA55vJ9b7IJuC8HHAFhbDU8Yy3c5ygfovVStf
         gHY3SLPStlXQkI18Hrru0fwV763neolMTZ7kgyP4n0THteXieaDQLMpmab8MF3y65KpI
         XLidCYWGJ4zhPYWxsblRh7cKZrqs8Cmp3VPt6RN/nXcHX/SZ24M8qt7lAbrczSyD+VcN
         oS0w==
X-Gm-Message-State: AOJu0Ywx+lheVRqXQPdEgjvookAR+A5rmLDg/stQHXHS4VD3EKCOVtjB
	zhIhZlhh9Ivpfp4s/eY7532F/kyLSlj/MZ1Nd+42zAuq8UmWi8cHBMRY
X-Gm-Gg: ATEYQzzYcmgA2f6LS2Ij8hc1Qux9Lwsuo6r/E6+tJeLfroxLoHIZD+ILjvItxxDGc55
	imdsNsXM2Gh/TMpyDptqBlixG9XypmVb7T4/TFDdk6cLox64oO83HejLNH0eTkT0AnnREEPy4La
	Le06nqrekMT6HWz0jHt77srKOVWKJLuUjnjq1n4Cjs7R1mvvdQfNm8noZRwPy3/0TQBHKJ/7tvJ
	d3/vZV0CnFhRNMLXVjDffOzBdvxeZ8zYkb4ESqc2nIJQcRXx3b+yakYnt0A54dNc9oTNyPqPvQC
	uZWrd+Q5nK3XIX8RATab0BGwYSYlGuR1iMKah+sLBHOSKAxwFMoOXgZGcskRM1y7LpGCjjoUD91
	cPdcE3iYnyqvz6EPC7wRqMbTNSC9F+40kL6hiJwUWO+eGL/N9L5rV1QgAvaQiRfu3BI47Pt67pP
	1CmSPcnFl5ZQ==
X-Received: by 2002:a05:6122:319c:b0:56a:995d:8a55 with SMTP id 71dfb90a1353d-56aa0aafaa0mr2391700e0c.12.1772240110383;
        Fri, 27 Feb 2026 16:55:10 -0800 (PST)
Received: from geday ([2804:7f2:800b:feb1::dead:c001])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91bb4fbesm8366399e0c.5.2026.02.27.16.55.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 16:55:09 -0800 (PST)
Date: Fri, 27 Feb 2026 21:55:03 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Geraldo Nascimento <geraldogabriel@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/4] PCI: rockchip-ep: do not attempt 5.0 GT/s retraining
Message-ID: <3391ff1386aafbee1754ca114d77961f23e2c09c.1772239598.git.geraldogabriel@gmail.com>
References: <cover.1772239598.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1772239598.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_165511_866655_1385DD51 
X-CRM114-Status: GOOD (  13.97  )
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

Drop the 5.0 GT/s Link Speed retraining code block from Rockchip PCIe
EP driver. The reason is that Shawn Lin from Rockchip has reiterated
that there may be danger of "catastrophic failure" in using their PCIe
with 5.0 GT/s speeds.

While Rockchip has done so informally without issuing a proper errata,
and the particulars are thus unknown, this may cause data loss or
worse.

This change is corroborated by RK3399 official datasheet [1], which
states maximum link speed for this platform is 2.5 GT/s.

[1] https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf

Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
Cc: stable@vger.kernel.org
Reported-by: Dragan Simic <dsimic@manjaro.org>
Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 799461335762..9ebc227a1ef8 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -553,19 +553,6 @@ static void rockchip_pcie_ep_link_training(struct work_struct *work)
 	if (ret)
 		goto again;
 
-	/*
-	 * Check the current speed: if gen2 speed was requested and we are not
-	 * at gen2 speed yet, retrain again for gen2.
-	 */
-	val = rockchip_pcie_read(rockchip, PCIE_CORE_CTRL);
-	if (!PCIE_LINK_IS_GEN2(val) && rockchip->link_gen == 2) {
-		/* Enable retrain for gen2 */
-		rockchip_pcie_ep_retrain_link(rockchip);
-		readl_poll_timeout(rockchip->apb_base + PCIE_CORE_CTRL,
-				   val, PCIE_LINK_IS_GEN2(val), 50,
-				   LINK_TRAIN_TIMEOUT);
-	}
-
 	/* Check again that the link is up */
 	if (!rockchip_pcie_ep_link_up(rockchip))
 		goto again;
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
