Return-Path: <SRS0=QPul=DX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06053C433E7
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2020 16:20:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 89B3320848
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2020 16:20:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="gEmwZf9u"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 89B3320848
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6ytV/AEGq8ShBDrG3ME5GV6HWGW1o1Zk+y+HT5tihvg=; b=gEmwZf9ulA85J6zjGRLj73p6M
	xcPhZT8Xxyhv+wK5yxfMg/3o2JanU4inJ9pqoyYo/cxT/1EutcDbhdOJsAJBHStJtetlHIuPdUvlA
	YIDfWXoprXyXPJU8Af6juzAebvyDdI62XBI8CXRFvixtj2wRmMBtf2FHXHBeVZSyXSEgu7AUdJYOb
	N5NPv6p0l3sB7vUmNwv947j7L7DnuUd9J09VAiJefKXvkuPLZzVPGnPk8qzgwbL4goml9g0LiE+7i
	sXvgrnUOCMeJ1b4wPJX/10qT1wMLn71ULsCnRjNea1Vw6WKZlhift8RjXAyxn8y3Uv9rYNqayI0Ik
	3WFfSC8zw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kTST5-0005ov-FK; Fri, 16 Oct 2020 16:20:35 +0000
Received: from mail-oo1-f65.google.com ([209.85.161.65])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kTST2-0005ni-Ss; Fri, 16 Oct 2020 16:20:33 +0000
Received: by mail-oo1-f65.google.com with SMTP id f19so744957oot.4;
 Fri, 16 Oct 2020 09:20:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Y1bxWF9bKlm4bzAXq9oJbXEMMHEa8XKOqRPUUn+E+G4=;
 b=LprUAzRtaUDvLcXbwyAAvj3RE6ojZqr8/U2rvr2g9Go9J0/0dp8RB6vogaKYyUOUXJ
 APZGabU6Uy9D2V4Yp03Wb49IPr4SGtJ7Ho5YRGzrT2/FT5mm5VVzb21Mhu5xIbXByjPX
 qGy1zFacoucQAf6R65nmNlJ5qFUVeXqDb6QGL+Bt93/dYrw+bkHpUi/VLCvNkLRT34GV
 3Frrq+xhX5TaqJAzNwryNxL6Tiyu1lDZyOgCwcsqhBZsutql68XhGM+f18tkgjJCy/WD
 o8RW9kZ5wknwFUmwbrUltY6GQV2QUEvRMQtWAb/kykiyUHi+FUVNhb03eTDsLKzV+5be
 5j2w==
X-Gm-Message-State: AOAM5311AdJ9erdOll2OMPy8cT3qTDRdpgYSAOnYCjifGDA176j/Sc3I
 rgObIgpJeBUplmWzvF+x9idlDgb2WA==
X-Google-Smtp-Source: ABdhPJwG7Nzd21eBnGvGJTHk+IufoaTer5Y9f8lUE4gmMU4zXfejWHoQPthlAuPNfSZuaEiyo62L/Q==
X-Received: by 2002:a4a:c813:: with SMTP id s19mr3296744ooq.29.1602865231944; 
 Fri, 16 Oct 2020 09:20:31 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i5sm1146927otj.19.2020.10.16.09.20.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Oct 2020 09:20:31 -0700 (PDT)
Received: (nullmailer pid 1521236 invoked by uid 1000);
 Fri, 16 Oct 2020 16:20:30 -0000
Date: Fri, 16 Oct 2020 11:20:30 -0500
From: Rob Herring <robh@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: vendor-prefixes: Add kobol prefix
Message-ID: <20201016162030.GA1520851@bogus>
References: <20201014200030.845759-1-uwe@kleine-koenig.org>
 <20201014200030.845759-2-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201014200030.845759-2-uwe@kleine-koenig.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201016_122032_930275_5A6A6A3D 
X-CRM114-Status: GOOD (  11.95  )
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
 Aditya Prayoga <aditya@kobol.io>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 14 Oct 2020 22:00:29 +0200, Uwe Kleine-K=F6nig wrote:
> The prefix is already used in arm/armada-388-helios4.dts.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> =



Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
