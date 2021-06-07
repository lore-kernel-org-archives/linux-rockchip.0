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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A885C47082
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 11:33:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CCCC760FDC
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 11:33:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CCCC760FDC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8SQAoSkIY25mjFbPrJH5ApyybbdvDF2XKu58do44Yw=; b=nF89ZDymD33tqT
	Z3nhRh0nNZNX1cWRJjVPl6ryspTTlbfHxPu4bcF+48aIWa0PKhciNJlLw5Vcjy9uF7jQPVhD+R6Tf
	qe2cquj0+Vq5eqsNEgwTrD//J+qexov2h9LPin5b/82gygfmjCPeMYjWzLgZAJXubh5kjpaa/qLTO
	SMkrlEJ2SmUGSgZKc4QK/n09wPvS0y5uixDo2q7u5aT0DZTWiozXrFjblZIr9eSazqM24LH6apS5W
	mezHx6yvaE5kMWd6L9E6Jz4dTh3ux/v3sDjOV3SFhgtK6la3IctqFcgS61ZY9dJsTTu/Ds5t4PGzT
	Rr6TgGXTm8Rsr2C3eNGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqDVh-003NZm-CQ; Mon, 07 Jun 2021 11:33:37 +0000
Received: from mail-pj1-f49.google.com ([209.85.216.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqDSW-003MQA-DL; Mon, 07 Jun 2021 11:30:24 +0000
Received: by mail-pj1-f49.google.com with SMTP id
 mp5-20020a17090b1905b029016dd057935fso3538538pjb.5; 
 Mon, 07 Jun 2021 04:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Rvzb4qtGRQUWi/ckS9nOcXRKxlM0Wnl5P5x853tHbFI=;
 b=WVWBYvsx5qebQs4uhxeWPTzu+987IycgSJNvyTphaVZrETj044Iw58W6NbDZyHgxse
 r5AwKefCsExOVbY3OQaHaijWhGJm8Bnd3b5eNIibKARMPxmBXDeW4f5d5cyyg9z5I8ZF
 FDXjSJKyFIJRfk/JsSNyibt2LYfBdRNPDxyH9PqyZF7pIrTwge0x9S0P/r9cgwHkA6oQ
 3d6DKAIwRz1+GjxMzI7diW4cIGU7BEajxdieRXURAaE+C5ROu6UCtr3WjkCKLMMEG6FP
 OTOdGOndNHpnmHg8xUpabWofMjMoq1m+VrGTY4DAqSx7dRBD6hqm6PB58wsTlNMIlUVx
 exKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Rvzb4qtGRQUWi/ckS9nOcXRKxlM0Wnl5P5x853tHbFI=;
 b=Py7VEVmksaU65hsHAPS8BVLoQvTaBN9+E6VN+7/aRCzPtw85RmPzGE1T+spBk7K2Uy
 ogqQHRps7YKZ8YElZRV0796RrdHwTLNDLpLGT/VeLC2YKAPgGOh8cyPjH6nJ4d9GPs1q
 utWOhOgKjoLvbbKkIDEDiz4qoSlmxkDtCzted3TzGAWURe5MQ4HWObiQPnb+Haj9LzGY
 Xf/hv5nG+CS9DOKtLX4EgYOe3c8AKMwwAJcMfUKCJgQhdrPCUoyVyO0gAn7Mouh5YMbY
 +04pvqSAS4S7tlmDLx47J9+o4sdkqAEEwQEAZJunRxtRNgCeRL41wq1FcLrj3uHJnMvw
 Q2uQ==
X-Gm-Message-State: AOAM531G7wbywbjjEQr3MPKVSR3dF8th1Wd8HLbXcVaFjiB18/GiEWt/
 cNxYweJB9WOVY8JaNEP3m2I=
X-Google-Smtp-Source: ABdhPJzfodVWiIz5t1qZzTiFumpaNqWNvckd2dBZi4kAiT/7o4BeWZ8rJjTxJXM+qOQg/O+SeaBJHA==
X-Received: by 2002:a17:90a:7e84:: with SMTP id
 j4mr32325306pjl.101.1623065359403; 
 Mon, 07 Jun 2021 04:29:19 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id d23sm1725619pjz.15.2021.06.07.04.29.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Jun 2021 04:29:18 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: helgaas@kernel.org,
	robh+dt@kernel.org
Cc: Punit Agrawal <punitagrawal@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, alexandru.elisei@arm.com, wqu@suse.com,
 robin.murphy@arm.com, pgwipeout@gmail.com, ardb@kernel.org,
 briannorris@chromium.org, shawn.lin@rock-chips.com,
 Vidya Sagar <vidyas@nvidia.com>
Subject: [PATCH v3 3/4] PCI: of: Refactor the check for non-prefetchable
 32-bit window
Date: Mon,  7 Jun 2021 20:28:55 +0900
Message-Id: <20210607112856.3499682-4-punitagrawal@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210607112856.3499682-1-punitagrawal@gmail.com>
References: <20210607112856.3499682-1-punitagrawal@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_043020_504327_5D8E4518 
X-CRM114-Status: GOOD (  13.61  )
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

Recently, an override was added for non-prefetchable host bridge
windows below 4GB that have the 64-bit address attribute set. As many
of the conditions for the check overlap with the check for
non-prefetchable window size, refactor the code to unify the ranges
validation into devm_of_pci_get_host_bridge_resources().

As an added benefit, the warning message is now printed right after
the range mapping giving the user a better indication of where the
issue is.

Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
Tested-by: Alexandru Elisei <alexandru.elisei@arm.com>
Cc: Vidya Sagar <vidyas@nvidia.com>
---
 drivers/pci/of.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index 38fe2589beb0..0580c654127e 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -355,11 +355,15 @@ static int devm_of_pci_get_host_bridge_resources(struct device *dev,
 			*io_base = range.cpu_addr;
 		} else if (resource_type(res) == IORESOURCE_MEM) {
 			if (!(res->flags & IORESOURCE_PREFETCH)) {
-				if (res->flags & IORESOURCE_MEM_64)
+				if (res->flags & IORESOURCE_MEM_64) {
 					if (!upper_32_bits(range.pci_addr + range.size - 1)) {
 						dev_warn(dev, "Clearing 64-bit flag for non-prefetchable memory below 4GB\n");
 						res->flags &= ~IORESOURCE_MEM_64;
 					}
+				} else {
+					if (upper_32_bits(resource_size(res)))
+						dev_warn(dev, "Memory resource size exceeds max for 32 bits\n");
+				}
 			}
 		}
 
@@ -579,12 +583,6 @@ static int pci_parse_request_of_pci_ranges(struct device *dev,
 			break;
 		case IORESOURCE_MEM:
 			res_valid |= !(res->flags & IORESOURCE_PREFETCH);
-
-			if (!(res->flags & IORESOURCE_PREFETCH))
-				if (!(res->flags & IORESOURCE_MEM_64) &&
-				    upper_32_bits(resource_size(res)))
-					dev_warn(dev, "Memory resource size exceeds max for 32 bits\n");
-
 			break;
 		}
 	}
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
