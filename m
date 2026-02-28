Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D81181048925
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Feb 2026 00:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lyWQwP6nDbGD3cltj27Ed8nmTqoRzv1jJLivHVJBc0Q=; b=tnvJGU0iP/uVMb
	FSMB1984i6IvHYzsTKM8i7WIOInLwGLe4TgjfbDoROL3l/yJlK2IBucaaKALX75AMCFWId0mUORl2
	b5hsJPIl38NWSwRzLvnriLHjvTCDkhcyZPGCdW6C6UGMydN6GB/miDXna7wLpN+ieHkOemCBgMsqr
	Dlo/68oItdaU5y4NEhIGMaaUeZzTNNKgOcNxnWe3rRcKnPgwwmMrjw8YB+A3NKC21yVFduU+r07H8
	sf7POw+PPisiWmP2TtZ45moTEfRAbPHK/chPJ9x0ocm74FiysWcg3+albIJWwi+kyFR2hAxccaguj
	6FpQkXnbZvaQbvMqoMRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw8cR-00000009Lxv-1JzT;
	Sat, 28 Feb 2026 00:55:43 +0000
Received: from mail-vk1-xa2d.google.com ([2607:f8b0:4864:20::a2d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw8cO-00000009Lvv-3ZIK
	for linux-rockchip@lists.infradead.org;
	Sat, 28 Feb 2026 00:55:42 +0000
Received: by mail-vk1-xa2d.google.com with SMTP id 71dfb90a1353d-56a987683baso2483435e0c.2
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Feb 2026 16:55:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772240139; x=1772844939; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0Cy6OANas5Ke7+g7WCbIZUx6sasEupi+10uNQ6dOOFA=;
        b=Bcw/KZvFVl0ZgP2VwS0NjlKmWF9PNkLeZ0ozhCgvrfl5YyzFj6ObQH/8xeJ+lkW7Yj
         nrG0DPb9xDbWCc7PTKzg0jvILbFZP7x3gscdT61bAMhsemwtNIk/+w70WmkVfDkH+rAk
         s0x9kaIg4nVwlStKhk3QY264gZP1l8dmwOuqQ7t/W1g9VLyTSZIhj7eMzuCRMva2Axtw
         kGfH3/fwv/9BU0187HyOhDbPPUwkH22IVtbD/GhQvMvkKKlaHv8CxD4FyZBKMJwvevaE
         L0w+81Q63XKyA/rwJ965r5WbY91613oWdg/fiwEl5G7I0suKXCq8cN5qcre787DD+9kI
         tu9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772240139; x=1772844939;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Cy6OANas5Ke7+g7WCbIZUx6sasEupi+10uNQ6dOOFA=;
        b=pFRlgN9tFWWmZwrYFAr8oMm8Vxe6prc2WqsKP+Y64GWntYfbciAyjZF+lRbTZ/r8bF
         BlyBvdx3Cy/U6pjNanZvZapW/78VHZgdEcIIZuMakNGbB5lwV9gZ4uO2bDU37uUhlw5n
         sfedwfJdbO7VAFlE/0PgKYkBF6652S1kgQDTxG0zHZiOyfqd9OEa1/5qef9WB01x/bq5
         MHZVFMsxHUjd7d2wUmX4URdYsXC2ZQQ764l2jtJ9GEzauDL+rWukmFveWQ1/7z2bU1oH
         sA8l06e4nTfpHpGm+rYoAlbGIc+ZquMotnr4Jg8FbOYglsw8m44o0mtb1In1jpd+5GvT
         0DUA==
X-Gm-Message-State: AOJu0YyuSqSOJjly9hjwdHJFnmZbhMbFI1eiL+eWoD+t5BU89cClpoDt
	lmPzk+D7xo8+NBCKYxNwkfuTMajQQdHFGhJIMCpKzaBNrv954CnEJszW
X-Gm-Gg: ATEYQzy9ISDwDOc0zk9FgruI78N0chndOZcygAJeqR5QVuDlM0oK/0g9ukavsfEAdg1
	Pyb2944L0mNvMXrNEaOcPohSTEqAT+78NYtT5KwrjWmxcV0b0x1kwAeUVtBR9I3UfTLiaJMWa3o
	63Ug5mbAFtAg4vRZ41VFAqOKGA2N8ybXspefheF/M62jMZu1ib+JVt5qmRWYanKDypNLIgGfMBc
	TVpsscX1Xg1YyVyURqOppYMkUEKXUYbkt3e1CFmiDc1KHfL/UBCKIqFiHs2Z2Gv9hZ1fkgI/Z9L
	v9Yj8r1PVIIRKptN73lrqM3h76NzWVx5/YGPNZY9ZHeDzSujRPu/Vqv1o9vV6wmqe65iCcy9D1N
	x/AblLtqSQHv09zK7CH8tMYKH/lC+eAA8S0/KGo1EwpeSwixxRR3hMBTiCvOWsK//2EZD14C57M
	BdTGiGV0Q0/g==
X-Received: by 2002:a05:6122:6992:b0:557:c6d3:5c0f with SMTP id 71dfb90a1353d-56aa0a941c7mr3144441e0c.13.1772240139485;
        Fri, 27 Feb 2026 16:55:39 -0800 (PST)
Received: from geday ([2804:7f2:800b:feb1::dead:c001])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a9228d776sm8234832e0c.18.2026.02.27.16.55.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 16:55:39 -0800 (PST)
Date: Fri, 27 Feb 2026 21:55:33 -0300
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
Subject: [PATCH v5 3/4] PCI: rockchip: drive at 2.5 GT/s, error other speeds
Message-ID: <2a0a4aa97bb8b0cb511cb651c5d66c9ec8bab97a.1772239598.git.geraldogabriel@gmail.com>
References: <cover.1772239598.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1772239598.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_165540_894179_D533F009 
X-CRM114-Status: GOOD (  14.56  )
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

Configure the core to be driven at 2.5 GT/s Link Speed and ignore
any other speed with a warning. The reason is that Shawn Lin from
Rockchip has reiterated that there may be danger of "catastrophic
failure" in using their PCIe with 5.0 GT/s speeds.

While Rockchip has done so informally without issuing a proper errata,
and the particulars are thus unknown, this may cause data loss or
worse.

This change is corroborated by RK3399 official datasheet [1], which
states maximum link speed for this platform is 2.5 GT/s.

[1] https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf

Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
Cc: stable@vger.kernel.org
Reported-by: Dragan Simic <dsimic@manjaro.org>
Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/pci/controller/pcie-rockchip.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 0f88da378805..2f211d1f4c7c 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -66,8 +66,10 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
 	}
 
 	rockchip->link_gen = of_pci_get_max_link_speed(node);
-	if (rockchip->link_gen < 0 || rockchip->link_gen > 2)
-		rockchip->link_gen = 2;
+	if (rockchip->link_gen < 0 || rockchip->link_gen >= 2) {
+		rockchip->link_gen = 1;
+		dev_warn(dev, "invalid max-link-speed, fix your DT\n");
+	}
 
 	for (i = 0; i < ROCKCHIP_NUM_PM_RSTS; i++)
 		rockchip->pm_rsts[i].id = rockchip_pci_pm_rsts[i];
@@ -147,12 +149,13 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 		goto err_exit_phy;
 	}
 
-	if (rockchip->link_gen == 2)
-		rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_2,
-				    PCIE_CLIENT_CONFIG);
-	else
+	if (rockchip->link_gen == 2) {
+		/* 5.0 GT/s may cause catastrophic failure for this core */
+		dev_warn(dev, "5.0 GT/s may cause data loss or worse\n");
+	} else {
 		rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_1,
 				    PCIE_CLIENT_CONFIG);
+	}
 
 	regs = PCIE_CLIENT_ARI_ENABLE |
 	       PCIE_CLIENT_CONF_LANE_NUM(rockchip->lanes);
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
