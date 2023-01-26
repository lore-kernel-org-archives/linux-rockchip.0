Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAAEEC05027
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 13:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Euj7wPiSxup3cBBkUeU6G0+pUidGpVaxBhyc0IrB4nY=; b=Eg1VN4JYwUz41K
	otfw0Bc4kx8Gp/Fo7HZiH37eqqj26kFbPUTSTmCYWT2AOWrxMw6ka1RNYBuYpoMJ6EhHmqkpl6+91
	bnd7TZAT2WfczCVVJZdiqWtCfAfaszs+WkZIJXhVzXbQOi+qYK/s5xRZqPLp6y9KryWN6AJ0Jk5EV
	XuiE95BBhBp3hqVqpZuw/qHIa/wnlLWerBnzuqzsgW7LTMmqir7i2oezpCHp38VF19hXW3/bvRGlK
	Mm483Vc+BJDNQ3adZsrDwsuhaitMy3/g0NqwY2mUpKmAFzyNbaibc+j/05+0XPOugbAGacwoJhOQg
	mFDUHSPP9mxt6iP9XgtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2gk-00B2Xi-8t; Thu, 26 Jan 2023 13:53:14 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2g2-00B2E1-Fs; Thu, 26 Jan 2023 13:52:31 +0000
Received: by mail-ed1-x535.google.com with SMTP id fi26so1901375edb.7;
        Thu, 26 Jan 2023 05:52:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z+EvojORsODacWviA5H6y0wNxHBR0n+JtQ47P84KEr8=;
        b=M7WFhI8SKAtXB+pSxFmiYwpUgGxWXlqZNu3JXhuS+yfnD8O/JAdK0MjemWn5kLTG3X
         komoX6IN9FoiJBCIWTL8o5/B52AykwawZPJsDcjzFBeRafA8ilG9pdvXzNPvWB14YwJF
         NhLYjKkNNXv3wZ7tYtE3wfGbWR+c69MY4OZI8bWF2wOwitccG7xcuABKH8ZSJOegBmzG
         jphwOgBEnxUV0IOh7Nuqw32OyCpDy5kjfhTo7nII5eYFwaITHD7/dmVR5IW4qPFaGrO4
         HnWIyogEeYmklC4WBC5AqTVfaKTEW3BYbqvGyr0I2g46UoPeNbBjWsWqhw0QKOgiw2yA
         XC9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z+EvojORsODacWviA5H6y0wNxHBR0n+JtQ47P84KEr8=;
        b=G6gPQJxA7hAtfuIa4Xe/g7C58fmgJaTEgA44JoyMh8txJE954Bi74Shz9E6KWoaMId
         vFEbxZw0ybWb/3D9QpkfD8UKsU2U11qgUZIcebhv6wUXjpzJd5ltOuJh+Rq405DRUOcC
         tJ3U97UngSoblukABHAP/J7nkAk92edIOwaNDRScKJ2iBJG6pzNkLAS1DZNQbjwjOyXR
         fbAyKyyMRTMVr+jTmdtfdEKnm01TqHyWGw6XH+hD9vJUd1MBqNtziAv/x2UYrmC/ISFe
         89JE4XAh33+1smT/OntBR76JjW0Fy47OuCXVpWFv0FYf9eXFZODDYF2u7ni4B+7qd66c
         jIhQ==
X-Gm-Message-State: AFqh2krC/UJ0/sgqXYj3gaGJr91KeN16dLYZSc3D3s19MrbkS2hf+SKZ
	+pTbN5+sxOJTQ8eJ/pDfHxo=
X-Google-Smtp-Source: AMrXdXvjXviGbRsmtS1HM0FbuBSRmsHH00RtTIKoAbetJeuAmVMFhdIktIVjaSaunZT/005k2AIfZA==
X-Received: by 2002:a05:6402:388c:b0:497:1787:13af with SMTP id fd12-20020a056402388c00b00497178713afmr36209189edb.32.1674741146889;
        Thu, 26 Jan 2023 05:52:26 -0800 (PST)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id t15-20020a508d4f000000b004a0e2fe619esm591611edt.39.2023.01.26.05.52.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:52:26 -0800 (PST)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	wenrui.li@rock-chips.com,
	rick.wertenbroek@heig-vd.ch,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jani Nikula <jani.nikula@intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mikko Kovanen <mikko.kovanen@aavamobile.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: [PATCH 1/8] PCI: rockchip: Removed writes to unused registers
Date: Thu, 26 Jan 2023 14:50:41 +0100
Message-Id: <20230126135049.708524-2-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
References: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_055230_548852_C6D31FAB 
X-CRM114-Status: GOOD (  11.20  )
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

Removed write accesses to registers that are marked "unused" in the
technical reference manual (TRM) (see RK3399 TRM 17.6.8.1)

Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index d1a200b93..d5c477020 100644
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
