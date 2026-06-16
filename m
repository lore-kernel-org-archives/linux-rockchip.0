Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA8AECD98E1
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jun 2026 15:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B50WiFfrVD6PNFeGuzLbs3vlU9fVt8xnDp592NfA0Uo=; b=RCHtmVG5okpVMs
	hPwM5cgujorZaUNvoJ6t2CDU3K5jWzzuc9RlclNIR9RFv5S2igQRwRkTbkkDGKi74Djb3E2MydjcG
	lIxktl6hhcTWgVegBKu2IfxrghBdruQ6YnhNRsb618bJ55O0YLXO2brQxRfnxt6at3C1iXrCNoZHt
	ZcQhbNBIDcqlHN6x5f5Ju7N8a9/V9MkLoQfsf7NW3TA2PqshPaQpElQKFDqgogPFUTRFO4BxEy24S
	OIk1U2Rcah2DsZxUq5IeiCgJN8MVK2FFtKHjLD94YdKQyTpL3/9x/y0CLgwQDfZSHtItRxmgZGJdF
	lO5iEzCI1SGLtR6uALOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZVfX-0000000G0YK-2zRj;
	Tue, 16 Jun 2026 15:25:39 +0000
Received: from mail-dy1-x132e.google.com ([2607:f8b0:4864:20::132e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZVfU-0000000G0Wf-0DVY
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Jun 2026 15:25:38 +0000
Received: by mail-dy1-x132e.google.com with SMTP id 5a478bee46e88-30bb7d20ad9so954155eec.1
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Jun 2026 08:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781623535; x=1782228335; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qLMumJf1RKl2eLxtJE2mfNPELwqfdC4TqjLEXDZKRSI=;
        b=ndp/KvumIBOPJUij1xkyZMnR+6KrH8BlXlcvXGBGPvJ07gJdeFLfaQ68ce/9o5Gr7J
         nTOQwo9BCFEbirndnQCXGMjERmI4OSOMKcO2GXNwyQ6/oh0hh83yF1RXU8r4Bjy8s2Qj
         yoVJTDTXQsuyD+/xVMjwIvBsxWbb0zhiG2AE/yCz7WkyAvghGdml2XmDMvMIgKBYDoNp
         hQmZ/9js/rZhjkYjWgZH+kXRzSelIMmC8l1HLNf27YPy74IaGy/ILWiV5gIJzf+J+KAi
         UQqimw6LjweKpEKAZIgd2uxEMjQiTz3iPOnMcVyiIpn6qlLRJYuhF00Zo+a1TXIiVNEC
         VLFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781623535; x=1782228335;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qLMumJf1RKl2eLxtJE2mfNPELwqfdC4TqjLEXDZKRSI=;
        b=CBRb1VRhDUJqfhVriBAK4uT8bq3vxZ+gop3CFcdL3OjW6ZxKKm7DMsfziELoX+AO2H
         GyClPyukUsVhtK7Yb2aPVoOfemg2UKcCd0iwUy0Sp8JoC4mc0B6VZigPVGGt6HDIO22a
         HhqCzyMXBTxHTFYi0okgFIsSxCPDNHepz1D/GY78d+H6gi4NZrktNTiAIUmnEKLSAXe+
         frrfyzpZIis+6ZonA1KOiTlmkjhSa/z455J/kX+WOrxg36Nvex4H+PP9XYeaBwim+G8C
         wIQRLRcpAAPtsWtE9WZPkQi+Rh0/O2Vs8vAxZUiYeILPKN/3y4Z5I/Yh2sC2MdsOv1sA
         uOmA==
X-Gm-Message-State: AOJu0Ywuk69bnY/Mu71Lf7FnEcSsIoxG6Htmru4srsRSg9RMPEly6iJW
	6/5aaEwvM7JA+7N+ZLMUSKjSSZu4ymcInXuPKzQLNVJGPUGEtrqVW78E
X-Gm-Gg: Acq92OFtzGfYQBmuktU2d33T6Mlyc/50xWEfwPacA5WsqmMWTKWJVftU+ZiWSjthoVa
	IH2uyYy0KOwf8Q7lytHcIeh8t0kBqQqSVTqBczhL6Fxt+vHdDXMwy6dnAd1xetJqNAvU6I2Hd0F
	8NxTIRNOw/4u9zSiLcjC961hvUac/rQHwpsU0MS6XUUPJzP7c3KiJ65y4cdVhkVBEDFgVwqY+Ot
	4v3LyBYhY/AodS7ENYlSXY/a2zyfX4nS0T308aB+yzYlJmJMMKysbDO4kfGYKCUQhzYHwccIHLf
	eYoX1lDmwyIhS5DN2nQ5wMb/rNV26QrJNDGSwkUNfk52jL+/biV3+ZQxB5TgBwFPzH81/Pr9gU4
	iO08P+miEBWGHrL+EVaMyX2Z9YoCeRU+rDaApCFieBCWLmK7YrILM01YjPBBo2Vgc+qV87Zs+SB
	Qsyo2DMdWO4IcsG4Cd+6ht
X-Received: by 2002:a05:7300:a887:b0:305:179:4dde with SMTP id 5a478bee46e88-3094044cbeemr8636687eec.35.1781623534764;
        Tue, 16 Jun 2026 08:25:34 -0700 (PDT)
Received: from geday ([189.115.92.220])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3081e91f88bsm19695217eec.16.2026.06.16.08.25.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 08:25:34 -0700 (PDT)
Date: Tue, 16 Jun 2026 12:25:28 -0300
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
Subject: [PATCH v7 1/3] PCI: rockchip-ep: do not attempt 5.0 GT/s retraining
Message-ID: <d994f8fb3481bbb8f3972f117334a6e8aea383fb.1781622998.git.geraldogabriel@gmail.com>
References: <cover.1781622998.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1781622998.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_082536_092691_8867B45E 
X-CRM114-Status: GOOD (  13.63  )
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
