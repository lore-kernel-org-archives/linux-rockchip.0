Return-Path: <SRS0=VuRY=NW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D24CC4320A
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 21:33:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5F79B6102A
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 21:33:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5F79B6102A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2WD2O82ikFqTon5cQEhbn36CUmBeKRpl/PKKuZENy+g=; b=W4B3ZLJT0WVyja
	Lu0c1a2NbNhsYAi9weB+LEIjvPZGYxSK1wEgj/wM7vCmCq8g30GurW9xyd7GlsbmfR76lf0ph7cvH
	Z4i32soW+awpEGTp0QhdnatRsAgosEzDF22dBomnNX0lzfGX/eLaadnelusXYSUPffxyVo+KdRakE
	9YpGYv15Iz6CLBwss92vRWW9hhNHnHNID5EIELvx8FeH2tfR3J5qW0sAefl8EUR8f7v1T95xZMso4
	NzyriBYZmEljKjek5n9xPo/i3Af/icchl6sRkFNirQ7Fk/Mm1cqB5lG+DqXruGYjtOonyWjfd+xFl
	WZoOnVaT2sdLH/k0bazA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLBO9-003EdB-Bh; Tue, 31 Aug 2021 21:33:49 +0000
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLBO6-003EcS-IV; Tue, 31 Aug 2021 21:33:47 +0000
Received: by mail-oi1-f177.google.com with SMTP id s20so1085679oiw.3;
 Tue, 31 Aug 2021 14:33:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=J/4rk321aST3R1dX7uB1Sz8tt/BHBEqAaVrBW+SYz70=;
 b=Txom+3aZObKE1wAfe02J/2pKf8NYwq9gca27bFEs7ergJJ2QHuaq5rcmoqefCvrJJf
 R2aIopDIzcQsakGHNKsNTTO8VChtTIVDTYK+5WGikPjj71kWDGZSCkuQFqE9v6opwUuK
 UynNy0gTsq9QuCHzTTsAneyfdNGMzfzyT9y9weuZyNIQIys/6tWbZ2WyKlIoFawMLrxL
 0diKpeERd+Gzk1dr5OGXRrWQ5iZOFvEO7BCbpNOWz3Tf7x6eeqwpsFFdn+i29WC7wGUT
 RcONboWczVGQM7Gsx0v9Pfj9TsaveOMfd4vE2cfUWGmei5z/YGFJqtF/84cKJmvpKEMX
 Z+dw==
X-Gm-Message-State: AOAM532V9LtmZYuMlVpAzTRzb8z3LBpdKwh9naBfTLIM74U03hhEUwtC
 zxmHAMy3hjtk4doxdpJrAQ==
X-Google-Smtp-Source: ABdhPJxTxOStSIvir2iEJq4mjIa41utLlNeQXu3O+1z8752kfXnyDVgGNxNEOI52q/hcSeLwMg9+9w==
X-Received: by 2002:a54:4714:: with SMTP id k20mr4801241oik.103.1630445625304; 
 Tue, 31 Aug 2021 14:33:45 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id o68sm4194764ota.33.2021.08.31.14.33.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Aug 2021 14:33:44 -0700 (PDT)
Received: (nullmailer pid 683290 invoked by uid 1000);
 Tue, 31 Aug 2021 21:33:44 -0000
Date: Tue, 31 Aug 2021 16:33:44 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-rockchip@lists.infradead.org, bgolaszewski@baylibre.com,
 linux-kernel@vger.kernel.org, heiko@sntech.de, linux-gpio@vger.kernel.org,
 linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org
Subject: Re: [PATCH] dt-bindings: gpio: add gpio-line-names to
 rockchip,gpio-bank.yaml
Message-ID: <YS6gOGhoQKNlg5cL@robh.at.kernel.org>
References: <20210828121007.14865-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210828121007.14865-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210831_143346_658323_8FDD62E6 
X-CRM114-Status: GOOD (  10.99  )
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

On Sat, 28 Aug 2021 14:10:07 +0200, Johan Jonker wrote:
> Some people and companies may want to add more description
> to there gpio pins. Add a gpio-line-names property to the
> rockchip,gpio-bank.yaml file to reduce the notifications
> from the existing mainline DT.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
