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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C0BFC47082
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 11:32:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E9A2A60FDC
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 11:32:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E9A2A60FDC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=49nwNBpYbD4xsIpv4r37iqJX8oSb8AJ/WVAHv0Rmfpw=; b=GQmZHP4lTSj/f1
	qlfmspIJM1ToX5TXH1fQ3baPZ2i7DjCRXexZVFXhJ4XeWo6YcRrtO2FEjva24lxp6T60Nd4hiTyaq
	IgoFcw7019uc7ZOdfvwTOX7UwXws98zMU5ttNcaAZggJzI0/1U1RfgxalOE9UK3C5Gq65r00KZF3s
	cZya1JjzvR4OuYI2WkisnqiCrOcVERa3+I82ZBRAm6kYPqhh37KLTrOVTaN5gA6mJ8dWALf8/mYpd
	T6xyHZC0YSEyyws9Ojks89banowERS1JKYxIrDthRmDjz9m7bx5KAaVtxK8QZ/vWFrzGdI3khGxKK
	JLoHCVsDkHsV0qpm60KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqDUr-003NHo-UF; Mon, 07 Jun 2021 11:32:45 +0000
Received: from mail-pj1-f48.google.com ([209.85.216.48])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqDSR-003MOD-JQ; Mon, 07 Jun 2021 11:30:17 +0000
Received: by mail-pj1-f48.google.com with SMTP id
 g6-20020a17090adac6b029015d1a9a6f1aso8119972pjx.1; 
 Mon, 07 Jun 2021 04:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gYiHNfH1kBmlkfBbotBqPsqiGVKKUt560+1kJ7V9BBI=;
 b=HSjMpYqbSO55esGzCWNfGkoYFj4gMqtwfUfHXE29SoUjYg37Hb+SuucnnMj9G8fzbL
 mYA1d0dno5FmYgmBIwveBEpO4fVaS/RCuo/vWRQ1knSJvNVTEPA0Yf6k3jYgHJXcRSOE
 25RXPij1VsOc6kkoWt5UV3Lw9uo7IprR5sS69pv6xAawn2N8U48H6guaaFI50W1uK2z8
 PqSPeN91DfEhs5yuomAa+W8bPkj1s7gpU0EA9euZPaydazhVJt5fE5a3bOzvAAyHfKnX
 H86UYjnw9lPB+vgq4+CJrIsc8/p8AM18wlQY50UZ9os7FZk60dV2h9sgOEUkxi4a8Tsl
 ePjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gYiHNfH1kBmlkfBbotBqPsqiGVKKUt560+1kJ7V9BBI=;
 b=DvpTQsI422hrl5O1LPh0EYMIn3rDZqI6B4OS1PAVQgL3+rXnuo18yNpKpPsdCaTZY9
 mJpp/HsKcEmmcVFICifF18/cTQrABt2fWfgQTxWodpvcZBX3qwgswr7eKUdcnESu9CIm
 NPjlnHj3Kqy2vWVffFgMV3Q94/nzWPIXVaxHnj/C7QwwguXSAmGxM/bK7fuTKaJcKYQ5
 FNTib5MJsqhpNZV20k4MT/8piuvPTBmaDLkyJXvJ4SwpMFrZrh1wbIg7FkKJn6dgbsvt
 LegOTim64UkljYz/yb7XlF2VNco7da4ZeHKQTE7g7c3m+1qTqzPC8+hcsTPb+MxgVbJM
 2GLw==
X-Gm-Message-State: AOAM530mU8PQB7pcZU1gtKNsUA3IDl3Ia20ajBxx0ixr+c+TLi/jKJGd
 /PbviTNMm5Vkxh5NQKZ75DvsMQL+aRKKzQ==
X-Google-Smtp-Source: ABdhPJyJGEghd9xFqSDRVaCu/4EepRG3WEkYdxRhmQn4Msi5hfJY0FokTjDtG1ac+2yeZYi+sEBMQQ==
X-Received: by 2002:a17:90a:f304:: with SMTP id
 ca4mr20846856pjb.177.1623065354552; 
 Mon, 07 Jun 2021 04:29:14 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id i21sm8029078pfd.219.2021.06.07.04.29.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Jun 2021 04:29:14 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: helgaas@kernel.org,
	robh+dt@kernel.org
Cc: Punit Agrawal <punitagrawal@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, alexandru.elisei@arm.com, wqu@suse.com,
 robin.murphy@arm.com, pgwipeout@gmail.com, ardb@kernel.org,
 briannorris@chromium.org, shawn.lin@rock-chips.com,
 Vidya Sagar <vidyas@nvidia.com>
Subject: [PATCH v3 2/4] PCI: of: Relax the condition for warning about
 non-prefetchable memory aperture size
Date: Mon,  7 Jun 2021 20:28:54 +0900
Message-Id: <20210607112856.3499682-3-punitagrawal@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210607112856.3499682-1-punitagrawal@gmail.com>
References: <20210607112856.3499682-1-punitagrawal@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_043015_693464_E014BCF9 
X-CRM114-Status: GOOD (  12.88  )
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

Commit fede8526cc48 ("PCI: of: Warn if non-prefetchable memory
aperture size is > 32-bit") introduced a warning for non-prefetchable
resources that need more than 32bits to resolve. It turns out that the
check is too restrictive and should be applicable to only resources
that are limited to host bridge windows that don't have the ability to
map 64-bit address space.

Relax the condition to only warn when the resource size requires >
32-bits and doesn't allow mapping to 64-bit addresses.

Link: https://lore.kernel.org/r/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com
Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
Tested-by: Alexandru Elisei <alexandru.elisei@arm.com>
Cc: Vidya Sagar <vidyas@nvidia.com>
---
 drivers/pci/of.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index 1e45186a5715..38fe2589beb0 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -581,7 +581,8 @@ static int pci_parse_request_of_pci_ranges(struct device *dev,
 			res_valid |= !(res->flags & IORESOURCE_PREFETCH);
 
 			if (!(res->flags & IORESOURCE_PREFETCH))
-				if (upper_32_bits(resource_size(res)))
+				if (!(res->flags & IORESOURCE_MEM_64) &&
+				    upper_32_bits(resource_size(res)))
 					dev_warn(dev, "Memory resource size exceeds max for 32 bits\n");
 
 			break;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
