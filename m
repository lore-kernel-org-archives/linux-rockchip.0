Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28AF2C47089
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 16:26:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E8C2361003
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 16:26:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E8C2361003
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ky1Ek+5pwYGg4iALcjogQkgFcec8WNddtjVMENhlid8=; b=kwp2XOwQ9RRiZh
	vHUOco6e43W/KZtW0k+zSgYZW25B0nvzT086bo8pVcEiBKAL2GLiNFC8QwBuGxnzwC8Jk6LCx0Qnb
	pnNJwwXEnyj1mD0l7vzkIFNZbpkpP5TvkaglEdvU4U1BaKx1ZjxV0oeo0zhDNdO9AFalPYqaE7FmQ
	BzKrkG53yCPsJjUF0snoQtD8Yf3yuN9SlSEWGbhbE6WZNX1KAN5IjiR39lUE5wdE0cc3HiYdOjZTN
	1742O9GnvLiEY5JUdYiMrOSqH8Bf2AlSRkv5nGbQDLg5l+33eRJnE4Oa5vgVKoeJeO43G2KEdvG1D
	Xm0Gl5Y8IZA/kW8ae6/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmIpd-007b6O-8C; Thu, 27 May 2021 16:26:01 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmHb8-0072NM-VS; Thu, 27 May 2021 15:07:00 +0000
Received: by mail-pg1-x530.google.com with SMTP id t193so155073pgb.4;
 Thu, 27 May 2021 08:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iACzWLVmLzVGbDObuCyVoRniRyVY+AS4XvWtkzM+TCA=;
 b=I2De53zHx9sUeH8xO92FDmgThOftuNThtNqV5rWNq1pHXmfUN4/RLRt2WmCja/ggqV
 T3UOSnxCHHYvO11KVWPHsJaUuSK6Qp+y+MZN6ylxeSKetTvJ+kQk9v38scgP8SX40RB1
 qEIfEmnMXvWOXxPLHdr9RAUATZolBfGHEkN1jd2JlgF/PnI58EW1Afqd61Pwmkj32o/W
 qen5UBx6G0SCdSJ98kuukoVQ0ukfFmRVMv/jjHcxzYC5hzyyeEzzdUBip5kUCTnRYAXB
 Uet5pYz1KkCmoTnB+vMkX00OHqZ33+hm4Y8gMkpbNtS3xuNmbZeWwR8iCeE/Xjv+CMFR
 7VNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iACzWLVmLzVGbDObuCyVoRniRyVY+AS4XvWtkzM+TCA=;
 b=NLoZ5cqVsae8fAqvE68XeRUB6xVm9fxcYwI2asC2HpIiNMANvxZZEKjW/euCa0CySc
 x9mbN5NesY8Bl34IGem8lNDU4xAAITORovpniGZsyIqxsMj5nqYI/06DnuOZSJJqDVQD
 rSu2cX1JSTR6VWZ1Np66DOfxg54cD3OvD+swzNyRMNRzC4DsmLECwbqGcDr/psF1fdfp
 tVNTrj/HIm54TTZX2wpZR+jl0FdTH98a3KuwXHQcV/DjMdoWYmE2mVmshb3/QlPk9w9U
 FgVU5Zo0sTTlQYpBsH1elJP4PFAcYR939S8Oys7DKvG0HoMp+viJ4VdaYLNDU2igpb57
 HsaA==
X-Gm-Message-State: AOAM530iy5TCDsVcBfW52RrnjCm/k/TeyfUFgYP+MOhoZcj84wd+GekR
 fqWZVTpnDd1c1xiBxg37CTEZ6pM+q1pqaQ==
X-Google-Smtp-Source: ABdhPJyt2y6yo8Mr4sui/jdnkdSlmaGceJ+XDZGMAA0LUyLXGITxqn+34JTAuCKZr9wZptUBvqo/rA==
X-Received: by 2002:a65:6a44:: with SMTP id o4mr4078506pgu.145.1622128017670; 
 Thu, 27 May 2021 08:06:57 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id mp21sm2315194pjb.50.2021.05.27.08.06.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 08:06:57 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org
Cc: Punit Agrawal <punitagrawal@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 alexandru.elisei@arm.com, wqu@suse.com, robin.murphy@arm.com,
 pgwipeout@gmail.com, ardb@kernel.org, briannorris@chromium.org,
 shawn.lin@rock-chips.com, helgaas@kernel.org, robh+dt@kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH 1/2] PCI: of: Override 64-bit flag for non-prefetchable memory
 below 4GB
Date: Fri, 28 May 2021 00:05:41 +0900
Message-Id: <20210527150541.3130505-2-punitagrawal@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210527150541.3130505-1-punitagrawal@gmail.com>
References: <20210527150541.3130505-1-punitagrawal@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_080659_090534_A2492639 
X-CRM114-Status: GOOD (  11.56  )
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

A PCI-to-PCI bridges cannot forward 64-bit non-prefetchable memory
ranges. As a result, the change in behaviour due to the commit causes
allocation failure for devices that are connected behind PCI host
bridges modelled as PCI-to-PCI bridge and require non-prefetchable bus
addresses.

In order to not break platforms, override the 64-bit flag for
non-prefetchable memory ranges that lie entirely below 4GB.

Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Link: https://lore.kernel.org/r/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com
Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Rob Herring <robh+dt@kernel.org>
---
 drivers/pci/of.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index da5b414d585a..b9d0bee5a088 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -565,10 +565,14 @@ static int pci_parse_request_of_pci_ranges(struct device *dev,
 		case IORESOURCE_MEM:
 			res_valid |= !(res->flags & IORESOURCE_PREFETCH);
 
-			if (!(res->flags & IORESOURCE_PREFETCH))
+			if (!(res->flags & IORESOURCE_PREFETCH)) {
 				if (upper_32_bits(resource_size(res)))
 					dev_warn(dev, "Memory resource size exceeds max for 32 bits\n");
-
+				if ((res->flags & IORESOURCE_MEM_64) && !upper_32_bits(res->end)) {
+					dev_warn(dev, "Overriding 64-bit flag for non-prefetchable memory below 4GB\n");
+					res->flags &= ~IORESOURCE_MEM_64;
+				}
+			}
 			break;
 		}
 	}
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
