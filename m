Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC79CD10DD1
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Dec 2024 09:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GWM4OZWrnbbImA7BdoHpqA9Q8vpZdJvqoeG7MaAFOaw=; b=QtR0Q43nBfdBhl
	wtuP45J2odIDEa7R9M1Z3Fyb78KSvM9hwlXLHt7ZAA3macAqaxcsrTOGQWyTAbB4rkCgPipFn7Hyn
	M2dhF1wilsF2bTO/zqYoWp1HX1nFKLvRYlKyhYhucfnH3WSAs3QXKkZznjzLeQzT6pPBEEzTAg+Tl
	ZFEr8VrJf7EeeKJ2qZPROes1UAgWxYjLFafJegc77i34LWxWRZ/OXELjA49Ub1Noj/c5o405IGab9
	dJcp/4h0rXyolb0RwGdfPTfUyVaK8PiJ2NMPU4thkstuL5V2qxtogVx9xIY4XTEu0dy1MwoP7ZtCs
	UfXrC3EopSpIP1eEe4wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI2Pv-00000005Vz7-1jNB;
	Mon, 02 Dec 2024 09:08:31 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI2Ou-00000005VrY-49hI
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Dec 2024 09:07:30 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-434a044dce2so50346205e9.2
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Dec 2024 01:07:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733130447; x=1733735247; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BR7917va66KYfi/dxTW86XB5ZaenGMbVA2IyXvz+JIw=;
        b=xdjSVxoX6ZkmSEBtMNNoIK486TqHsKrsAPH3T0/Jo7uHf19f5Ju5WrOsDliaH3JR90
         Fc3nsSCjYsxy6KLhdVmjt8b2MGFIedxJqlfeWTDcORFSh0JdwbY6wGWVN/q+C4LSnBdJ
         kgqc92vN6B7Ow5MDCSaYPlhaEEuGlkF+qwUVP011AajCvUp0xQkuemwcmLuphnevbhMr
         5M1Ye+m+zZmr4XX8bBOEnY3uQAUXkjCmDZGT5cBlI9UtrPtahLYfPQvx2uCb7AzKY9rB
         cmgWYC8pQf1iYK/OV6FXQlS8c7URFY/GcZglOvkFxmn999aqMamzvnCZ6aaEW6qD0j8B
         RzOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733130447; x=1733735247;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BR7917va66KYfi/dxTW86XB5ZaenGMbVA2IyXvz+JIw=;
        b=RzaX6nRr5Y03Xep65WlCWowKzSnXQocCe2y0hAOENF63MYgCtZiFsZ08IU8i+TpRfZ
         ypf+9FOHvNG6B5FxBXTC8ybroTlFtFJxQ8Y3FOEtT5recFvdc2XMY+CmSJcC5kUl3pKg
         EoULLRkpa2j3lQdDErHKTJ8DZoO04ch+8RyFb04upMgFyXfEILCb7NY+y04H2VZZu5y1
         9Ufab2rC5NhrpLXWyNHaHosfTf9pmdyirnmg8r4DpBJD3iewjRuD3xn52NS/YXIkOGAU
         L26CTQhVqKhdoYcrK7MeF2nH0oK1rIszD4Cg2AJ8yEmhVIzi3DPjrn2lhaHF1weXfsAi
         1uFA==
X-Forwarded-Encrypted: i=1; AJvYcCVO2w2G4vTesOkto49lJzyuBB6tIatgtMIA/bDmOlskOGDFv3S5dwD80gNFHDSatvycjHv+7/CrN5bwqKlTGg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwbYzgUjofIlLkeJD+j0Bw31TzpFxY5XLikVrEuBBm0XxPpy6u4
	S4buMrK9j1vTLy8eWeyEZAw2lhzEMNU0RI/Jlqd+I7lWWykeXnf7UPq/b6/DyUs=
X-Gm-Gg: ASbGnct+XKAoTIbZQtiyzU4/CjYiYgHQPXzfHSA4XkNx3+Ekos5XqkZEzrZWa95Ow27
	OF+tnPH06jwL91pXokWyYDV3in5Q3hZR8yQuulzcwN4OxOpO0MX1AMAEmtPLE/Z/P/OFyZ61Mnh
	JbUGEw2mQfJJCIuM1tNLwko0T9GnJYhY1KxaHkaMHzkgZLFPuFY1gLbzdHVaq6W7Z+sztZcjQsC
	eJ1kikvJs1Q/OpW5I3liikNHCgrBrBg51g5kmuc1Bca9UAFPAdTegU=
X-Google-Smtp-Source: AGHT+IErHtjKyBNSf/XUWvWl1AoW/h4AU63KtH1xNYUNQzmKxpbD3bUa+ZybCCBWlQeaV0PJJSm5wQ==
X-Received: by 2002:a05:6000:156e:b0:385:f062:c2d4 with SMTP id ffacd0b85a97d-385f062c49emr4402219f8f.37.1733130446807;
        Mon, 02 Dec 2024 01:07:26 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa78120dsm175382645e9.24.2024.12.02.01.07.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 01:07:26 -0800 (PST)
Date: Mon, 2 Dec 2024 12:07:22 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org
Subject: [PATCH v2] PCI: rockchip-ep: Fix error code in
 rockchip_pcie_ep_init_ob_mem()
Message-ID: <Z014ylYz_xrrgI4W@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_010729_085314_BC692102 
X-CRM114-Status: GOOD (  10.37  )
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

Return -ENOMEM if pci_epc_mem_alloc_addr() fails.  Don't return success.

Fixes: 945648019466 ("PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() memory allocations")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
---
v2: Update the git hash for the Fixes tag because the tree was rebased I guess.

 drivers/pci/controller/pcie-rockchip-ep.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 1064b7b06cef..34162ca14093 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -784,6 +784,7 @@ static int rockchip_pcie_ep_init_ob_mem(struct rockchip_pcie_ep *ep)
 						  SZ_1M);
 	if (!ep->irq_cpu_addr) {
 		dev_err(dev, "failed to reserve memory space for MSI\n");
+		err = -ENOMEM;
 		goto err_epc_mem_exit;
 	}
 
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
