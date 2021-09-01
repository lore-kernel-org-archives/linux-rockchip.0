Return-Path: <SRS0=SdcM=NX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C56C432BE
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 12:25:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7F37160BD3
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 12:25:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7F37160BD3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nx9FIf8gOWfgoOTwSV8Nc+sbHUQA8ERU86EtRNifX58=; b=Jqogd5uG36f5VU
	m/2OxOzycMQDkCkAFYVv58mCrDLuYnAYUTySrqBvw4R8Vt5PSkjA6uOdfjWebn5nh31DjUf+YmGP6
	v75guTIsr8X5I/DoxorGeQ28SlB0ZjZ9U28Mvski9uSqRKQpEe/1dQPhb6lwBs0QG6IiuViOJawML
	vVOw3IhY6r7btOH+8ug6lC3MY187sXTJOnBNhHH5eCK+c2areIO8XJ1pzyhYmFzSyRIe08CsNQaKU
	7IADDDDXvqcqrgJ30reuiYMjT5lXWkPh3J4ZOthT+64zTgq8wYMl5ZnqtNnzaWxwozzPhsQaFqt+W
	ixcV+zC2ii6ysGB/vNyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLPIt-005vfv-KS; Wed, 01 Sep 2021 12:25:19 +0000
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLPIq-005ve3-Lz
 for linux-rockchip@lists.infradead.org; Wed, 01 Sep 2021 12:25:17 +0000
Received: by mail-ot1-f47.google.com with SMTP id
 107-20020a9d0bf4000000b0051b8be1192fso3186485oth.7
 for <linux-rockchip@lists.infradead.org>; Wed, 01 Sep 2021 05:25:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=e3t41E0YWOAJ4Hi/b6TRtUMeNJZteZYB+0tdGv+9MG4=;
 b=CA91DWm2UWhHg8eUQuUABh6QILNYlx6Pj71x6G58rhfg6nhPhsd8+h8Duj1ojksveo
 +fv/7TlLq7kSn/831NEM2BCEgIYwWInch3+5NniM6BinzvTWWnGNpwSLB68eWV//3yW9
 tFMvmPPMXM2y0AinpfXcbPbadbfcANhhFE+2So1wZoGPa/1oNDa8yW0nWF1Qq9jxt+Eo
 evKr7kgkmIOjOG2eOw1CMGbnwGfJQl/dGPjq7Qm0h2rzsN6D+WsOSgjTgciDBtT/5psa
 Rk8seA1uzzANUB1gDlbs9jZ8vVlgroBaagatXEzzOr8fLxqQMlPfCEP3vb/1FhE8Fyu1
 0WdA==
X-Gm-Message-State: AOAM530r0uCB6X+dIg7p0IDmW3Z9xhBch2YL1dZKCiIsN8D9c3UQ1jbJ
 Xxs28FON+Zw3tNK/igGtVw==
X-Google-Smtp-Source: ABdhPJwd/30LIOw/DH4iSf8meNlbH8tQXCLaIChT5tmHzz3Ifibm528hlYMw1ubpF0H2VMUPuz6/ZQ==
X-Received: by 2002:a9d:6359:: with SMTP id y25mr29280701otk.274.1630499115371; 
 Wed, 01 Sep 2021 05:25:15 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id b25sm4225297ooq.6.2021.09.01.05.25.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Sep 2021 05:25:14 -0700 (PDT)
Received: (nullmailer pid 1939544 invoked by uid 1000);
 Wed, 01 Sep 2021 12:25:13 -0000
Date: Wed, 1 Sep 2021 07:25:13 -0500
From: Rob Herring <robh@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: heiko@sntech.de, broonie@kernel.org, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 4/7] ASoC: dt-bindings: rockchip: Add binding for
 rk3568 pdm
Message-ID: <YS9xKaheZV2UJYTf@robh.at.kernel.org>
References: <1630468039-7186-1-git-send-email-sugar.zhang@rock-chips.com>
 <1630468083-7248-4-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1630468083-7248-4-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210901_052516_774427_5C710574 
X-CRM114-Status: GOOD (  10.33  )
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

On Wed, 01 Sep 2021 11:48:00 +0800, Sugar Zhang wrote:
> This patch documents for rk3568 pdm.
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
