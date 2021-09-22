Return-Path: <SRS0=qd64=OM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC6C7C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 19:19:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A83F361100
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 19:19:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A83F361100
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZXkjaAaurby+G2qF2pMeZWyW32XqAojGJ2JMASJ96I=; b=oNxLPNrfJfywbI
	6UpMHXtB0akqs3Zc13jsM+IPpHFZR7H/wSY1CbjEm4DexK13hHZwYbyPt5bR4Qu3mx8HLpf5veiHA
	U3iHQK/212Xric4HvwsLrQPOWIqXfvpsmq+7DAaQoZAv8wKRa0yBW6idd8OJeuGsLs3SfLs3naV9w
	oA1ehSLBrLFRi1w/BOaa9Ng4ZEOjqQc2jk8eYO139l4XeNPy91MCwhffihXQwlhP8M9t/egHXALdE
	guwCpiCR3NDxv45L4vPMNzxnxi5kVnr3KqF7hQ/ZZUpNQXwCAOGYd112dPPyRdROKL10TrdsNzr0i
	2RsclaDhcPp3icuwYZgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mT7m2-009TmY-Il; Wed, 22 Sep 2021 19:19:18 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mT7lz-009Tm5-Tp
 for linux-rockchip@lists.infradead.org; Wed, 22 Sep 2021 19:19:17 +0000
Received: by mail-ot1-f49.google.com with SMTP id
 77-20020a9d0ed3000000b00546e10e6699so5078048otj.2
 for <linux-rockchip@lists.infradead.org>; Wed, 22 Sep 2021 12:19:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2go1bBxyKUnvbgdrtTt2n0b0j8Fy5wjIbyGl0rGFlTg=;
 b=kCKG8CQmDF4nHtQuEyM7kRZomb8lcl+Pgwiot1L9206sCOnxGN4qUrDv1r1OdPLYcS
 YT00jhEy+CL3ccPwvBGnRjW4uEO2O8+igUWwwXBZqxXsxogqTDsRDN5abcGSoImrZaMM
 nuYkGNOL25atGD8WiwZRAXcBqVfM9XHCBddKyjNZVzSk3ocVKMBSSdh+2xjSDP2H7/du
 imUaiOKL1wM3dpmEJgVV24QuR9gRBRb43KUYcDPPL9ZA7yvRL7Deqjz3CZGrVHz9+0xy
 KgRmxuVjG94wxlqHhVcb+MIw+ZybefNdWAE+rnO0d0IyqmTA5pbK0J31qOQdQBeZjTDR
 ommA==
X-Gm-Message-State: AOAM533GhC8HBU35zHbUPkyfaI6lBaDXJhhCrSEg+ngnh93swC0pAzXv
 aP6HPQ/t0k9+LmAFNupQVA==
X-Google-Smtp-Source: ABdhPJyc7dpH7FhP2T7xkrJePYFiN4EyyiITxz3pKUDeqQwDdXCpp+OhKr8/WXKWxm4hzqonvqjjKg==
X-Received: by 2002:a9d:750d:: with SMTP id r13mr714816otk.264.1632338353655; 
 Wed, 22 Sep 2021 12:19:13 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id p9sm474331ots.66.2021.09.22.12.19.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 12:19:12 -0700 (PDT)
Received: (nullmailer pid 1133413 invoked by uid 1000);
 Wed, 22 Sep 2021 19:19:12 -0000
Date: Wed, 22 Sep 2021 14:19:12 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, lee.jones@linaro.org, heiko@sntech.de,
 sre@kernel.org, maccraft123mc@gmail.com, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v4 RESEND 1/4] dt-bindings: Add Rockchip rk817 battery
 charger support
Message-ID: <YUuBsN1sjGI0Xc61@robh.at.kernel.org>
References: <20210916194208.10387-1-macroalpha82@gmail.com>
 <20210916194208.10387-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210916194208.10387-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_121916_009407_26BD454C 
X-CRM114-Status: GOOD (  11.27  )
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

On Thu, Sep 16, 2021 at 02:42:05PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Create dt-binding documentation to document rk817 battery and charger
> usage. New device-tree properties have been added.
> 
> - rockchip,resistor-sense-micro-ohms: The value in microohms of the
>                                       sample resistor.
> - rockchip,sleep-enter-current-microamp: The value in microamps of the
>                                          sleep enter current.
> - rockchip,sleep-filter-current: The value in microamps of the sleep
>                                  filter current.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  .../devicetree/bindings/mfd/rk808.txt         | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)

You've also submitted converting this to schema. Please make the 
dependencies explicit. 

Rob


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
