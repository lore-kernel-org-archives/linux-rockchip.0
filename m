Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20ABEC71134
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jun 2025 22:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OSNzucdBKftkrUX9Pnxg/I413wEpiZ3d9BJQla78Cg0=; b=yYBj78oPR+cm44
	VLpSD07rG1xU5GdBwuA8Qz6ul/m2FQ9N2rtl6aw/JTHNWyKbnB7eLbMkorAEef8WcZOOdw5iMXlGg
	7XFIQczHDysJqBm27Lga7r7UfolTX/zLqqWNZhoaVxUeOsNRT2GibC4scQgM65iBg1KyVN1YXLlDQ
	ox+rhh3fWt4HmCtz5g2udRNagPp4urLJkq5GZM+zpaVZoXjtk/blj6NPItdvbyKqjFpcNK45EfaaE
	4DAHxC0XO3vJIX8Xs7W7OBsYPHzN19JAQ+bv3/vjzWD6cujCq8HJBj69JjeTchqj/PA40VqUABMTo
	0BYXK6jL7/wPeJ4l4zYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP7lt-00000008Fuv-3NTj;
	Tue, 10 Jun 2025 22:48:45 +0000
Received: from mail-vk1-xa35.google.com ([2607:f8b0:4864:20::a35])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP4Hv-00000007sWg-0EpF;
	Tue, 10 Jun 2025 19:05:36 +0000
Received: by mail-vk1-xa35.google.com with SMTP id 71dfb90a1353d-52d9a275c27so4000700e0c.0;
        Tue, 10 Jun 2025 12:05:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749582334; x=1750187134; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=soqipNezQwywsZZXzZxEBkeNsem3MKqc8B9xNxUP6fI=;
        b=T7tgT+LRpTMcf6wb39dFO7sXkfOGq+f3DQIL0FMrtWYCAxh1SW2j7DXUviL1iDdE7y
         cSkgu8sTWWrsp1n+lg/qHmc9m7S2AdsNkc3VODkTxF7ORlu//fG4xn4Jx//GRGC7PBZW
         B1zmcLtzgoi1VPDVzJu3sbTzj1yOM3aXJx7reNU8xYHvbLAsjjgTw7/oZ7B9b1aYXGs1
         gNNM2f1kQxyiQbp/6FbdesC7plTjDfQCpXETsdVJqOxx25Lb/yqF8TTUwjd/9WjRwRJl
         h0we1e/CGjTezFedqDFYkRU4QjBPr7ayKIK8Oe5hAUf7omKtu9BlymOHl1W+KACgSPU4
         ooqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749582334; x=1750187134;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=soqipNezQwywsZZXzZxEBkeNsem3MKqc8B9xNxUP6fI=;
        b=bFtDslIdLwqO6PFkw0H2GCjiSgQEBNhChsvcraqUtz1zZoxCcyM8LbFe1Ev0WNkNe/
         c87dWby+VABohDIVOn2rLOoO9chAFQJ+MiR5cOqIq5QNSnJbRlVh/tP03BTHaOgkkuMX
         uYcyhRtkUIItiZF7Aujg5jKPyLr3m7PuQe9rJbulshqMnPTRuNqOP/aYh3EyMLBj0y9H
         MdawWAJ/NPEReDDKLCRVoI1MGtyOi5HMZYMTiP6dfz9I/YQ+1ya0YSdX9cdJ2dT35ddG
         IA4SwJvBr1oLdtiLPiSfsZkRtYBxVHDRjzKT1/o7iGxMEi9a5cZbHhSQi/IlOpnOFMFw
         BIQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXs130q/kSqwdHxlEf4tJ0YZSzGAvp1b3XTJMDAP9GQ8O1iTblwKjUwEifSD2IDdT+YDGK6GJL5iSjjd5rqwVZG@lists.infradead.org
X-Gm-Message-State: AOJu0YyOu4HgpiXOg13UjhPBcQ7T0IdFCcdJUuWCucb2YUT3UvvU3SFb
	Yc/2AkBmDtE0MtMQNGgoeN7jpB7VYpezQslN6QYplaOLHm53Q70iShfsqep2XEq5
X-Gm-Gg: ASbGncufNoYv23wJlfQxiSUxuusWtjY/n+YAGPMZ3O1SIzR+zhaebSDjV75Gg7aYyBx
	8hHlrsLc01d4xyL/PRREl/L/N+X8Xw2F4Io/8J85jTBwgMWC2gYJQNANHTi8RkaXNthIIoHFnEz
	gGkOWnUiIWuhoLzaBo+4LnwnbXpso2e4GV448O9JXthdzDXFEr0fS/nB72YE6rQi7ZmOTVZXOCk
	ehmcv/OacSlzAuTAb6cK0p+CqKzfwuuGc11vTXK6ul8MmwBMeP+ZUyirdOZZ6CToqK/Ckk2SkX4
	W3m56gb5B0jlTMaGMYmB7jPl9Ur6LMXjH/CCixRUfAkxLv/UZ9SmChjCvFj6
X-Google-Smtp-Source: AGHT+IEcI/mcsGgLUh+d/2//VapgDjFnlJXzSCse2dstT8suxfebV9YntzheIBzZcHTa8k/XMYDp4A==
X-Received: by 2002:a05:6122:1826:b0:530:5308:42ec with SMTP id 71dfb90a1353d-53122259816mr651950e0c.8.1749582333918;
        Tue, 10 Jun 2025 12:05:33 -0700 (PDT)
Received: from geday ([2804:7f2:800b:5a56::dead:c001])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-531224b91aesm192109e0c.8.2025.06.10.12.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 12:05:33 -0700 (PDT)
Date: Tue, 10 Jun 2025 16:05:28 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Hugh Cole-Baker <sigmaris@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH v3 1/3] PCI: rockchip-host: reorder
 rockchip_pcie_set_vpcie()
Message-ID: <55166f9fb72229f9cfd40b5334083b8837548a18.1749582046.git.geraldogabriel@gmail.com>
References: <cover.1749582046.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1749582046.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_120535_102686_070196A4 
X-CRM114-Status: GOOD (  14.29  )
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

rockchip_pcie_set_vpcie() is needed for re-enabling power regulators
after disabling them, if link training fails. This permits quirky
endpoint devices to complete link training, enumerate sucessfully
on the PCI bus and generally work with RK3399 PCIe.

Reorder the function - no functional change intended.

Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 94 ++++++++++-----------
 1 file changed, 47 insertions(+), 47 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index b9e7a8710cf0..2a1071cd3241 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -284,6 +284,53 @@ static void rockchip_pcie_set_power_limit(struct rockchip_pcie *rockchip)
 	rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_DCR);
 }
 
+static int rockchip_pcie_set_vpcie(struct rockchip_pcie *rockchip)
+{
+	struct device *dev = rockchip->dev;
+	int err;
+
+	if (!IS_ERR(rockchip->vpcie12v)) {
+		err = regulator_enable(rockchip->vpcie12v);
+		if (err) {
+			dev_err(dev, "fail to enable vpcie12v regulator\n");
+			goto err_out;
+		}
+	}
+
+	if (!IS_ERR(rockchip->vpcie3v3)) {
+		err = regulator_enable(rockchip->vpcie3v3);
+		if (err) {
+			dev_err(dev, "fail to enable vpcie3v3 regulator\n");
+			goto err_disable_12v;
+		}
+	}
+
+	err = regulator_enable(rockchip->vpcie1v8);
+	if (err) {
+		dev_err(dev, "fail to enable vpcie1v8 regulator\n");
+		goto err_disable_3v3;
+	}
+
+	err = regulator_enable(rockchip->vpcie0v9);
+	if (err) {
+		dev_err(dev, "fail to enable vpcie0v9 regulator\n");
+		goto err_disable_1v8;
+	}
+
+	return 0;
+
+err_disable_1v8:
+	regulator_disable(rockchip->vpcie1v8);
+err_disable_3v3:
+	if (!IS_ERR(rockchip->vpcie3v3))
+		regulator_disable(rockchip->vpcie3v3);
+err_disable_12v:
+	if (!IS_ERR(rockchip->vpcie12v))
+		regulator_disable(rockchip->vpcie12v);
+err_out:
+	return err;
+}
+
 /**
  * rockchip_pcie_host_init_port - Initialize hardware
  * @rockchip: PCIe port information
@@ -613,53 +660,6 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
 	return 0;
 }
 
-static int rockchip_pcie_set_vpcie(struct rockchip_pcie *rockchip)
-{
-	struct device *dev = rockchip->dev;
-	int err;
-
-	if (!IS_ERR(rockchip->vpcie12v)) {
-		err = regulator_enable(rockchip->vpcie12v);
-		if (err) {
-			dev_err(dev, "fail to enable vpcie12v regulator\n");
-			goto err_out;
-		}
-	}
-
-	if (!IS_ERR(rockchip->vpcie3v3)) {
-		err = regulator_enable(rockchip->vpcie3v3);
-		if (err) {
-			dev_err(dev, "fail to enable vpcie3v3 regulator\n");
-			goto err_disable_12v;
-		}
-	}
-
-	err = regulator_enable(rockchip->vpcie1v8);
-	if (err) {
-		dev_err(dev, "fail to enable vpcie1v8 regulator\n");
-		goto err_disable_3v3;
-	}
-
-	err = regulator_enable(rockchip->vpcie0v9);
-	if (err) {
-		dev_err(dev, "fail to enable vpcie0v9 regulator\n");
-		goto err_disable_1v8;
-	}
-
-	return 0;
-
-err_disable_1v8:
-	regulator_disable(rockchip->vpcie1v8);
-err_disable_3v3:
-	if (!IS_ERR(rockchip->vpcie3v3))
-		regulator_disable(rockchip->vpcie3v3);
-err_disable_12v:
-	if (!IS_ERR(rockchip->vpcie12v))
-		regulator_disable(rockchip->vpcie12v);
-err_out:
-	return err;
-}
-
 static void rockchip_pcie_enable_interrupts(struct rockchip_pcie *rockchip)
 {
 	rockchip_pcie_write(rockchip, (PCIE_CLIENT_INT_CLI << 16) &
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
