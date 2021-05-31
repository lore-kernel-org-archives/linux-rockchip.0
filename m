Return-Path: <SRS0=B2S1=K2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2DD8C47080
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 May 2021 22:11:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4EE3760232
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 May 2021 22:11:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4EE3760232
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tmq1emj/+uEPlTgHNRhjRKmi2Ym1HTg9UtJLPlDHcAE=; b=lFLCcJ/VcX2Cqt
	7zJTHHuGvzAgSFpOjoE+TmrajbpvxUKEJZEXmCyHmH+uQvxMoypUtlF5mFAdCxnPYFXdlrPfQq4Hb
	CvznyFO3pLu9nOmoYz2OlL4xYxmopEPeDmaXOqZmWST6fyxkjfuS4eoD8Rag5mErUPUMZSSrENd80
	c1ay16azZJ8+l0X9TLnJKAXaMcPyuKkSbeRcQagrCncvKvKDWTPvSGO7YoQJuoK0joqJN7EEibWAg
	G4rLgIskqu3S4t09jw4pjp8cSqu7cMSrVi6RUZ0rWwESDfdDqVc7V3gA+CsDPuZW02tV0TJr5BWkn
	l4UxIZHK8NDY+l4ri5hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnq8P-00DadU-Hk; Mon, 31 May 2021 22:11:45 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnq8M-00DaXx-EO; Mon, 31 May 2021 22:11:44 +0000
Received: by mail-pg1-x52b.google.com with SMTP id v14so9225802pgi.6;
 Mon, 31 May 2021 15:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ObJnk/4SRS5pFYp9Ryi74xRKcVKBz9rodsuAFbTAcF0=;
 b=NuJwoNvOCmk/TUqCGSOTXCu34DL22xBUfOL8NrOsw1RgI/+bcANwngaNNpF4xJlPXF
 D+PxMKt4B9NxIOiarz7Ot+QbC2klai1lJSIATiUarbkqxsBh520zgml0OBdVrQkoAWO+
 5vorZt7+wtyWfLVNvxGig+Hv/w/FdEiwBbhSFK7IN7TJPbjYBojzS6Bfrzcqr0iAb18s
 OqH0OJjweH9z00GiMKHC6mi6TMgz68VkYUivsIoHzgFypCRHt88aCFSi+0zMjR07BUmQ
 oO0Eqr7/b5ZdBOKmcxmWt7G0agsGvhKZtrhLdetVWcwPa1m8vOqGV0NinCq/r9no4pRt
 uZnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ObJnk/4SRS5pFYp9Ryi74xRKcVKBz9rodsuAFbTAcF0=;
 b=mfvZbstUIOQXhfIGPoUy4AnVIw4UY5UsAZ/K7pRa4D+0M2GWO0K8JN/1Jckn4f1tuO
 TTaJghOSCvJx6DMtOdz61HCrXfnNQCwAQ72TgCSWduZPB/2chV+ddQJRxU1xuhRLgK8g
 r/cy7sMTubaYFex6e1fEy8CpEcG7yE6ADobPtezS08gL9gQ70r/w+Urld5RwnYSWNl8R
 itRfpWgFVGdjfE3FlbAEwCd3Iis1oCuYmtoISXZaLT2xBZTd5aeqFP5lqUgTAiSUTsk2
 GMi5PSS/OzW2f4q8GYmuqLbYeBwY5Ec+BICef/Dxp53uokCAYJ/vqm3aAWx33T7iuCsa
 K3Jg==
X-Gm-Message-State: AOAM530SXvqrQKPL24GuRTGq16xdukTXLqOx/ZtdAjGGRXwf36qf7YAn
 oPAku+Afoli8JUFnA4rmwe0cLEK9wryVLA==
X-Google-Smtp-Source: ABdhPJyM6MZ78Cel4rzoNBtZsG5ANMUhigCb2ZFgVsujzRfnVOIzCkaz6aJHGBVbCnCg/2LjYhHZhw==
X-Received: by 2002:a65:64c8:: with SMTP id t8mr5505003pgv.96.1622499100960;
 Mon, 31 May 2021 15:11:40 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id z6sm12604823pgp.89.2021.05.31.15.11.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 May 2021 15:11:40 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org
Cc: Punit Agrawal <punitagrawal@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 alexandru.elisei@arm.com, wqu@suse.com, robin.murphy@arm.com,
 pgwipeout@gmail.com, ardb@kernel.org, briannorris@chromium.org,
 shawn.lin@rock-chips.com, helgaas@kernel.org, robh+dt@kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v2 1/4] PCI: of: Override 64-bit flag for non-prefetchable
 memory below 4GB
Date: Tue,  1 Jun 2021 07:10:54 +0900
Message-Id: <20210531221057.3406958-2-punitagrawal@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210531221057.3406958-1-punitagrawal@gmail.com>
References: <20210531221057.3406958-1-punitagrawal@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_151142_509362_F2F9487B 
X-CRM114-Status: GOOD (  12.43  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Some host bridges advertise non-prefetable memory windows that are
entirely located below 4GB but are marked as 64-bit address memory.

Since commit 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource
flags for 64-bit memory addresses"), the OF PCI range parser takes a
stricter view and treats 64-bit address ranges as advertised while
before such ranges were treated as 32-bit.

A PCI host bridge that is modelled as PCI-to-PCI bridge cannot forward
64-bit non-prefetchable memory ranges. As a result, the change in
behaviour due to the commit causes allocation failure for devices that
require non-prefetchable bus addresses.

In order to not break platforms, override the 64-bit flag for
non-prefetchable memory ranges that lie entirely below 4GB.

Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Link: https://lore.kernel.org/r/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com
Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Rob Herring <robh+dt@kernel.org>

Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
---
 drivers/pci/of.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index da5b414d585a..e2e64c5c55cb 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -346,6 +346,14 @@ static int devm_of_pci_get_host_bridge_resources(struct device *dev,
 				dev_warn(dev, "More than one I/O resource converted for %pOF. CPU base address for old range lost!\n",
 					 dev_node);
 			*io_base = range.cpu_addr;
+		} else if (resource_type(res) == IORESOURCE_MEM) {
+			if (!(res->flags & IORESOURCE_PREFETCH)) {
+				if (res->flags & IORESOURCE_MEM_64)
+					if (!upper_32_bits(range.pci_addr + range.size - 1)) {
+						dev_warn(dev, "Clearing 64-bit flag for non-prefetchable memory below 4GB\n");
+						res->flags &= ~IORESOURCE_MEM_64;
+					}
+			}
 		}
 
 		pci_add_resource_offset(resources, res,	res->start - range.pci_addr);
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
