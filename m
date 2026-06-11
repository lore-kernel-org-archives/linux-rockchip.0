Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99F49CD8C9D
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 20:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B50WiFfrVD6PNFeGuzLbs3vlU9fVt8xnDp592NfA0Uo=; b=mxYHiEH0lbSbrM
	+XrrPhaq57Pt/w7PGpVZh7dvdlTvoF6AcUI4DTnunncjSTOXb1wKFti/yQ92Mxs9j2hd7TRQO//uF
	JzVYMOw6fna+xeK4UOK46a2Qr6S1DFdAFpeFfJoxMqOwLPk6ufKHIiQfRnZr5CV3dWSP0iGm0Eq1k
	ehREt8IP4BuohbXmEFbFkygcOu6+z0V4Iw77wa6VFVZxJcyQvV6ioTLc0ZyCeIX6HDZ/A+roPmVwN
	IMF5G7y68RUH8DCW5pb8kTGiggP1r/Y23BpfU5ZoE8M8WDCCv67S9Eh+BjYn+3okMiseFllrOZUgD
	KL6GGQLYs3D5kZVV424Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXlcZ-00000009zOj-2nTu;
	Thu, 11 Jun 2026 20:03:23 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXlcV-00000009zNb-2xyV
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 20:03:22 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id 6a1803df08f44-8ce9df49c5fso4213406d6.1
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Jun 2026 13:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781208198; x=1781812998; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qLMumJf1RKl2eLxtJE2mfNPELwqfdC4TqjLEXDZKRSI=;
        b=mOyZDGgYYdMtyo+g+rrePSGvNPK7nUhPWlwqEb9Onk6MG6XDNR0iy2+JZ2ivVTxhWL
         W7T1rNtxkTr2kkO1y04oftzgRRude3eGUTLNegrnZi+whikVERGD81uVo+KHIksgOON8
         a6nFB8+635R2iFMKgS5AJ4gXPen7WikwFljigkKpm8WX7fq2KmsddQ7R5uqlN4JkZtUu
         9OqdqXjKSkWDD1rgTIXfTjRkN+gpZqATYUpTYSmJWtKtXOUuMuXeneD124ZOO34dN+W5
         fBq2mOB0GdCilpOs1kcojJfVUaitnpfuSLmjA0/y2oM0ApuixncjZQH6qHp6liOwMMYY
         tzEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781208198; x=1781812998;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qLMumJf1RKl2eLxtJE2mfNPELwqfdC4TqjLEXDZKRSI=;
        b=RHzhzsCvf2geA5YtJGuh8KDC9eF4dL1YcPaghvWEUNyjkyW+HuK5dlxE4cAtYULeAW
         IDmSzg6aS291FWO/4KxkvhRNRAX08cQ3k5CGmZUMn5bSR7uJnyzZBNZPJiX1Pg/Oecyu
         WeYRKZiSj59ThHOEWEJKZwAncvhPapHlqOtJACEO4UBq5TENFfi3jyO+nrr0cCkPGBG1
         9dHNEM0lJsTQB9ugHDIMxO7F653yufQTxCa1b02QBBwLuNTJWpHgIvPFvZOrmOU9EXO0
         dcDgCqSphCyowOudd+JoYxd/8gMVhFCeUDJpgNiuG8Sa09WuVjG4hMtIebIqCLDBHM0W
         7SgA==
X-Gm-Message-State: AOJu0YxX839DcrctRisMhlt/d67fUPzaXpyaHdI1ABgey3HEpRKfaZw0
	7AiY6D3rsaz8xMusa3/ZD8LHeestYFMNq0lRHeRUd6DC5b8JoKAKtfZ3
X-Gm-Gg: Acq92OFu7ToqGOX60qC9K8v4XtQa6nUd1n59YQXoU687OhZpwbGZ4XbhAUN00DdE/NK
	t2Gk/W8DFPaCuU/P2DrD0HDL3hVqpmHRzQKdvo2gkx3Zog/rLDQguggOVh1UMwIVYCgxYk0/kaR
	mv2/WCcJeoZBBjOqiIPj2is2nQmNHRfBvPaI3I9Agb6QPW43AIsnxnByGWlZESmciSd/ERt6qA8
	r9asryLKanUW96LGHzfzvDIaG2mG/5eOXAPWUGpT0g83DrZmFfHGDD4mwVlCNgxhk3f4yqlJEu7
	XoTqSwy9i45O6J6eGbaNBkrJedOFYek0U+3WoLAdwT+z+RSgZ5UbIjA4ysN1dWVvc1nPnaGSPNC
	GS6Jiupy+/sIrKyZkzy+w4XlWBLVi7UR4UYOQLPnQZRBVH/i8dluQ3yHyvTNiwxoXT04Whez+1O
	B9+FgNwknD
X-Received: by 2002:ad4:4ee6:0:b0:8cc:f135:529e with SMTP id 6a1803df08f44-8d1dc1a0cebmr77291506d6.34.1781208198118;
        Thu, 11 Jun 2026 13:03:18 -0700 (PDT)
Received: from geday ([2804:7f2:800b:f09::dead:c001])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8d301b2a79asm3229516d6.13.2026.06.11.13.03.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 13:03:17 -0700 (PDT)
Date: Thu, 11 Jun 2026 17:03:11 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Geraldo Nascimento <geraldogabriel@gmail.com>
Subject: [PATCH v6 1/3] PCI: rockchip-ep: do not attempt 5.0 GT/s retraining
Message-ID: <76c828d29b0f05df0970b3a862ee1af8c96faf17.1781207474.git.geraldogabriel@gmail.com>
References: <cover.1781207474.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1781207474.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_130319_757009_4CF61CE8 
X-CRM114-Status: GOOD (  13.16  )
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
index 799461335762e..9ebc227a1ef84 100644
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
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
