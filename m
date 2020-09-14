Return-Path: <SRS0=unwu=CX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFBD5C43461
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 23:15:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 45168206F4
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 23:15:50 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Hb8ixMFd"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 45168206F4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UwhLnJgwY7ajv9CZzucqSra8LBW2xzu2AQrpQMCPpEU=; b=Hb8ixMFdLiIY31dKY0P3CcNx/
	cMmwSkQY0kJRGeVindNEQuoj68P8J57y3X3fZATaCI3QjqhsSKZrtXqfCaxdilTpu/aOiUuHk3yjE
	wv5MNp0tVyep1GJQFkR4a7ah+D8DsdBxSbXImt4chCLIdZnaXRuKhv2c3kxaofb6bZ4p57vg6SEzK
	sd31klw74qPJ1fKZ72z/CNyobDgOtn7FPZ5VD00RsepEkXT+Y1LfWtAbsYlstevchd/r3hr2ztKOu
	k7/SI626pwKF1vgz/JwsAWtGwtaZpHKLrgMrst/nW2B2jxODAVHNM79qEgf8T2g2XnVNNC2tGXN9x
	kwcWq3r7g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kHxhD-0008Kz-3J; Mon, 14 Sep 2020 23:15:39 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHxh9-0008K7-KJ; Mon, 14 Sep 2020 23:15:36 +0000
Received: by mail-il1-f193.google.com with SMTP id y9so1258574ilq.2;
 Mon, 14 Sep 2020 16:15:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=v8esb+U9dWPq/cRSlE6zwoQk2BH/Rhe+bmOHdQwvImw=;
 b=A+LlvwYMWK/cpiqi3CbXjK1Edxq0xxHx6yn4L2VmgA7KQ0Y05AZJox3ouH5FScrppt
 w/gj19/jbQD1PUoB4nw5r9zVEqSkXVkpjNIfEXdyhX8r3CDqhSLNWafYZvJ+1V5c6N16
 mrsvSGXKyE3P1ZCUTbYK0OGsgMvku/RlQA88CprAycrUTmTrLHL0KH7AkSMc+VqqBmud
 bULnmEBCHFWwBCxybMWoBjc+H6AZlUrAjcXjtihSLia4zZLZRgHzWkkkkAcQb/Sco5Hc
 R/+I738s2LA/jNUQjtHQlGl8SZpjuO+9PXxXpxn3E395CktWp99jVYrtifXg/BFcNfHX
 8hZg==
X-Gm-Message-State: AOAM533/fSPYzg8bBIBhkg1og26Y9sZLuyZXRsKnSLNo/nxcRgLDJblp
 XD7Z6MChIii+w5Ck5xGJDQ==
X-Google-Smtp-Source: ABdhPJxmGewziD3/8IyRxlPkrNIGmiUU5Ubq9us7DBOM/69WSVUyR6yNFe+3kSS6P4ldYsFNYqyFTQ==
X-Received: by 2002:a92:9fcc:: with SMTP id z73mr7524173ilk.234.1600125334943; 
 Mon, 14 Sep 2020 16:15:34 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id z2sm3248133ilz.37.2020.09.14.16.15.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Sep 2020 16:15:34 -0700 (PDT)
Received: (nullmailer pid 454832 invoked by uid 1000);
 Mon, 14 Sep 2020 23:15:33 -0000
Date: Mon, 14 Sep 2020 17:15:33 -0600
From: Rob Herring <robh@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 0/3] extcon: Add Type-C Virtual PD
Message-ID: <20200914231533.GA429337@bogus>
References: <20200904191830.387296-1-jagan@amarulasolutions.com>
 <6955091.ERBjKZ0CLf@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6955091.ERBjKZ0CLf@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200914_191535_691953_6E5EE242 
X-CRM114-Status: GOOD (  22.90  )
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
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Tom Cubie <tom@radxa.com>, linux-kernel@vger.kernel.org,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Sep 04, 2020 at 11:23:21PM +0200, Heiko St=FCbner wrote:
> Hi Jagan,
> =

> Am Freitag, 4. September 2020, 21:18:27 CEST schrieb Jagan Teki:
> > USB Type-C protocol supports various modes of operations
> > includes PD, USB3, and Altmode. If the platform design
> > supports a Type-C connector then configuring these modes
> > can be done via enumeration.
> > =

> > However, there are some platforms that design these modes
> > of operations as separate protocol connectors like design
> > Display Port from on-chip USB3 controller. So accessing
> > Type-C Altmode Display Port via onboard Display Port =

> > connector instead of a Type-C connector.
> >  =

> > These kinds of platforms require an explicit extcon driver
> > in order to handle Power Delivery and Port Detection.
> > =

> > This series support this Type-C Virtual PD and enable the
> > same in ROCK Pi 4C SBC.
> > =

> > Any inputs?
> =

> I tend to disagree on the design via an extcon.

I don't accept new extcon bindings or users of it either. It's a =

poorly thought out collection of Linux driver properties. Use the usb =

connector binding.

> =

> That the Rockchip rk3399 currently carries that extcon thingy is unfortun=
ate
> and only works for ChromeOS devices based on the rk3399.
> =

> The kernel now has a real type-c framework so we should not extend this
> extcon hack any further, because that will make it even harder to roll ba=
ck
> later. Also simply because other Rockchip boards currently can't really m=
ake
> use of type-c due to this, as they use the fsusb302 phys directly connect=
ed.
> =

> ChromeOS actually spend some time to make the cros-ec pd part of the type=
-c
> framework if I remember correctly, so a viable battle plan would be to:
> =

> (1) move the Rockchip type-c phy driver to actually be part of the type-c
>     framework, with the extcon being a deprecated fallback for old DTs.
> (2) implement your gpio-altmode as part of the type-c framework
>     (which may even already exist)
> =

> =

> In short, please don't extend the rk3399 type-c extcon hack.
> =

> Thanks
> Heiko
> =

> =

> =

> =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
