Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 256ACC12002
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 23:36:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DDE08613CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 23:36:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DDE08613CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fcUSwX/nUroRkNAcW+qYKOSjWMIPxIz9NoS4nNriqLI=; b=utJqz9N30lPtZL
	ZE/BHr+G40Ouywl76/roolQj8Ww4y2ux9/HBIZUTke5/TFcAEHvhIakcR5LaaXUzjq1Hk47Idcp5Z
	67EU65y6rGUL7BcoydtslFnamQ7ObwvQiksF7pkkF6GNLS7BbLx3aGf30GtVT0s5aaqmmvy4mWdoJ
	gWODWTulRNknwLK0BHClt78z5pltpYADL6CYOfQIT8IRKEipnMXJ+CwS1smv+JUA2LfDGg+8vul5K
	HEpntMEHfUrdmO2RUJtlLZnafPD0FdKwrY+950GOlcmTqV9LK34e5+WLBAimmo4N1DEPm2PnRAy1V
	2lWTxzEh1C79957tNsLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3oQU-00GLSc-PM; Wed, 14 Jul 2021 23:36:26 +0000
Received: from mail-io1-f51.google.com ([209.85.166.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3lrs-00FAqk-76; Wed, 14 Jul 2021 20:52:33 +0000
Received: by mail-io1-f51.google.com with SMTP id g22so3830378iom.1;
 Wed, 14 Jul 2021 13:52:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=m1BjMiFm/xS6B+fxE+xnjxZgvS0rjMUop/UpczXhIRU=;
 b=Ys6iTztUyOU8PPkhvQ30aHbKyYz6xurA2zOO61oU32VvoAKnod7rySTzdTU/OQiCx2
 b9WJnok736G7t0yDY7hy1tNDnf/AM0Ni4UblUvNmdxfx+KcjWKKIlfaI/fHyQbovj0CI
 hvCZkQp22BANmXJ227hLIefMNy6R5PUb1DAaGGIrMdsFYrlocGf97guNKAsdCngCOJEp
 kTgSNhnSXcYXwfPEUAYBJxL5GVBcONt/5BJANGd4A7KxvBJ7+i7bZ31QZv2hOCncQ/QT
 /xuMej1Mz0K8spGFZmgps+3gRWsCimlpsP10hft8XAQkG4RKYhl5OodRfTD2XyM+WVtH
 Gw+g==
X-Gm-Message-State: AOAM5337sPc/MdjTeA1GhaH2sPW8aucqr/p6rEyWB8Jyk2dgNsueMUG5
 ETZNT/9qo3BJuwodZVw3dg==
X-Google-Smtp-Source: ABdhPJzx/mstRn2IXdCjC+oslK6tvpCMxnRGPLU8xCC2kA2scrk6HyIlrAdk7TZMLBdoO+P1sG+RPA==
X-Received: by 2002:a5d:9958:: with SMTP id v24mr51618ios.4.1626295949319;
 Wed, 14 Jul 2021 13:52:29 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id j24sm1832785ioo.16.2021.07.14.13.52.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jul 2021 13:52:28 -0700 (PDT)
Received: (nullmailer pid 3501321 invoked by uid 1000);
 Wed, 14 Jul 2021 20:52:25 -0000
Date: Wed, 14 Jul 2021 14:52:25 -0600
From: Rob Herring <robh@kernel.org>
To: djw@t-chip.com.cn
Cc: Jagan Teki <jagan@amarulasolutions.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
 Liang Chen <cl@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Wayne Chou <zxf@t-chip.com.cn>,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org,
 Kongxin Deng <dkx@t-chip.com.cn>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, David Bauer <mail@david-bauer.net>,
 Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v0 1/2] dt-bindings: add doc for Firefly ROC-RK3399-PC-PLUS
Message-ID: <20210714205225.GA3501265@robh.at.kernel.org>
References: <20210628035402.16812-1-djw@t-chip.com.cn>
 <20210628035402.16812-2-djw@t-chip.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210628035402.16812-2-djw@t-chip.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_135232_422280_E4637FC2 
X-CRM114-Status: GOOD (  10.12  )
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

On Mon, 28 Jun 2021 11:54:01 +0800, djw@t-chip.com.cn wrote:
> From: Levin Du <djw@t-chip.com.cn>
> 
> Add devicetree binding documentation for the Firefly ROC-RK3399-PC-PLUS.
> 
> Signed-off-by: Levin Du <djw@t-chip.com.cn>
> ---
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
