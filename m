Return-Path: <SRS0=Bn3x=DG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57424C4727C
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 19:10:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CA4F120774
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 19:10:36 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="mlpht54b"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CA4F120774
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZZ8rLZ3c7wPlQcrmD6MVBrGI0tgOWzuStc/KMBrrE44=; b=mlpht54b1nBufhe/wDl/ay0ZH
	YJDMm0sUFmJYyS9cMVzY8R6mloJg9fe3uEVGNdQQVfXGzv9fodkY4k1Pd0tJE/46R1tTbBZkKcir2
	3/ELYaGaDZHrP5oVqXScBGSw1T69DzJN2Q6xqdYZIaYSA9P4lB7yR788f0ImtCNM32jrNcG2PQPgy
	v4erlJX1l48AXghDZMa0UoAITUiNQahQ1xyKgvEKgMZbAp6FrtVF9QMAhXxTJ+94838cyXvE0In8o
	0ccZYfIvZNl2cKdrYOg/AZ5VlCIUofyDEZOJXPR4klO3uM4XVc9460PKDBPjt39jXW9eh+l4Ii5kB
	nB3fQ5WGw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNL1C-0002xu-JH; Tue, 29 Sep 2020 19:10:30 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNL1A-0002x3-Kq; Tue, 29 Sep 2020 19:10:29 +0000
Received: by mail-oi1-f194.google.com with SMTP id u126so6655406oif.13;
 Tue, 29 Sep 2020 12:10:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=cxjVSznZfD5H5D7jNFeaCK/3LXiy41wXF6wkmxY3ifY=;
 b=DtgpVV+ccWiciiPVUtDsa+a2vUo95gyu0jurRK5yrJrn3kaG5t9kWwVmqJ1TFc6JlV
 nBEj9CGXcX+kR9yWdsHq6S8oWgkSln68EZTmeNgEDltqWliRgTlS8UuXhcdF0nlwBX27
 SH+bGVYCdZrpoymnPLukuGuqcF2jditL+cnkKtauWxA9gbRa2uC3mDp54DCMmdfOYiNL
 4ZAUt+QmFg+WrHinRs9eR2mKYsjW5F+qRi9lfqu6PoMYEwhkt4jNgvi/zvsfz3VkqMkQ
 ve+jn01DgyXSrl6BEqVw67N/Fj7VmzzYdXmVFXTG43Kj7Y0bsNOYvJjroO15ABip6Yqm
 gTGA==
X-Gm-Message-State: AOAM5336ynZ4z/w7qom0+EFI5FiE3dMZy6cjhAamJlO/JET7lJKnY+Gv
 9YjQy+BetBhrfjU73CPMDA==
X-Google-Smtp-Source: ABdhPJwm4edm0GRNxj84lz3qtUqOpChCjn3yeTsuleYTjV+KFKKFz8rW/ZkLc41LHtC/hzaaQc0erw==
X-Received: by 2002:a05:6808:183:: with SMTP id
 w3mr3565180oic.176.1601406627731; 
 Tue, 29 Sep 2020 12:10:27 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y24sm3140448ooq.38.2020.09.29.12.10.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Sep 2020 12:10:27 -0700 (PDT)
Received: (nullmailer pid 983690 invoked by uid 1000);
 Tue, 29 Sep 2020 19:10:26 -0000
Date: Tue, 29 Sep 2020 14:10:26 -0500
From: Rob Herring <robh@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH 1/2] dt-bindings: vendor-prefixes: Add kobol prefix
Message-ID: <20200929191026.GA983622@bogus>
References: <20200925214003.27186-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200925214003.27186-1-uwe@kleine-koenig.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200929_151028_697143_6CD98188 
X-CRM114-Status: GOOD (  11.08  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Aditya Prayoga <aditya@kobol.io>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 25 Sep 2020 23:40:02 +0200, Uwe Kleine-K=F6nig wrote:
> The prefix is already used in arm/armada-388-helios4.dts.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
