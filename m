Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50EBCC0015E
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 07:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=awjGIzjMQlIEpGqj8wZsbqqH7/TUCBbVvof4+yNY5hw=; b=yEkjd+aM3nwNSa
	jvveipWXBi/K7w1N1UUyB1C24cZdsztHwKvSFdJAt4phkqIMewJWE8gvp4eSrs9otZNUyHRkcF5K+
	Ea93rsRBhWSLkZ3OO4P/lHqk12l2CN9YWKvJkG5kl8g+rATCcyQkn16sK94vOArWNSHsoxo25qJds
	3uGUZf1sS5zqbUCw6qHLqQKJnkb3lSxxGJIOajVLsxWKo5aq/hGV2LLeYLpcKIcuAqbzaaUtbPFSv
	R9jao8CS/0iSCz9pgKqw3lBGecu/WWRN7Zb/NzXOR10dAziJc4x/RjUjZzIlwA66YsCs3ejocsDDD
	6+UTrPh4QnAifH3gLZDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE2zQ-00CIj1-2O;
	Tue, 27 Jun 2023 07:19:52 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE2yo-00CIGH-2Y
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jun 2023 07:19:16 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-313e742a787so2282448f8f.1
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Jun 2023 00:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687850352; x=1690442352;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dE2WHxlRabkmNFV6UQgAAK/SiSiy26ezXn6XoDTEYXk=;
        b=deALLBrN428hJg1qqaUWNAHRcQ17iND40MTSLcNgUi3Js3F4vL2Ug1Qurimx1w4oKG
         MWTUtPhR+HpvvRD6M0GwPgEAWmjCFIzezNqD1m4m2Hai0+b5OzivKSMNugustXd4Sh0v
         IWGbPyG+IcphHzZSXHcuGPgYEO/7zUBrhLRMLSDGYIGLtmTCyz4Tt8ExCKuIl4P31RC+
         3FWlorPcSR+ZPWtThsjudA6h1kjmcM7z2Klc7cKaymiTz175NNJ8tGfHxA+utOlt+6gg
         toGzD4l7095jdVUzttaTuCqj1dwhMcn116TKMCTRCHtQ/m/kFn+pEDQ05R1RZPTOIxKc
         +wtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687850352; x=1690442352;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dE2WHxlRabkmNFV6UQgAAK/SiSiy26ezXn6XoDTEYXk=;
        b=cg5BES1gwFYXknc5KEyUchOe4jiH4fIq34d5/KHuIH8UlJJLFMjrysTaAoRL+84Keh
         CrPHGtwd9YZM8F3HT2Xug3A7gv3lcHhSsKi8WibfiR5hrTWV5TWbjjkEb2Uwl5BT5ZmC
         1cOEHCyZ/bLWDSyLUKSI4zLhmZzBrpl1kHEvssxRREoAGbwq+YWrQ8jPm0esntX+CnJ6
         6NqeHZeK/4p1UpSlxZrdILX7tZdJLEj9hU3VCYOwoJKy5qWkYIaYwnrVBnDFNry9wv8w
         ZOV8Ski/rkIfdbXRWqNWk45jGpn9J6n4M/X9Yi3dMQRABgCrr4X/9pCcB6S/+xZbiVzC
         +kLQ==
X-Gm-Message-State: AC+VfDwq+Km/FYIsKibQzMftX/oe/7reKbkkZg7GXlALfmNdWYBiK3Cx
	UA1q0MX0CqY8Q7gAG65DjTeZpw==
X-Google-Smtp-Source: ACHHUZ5Z8MEBV48V+8AfeXL908qVRSw1/sNUR/Q7UQ+UcVVQEwKyGP5n8V1/y1oSMwcEIFzjc/ku3g==
X-Received: by 2002:a5d:6644:0:b0:313:eeb0:224c with SMTP id f4-20020a5d6644000000b00313eeb0224cmr6072227wrw.28.1687850352570;
        Tue, 27 Jun 2023 00:19:12 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id q5-20020a05600000c500b0031401bd6387sm478954wrx.102.2023.06.27.00.19.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jun 2023 00:19:11 -0700 (PDT)
Date: Tue, 27 Jun 2023 10:19:07 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: rick.wertenbroek@gmail.com
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [bug report] PCI: rockchip: Fix window mapping and address
 translation for endpoint
Message-ID: <8d19e5b7-8fa0-44a4-90e2-9bb06f5eb694@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_001914_837077_B61B232F 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
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

Hello Rick Wertenbroek,

The patch dc73ed0f1b8b: "PCI: rockchip: Fix window mapping and
address translation for endpoint" from Apr 18, 2023, leads to the
following Smatch static checker warning:

	drivers/pci/controller/pcie-rockchip-ep.c:405 rockchip_pcie_ep_send_msi_irq()
	warn: was expecting a 64 bit value instead of '~4294967040'

drivers/pci/controller/pcie-rockchip-ep.c
    351 static int rockchip_pcie_ep_send_msi_irq(struct rockchip_pcie_ep *ep, u8 fn,
    352                                          u8 interrupt_num)
    353 {
    354         struct rockchip_pcie *rockchip = &ep->rockchip;
    355         u32 flags, mme, data, data_mask;
    356         u8 msi_count;
    357         u64 pci_addr;
                ^^^^^^^^^^^^^

    358         u32 r;
    359 
    360         /* Check MSI enable bit */
    361         flags = rockchip_pcie_read(&ep->rockchip,
    362                                    ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
    363                                    ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
    364         if (!(flags & ROCKCHIP_PCIE_EP_MSI_CTRL_ME))
    365                 return -EINVAL;
    366 
    367         /* Get MSI numbers from MME */
    368         mme = ((flags & ROCKCHIP_PCIE_EP_MSI_CTRL_MME_MASK) >>
    369                         ROCKCHIP_PCIE_EP_MSI_CTRL_MME_OFFSET);
    370         msi_count = 1 << mme;
    371         if (!interrupt_num || interrupt_num > msi_count)
    372                 return -EINVAL;
    373 
    374         /* Set MSI private data */
    375         data_mask = msi_count - 1;
    376         data = rockchip_pcie_read(rockchip,
    377                                   ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
    378                                   ROCKCHIP_PCIE_EP_MSI_CTRL_REG +
    379                                   PCI_MSI_DATA_64);
    380         data = (data & ~data_mask) | ((interrupt_num - 1) & data_mask);
    381 
    382         /* Get MSI PCI address */
    383         pci_addr = rockchip_pcie_read(rockchip,
    384                                       ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
    385                                       ROCKCHIP_PCIE_EP_MSI_CTRL_REG +
    386                                       PCI_MSI_ADDRESS_HI);
    387         pci_addr <<= 32;

The high 32 bits are definitely set.

    388         pci_addr |= rockchip_pcie_read(rockchip,
    389                                        ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
    390                                        ROCKCHIP_PCIE_EP_MSI_CTRL_REG +
    391                                        PCI_MSI_ADDRESS_LO);
    392 
    393         /* Set the outbound region if needed. */
    394         if (unlikely(ep->irq_pci_addr != (pci_addr & PCIE_ADDR_MASK) ||
    395                      ep->irq_pci_fn != fn)) {
    396                 r = rockchip_ob_region(ep->irq_phys_addr);
    397                 rockchip_pcie_prog_ep_ob_atu(rockchip, fn, r,
    398                                              ep->irq_phys_addr,
    399                                              pci_addr & PCIE_ADDR_MASK,
    400                                              ~PCIE_ADDR_MASK + 1);
    401                 ep->irq_pci_addr = (pci_addr & PCIE_ADDR_MASK);
    402                 ep->irq_pci_fn = fn;
    403         }
    404 
--> 405         writew(data, ep->irq_cpu_addr + (pci_addr & ~PCIE_ADDR_MASK));

PCIE_ADDR_MASK is 0xffffff00 (which is unsigned int).  What Smatch is
saying here is that pci_addr is a u64 it looks like the intention was to
zero out the last byte, but instead we are zeroing the high 32 bits as
well as the last 8 bits.

    406         return 0;
    407 }

regards,
dan carpenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
