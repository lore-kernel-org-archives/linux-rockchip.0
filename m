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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 250D2C47080
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 May 2021 22:12:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C7E696128A
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 May 2021 22:12:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C7E696128A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ws/kDe/j76lmg7sM42WTwaYaXFC2MG1l0hzNJuqSCOk=; b=J2vGmmhv16hwlH
	tGm0axDeHCzcAr58Tjro4gaaHzWrUCUnbxZwJfRmEse2gl73r5K/grfquNzhL619iO8SQVscX5Wp0
	inqBKQqOR8hI8pVf4hCtMwqEwuRApqHrDUH96V9u2Rs9SBJI9QY5Exv1eo4gGn7Xniro4Cw1/aZ6c
	34OzAXTsVQ0fbVEeCEM8mNOZ81A71h4fJtfXgA4GjECErQHqvZAum23NSabAoAjCIRDgvxIwXLRI/
	jpwqaUv2tFUt/PSI9XptNfMkpCB914L7AIK3KWWvBxEolHaoAjd7gEQ1yWMFguO+dO85Rj6efQxur
	7j8XNBq1nV5ig7kM5EmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnq8g-00DbBT-9z; Mon, 31 May 2021 22:12:02 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnq8e-00Db3W-7s; Mon, 31 May 2021 22:12:01 +0000
Received: by mail-pl1-x636.google.com with SMTP id e15so5837142plh.1;
 Mon, 31 May 2021 15:11:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gw59jQnc+Uma0baDOULLtxudFXMhd44Brz/fTI3+KK4=;
 b=h/Gg08nBXnR+NAlEizOR5wFpKHRzB4VnrTv2o7OpQ5UH78vidsV6CfXyQbIhpAx42y
 wunLHz9/4YRny3R+sFpJ1LWKEg5/YW293+g+r3NICv30Z5h6+CckWjIuI8FKtsPtwlKI
 5V7DmdQ2LJd3f78yRAqllGgnCtnhqYxq79ljbICuQgWfsTj4YdOWYDP5q37lTZQrDmgl
 xZSFRnPs9+Lgz3/7XxCG9ZN96sl18Hv9Gd/UW06yQLBkiourrJg90O3mq/sWEdhoNuHZ
 /YILnPISLKlvjAuKfpeRs2I2abB4ceWwGe787jvAnSLtb3Af6w/hTlId51dGcjSz72yk
 GD7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gw59jQnc+Uma0baDOULLtxudFXMhd44Brz/fTI3+KK4=;
 b=JlJa2A1N2usLiY0xPZS8pEkfA32hB/Kstwc4RYZBYvUJ5SjvPUIoRniclOJpk/p6Nu
 vuWSD8jx5rYxBsVym7I5h/jkbqK7mhJMbK3sJciNzxL1zI8+qB+2nKQIsfHPBbFnN3Ns
 GLSBOoVXXFIqsIKD+aKQEhLtCaWLS+mvYXZJkMLsble+QWjkYPZYA89DQj634tYfrLmE
 feNM5UrPu8IaH3xzbHNjI0vdvzFZdnU9E97nKVFTINvp1r11uGAqGNGn5vKwdp94M8EQ
 4gK/Soz6a1aTNwozk2MHGmVCBvXK3HJYG6XC8pUm9IlXsoTqS3wdXxdG+x4LwRZwz9sz
 6l/A==
X-Gm-Message-State: AOAM5333r1h28x41O0zRYoC8IKUEgRcGW7srclLiAYXY69mCvGqTJEod
 jYCsM5cFWrakNqqvgzMExgvJ3g7G6KaJAg==
X-Google-Smtp-Source: ABdhPJzdE3+QUCC1zBgJEn+QtXIkglsaGTRALpTVjmZGTBM3gLEPvN1m4rll/7NuFhyVg6LvlAT6kA==
X-Received: by 2002:a17:902:a70f:b029:ea:d4a8:6a84 with SMTP id
 w15-20020a170902a70fb02900ead4a86a84mr22665442plq.42.1622499118954; 
 Mon, 31 May 2021 15:11:58 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id gz18sm308809pjb.19.2021.05.31.15.11.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 May 2021 15:11:58 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org
Cc: Punit Agrawal <punitagrawal@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 alexandru.elisei@arm.com, wqu@suse.com, robin.murphy@arm.com,
 pgwipeout@gmail.com, ardb@kernel.org, briannorris@chromium.org,
 shawn.lin@rock-chips.com, helgaas@kernel.org, robh+dt@kernel.org,
 Vidya Sagar <vidyas@nvidia.com>
Subject: [PATCH v2 2/4] PCI: of: Relax the condition for warning about
 non-prefetchable memory aperture size
Date: Tue,  1 Jun 2021 07:10:55 +0900
Message-Id: <20210531221057.3406958-3-punitagrawal@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210531221057.3406958-1-punitagrawal@gmail.com>
References: <20210531221057.3406958-1-punitagrawal@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_151200_323426_709073CE 
X-CRM114-Status: GOOD (  13.39  )
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
Cc: Vidya Sagar <vidyas@nvidia.com>
---
 drivers/pci/of.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index e2e64c5c55cb..c2a57c61f1d1 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -574,7 +574,8 @@ static int pci_parse_request_of_pci_ranges(struct device *dev,
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
