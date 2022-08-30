Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44C2AECAAD1
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 06:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6VAdQDvpYxso9Jrf+gEGvzgC9lBq82+8vg5qOg0Yu4=; b=yhcbIRd6B6udGp
	rI9Vl/kzq9S/IA6ndiQDZ7TA9ufAHEWzJ602IIzCOkujJZsfEIfuKOZWaN05BtMPb5+ALQrcKxjOg
	td6e80fzyBDpxqkiD88XMESP8Pfeq1tgupzxSp6iG2zU7HoZv2qArYP6mKSWOeB/aKWIdJ6eZIj8B
	FOv1vsxrU4vGjP7vML8VMsf8YLsO8jTbOBx3jVpU7T/cUvwDJ03xRM8CWPou+ox/NsCYorTVTuudL
	/LdD1H0dRovsmTj8UT+Q30OfAlPE87hvEGjQRSXXWlDNLamJJUOSEKs9GJSj+Ux4FaSJIgxPIQrGv
	fhdyrmR8n5byPcCytytQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSubm-00EOEL-St; Tue, 30 Aug 2022 06:20:22 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSubZ-00EOBV-4Y
	for linux-rockchip@lists.infradead.org; Tue, 30 Aug 2022 06:20:10 +0000
Received: by mail-ed1-x52d.google.com with SMTP id b44so12796647edf.9
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Aug 2022 23:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=++JdMGtMD26Cu+yzgg5WWgx+GFtBxRSzs+SJ9mrdYSs=;
        b=RuopdrOnXcvGPQpkkU5y7aUfCeDwL2Vk+B0uFOGQ31l8vnTiZTHYk6ihBlMJAYdYI2
         w4ks2FybqN28VPifo1EW556toPVbTZb+gsL67qEjMjDbbs8dY/9J+/irPaOKW1jFSQBg
         BlZpdpQeU9e9TLTY2vUo5zOqs6uvetWvKh144=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=++JdMGtMD26Cu+yzgg5WWgx+GFtBxRSzs+SJ9mrdYSs=;
        b=ii7uu+S3nB4cKYCR1Rl+CGIk6TbS/ZSfqrcKX4ALKkmG472yYgfayqu9XkvR4BuNGK
         BoJvFvtJJd1RgD3ZsBA9xYSKcO1vhfu5G3nTlbTjPg2REaoueBZXzETL99oarP1fR+mY
         Amo0pU13xxBr/8FqM1Tzb1LI6XPtopBh4WTUu7Ipl1ULfCI33QjYDqf/NyMBUrlayqNZ
         g0MxwOMGeLP8zjFcE37voRIHriB7D4C9oZahvhrRkWINOuXdJc/YraIYxU2E4CHeiFPb
         HwQnicb3F7+L4zgqzWwocFg3jh6bN11kGTktwoPznJJq62DkpraXRpBHZYOclbAmbIen
         wwuQ==
X-Gm-Message-State: ACgBeo2Mn1mZCjky/hfmde7s7rqJO8Gjn+a9ukwQWOdUa723vmrCDUfP
	TKWJbguhIStGEvxcoka/nOygrixWEg6qVmb2Q1qozQ==
X-Google-Smtp-Source: AA6agR4+X1HPMOGOCekLTu6kouxtunRcm+JWVbIlAPGOJ9Se/iF2PG5WIT30LAM1ip8dpzPQ0uRuj18BopHLMsP7L9M=
X-Received: by 2002:a05:6402:428c:b0:440:8259:7a2b with SMTP id
 g12-20020a056402428c00b0044082597a2bmr18557129edc.329.1661840406408; Mon, 29
 Aug 2022 23:20:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAMty3ZD2QDPKwAvJWB=kTJ+5ZtcdZhcT+No9joTkvBWnrKRmOQ@mail.gmail.com>
 <20220830054317.181733-1-naoki@radxa.com>
In-Reply-To: <20220830054317.181733-1-naoki@radxa.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 30 Aug 2022 11:49:55 +0530
Message-ID: <CAMty3ZCJ7oA8V72n2RTEBnyM9dH9uHd_a2XG0GUY8qyp0MpwtA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3399: Radxa ROCK 4C+
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: abbaraju.manojsai@amarulasolutions.com, devicetree@vger.kernel.org, 
	heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, 
	linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, robh+dt@kernel.org, stephen@radxa.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_232009_191064_3554FC28 
X-CRM114-Status: GOOD (  15.29  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

On Tue, Aug 30, 2022 at 11:13 AM FUKAUMI Naoki <naoki@radxa.com> wrote:
>
> > > > > does card detect work for you? it doesn't work for me. I think it
> > > > > needs
> > > >
> > > > Yes. it is detecting for me. I've booted from SD. 2022.03.04 V1.2
> > > > revision board.
> > >
> > > I have same board, but I'm using eMMC as boot media. do you have any
> > > eMMC module?
> > >
> > > what I tried was inserting uSD card while running Linux on eMMC. it
> > > didn't work.
> >
> > Here is booted from SD with eMMC inserted on board.
> > https://gist.github.com/openedev/85fb939664b6f0803c9ce02c5b275167
>
> please try
>
> 1. power off
> 2. remove SD
> 3. attach bootable eMMC
> 4. power on
> 5. insert SD
> 6. see what happen

Got it. I'm sending V3 for updated changes.

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
