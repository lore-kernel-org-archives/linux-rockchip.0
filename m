Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4463FD9E3D
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Feb 2026 05:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WxJW7usDVqeZ0Fs3eGz2i+W1OurtXqj4aQbm0SVWukA=; b=3gZbpNcZjfISq8
	eRycTzG14VDYeYdFN9AUWxtU5EMdMU3prL8PRme/NStDRY4D//+Q5hBtowWEu0MxPYSZvxMAmKbh2
	IXjccFPcf+MPJDbRUnpWeeKPLq95eRI81yi0PwppD15XBfQ5GWQlasuaRMJB3z31NxCwy6mP5123/
	KG4YCxSMP0Fbma98VLjFo3AQoQUm91nx4MI12qpAjN6mN9TXTeeXWxWJLY70q+WRMBxWKBOiyyGf9
	iV+mNsB+H4Tl+C7ZFAFwUWJCfs36X6pAqEEC662Szg0g8BCEIgqGa/yU0xsP0zmU3BuxNAYdi+H07
	11xruS2auk9LQXgNH0AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvqWT-00000007jAW-14hc;
	Fri, 27 Feb 2026 05:36:21 +0000
Received: from mail-ua1-x92e.google.com ([2607:f8b0:4864:20::92e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvqWQ-00000007j8f-2ZTj
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Feb 2026 05:36:20 +0000
Received: by mail-ua1-x92e.google.com with SMTP id a1e0cc1a2514c-94ac8cbf3feso1188124241.0
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Feb 2026 21:36:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772170577; x=1772775377; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mnj0Ip5rhMpZWME92U2V18suyVnTB8PfAkHzESqzgSg=;
        b=a18GRYd3AgIgdiTF59L+GaNwQ3DvryvDYu4M9KFyUBP4xfTkBk3oVQlw/wH677Df4s
         tmnu3LIjNBYVjaRWr43Zn10WbCnK29OyrodOSPvdWyeeVpDG0dwHBLnsNjwCe7nBCSD/
         r/rK1y4O2COMKCFDv/1mLNrgEm+0fuSsXMHJ8hNowEjrZL1ziHBGYwng3TKk7Kg1uqL+
         sSVIUzy3VPw7UsRXTQ0BR8FcOmnq51TwTLVPRVkVyZpAzhDhNLSKPpqnWk+3atsOYiX5
         3xlHGD01wsnrn66oKSYLTXM2D/gOiXZZs4VmfVbmA5JM/zrnu8XkCg7xhpmkSssDpKik
         Y2TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772170577; x=1772775377;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mnj0Ip5rhMpZWME92U2V18suyVnTB8PfAkHzESqzgSg=;
        b=q0s/aMQk2lv+kY/T5HA9TvS0Vr1fwm67j5s4hcvoDsi6SmiuBJAya73ngOKhZXMLhc
         7jr7+1r2wHVyifT14knLNHKj5KiIsm73JvfBWzZQGhDqY4fjpIwNhXU3z319N7xQ7/ng
         s5SfCAkrkvVqkGPysbKjm8PLPo+o1tMfXcfcZScHG8+lxxcgu/K8+3SHH+P7czjfL4tO
         NTKRWJnrh6bvNqJ0vZ2XW+LaohBaI082nXLzreScB4LxLTLzkBj2G60IbmeARXQTWGxS
         hIlXAdFQVnFofQcx55wWP0vsin6kBvTqGX1YoBhZPST5kQFdy/YzePlHOZ4kBk8Tyljb
         x7Hg==
X-Gm-Message-State: AOJu0Yy9MxmWtIbuJ/lvM+M1ZP/tLF3gax6khNMHNvN2rITF6UHfOthp
	8+8lVEstspF7PXIeLWSwcEdmgqFSkbYPj0L+VT5Bdo0rAmgu0jdOvtE6
X-Gm-Gg: ATEYQzwpFyVPr5ris87z416QkimWrVtxC9AtQYy648v1ZbopAtFF4L1Eoz8d0B+c46/
	TErvwhZY3kMz4NhjSJrjImI22kva8EaqerlWWicT4ij5ygh5ImSoykGbYf/Ds/cRnbVhevFig8N
	y9FVFMYibAVChCRWUC+2EPm4KzpI1jzXpOkNW2hxHjM7QnRahtSXwvEvludJJDApoK3fAzhFMFM
	i6sX8sXncCzVIrNgqqHi9QAkGRxyk3Z8zqvW+ZkfVA01y94aiowrPytPNZCOi6G6T3DT5bEVYmo
	mfA9D723jFm34+eopc5w4fGCkyJKCVJiFyZzDOcm+IiomI7L3MOsp3UlkyFCcosbbN689BpFivd
	7cmEIVuCJdUVl9HNQuyDle8hWwtSu29ldfPXdZj6SlSDt8tZFfu/3evitcaa398ducE7YtsnDgc
	jsbZpPgFOUmQ==
X-Received: by 2002:a05:6102:c09:b0:5f7:2655:f2c1 with SMTP id ada2fe7eead31-5ff3235cdd6mr1120359137.13.1772170577277;
        Thu, 26 Feb 2026 21:36:17 -0800 (PST)
Received: from geday ([2804:7f2:800b:feb1::dead:c001])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1ea15925sm4631041137.8.2026.02.26.21.36.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 21:36:16 -0800 (PST)
Date: Fri, 27 Feb 2026 02:36:10 -0300
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
Subject: [PATCH v4 2/4] PCI: rockchip: drive at 2.5 GT/s only and error out
 other speeds
Message-ID: <9e3754ee0d1f5bc8051e28e1a5b8c046440456f5.1772169998.git.geraldogabriel@gmail.com>
References: <cover.1772169998.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1772169998.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_213618_922286_38BF0ED4 
X-CRM114-Status: GOOD (  14.10  )
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

Configure the core to be driven at 2.5 GT/s Link Speed and error
out on any other speed. The reason is that Shawn Lin from Rockchip
has reiterated that there may be danger of "catastrophic failure"
in using their PCIe with 5.0 GT/s speeds.

While Rockchip has done so informally without issuing a proper
errata, and the particulars are thus unknown, this may cause
data loss or worse.

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
 drivers/pci/controller/pcie-rockchip.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 0f88da378805..26fc350a66c1 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -66,8 +66,9 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
 	}
 
 	rockchip->link_gen = of_pci_get_max_link_speed(node);
-	if (rockchip->link_gen < 0 || rockchip->link_gen > 2)
-		rockchip->link_gen = 2;
+	if (rockchip->link_gen < 0 || rockchip->link_gen >= 2)
+		return dev_err_probe(dev, rockchip->link_gen,
+				     "Invalid Link Speed\n");
 
 	for (i = 0; i < ROCKCHIP_NUM_PM_RSTS; i++)
 		rockchip->pm_rsts[i].id = rockchip_pci_pm_rsts[i];
@@ -147,12 +148,8 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 		goto err_exit_phy;
 	}
 
-	if (rockchip->link_gen == 2)
-		rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_2,
-				    PCIE_CLIENT_CONFIG);
-	else
-		rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_1,
-				    PCIE_CLIENT_CONFIG);
+	rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_1,
+			    PCIE_CLIENT_CONFIG);
 
 	regs = PCIE_CLIENT_ARI_ENABLE |
 	       PCIE_CLIENT_CONF_LANE_NUM(rockchip->lanes);
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
