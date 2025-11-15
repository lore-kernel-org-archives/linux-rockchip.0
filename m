Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17DE7CEB2CA
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 09:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ONrsL0v7Oe1682UUNXtdK+ZElsjJGRIV6hZ1WTULxg8=; b=w5BvhfSO+E+WIf
	BwEQId1YRLTbEoaLs3i1EOi1MJxfT57fxYQdnhuZkm5R1xynPS/ie5tbS2UcO6KxD67CtNm48bPHU
	1Dfc5ooKU+aA9aouOLVUq54bQk6IfgIEbGy9JY99VH1YQ46Tw1p6RIvxzuJRD7RVz/QlqL730eZx2
	7naaHgoyvju10BrDihE+i22t2G26bb0/sxCYTs2UN5HwRBusI62Cx2Ty1Gk6Gw5BMwcr5puSdnXZr
	eYydjPWBc0V2JzdHw/jpcAfCGJsEjrBr/71lMenvNSdwGiB0H/j6cAQXdirX7yE/is5OtoQfUj2/Z
	t6wBSezFC1edIfK7lfgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKCIe-0000000DdBo-0IdS;
	Sat, 15 Nov 2025 09:10:30 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKCIb-0000000DdAP-0C0J
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Nov 2025 09:10:26 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-7ad1cd0db3bso2454298b3a.1
        for <linux-rockchip@lists.infradead.org>; Sat, 15 Nov 2025 01:10:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763197824; x=1763802624; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ucj2p+rgYAXgwVH9kYepl5CbaaWyr15G4v4y10s3RPA=;
        b=AXWetfvpMLpUD58qZymDptEUnSxKacSUbuM+FjaXRzMkQgZr9OA06xzAEzTQfJIqZ4
         z/LLOxvAJvRAe1cMsvI9DRbp4ik4OmR2UkJol21RPO43Lbtqqv7nvHe+0owObU0BeFOT
         yX60MVFz/oHoQXA/mnbTPzGJnUM4+fE1IhsBRcQkrUMtVCD8uPWR2caY4t5lXF9RSe6C
         sb77NLf9KPpqUfZJ6G7UyleChZeArZmGAmgz83iTVuaR1fGRllTpe8bN8RMeroBFDsIO
         aMKp9OYRWnrLyUYK5/qJjxQ3h52nzgtSs87OK+iDsKroQRRDnPTdBlXKS45euQIPdhBq
         qFkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763197824; x=1763802624;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ucj2p+rgYAXgwVH9kYepl5CbaaWyr15G4v4y10s3RPA=;
        b=Q4LClUWjuuQeUIvgZ9C8TSK7S9AAogJRnt6Pr/4A9rWtOVFEBZ6Ah4Yu4P8plkeREY
         35Iwp+2ffbQl9+0oWw/ghnCcayo57bxvSct3QrpcrE8/+iCBNabA4IpXABg4BNezege0
         K4887YulwJzv1/G86NLFXJXCgEmXq6S0ZsQPxwsfhNWq+QuxmtbCKVVFzjan4vxdvCEZ
         7DusxumTHI03MuDMbpXpxBe9W5XE6G7vqfWpz/yfNarbDR160CD8mnWHPto3UzYiPe1r
         gynYGezDDst6TRyYr9s6oYcRPVp6g2mAVfOCKxXbcAXH4K2HYeNZka7B+edPFsvfnDdE
         uM/A==
X-Gm-Message-State: AOJu0YyzZj3Y/GVNUCkbSvjWOhOf/7nRmOV4hQ/6CpoiV2mLH5k1TyS7
	JdmBGtYeR6o+SG/z8IXyBpbeggoyWmi8gN67h+kXHAjOvCCWya5zBN5NtPUGyNJ6bBHllHNj
X-Gm-Gg: ASbGncsS8788w9DKICrXfSf/96mGFhHsgKqCOmq87HmyJ2JRiTZmqQauH/RtXXwVMOY
	j9K8OV5/rXakfMQgTGqECQRSHqzbF6ghVRxPDdE63I4dwi+W/KyCSqtVAWlzqits+YoTBn4W8No
	vwHxCnaao8KxC+7MfHbY5qAIraRqxBLAcXxq0xxvnohmOYkXNrefrQueaLGJobbpHN8tiZ1+0kz
	y/S4h5is2FYw54MxTDj2eKi53dVMYwj93hhfiNYyyaunsgAKGg+ZN94n/BKqqvcBe4LcgnbKrzQ
	ScXQCJLclSktT2Mah6zcl4Ghv7MqFaYDIzBLa9npTs4iTc1N3bIdKtbVAm49hfvDa8/88ZzOevU
	nCC+Nb/H4BLoE8URx5/fnTqTPF4qDlfWgxDEq5ThBHzh7JIRWifpaq0Lh/2W2VPMKiBMGb0/6bw
	==
X-Google-Smtp-Source: AGHT+IFdOsYpOF/1IoUjLFcOg8Bhmt7xGXHygPshYo3UvTQSI65Ig5BIOny2NN8RVI+eyWKKQcuUNQ==
X-Received: by 2002:a05:7022:688a:b0:119:e56b:9899 with SMTP id a92af1059eb24-11b40b3420cmr2866205c88.0.1763197824064;
        Sat, 15 Nov 2025 01:10:24 -0800 (PST)
Received: from geday ([2804:7f2:800b:a07a::dead:c001])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b060885c0sm23408196c88.3.2025.11.15.01.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 01:10:23 -0800 (PST)
Date: Sat, 15 Nov 2025 06:10:17 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Geraldo Nascimento <geraldogabriel@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>
Subject: [PATCH 1/3] PCI: rockchip: warn of danger of 5.0 GT/s speeds
Message-ID: <d6593ae4f59468f294fdddfef83791e0db100e13.1763197368.git.geraldogabriel@gmail.com>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1763197368.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251115_011025_381567_EE09F425 
X-CRM114-Status: GOOD (  13.13  )
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

Shawn Lin from Rockchip has reiterated that there may be danger in using
their PCIe with 5.0 GT/s speeds. Warn the user if they make a DT change
from the default and at the same time, drive at 2.5 GT/s only, in case
the DT max-link-speed property is invalid or inexistent.

Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/pci/controller/pcie-rockchip.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 0f88da378805..ed67886a6d43 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -66,8 +66,12 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
 	}
 
 	rockchip->link_gen = of_pci_get_max_link_speed(node);
-	if (rockchip->link_gen < 0 || rockchip->link_gen > 2)
-		rockchip->link_gen = 2;
+	if (rockchip->link_gen < 0 || rockchip->link_gen > 2) {
+		rockchip->link_gen = 1;
+		dev_warn(dev, "invalid max-link-speed, set to 2.5 GT/s\n");
+	}
+	else if (rockchip->link_gen == 2)
+		dev_warn(dev, "5.0 GT/s may lead to catastrophic failure\n");
 
 	for (i = 0; i < ROCKCHIP_NUM_PM_RSTS; i++)
 		rockchip->pm_rsts[i].id = rockchip_pci_pm_rsts[i];
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
