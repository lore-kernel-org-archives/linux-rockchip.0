Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C22A2C77B7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 09:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t37GxkLCAnKv8lXOPg9Td2PDpqV8L09AuqZlrI9fC7s=; b=J9c1vRz9YQCa6G
	r0pIL+GxA+wrF1Sv/adWyIU0dVlP9k+GqwgO+mOd30a5fVM86ymAjO8MKZhEpoAxHZdoOuOC2AUp0
	epLc9Nvl/gS4ewPQ9aIclcQLKuKgaZ0IKIOgpGfNPkBaIwxJh8DXrywG/ZNvl0kvxAwmB1tUSUNcd
	J05Bex+53bOVll8UvVoDCS7+R4WISqqq5878xFktC4WU5LKCrVqq7hAyRolI9vRLNJcs2QAhf1rVK
	FI1LODkPDSoiuzasNmeUQxAQLaYjkiRTQJkHcIWjXv/tgGqhWTcYiRjxDtn7laOvDgMyYiEmh1amg
	G4yPzzPPQfIQD/eASHqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poL8c-00FX9K-2n;
	Mon, 17 Apr 2023 09:27:06 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poL8Y-00FX4m-1d;
	Mon, 17 Apr 2023 09:27:03 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a5so5822861ejb.6;
        Mon, 17 Apr 2023 02:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681723619; x=1684315619;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=utnt45WNES8x5nuh03dm8k/Z+7rA8EuGdWHHb+kLIVU=;
        b=fol01En1PXPTlo0VOyAj4tTv45dA1FEA6GFQ+ChSx0vH38CW78Khp+5eaPFxnk0sW/
         53n1PofGRNkHla1/fO9e4nBfTDJ5sn1S/YaM8E9kaTc87RFTRMlmEEviMJ4CaGY86sYC
         QrflxB5LhQGydlSWrjBwsvCHrQq+7oLNEeK0lksLDa8+rJifRULdUn/AAlBOgrKOOdyF
         PXBg0WSqlx/PK+kdrev9RsUCONPnzTdKONWiH/U5JcOyytypfg2cIBAUgznpJAFZqAm9
         5sGArfIJ7ZTUl9hJ63qAlR2qSQrVm6WQ044l98bRNZsaZgbkHxrANk7tTy+K6NBo+i9N
         9M6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681723619; x=1684315619;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=utnt45WNES8x5nuh03dm8k/Z+7rA8EuGdWHHb+kLIVU=;
        b=Hi25jQWUCWZUnDndFTj1B9D3KC0E18rZeVmmDhetXAoLlL6gXBQxTcB1meeNSDFIwz
         mf+JTHHApm1uC1AKi2I6da2lx1C50pL5HcHDyi7dFwNk/EgWenzQNf5Nu+OIBnLFL+cV
         cJwQqLQrnh8HjGLr9qB69TKsVW9phkRXRXlB7P9JM24z6LkpZNcN3DKsA5fOm3DMCm1b
         PdnK58+sHDXjNT2dDDsxqsINAH5f4VO1HQzJbCJG5cbMq4AuE/5WvsVtrNgMz9W5KGnw
         C2PXC0KkFO2c3tqvBbokB7f+d/sVpTN1j7xaGOsu8cIuhgCuHp6L+zHraY7fcL/W94un
         8sog==
X-Gm-Message-State: AAQBX9dwVVyhyujGVl1flcrzUjkG0Lig27oATiGOGt0HklAP8Z4mtq+F
	ElePk0V5aqDyQN2RSgQwEbM=
X-Google-Smtp-Source: AKy350Z//c2BIX+K3WfJ+lBvrMgsF4284a13OLueOa57Kqv+CDn1V/Vy1sHTSeneK+YDAqsc2eN5OQ==
X-Received: by 2002:a17:907:844:b0:94f:61f5:9ef7 with SMTP id ww4-20020a170907084400b0094f61f59ef7mr3680011ejb.44.1681723618587;
        Mon, 17 Apr 2023 02:26:58 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id p20-20020a170906615400b0094aa087578csm6398596ejl.171.2023.04.17.02.26.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 02:26:58 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Brian Norris <briannorris@chromium.org>,
	Caleb Connolly <kc@postmarketos.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 01/11] PCI: rockchip: Remove writes to unused registers
Date: Mon, 17 Apr 2023 11:26:19 +0200
Message-Id: <20230417092631.347976-2-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
References: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_022702_544343_D06EBFAD 
X-CRM114-Status: UNSURE (   9.74  )
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

Remove write accesses to registers that are marked "unused" (and
therefore read-only) in the technical reference manual (TRM)
(see RK3399 TRM 17.6.8.1)

Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Tested-by: Damien Le Moal <dlemoal@kernel.org>
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
