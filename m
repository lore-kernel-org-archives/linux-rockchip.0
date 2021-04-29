Return-Path: <SRS0=DwMt=J2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9ADDC433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 21:40:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8644061445
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 21:40:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8644061445
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xtmh2Q+j1egx/0xEd59NTZMQWbu0R8djADzorv4f2/E=; b=e+e98eReR9KuvwKd9hDX28A7v
	Zkc1vAZWICTEZ9N9xxjpLylMaiQCZkey2qKLDwXgVZNCO0rz9pY0MUqKdG6GMeQnVcxRFtfHRxzVW
	WG8t2gphT1lz04MC9w6p24BFbbxe/roOSs5inPcRvaiv6t8ppUJDlq0AuZes1GB3+KwynLHUKDZfn
	uquupaatvczv9czDkQ4RY19Y5ht1N3YmsaUdiOxUw8mUFyyUIsFKSvbXH5WvJUqUQRcKPnKQdJmeT
	33bhNuOXJjEeAHOtEOinOBubN+i8Zm5AurkyW4N5M0NfV3iZId17radp+8sRnZLnTIUqYLI5fILfg
	cuf1pj7nw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcEOA-006ab9-3n; Thu, 29 Apr 2021 21:40:03 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcEO7-006aaI-9b
 for linux-rockchip@desiato.infradead.org; Thu, 29 Apr 2021 21:39:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ygg2abr5faBENjSA5cFW+vOjsCf4TS2eA4+Ztp3hH6Y=; b=FT0wvNqFC7jxskEImTVQUbYnqO
 SzLw7yAJS7EwxBJYCRDCiv71N4WbAUFNzAsQ8xDsdoydu3ByWPOTVy9A7jEJpceVsS31pOUrLuawl
 Oy6ppytI9/eD9E0pORCxgIXxyktdxLRGUc//KJRmMzHDuUP2Y62Z5t6b+Qr1AD6u50us1ngwSJXj1
 Uqw2lzACjvcIbU7B1wqfLYWzEQYZPuhQbrAepf58Naz1G2pyF2c8XaKkdBnZV/g7BbrnbAdgtgN11
 eaQFpJMRBJx6u6dzkfnJDyITqbFi5Mvm68E+5X8MRv2dyUbT00jDYlBK1n85cW8QKod+ProCng+dM
 sF81v1pQ==;
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcENu-000zWm-Tf
 for linux-rockchip@lists.infradead.org; Thu, 29 Apr 2021 21:39:48 +0000
Received: by mail-ot1-f47.google.com with SMTP id
 35-20020a9d05260000b029029c82502d7bso31287733otw.2
 for <linux-rockchip@lists.infradead.org>; Thu, 29 Apr 2021 14:39:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ygg2abr5faBENjSA5cFW+vOjsCf4TS2eA4+Ztp3hH6Y=;
 b=VLfAiO793dtz2lGoaf3jHjIPzk8OcIMnurvmc88mSCb9rloOx6AxloGQDISBSKvsXV
 aVVd+qBZj2c2OuTcKQRhmMtYaIgkv8Cln2XbxyQxggBMplP8eojnadAZI0rO120BhZeB
 UsWuAaiI6dggWOxEMqMj1G85otUJrx9buUF/6fxoAZc9rzG9QIzRWN8Cjy71xYl4L86X
 GyQsVCHcr8Fpr0i/+HvqMJnZVtjfAOK9r2oOVowaTKv+MIdyRfTlnMBdmY0nS9V+Mcx1
 smzSj01LTIHRQl+gRGF2Le13KVHHuneF08mcGMzmZHGJh4rJG5W2LzdCNrx6nIqaWvgi
 0+gA==
X-Gm-Message-State: AOAM530qCQvFP9forid43ZxGJ35Wdeb0gQEw8EL5qg1KfA5/QFhGlpEu
 UffE/8UdbUof3KIu9KavIQ==
X-Google-Smtp-Source: ABdhPJxvyUt/FmdFovkVBDpqigYwZi3sUxtRqVRmJ6uExAHHE86O3Y5qLrUd3IEKj70i6AA79+wgZQ==
X-Received: by 2002:a05:6830:1ac5:: with SMTP id
 r5mr1178763otc.34.1619732385868; 
 Thu, 29 Apr 2021 14:39:45 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k20sm275236ook.26.2021.04.29.14.39.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 14:39:45 -0700 (PDT)
Received: (nullmailer pid 1822853 invoked by uid 1000);
 Thu, 29 Apr 2021 21:39:43 -0000
Date: Thu, 29 Apr 2021 16:39:43 -0500
From: Rob Herring <robh@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: "David S . Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>, kernel@collabora.com,
 linux-rockchip@lists.infradead.org, Jose Abreu <joabreu@synopsys.com>,
 David Wu <david.wu@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Kever Yang <kever.yang@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: net: dwmac: Add Rockchip DWMAC support
Message-ID: <20210429213943.GA1822801@robh.at.kernel.org>
References: <20210426024118.18717-1-ezequiel@collabora.com>
 <20210426024118.18717-2-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210426024118.18717-2-ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210429_143946_977325_18AC6537 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
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

On Sun, 25 Apr 2021 23:41:17 -0300, Ezequiel Garcia wrote:
> Add Rockchip DWMAC controllers, which are based on snps,dwmac.
> Some of the SoCs require up to eight clocks, so maxItems
> for clocks and clock-names need to be increased.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  .../devicetree/bindings/net/snps,dwmac.yaml         | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
