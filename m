Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C4BAC77B76
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 07:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Heb5hTE7W+9KC22OA5RCXhT6lpj2lOyUxXViXJp1zTY=; b=c+jzhXaW5/1NRM
	J9JU/C5IDM54MTufsP9XDjKeC1HiEtFHMt2WUa2EKXiCeRfAkqvdMyAvC+qeoGD60jGa+wPlTG7gE
	ALWnLi5bt+TdCgvbsiTxbVRq49v9mWCMO66argyMx+u1VTelyG3yVquGX4GXGYGQ48welrG+7Xgyh
	uq70XzXtDvZaF7mSrGGI2KZdGrRQq8k5A03oKa+erprDFQmxpZUMRpBWX4nCoyHAFg7qerPX7A81w
	sUR1VMM3gZVuA2v44ILodeZXgZycKHz/aoDXYiTrStGyXvkeIbXw6ngJNamOJwsupU+lfueB3IeQP
	tnokpbQRoJNQJqBQIL4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pog49-001BV5-1X;
	Tue, 18 Apr 2023 07:47:53 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pog45-001BSw-09;
	Tue, 18 Apr 2023 07:47:50 +0000
Received: by mail-ej1-x633.google.com with SMTP id a5so14292334ejb.6;
        Tue, 18 Apr 2023 00:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681804066; x=1684396066;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qaDb5cHcj0sq9Nv0eUzX1LbgrLSdfw3K6Yu7Lv5vb5M=;
        b=iy8MkyX0C205CH/ZIQg6+jYo8nDDTIv1sn0cJgbUnPNG9JbLRGoe/uEXFDZlL5Mo9x
         s6CQav2nfSqQex7hEzXscd6l+6dI0RW31sdgGzjzGJsyIUuBdG3j/wUAd95/uGq8AOzV
         Ev2a2CFHv12V4WohFnoFxCN9ASBiXwkwg90kRK0E1lVL6M7cOkK56qgMHGOI+MI1awv0
         fI+OqwIeJ5b+g3R1N3hJKPWqtw6dt0/siAmRea5EI5xaLF71f4vXZJ6nCD3L2C4U8pCT
         ZSv9GtB7tXucMPRQ9EWqtDNsvDjb7y250QP4Q+mU9ckasqmjxRk2VbkL5wukF0EhGEEH
         Y3VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681804066; x=1684396066;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qaDb5cHcj0sq9Nv0eUzX1LbgrLSdfw3K6Yu7Lv5vb5M=;
        b=af+IYA661y+zf2yRvAPOX0/ZL8I+Hh6FgrFo8Vv8KzdsUxOzhQHb29t+PbCJmAzTJz
         PMEO4MYQz3NEGkch4qKb4Gt4aCwyvXv377dKDMyAm/uFA6gmmWOGLgz/+QmnmYzROZNZ
         /WNr+VOJyeTIW1T94GlOR8Xp0Xz+IozF7xICXFNr8G4tr9a3Z0xyA44zcWAI8Awn9Ly9
         W2yMxe39n7JOqD7jypFbSNrOzIB+6YRFqSvE5eg3Fx96vou+gm6QqQp4ASkcD9BaoXiB
         VqLNDDr8xI0yF7XtYKBKfc/R1US8cvp0al/IrRKUbzpG5miAMJvfpJ282yVIJTumwT51
         Cx/w==
X-Gm-Message-State: AAQBX9c2eT7NdX3n5mE31IF5H+1/0tAILz7bMcIUaoQ0nGinilCSLS9l
	W5EQz1sWBUDHCXqG/kmJB4E=
X-Google-Smtp-Source: AKy350aEw4nobnCvQETROqWtNOjoNa5NoUTEONLCrQUYQCkCbsJM3x3G1cs6LR0LZcZrJwIe+He5Gg==
X-Received: by 2002:a17:906:f6c5:b0:94a:74b8:7a79 with SMTP id jo5-20020a170906f6c500b0094a74b87a79mr9871917ejb.59.1681804065737;
        Tue, 18 Apr 2023 00:47:45 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id gs8-20020a1709072d0800b0094f694e4ecbsm3048545ejc.146.2023.04.18.00.47.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Apr 2023 00:47:45 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	dlemoal@kernel.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Corentin Labbe <clabbe@baylibre.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Caleb Connolly <kc@postmarketos.org>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 01/11] PCI: rockchip: Remove writes to unused registers
Date: Tue, 18 Apr 2023 09:46:48 +0200
Message-Id: <20230418074700.1083505-2-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230418074700.1083505-1-rick.wertenbroek@gmail.com>
References: <20230418074700.1083505-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_004749_082425_942D417C 
X-CRM114-Status: GOOD (  10.11  )
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

Remove write accesses to registers that are marked "unused" (and
therefore read-only) in the technical reference manual (TRM)
(see RK3399 TRM 17.6.8.1)

Tested-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index d1a200b93b2b..d5c477020417 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -61,10 +61,6 @@ static void rockchip_pcie_clear_ep_ob_atu(struct rockchip_pcie *rockchip,
 			    ROCKCHIP_PCIE_AT_OB_REGION_DESC0(region));
 	rockchip_pcie_write(rockchip, 0,
 			    ROCKCHIP_PCIE_AT_OB_REGION_DESC1(region));
-	rockchip_pcie_write(rockchip, 0,
-			    ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR0(region));
-	rockchip_pcie_write(rockchip, 0,
-			    ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR1(region));
 }
 
 static void rockchip_pcie_prog_ep_ob_atu(struct rockchip_pcie *rockchip, u8 fn,
@@ -114,12 +110,6 @@ static void rockchip_pcie_prog_ep_ob_atu(struct rockchip_pcie *rockchip, u8 fn,
 		     PCIE_CORE_OB_REGION_ADDR0_LO_ADDR);
 		addr1 = upper_32_bits(cpu_addr);
 	}
-
-	/* CPU bus address region */
-	rockchip_pcie_write(rockchip, addr0,
-			    ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR0(r));
-	rockchip_pcie_write(rockchip, addr1,
-			    ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR1(r));
 }
 
 static int rockchip_pcie_ep_write_header(struct pci_epc *epc, u8 fn, u8 vfn,
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
