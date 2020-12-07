Return-Path: <SRS0=PznR=FL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FF54C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 19:31:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2E18F238A0
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 19:31:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2E18F238A0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pNHHSYl5WDZKcl/KPnZRDDmiWUefvFhgCViHbcON8Ns=; b=kC7yYXHIgXCGI/2swBe42JBOB
	2BFepEzXi/dknYjlKKJR2ic+YTgkt+GvpP3wNDAMAk/2LPn20hTbULZYas8iPfGQBlKUW+/w8SO2K
	/7JRy4R+/wx0w7EjSjAPUhyZYQsAI7+gUx2p/KMVag2jUKYN4Q0dHt3px3LYyhBHNIEtP1jlkuZ08
	QDI1zuAh7kkP7c4xM0yN+5P4tLDQ744dwwClyuzYG6twKLaFpJox1Y0yDNMtk8SVMbD8Dp7NnxyoO
	PuzxTxiIcVkReGuondutyw7NwmRPbtpWDKtERaWAuUi9KlJz0D6BDby+ZW94Y52EY73MSmnNuPmWv
	O4X3mK4wg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kmMDr-0001eu-3N; Mon, 07 Dec 2020 19:30:59 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmMDn-0001eH-Fm; Mon, 07 Dec 2020 19:30:56 +0000
Received: by mail-ot1-f68.google.com with SMTP id x13so6078089oto.8;
 Mon, 07 Dec 2020 11:30:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qSvS8Ee1wuNKfsrbfYX/ii4mmEZIAWZ9Jce3aen8hjE=;
 b=VQKPXEGV68pcWeabI0HA16HfPZ64Fu5MQu7v1MwvzIBRbQz8pPAkTAjkEmntkPQAJm
 t7KrfDJpgd3IgR+DMPB0n5WpAZMZaC7ol3J+U+HP8n9aD10qngaM1Chh24r1VOZYvQpM
 2YkLoCMLCwZY5YXhNzPHOMX8zcucw7C1RVhjRZBWVbBtvpIpcVWBJaWc1WcljX85lrHi
 /LMA6PBhumWbFiQKZyo4qpDBcnbBg3utf/+/Hgw7a/kpB1fe7xo/36QdlrWbFH5k9UVW
 TDZpXaR+tmsjYCZkBoqj7LME/CiMgRYqhKe5pjO59H4PKZnVxyCCLQVCw/6AhGzxai4j
 33Iw==
X-Gm-Message-State: AOAM531i6D9Q4hWSNuBrnvgFsX81bsWXmXqU4mF/AqhzNY007Ndww4qT
 jzirl2Ng96C67QogtPdWH77BPmyb3Q==
X-Google-Smtp-Source: ABdhPJzHitdh//srQXFXNXFhwKtiauLvAaU55joyn4ufC6poP/o/TLOP8OCvBzH8Pzq0M0kYer9D/g==
X-Received: by 2002:a9d:6b0a:: with SMTP id g10mr655604otp.20.1607369454709;
 Mon, 07 Dec 2020 11:30:54 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r25sm832117otp.23.2020.12.07.11.30.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 11:30:53 -0800 (PST)
Received: (nullmailer pid 672557 invoked by uid 1000);
 Mon, 07 Dec 2020 19:30:52 -0000
Date: Mon, 7 Dec 2020 13:30:52 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] dt-binding: watchdog: add Rockchip compatibles to snps,
 dw-wdt.yaml
Message-ID: <20201207193052.GA672527@robh.at.kernel.org>
References: <20201116142539.12377-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201116142539.12377-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201207_143055_566337_079AE5B4 
X-CRM114-Status: GOOD (  12.54  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, linux@roeck-us.net,
 jamie@jamieiles.com, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org, linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 16 Nov 2020 15:25:39 +0100, Johan Jonker wrote:
> The Rockchip watchdog compatibles below are already in use,
> but somehow never added to a document,
> so add them to the snps,dw-wdt.yaml file.
> 
> "rockchip,rk3066-wdt", "snps,dw-wdt"
> "rockchip,rk3188-wdt", "snps,dw-wdt"
> "rockchip,rk3288-wdt", "snps,dw-wdt"
> "rockchip,rk3368-wdt", "snps,dw-wdt"
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
