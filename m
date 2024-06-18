Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 626FAC2BA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 16:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jiG5BoUUOSuz+d6seARUBRqyFah6NJARQGHOVPDiYPc=; b=x5+GpI0m0paYQ7
	g8YRsejQ3iP9W8V8j0unxNen08YoWnMNykhGJx9mO3IuF63zt2TBGS4pSUgy3n/L8SuWJVi+Wd9gT
	XP9dhTUz/mlJuzu9zpcMuQiqIzO4J+yn18dubGE6iyRd4voTXo7+uLXZBQs/Hh17/ZJiRpSs6zvgS
	6+fDo/SBVePQDMO7As7VBPthEBX3hSBr6kAYjURqO0BVBVVadq+aclkFGi2KNUh8sT/7StfrH7XZA
	XIacUncgGAPIg52eg3dQvDNjGL6I7ss75iKIbzTr5t7Ky0JHEvNh1fI+Si+K+1nyjJ1bfHLWAggV1
	AVLylWau6h0rKwDCD4fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbuM-0000000FtZr-1E5O;
	Tue, 18 Jun 2024 16:42:10 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbuG-0000000FtWN-05wO;
	Tue, 18 Jun 2024 16:42:06 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1f480624d0fso41012355ad.1;
        Tue, 18 Jun 2024 09:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718728923; x=1719333723; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iixnqsqkMZEErBkM0858HsMj9TA2R4apkp/+SZw2++E=;
        b=movS8ZyYWt5Ke/yYBW3G7sSnGTahnQBiflXINtOgA4ZStC7ElXZi2u/eXsiOxfsUhC
         wkt49m2ypLoLG6Mg8xU44OG1vZBycPVa+LhWm5Iq7ppzglHFh4soKee2skrRHtrpQFg/
         hg265XIasXjdvnh+3a9MJfOfK1pmhODOtG5iZay16OZwdCO5PZX3ax1s77C3JwY17VOG
         v9MD31DQxCy0E9MWg3c55rS3k0apv3fVp94I25TdYAg1vEsj5/C40OAX3+9pY0OR+m7i
         HcyyorrdZsoAsy0Z8oFnzdxleiI4SenSNAYkw0VKdHDy5PjtjARUEeIgn8BYfq1ajqnH
         1ZVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718728923; x=1719333723;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iixnqsqkMZEErBkM0858HsMj9TA2R4apkp/+SZw2++E=;
        b=okwNBTnofPIeTSWZ8mWBkusotKLXLoot7FbY20wc6Txf7vvDkfp79Vrt8PujsYe23M
         vBURzJ82pevzU9D0oWtCwV0F43vBS4M3JiWtpbq+dqnppOtTSHczgYdks9kein2Brxny
         N5x16/zNmPz/YZ8N/mEKv2KGFhEqnGPv4yddlk4Izgr873J16COTttokLOnW5VOq1sxu
         rPlounaen6GG68/+lztPSeh1pkRavGRzmxTZnUEjOrlvc9iDWyh70zfA7S3agXz4pnE/
         Cgb4qJ08ZJyw8mJwlPPRmR7gMPaFghLIhhrQD6mWg5OXmyxIfTKZs8Rdzm6t9KT6NQhx
         8AAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWuugjGyMkUv6BnuCJl2bPGA9OQRYHOXdTQIRy1Q8wXByFMLKaYQjEi3SMectj14lnWejCRXSQgxvUJOND4Q4bu9pbFq9feKNKQDVtj69D2Epk/tfcmr1eoq3EJzO0LEgYupLCZLc3CRLaWW4QkFup3WVFtGO64tqI=
X-Gm-Message-State: AOJu0YzMeqMg7QW9ofpLEfepMGAAMY2voXO0clICi56DDMeoHfmOtqpl
	LNn3Z9aLTIYaRVRFmql+RyM+bgRdVw6Zrzboa6J74iK7Ec/KK/Dc
X-Google-Smtp-Source: AGHT+IHsT0VQzYxsZ9Jo6zIgcHs26CdlPuekBEpH3qo+y0uEIlpZiMjRBVcq7ZtZJ90pAsTC67dVlQ==
X-Received: by 2002:a17:903:41c6:b0:1f8:44f8:a384 with SMTP id d9443c01a7336-1f9aa42f5c2mr1651995ad.30.1718728923292;
        Tue, 18 Jun 2024 09:42:03 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855f0175csm99081835ad.191.2024.06.18.09.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 09:42:03 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/3] PCI: rockchip: refactor rockchip_pcie_disable_clocks function signature
Date: Tue, 18 Jun 2024 22:11:28 +0530
Message-ID: <20240618164133.223194-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240618164133.223194-1-linux.amoon@gmail.com>
References: <20240618164133.223194-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_094204_205081_C263C312 
X-CRM114-Status: GOOD (  12.69  )
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

Updated rockchip_pcie_disable_clocks function to accept
a struct rockchip pointer instead of a void pointer.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/pci/controller/pcie-rockchip.c | 4 +---
 drivers/pci/controller/pcie-rockchip.h | 2 +-
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 5154dfb1311b..79f625cba11c 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -282,10 +282,8 @@ int rockchip_pcie_enable_clocks(struct rockchip_pcie *rockchip)
 }
 EXPORT_SYMBOL_GPL(rockchip_pcie_enable_clocks);
 
-void rockchip_pcie_disable_clocks(void *data)
+void rockchip_pcie_disable_clocks(struct rockchip_pcie *rockchip)
 {
-	struct rockchip_pcie *rockchip = data;
-
 	clk_bulk_disable_unprepare(ROCKCHIP_NUM_CLKS, rockchip->clks);
 }
 EXPORT_SYMBOL_GPL(rockchip_pcie_disable_clocks);
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index fceb6f526b72..6fe5c32af0ee 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -352,7 +352,7 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip);
 int rockchip_pcie_get_phys(struct rockchip_pcie *rockchip);
 void rockchip_pcie_deinit_phys(struct rockchip_pcie *rockchip);
 int rockchip_pcie_enable_clocks(struct rockchip_pcie *rockchip);
-void rockchip_pcie_disable_clocks(void *data);
+void rockchip_pcie_disable_clocks(struct rockchip_pcie *rockchip);
 void rockchip_pcie_cfg_configuration_accesses(
 		struct rockchip_pcie *rockchip, u32 type);
 
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
