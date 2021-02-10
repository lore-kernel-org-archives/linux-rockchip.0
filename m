Return-Path: <SRS0=ealT=HM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78FF0C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 18:43:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1C6E664E2F
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 18:43:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1C6E664E2F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JXf4vyDP5DGJEdnRWLr/batcf8tWBJyDgEkROj1TrsY=; b=E5YbSjPdraqmcgBqCjbTITxLm
	GvKlfj9MPGDomtdiuEC1V/h+AZnQUXdwzSndMGuT/DurMplo5PTjZTywyLsicQZx17xbEW2tX4W17
	GCPOGm0hwB9k/kDht/jeMQaB6JwppYO+vtRJ19tg4kTthTpZSJyrsmfxTEVno2XAMBPTrNy74LL4x
	/m1TF2svHGsL3CBp8bmen/wVL/ZwyIY7Vowg0lIfHJfbJyBsz9A2qc5DoVK7F4BUWDISVASNw6YF6
	w+Q2mpWXAjcZrMTloWkI4nQFymTgTnVWkp/inryCFZID2nxn7GI/OvjCS/Lyshle4SDoB/JGgihPz
	bczUeyTZQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9uSh-0007w3-IY; Wed, 10 Feb 2021 18:43:39 +0000
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9uSf-0007vU-11; Wed, 10 Feb 2021 18:43:37 +0000
Received: by mail-oi1-f175.google.com with SMTP id k204so3178358oih.3;
 Wed, 10 Feb 2021 10:43:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+I9yJIL4KQm5Wx44PMzjcCtAomnWnzNWkCxOGux9jys=;
 b=XFSOTBKjrzRNrzwjXpgtlS7RjvgU0momlmxAM/K85PQciMvVvQRH43E/04johxp0If
 6CC819gLG/Lhu0DUIGXFkOvrVoT+c6CBcyY1S736z+RKMTP6Cm5h+UqGGVVE+L8W0inW
 zTeC2SExMreLulQXyYCQVCjUyvbRZXjurM5f7pkUJnsbocdmXIJHpi6Li2i2xWJ1fIof
 dH12mtE5QsHQWJ2YyEUUMj0bSuTuNRW90LaPSx7fqGdHaCSA7H2FgOjOPwyJDNxoAWn7
 oIW3BuWk0Fu97EQEqHa3pDTEOdcX+vdubk/PEPZ1ijnHY8qlZbPQRb50+n+bEifs/eWo
 H3wQ==
X-Gm-Message-State: AOAM531e/Z9Xhl+mAIswJkgcOWGKehFiVNMiUGaWeSGFNZPdTkWgZ6Vy
 l4Rk6OKmNpyr8BhyN/f3ag==
X-Google-Smtp-Source: ABdhPJyfbAunYXL98GGmqi1N5eZneUtqnS/9idmsDqgvl9PyHkMNV568YQbcdgYoOgzKG8DJNP9Amg==
X-Received: by 2002:aca:da83:: with SMTP id r125mr214368oig.127.1612982616148; 
 Wed, 10 Feb 2021 10:43:36 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v67sm545918otb.43.2021.02.10.10.43.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 10:43:35 -0800 (PST)
Received: (nullmailer pid 2520189 invoked by uid 1000);
 Wed, 10 Feb 2021 18:43:34 -0000
Date: Wed, 10 Feb 2021 12:43:34 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v5 1/8] dt-bindings: usb: convert rockchip,dwc3.txt to yaml
Message-ID: <20210210184334.GA2520125@robh.at.kernel.org>
References: <20210209192350.7130-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210209192350.7130-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210210_134337_090120_CE17047D 
X-CRM114-Status: GOOD (  12.22  )
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, balbi@kernel.org,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 09 Feb 2021 20:23:43 +0100, Johan Jonker wrote:
> In the past Rockchip dwc3 usb nodes were manually checked.
> With the conversion of snps,dwc3.yaml as common document
> we now can convert rockchip,dwc3.txt to yaml as well.
> Remove node wrapper.
> 
> Added properties for rk3399 are:
>   power-domains
>   resets
>   reset-names
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Changed V5:
>   add select
> 
> Changed V3:
>   remove aclk_usb3_rksoc_axi_perf
>   remove aclk_usb3
> 
> Changed V2:
>   remove node wrapper
> ---
>  .../devicetree/bindings/usb/rockchip,dwc3.txt      |  56 -----------
>  .../devicetree/bindings/usb/rockchip,dwc3.yaml     | 104 +++++++++++++++++++++
>  2 files changed, 104 insertions(+), 56 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
>  create mode 100644 Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
