Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45763C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 18:03:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 069AE610D0
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 18:03:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 069AE610D0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BdYuom5RjmV9erBExvsKBAM7iBglVHBnue1yfQMOHYE=; b=08rSznULDqVQpL
	vTn1aWI7izCRLNUoKwfgWgwqTfdATx6NZXcKJ0T9AyRCn+cAZWc3RQUEC7kB4xGJt4h4jJ/vvdwll
	wp4/BQG6mZyjEuSWR9RIH84FNvW5KNHRwuvx8lwqQBudMi+UHraAsNPAUdoQ91aKF6UlptRaPucJw
	9nBCngH46m3K181J2qxWo/8bPULlgT7Uayz5ED4hn/AkVhlvqPgjl+miy5CRPP1JoD1aEtQ2WoptD
	DR5a9xZ/wC2B93g8j8xZrCUJrlt2mOnmfzd/DBavlstkOASLP84E6RPPaXAZIZY8AlMoQg/31ewRC
	E/f/fYCOh2/g2/y/1Fdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIali-004It1-Uy; Tue, 24 Aug 2021 18:03:26 +0000
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIalc-004Iqf-Ty; Tue, 24 Aug 2021 18:03:25 +0000
Received: by mail-ot1-f47.google.com with SMTP id
 l7-20020a0568302b0700b0051c0181deebso16651885otv.12; 
 Tue, 24 Aug 2021 11:03:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pzcR6KfvbOWTe3o73soBGsabxlr0DD0//iL4Tmb4lKw=;
 b=YtOa4+F3/YW6XoI/f3v4pkonX9TuiDuYFBrarVm8J8t+yKKQT9wXeRF1bDdS4vOMkZ
 P44KhOx7aDwT0rYNNQ01+Lr25YKzQNuqCxce0uG8sST6zhqAqv86++HcQfJODW8YIrdo
 hA4crJMvDr0XJxwLq1iix5DGwhfAo6f1LRPZWXxl1T1vllRPMEqQSkwmd+uje/BjkU4v
 nKBKG8dwyKF64KLqAL12TprXXFz5tNRELUfRsjE367dV4w4egjA0OFiVzn1ezXwjgg9t
 khNCpanwpADIWKsxLmCvfpnNqCqeVyz0wLMHFVYBMiTGkjH4472rnqNX80LPEzQyYvwN
 vkXg==
X-Gm-Message-State: AOAM532k3R3IN5C7EWOCons6UwaI1YAbzFLQ/P0HoYXv1dwghkXr/Lzq
 kdfdD5VCLvmyTVduEbQ9Ew==
X-Google-Smtp-Source: ABdhPJwUCQ0B+E1Lp9msS+XzKTGdquG6FeiXzSimbNOU3cWCcnsa1SXe0WgxlpKbAWQKc3CrIlWVKA==
X-Received: by 2002:aca:bfc4:: with SMTP id p187mr3742944oif.21.1629828200154; 
 Tue, 24 Aug 2021 11:03:20 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id bg9sm4676161oib.26.2021.08.24.11.03.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Aug 2021 11:03:19 -0700 (PDT)
Received: (nullmailer pid 726225 invoked by uid 1000);
 Tue, 24 Aug 2021 18:03:18 -0000
Date: Tue, 24 Aug 2021 13:03:18 -0500
From: Rob Herring <robh@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
 Rob Herring <robh+dt@kernel.org>, broonie@kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1 4/4] ASoC: dt-bindings: rockchip: Add compatible for
 rk3568 spdif
Message-ID: <YSU0Zk5LpSX9xZG1@robh.at.kernel.org>
References: <1629800162-12824-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629800162-12824-5-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1629800162-12824-5-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_110321_001302_17B33A79 
X-CRM114-Status: GOOD (  10.28  )
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

On Tue, 24 Aug 2021 18:16:02 +0800, Sugar Zhang wrote:
> This patch adds compatible string for rk3568 spdif.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
>  Documentation/devicetree/bindings/sound/rockchip-spdif.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
