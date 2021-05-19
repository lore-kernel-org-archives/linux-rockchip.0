Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A16FC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 13:25:42 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 91D5960FDA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 13:25:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 91D5960FDA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F135BdyTUjXy3nLo8Qy3lW/awe2YUivB+d7PiuRByxg=; b=QSYNeAIGMhRi6bsKqvkZGMX0a
	vLDMbebo5uwrVqbRI/JOsywnI7WuB6osaGtM+Q8N1ETKouTvWJXH01YbLDvvNPNGAeFK9xEu3eV2P
	ro9csKn/aVZvnmxoeOsXrU2eNLeOpFJnoqaA+EvuVsFPfQ0AvA6OvST5fEczTxZTsrpd7WGp92mtG
	M6XhJr5GLQGVITZXFtAGXBD9z3Nic/0o/vyMPypmUbChbHmGH+SPwU6j3HU1j0S8FHPg8whocIB5W
	QytZg3zXSFjTWmLlSYypQ0blD8j+LbyTcVPMXqHx/6x+foPwfoZqvonzXaojEZuUlTMWtsrBClfqS
	k3NADOGXg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljMCc-0048JQ-Nw; Wed, 19 May 2021 13:25:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljMCY-0048Io-HC
 for linux-rockchip@desiato.infradead.org; Wed, 19 May 2021 13:25:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=o2yairP/6+4RZbe6rYEI6uszDalPkfCMP4sSPLox2S8=; b=HPEBMgp4rq9iTjd1q1qS7RFLbF
 Tr0x9KTkE1dSmz9+jcNaZ41FjAQJVkRr3kaYtVsRo6MXsB3bVgOiWlIlLKRD7g+G0S55ezOSrOr7g
 Feq1rQdT7NxiBAS+JxkhqmtyJ86ZMQiYv+EGI2MaKJpwWFuCt4WSvyPQb8zo0R8CriaDHopjwzeHr
 QbiZNc0RlrEDAgyhiHJG/KB6SZcOktFJTDtCpcJmIaZzQqZ+rBVn+6ppxl4R6a9wwQknhFfuxPQcf
 GzgbadOXIi5DCo8A7oD92lrT9S6S8LRBCnXppn/k7SDFjHwZHLZv9Y9fk1BwGUXr5ZCKKclxrEzXU
 Ds/JKxgg==;
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljMCV-00FV3s-Oo
 for linux-rockchip@lists.infradead.org; Wed, 19 May 2021 13:25:29 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id e15so2316772ybc.10
 for <linux-rockchip@lists.infradead.org>; Wed, 19 May 2021 06:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o2yairP/6+4RZbe6rYEI6uszDalPkfCMP4sSPLox2S8=;
 b=l5Gk/KyYYvUiKXrzrrmbsWIiffFuywfT1DgM8rWwRicXZEJy58+UEmZBxkOmvWV2dF
 S14emLbK/ie0LUk6xP6+IOGx3vMrfN9oIZh1qNZnZqgCYiSKD548ewBFl6Yr68NGOpze
 xG1dslTjMR4D2E8Jxb+sxEWsU499RNHL7C8xK2ZC4d5ILEE2twduRgHfV9dcUmXGXVfl
 KeWOOKrvRpri+5vnpP4HC1R4OXdhqZPfdqbE/8XusDEjn+/g7KA8oX66ZDPS2qTuWIL9
 8OjZxetlHsmGBcfGtlW7GzNbVrghX1dlPPVaRL+oUw4M9k8IB8OaxMXKrEo4c2kAv4jY
 9M9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o2yairP/6+4RZbe6rYEI6uszDalPkfCMP4sSPLox2S8=;
 b=Ezav1HT/Z/auElL07DvPyhUsPKFBat4HvGyaHSDqjyGCvfnn4gudAXY0WUd5RSelJ3
 PzGBPF2UpLcXA3ftZ5igw7P2Z2zJtMhyjN/QGCRPNWtgLnqyELUAhMBMJtunUicXx+UQ
 tYD7PLhdO4FcdZ+oYz7D6jO9bJ9bpwlK/P5Wdnlh73LSbp2i0ybH50xSqqzNCF4mXZxZ
 nG0SqfTUImK2yf64L3PZIj+wn9RS+zy19+UVBTtVU9n2TYaXSlxEGeJCErOk8HFZ7bKC
 qJq3fslnLWt8WWoujyiIM4Fc1YaYnh2EWcp8dQO2HXNfo+kUgGLCAnynMAevH9/DsUtn
 Mx5w==
X-Gm-Message-State: AOAM533TDr+X/7mTEihVVEg8+oGXvUAvRBJWUQ7xg9g+RH3xO2loThQi
 Mw3C8EQVnZaKTal9Q1ZyjOZ6WJ1TyDqdshX9S84=
X-Google-Smtp-Source: ABdhPJw5dEV+YDa0vQ81zp7UOcVw5DeMMldZfG5bLMxhDK5cja9cxmWrozmWJ2xs19D20lpyzxJ9tPxk9qauONXvt+I=
X-Received: by 2002:a25:3c87:: with SMTP id j129mr634113yba.141.1621430725641; 
 Wed, 19 May 2021 06:25:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210511214605.2937099-1-pgwipeout@gmail.com>
 <YKOB7y/9IptUvo4k@unreal>
 <CAMdYzYrV0T9H1soxSVpQv=jLCR9k9tuJddo1Kw-c3O5GJvg92A@mail.gmail.com>
 <YKTJwscaV1WaK98z@unreal> <cbfecaf2-2991-c79e-ba80-c805d119ac2f@gmail.com>
 <YKT7bLjzucl/QEo2@unreal>
 <CAMdYzYpVYuNuYgZp-sNj4QFbgHH+SoFpffbdCNJST2_KZEhSug@mail.gmail.com>
 <YKUK8hBImIUFV35I@unreal> <20210519131512.GA30436@shell.armlinux.org.uk>
In-Reply-To: <20210519131512.GA30436@shell.armlinux.org.uk>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 19 May 2021 09:25:14 -0400
Message-ID: <CAMdYzYpgVda9D2scNZMFmA_+xFf1p9-T-NpDmnOKeAFWHnsfHg@mail.gmail.com>
Subject: Re: [PATCH] net: phy: add driver for Motorcomm yt8511 phy
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Leon Romanovsky <leon@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Andrew Lunn <andrew@lunn.ch>, 
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Linux Kernel Network Developers <netdev@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_062527_857088_DF3FDF48 
X-CRM114-Status: GOOD (  12.28  )
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

On Wed, May 19, 2021 at 9:15 AM Russell King (Oracle)
<linux@armlinux.org.uk> wrote:
>
> On Wed, May 19, 2021 at 03:56:18PM +0300, Leon Romanovsky wrote:
> > I'm sorry that I continue to ask, but is net/phy/* usable without MODULE?
>
> Simple answer: it is.

As far as I can tell, so correct me if I'm wrong, MODULE_DEVICE_TABLE
is what permits the module system to automatically load the correct
module for the device.

>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
