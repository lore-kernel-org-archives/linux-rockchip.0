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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2581BC47080
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 May 2021 22:12:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E0FB26128A
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 May 2021 22:12:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E0FB26128A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2U1YvtUWJ0+vSqrHDu/IYGJAqQhq+aDpZiykfWbepsg=; b=3JHpZqhNxGXxSr
	6abKYaz5XY13Fn5ZEiFAfun85AtvaloEYtntmSqJbk6fOIBUcwtZWrhxL6s3WFp6X95qhgiQQKSCh
	vOHDs+sihhZ7QizmUDrKLaCOq2TJbbFBhcCV+/k8nVVCI76Kpg4IVZZGiR6ud65J1k+WHf8/dsGrR
	By1hVofspqN9jfun5/hWWeSPiFy31VmOZ/+VfukAAJtWShr3kHa0eIE/wXvzn+t8hZE6rAXEsn58a
	xan4PZAOD+lFooUvLgVrWM6pRq3JqujShm+9nnFipn0fdzl3YxNcwZQcvOcoEnSqdht3jhWO7TX0j
	x1GPs56COf1ntRuvz/+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnq9A-00Dbsn-CZ; Mon, 31 May 2021 22:12:32 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnq8o-00DbRj-8i; Mon, 31 May 2021 22:12:11 +0000
Received: by mail-pf1-x433.google.com with SMTP id d16so9849487pfn.12;
 Mon, 31 May 2021 15:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GljEIu7jIiK5mN+vwX9RD16rs+gsfiwk0Od3Nc7rcMA=;
 b=vNvhfeWt5cFD8gkB4sUI7nF6V2E/QEdfYsExlwI595NuvXT3oIvH3xZNLviBnX4zDN
 nuR04B1NXsc3Jhe6NFFmU1xquEyA26aLCG2DqHFvRiLvTHBY4DS7rS9QMlqGLcwWL56j
 qf34Kc2OvKjY6sJRKe5LN79I2oNo8sihnnkTlb/NYeMaI4sA0na2qNzGmlCUmYblWHPk
 06RNlK5AeluOY4dQYH7lsutCEehI4Guj2sGqbJ23hStHORh9mO3r30ipUYFVqhlSLTwK
 dMxSvewN9Y0aGJOOc99hYFlq7vhfNeEXNDi0RFK/ay2235wQntfmfFcOdqg2vkpcngyI
 D0jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GljEIu7jIiK5mN+vwX9RD16rs+gsfiwk0Od3Nc7rcMA=;
 b=b2EFM9hOENNsavp9aq2Sy+N6opq+Zwq93BACVwV2y/NbD/uqK20ODeswKs5rcJdJMZ
 mWE843j7V+ZvofgXqsaj6cXu5/zlRb64ZvI29nt3FeBwuLaq4crJIPZjZK/kAh8b3OVH
 gSgtR/Da4HbtV2kzxWUDqymN2KE1fRdzbEZIx22ooTTCz8X1vYBO/+pg00OI+bFKn4vJ
 KmGwvu4CWKXsfcQ/WgCmH7BrEtQ4rZnfc+PYE2syZlr4HZ0+3rah5qgUFCCtT9Xb4LXH
 3CbOiUq3Uup0wLHylnJUh3RIJfBsJ2LDp0zZX0R7wS1Pwg+ZJ1LLaksmlSk4soZMhMYC
 7g7A==
X-Gm-Message-State: AOAM5308BW1lamt9IjOvXZwQZwXozNqU3u2EcNVtF4h9iwMQdcoaKy5b
 SN4Jo1DgWHcE9AnK3H5l2TmYAKHIYR41Sw==
X-Google-Smtp-Source: ABdhPJy1PBZt9zgv9B4tloqR1PSuGex00FScff7o1LZFYY4Dcj9PLvG31McWKUKnJHay1fqAP8grxw==
X-Received: by 2002:a62:7fc5:0:b029:2de:5813:8890 with SMTP id
 a188-20020a627fc50000b02902de58138890mr18721295pfd.60.1622499129035; 
 Mon, 31 May 2021 15:12:09 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id n23sm11879008pff.93.2021.05.31.15.12.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 May 2021 15:12:08 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org
Cc: Punit Agrawal <punitagrawal@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 alexandru.elisei@arm.com, wqu@suse.com, robin.murphy@arm.com,
 pgwipeout@gmail.com, ardb@kernel.org, briannorris@chromium.org,
 shawn.lin@rock-chips.com, helgaas@kernel.org, robh+dt@kernel.org,
 Vidya Sagar <vidyas@nvidia.com>
Subject: [PATCH v2 3/4] PCI: of: Refactor the check for non-prefetchable
 32-bit window
Date: Tue,  1 Jun 2021 07:10:56 +0900
Message-Id: <20210531221057.3406958-4-punitagrawal@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210531221057.3406958-1-punitagrawal@gmail.com>
References: <20210531221057.3406958-1-punitagrawal@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_151210_368116_13ACEF04 
X-CRM114-Status: GOOD (  14.01  )
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
Cc: Vidya Sagar <vidyas@nvidia.com>
---
 drivers/pci/of.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index c2a57c61f1d1..836d2787510f 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -348,11 +348,15 @@ static int devm_of_pci_get_host_bridge_resources(struct device *dev,
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
 
@@ -572,12 +576,6 @@ static int pci_parse_request_of_pci_ranges(struct device *dev,
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
