Return-Path: <SRS0=7n+9=JG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4E1EC433B4
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Apr 2021 18:08:17 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8718C6115B
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Apr 2021 18:08:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8718C6115B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jZxsVKk3cNXJFWMzW8DUHAGLzOdRZQLdXoz240J11Qs=; b=WZfWshfg6cv+EOm/fiCoVxXVz
	GQJjIIG/0dtfcgUElOJIOvAHY+0cSYp6tN/2jgFVwXv9WRp6fof0Dr8jyVF1/tHwvzYjFrpC3Cn58
	HQBCQgX5wLt/lOCs1PA8/m9bpOOHN8cbF88QkEwz8CzIwxU4PpaPdZEr58W7NwyS2UKi9AFkAbPiq
	Av5MuVSdBVm9/wNCpblIDUs9yzPZFtVbabtEGdvhF0m83u99iPnDD9cUTXR2ObyExifuGt8p15xLu
	HvmpZz6PRrcxXk94ufF87sTPmEB/y0XtwgJ34qlrP1fPYH4SFCjWTk1wvMK0OOWQy3MbdbK5/HwiO
	RanxAdTqA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUvYC-001H1O-7w; Fri, 09 Apr 2021 18:08:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUvXy-001GzQ-5v; Fri, 09 Apr 2021 18:07:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=4yvF98K4lFRVo3XP29/vi2BrNQZ7QCXpM/98vWUndG4=; b=OLaivsowcKz/GtAY7+6tvox8rj
 6zTNwrxUdOk1XsEUzItUC6pq+WtYJCy7G7e2Pa9OBJKn17wNj7cA9bq/GUvPxASNuBnD/tStF7fXo
 Zlr+37jHFeWm20bIYSpfZ7rzP0KKvGqGY9fgrBLCbeV0F+weEdw/S8Iplcit8PyBTpAMwTW7OQTQi
 O4L8GCGiSSlfQFFtuJT1wPXTV/0nYnG1vDh06fh7QUWQ5O62zIoDJayRiiIwDtgE/LU9hJlQpMYrx
 v4MshV9v2X/OzwWcW3QVK/QdSrBs4tskO/EFR0ZB30znan29EiDE21ydO0XdYKwvU/UdxXY0Of3lV
 ylZpdifg==;
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUvXv-004iL7-HB; Fri, 09 Apr 2021 18:07:56 +0000
Received: by mail-ot1-f46.google.com with SMTP id
 t23-20020a0568301e37b02901b65ab30024so6532808otr.4; 
 Fri, 09 Apr 2021 11:07:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4yvF98K4lFRVo3XP29/vi2BrNQZ7QCXpM/98vWUndG4=;
 b=hrhtqnyEDFCTuwrYENg25XLlvZGSN3nBR1SGQ8fmaKmJXsu4yjm6892KP/0jA36H7S
 lsZxIGIMvgarWxxf6oaGnlq07DlLldJRAQbdGTUGQMwBYPHbadA7msLU7b+xjS4ov8R4
 UFNrksiCvLaPN7C+Ae2nUS7EsBBGJz63La0K4hkfd1zAd5B/FXrX/w1mU6nTWWpTHc2S
 y8q1HLOeLzJFzRPiB8meH7JD9jo0W//HAQIOkBjbhssTfb8v70v0BKsXTRCRHMaU1CHk
 ufHL/981VTTksENYAwqo2r/NYTtugL9/QtPdZvjntMNkJ1qGkF3MwGW+U+qZaIYFlnHJ
 E0bw==
X-Gm-Message-State: AOAM532GQ9IEdofHWeL1uhNDC+2fx3CTEJYi7ZJa2NCXB5ACghNyEdHq
 xEXifedighIV2KobDUXwlg==
X-Google-Smtp-Source: ABdhPJycyNDeF4TXmOLJ3zpWi5p3KJj9nwxrubKDZZI0I4BTxfGzpiiIDWKvlDp7tT89D/07Lg/cVA==
X-Received: by 2002:a9d:7e8d:: with SMTP id m13mr13036594otp.54.1617991674538; 
 Fri, 09 Apr 2021 11:07:54 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u185sm181079oie.12.2021.04.09.11.07.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Apr 2021 11:07:53 -0700 (PDT)
Received: (nullmailer pid 3892577 invoked by uid 1000);
 Fri, 09 Apr 2021 18:07:52 -0000
Date: Fri, 9 Apr 2021 13:07:52 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 lee.jones@linaro.org, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: pwm: convert pwm-rockchip.txt to YAML
Message-ID: <20210409180752.GB3769113@robh.at.kernel.org>
References: <20210406155053.29101-1-jbx6244@gmail.com>
 <8f05dc0d-8fb7-c200-5251-d9e147b1d00d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8f05dc0d-8fb7-c200-5251-d9e147b1d00d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210409_110755_590841_A2BE91FA 
X-CRM114-Status: GOOD (  15.67  )
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

On Tue, Apr 06, 2021 at 09:04:29PM +0200, Johan Jonker wrote:
> Hi,
> 
> Question for Heiko:
> rv1108.dtsi and rk3328.dtsi have a undocumented "interrupts" property
> AFAICT without driver support.
> Please advise what to do with it.
> 
> 
> See build log:
> https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20210406155053.29101-1-jbx6244@gmail.com/
> 
> ====
> 
> Question for Rob:
> It looks like that recent "improvements" with regard to checking for
> undocumented compatible strings make it almost impossible to do any
> useful dt_checking, let alone for the average user. Maybe reduce the
> notification blurb output a bit for things that have nothing to do with
> this document. 

It's off by default for dt_binding_check until the 80 or so warnings are 
killed. It's on for the PW checks so new ones don't get added. It's also 
off for dtbs_check if you set DT_SCHEMA_FILES. 

> Unable to fall back to previous versions for older kernels.

Sorry, don't understand this sentence.

> 
> pip3 install git+https://github.com/devicetree-org/dt-schema.git@master
> --upgrade
> 
> make ARCH=arm dtbs_check
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
> 
> make ARCH=arm64 dtbs_check
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
