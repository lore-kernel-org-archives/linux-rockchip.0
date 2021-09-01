Return-Path: <SRS0=SdcM=NX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 124A6C432BE
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 12:25:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D4AAC60F92
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 12:25:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D4AAC60F92
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Ym3nveYvjHrqV1sIUZwGlYXI2VglSmlKNNsz6PsIWo=; b=PdMYVYgWzoQQ+X
	HZ5Fenq9ECzfrbcWbOO+5X5q1pW0B2AJx3YS1DsQM4ybZnGlj4YPI7r/DBwa4+7zy+mD/PAstAxwZ
	8luLk53urJpsZdbbZhdPIIr08hI2MD0bEuoE/7P+D6ArKUAsQnAfKBLaz25D/UtiszsJ754JLDfjY
	uzEaxaasfLx+STPc52EUteD9Fx2VC4949j4r8NImAEvdU91RbTI2UsiqWsODdeCDqWeZY2kdLvmbB
	iMT7L0hcRIH5bn1Vy2BCUK2cnTAFpsKCe6lXchDLObIdKdl5ptqeqCxqEVNy37G9DlyOihR8p8NR8
	f29E+nCgoHio4Hq7pCNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLPIg-005vZb-09; Wed, 01 Sep 2021 12:25:06 +0000
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLPId-005vXU-Ap
 for linux-rockchip@lists.infradead.org; Wed, 01 Sep 2021 12:25:04 +0000
Received: by mail-oi1-f174.google.com with SMTP id r26so3519598oij.2
 for <linux-rockchip@lists.infradead.org>; Wed, 01 Sep 2021 05:25:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=OGno47MbHUIv9+PhbtrT66UdJTYUHB0R8oj64LoIDJw=;
 b=tcMEotU2ittKafGSS1a1ibLLc0czHmFWKZDLtXQGu10CC2hsp/HCIqJkEIbRhc9F+A
 imb2BF91p4vB/GSdC6vLzqj2yqBZAEAgHkv6UEFshEoC4rDJV72l/s6EYQ+p+pDDFWvJ
 TWevdyKyklsV0CWEsSjNcZN0ByIhBuSRrRypNzH1FCXlxsk2/VpTlHajMroF+2oBZ0CU
 ZYpNqwAK+djisZo3xEsGCQ+S/FB869PpUva7i8XPJbtA7ADqGmmht3hmpqQglDIqSBEJ
 m6pQZAbbkaKzNHfMyzwH/63G4fF4A7BtPVF0IbJ7UTFJDiFjCJe2qH6dDSSH57bvDYYE
 08CA==
X-Gm-Message-State: AOAM531znZZzCP8MWX6mHTOo/u8DpuPTa+ZAI9t6cl7/TWS5i4klioz2
 xRkwClqFlps7P2PotV8NSg==
X-Google-Smtp-Source: ABdhPJzZQe8HXodDYefhYmHlXG1vGCmYhYO7vuQaDcvmPY6zALuTsohNF0ssWXcNhBgqmJhLviI2Iw==
X-Received: by 2002:aca:3c09:: with SMTP id j9mr7056083oia.115.1630499101947; 
 Wed, 01 Sep 2021 05:25:01 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id x1sm4387341otu.8.2021.09.01.05.25.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Sep 2021 05:25:01 -0700 (PDT)
Received: (nullmailer pid 1939094 invoked by uid 1000);
 Wed, 01 Sep 2021 12:25:00 -0000
Date: Wed, 1 Sep 2021 07:25:00 -0500
From: Rob Herring <robh@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: broonie@kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, alsa-devel@alsa-project.org
Subject: Re: [PATCH v3 2/7] ASoC: dt-bindings: rockchip: Add binding for
 rv1126 pdm
Message-ID: <YS9xHAGwymzn57tl@robh.at.kernel.org>
References: <1630468039-7186-1-git-send-email-sugar.zhang@rock-chips.com>
 <1630468083-7248-2-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1630468083-7248-2-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210901_052503_440988_9D02CA87 
X-CRM114-Status: GOOD (  10.85  )
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

On Wed, 01 Sep 2021 11:47:58 +0800, Sugar Zhang wrote:
> This patch documents for rv1126 pdm.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/sound/rockchip,pdm.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
