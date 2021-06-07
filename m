Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E481C47095
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 11:31:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 54CE661090
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 11:31:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 54CE661090
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vsZJFDLMToqaC2o6FLa+1i1UNM1mMK9V31lgc+nadFc=; b=YbZcDUvjgu8Z7S
	TS2cR4hJs/TNeALa3DFp7F0UoO1zjOhnL1cXCqusdbR1zHjeLCYwI8nJ1BXpwGfNUXr2efSWqVIsU
	aABpsZ5v/cVbOplAQllfnKPTAMZRw1wuvzO3SpswU1P326vhX2HpCnvD5qv3XfxNi3xXloguLeNHV
	19FquUTObaOeliDbJYZmduF53VTc7HQz+HXvM+mZW8DXPu61Jihp78pmYRKMgMb8LAjvMESOL/2j2
	ZG9aR2GjCpJsCWkBoqqJDzEjU4CRafl7oIgRhmroeMCwFZs0v189mppv2ihRAnRFUpkB1IvlZ1HLC
	6A7Zg90nG1+qXTnayDdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqDTE-003MfQ-K9; Mon, 07 Jun 2021 11:31:04 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqDRP-003Lze-U4; Mon, 07 Jun 2021 11:29:13 +0000
Received: by mail-pf1-x42e.google.com with SMTP id g6so12852135pfq.1;
 Mon, 07 Jun 2021 04:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YCToNP4lwbo49RVCOfoWUbLA0lZuEyfjkp0b5XCIINA=;
 b=nI5Q01rIet4WeJW9GCi/1goLl90w/OB7zL9RMrdqmXVkYdnYtyK8GQBLIExcFjRexR
 /TNYbgs7tuinG3wCB2uo6ILPXzgoLaKrsRkRjbi2c9jP0VBHblYzx3CLt0sfXMZblxtb
 KQCA7eflorikpmtnDLhTsQr1HCJ/hueB8uiDQGPtiT0w6YcGMiWFWBWuUT/owIL9ioBA
 sIjX8YcWX6tG0nMwu+NGC7/wiSAa2HJe7dMbhCOC/gtgLQWNjFbgt98vYvd8gNIidMLc
 HmCcnN0MfXsBlj0ya9YnFDYuuK3jCak/H/A2V0FTN98wJsWRA3nZbgBz1WDhfBEuEL9G
 3uHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YCToNP4lwbo49RVCOfoWUbLA0lZuEyfjkp0b5XCIINA=;
 b=TENsGmelV+Hau2R18ARqPyBd6bsVrgmF0tC0GbVuJ/8jEjMmjzk54PUvEfplnTVg7L
 liTjVOKfBQ1W/A2wf8TYANK1SaYbdhSi0E6OIqt9aX4SrqehYOd5QWS1Ie2C5A+W09IL
 +S0GgW5LPVdhYvKoG0X7s9bp/JZE9Ss4smSKUXy2+f+rw2C2tjfMZbG5esNvX/gostcm
 tlZxomBQDI3pbQBItuJH6S9vz76Hyh0piaYrTk7VHbDk7T0fp66eHSPFJ2zZ69RiF0+a
 HIcr3WTympJebN/moZCuusc+jF3KbCNGIdkEWHVfdEpZYjQsDYopvlVYzLcHSKcjObd7
 mhaw==
X-Gm-Message-State: AOAM530FjSSnN6+2FvI7EPt+5y3hEidi6B2REPgUU7rBJ4qOeZKRY5rc
 XhRTFKKTOWKqvN9wG3FVNrQ=
X-Google-Smtp-Source: ABdhPJx0kIhVcKMkYM8J/nN6t7I96Ryv12N586HazWMrF66vgSMvWCBoKF26ggQsOxOptM4bhMf5cg==
X-Received: by 2002:a62:860a:0:b029:2ec:81e1:23e4 with SMTP id
 x10-20020a62860a0000b02902ec81e123e4mr15672830pfd.11.1623065348506; 
 Mon, 07 Jun 2021 04:29:08 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id c130sm7919370pfc.51.2021.06.07.04.29.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Jun 2021 04:29:08 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: helgaas@kernel.org,
	robh+dt@kernel.org
Cc: Punit Agrawal <punitagrawal@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, alexandru.elisei@arm.com, wqu@suse.com,
 robin.murphy@arm.com, pgwipeout@gmail.com, ardb@kernel.org,
 briannorris@chromium.org, shawn.lin@rock-chips.com,
 Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v3 1/4] PCI: of: Clear 64-bit flag for non-prefetchable memory
 below 4GB
Date: Mon,  7 Jun 2021 20:28:53 +0900
Message-Id: <20210607112856.3499682-2-punitagrawal@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210607112856.3499682-1-punitagrawal@gmail.com>
References: <20210607112856.3499682-1-punitagrawal@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_042912_032174_5FF732FB 
X-CRM114-Status: GOOD (  11.49  )
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

Some host bridges advertise non-prefetchable memory windows that are
entirely located below 4GB but are marked as 64-bit address memory.

Since commit 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource
flags for 64-bit memory addresses"), the OF PCI range parser takes a
stricter view and treats 64-bit address ranges as advertised while
before such ranges were treated as 32-bit.

A PCI root port modelled as a PCI-to-PCI bridge cannot forward 64-bit
non-prefetchable memory ranges. As a result, the change in behaviour
due to the commit causes failure to allocate 32-bit BAR from a 64-bit
non-prefetchable window.

In order to not break platforms where non-prefetchable memory ranges
lie entirely below 4GB, clear the 64-bit flag.

Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Link: https://lore.kernel.org/r/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com
Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
Tested-by: Alexandru Elisei <alexandru.elisei@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Rob Herring <robh+dt@kernel.org>
---
 drivers/pci/of.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index 85dcb7097da4..1e45186a5715 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -353,6 +353,14 @@ static int devm_of_pci_get_host_bridge_resources(struct device *dev,
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
