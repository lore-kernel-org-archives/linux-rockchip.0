Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E8F4C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 03:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTcsTCGvzLjvPHGEyX9go40c7tziIwpb7SIoHuoWl+A=; b=y1TYrQdFclab/r
	T1HIP+iVZRyK4/E3k0PZwFhiORKMl8hBvL430c/zcUHGuFdJAx5QvhNSwI7yKUgOe7itPeJBbkMeE
	gxwlj5LRQsrSY688IMhr09PTo/XCaaSNqKR0Xwtn+fRTDwVc6KWvfutqYp5URU50Pm8QK6Qtuf2Ae
	xZ8Gxo4Q9DEKBdHhZEaZkEi5KGouJ71Jc9qIozDgZRQnwTYvdMdhLMOlKUmOaWbXinc3cqyQBqSWT
	+HcpSoTvB9vUoKJEparf5Li9DvGK2X18TZB+ESojk9DdXOLI/AyieSUR583UQtII94i5yIpe6yrYO
	+mMbzGbL2/4xC3afl7Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHdfa-00G6by-DM; Wed, 09 Feb 2022 03:29:26 +0000
Received: from mail-oo1-f45.google.com ([209.85.161.45])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHdfX-00G6bY-WA; Wed, 09 Feb 2022 03:29:25 +0000
Received: by mail-oo1-f45.google.com with SMTP id
 r15-20020a4ae5cf000000b002edba1d3349so1064927oov.3; 
 Tue, 08 Feb 2022 19:29:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vrlWV0rjTSnyjpdLzphWMOjXtr2TKbwoXndPu2RhBe0=;
 b=3WCMeSH2O/fEbvn+6O0sqxh6KiPSuMt98Qnwb6KF8MAFh2+12WLbr9xQJXP+/vDvHu
 UVyuvrIVl0fumvWvAds7bu4GdNRygxUHJAcm5Q2je2i0qsRiVax04AWk/TMLWLLh29eY
 FImAbqcumUx3Q2K6SifI9zLSakBLvSqV6iB1TrWgzO0MmXF3yVu5MVXXVqeJYMCppy5S
 yx1cC5ONf4XX0WFaziboGTQSaWHDNgSaLd1aCaoAm5BKVBTc0j0DUPcMPl3vz8zaQGpu
 43+79kHfCf4Sp6X37VnhEH00fQJEUncEzwmgVvKyVx1jvA1/CUhywoUJJrR6pyGGgSMg
 Ly8g==
X-Gm-Message-State: AOAM5308wZtJW16B3+PhrJgVoGcZC84W3fsHn4vfGTaMQyko/noUrKFm
 Ch0pcxKL+Mo2wPxVMg4IZw==
X-Google-Smtp-Source: ABdhPJwg7nlEH3UMRliehVkH3nRJwXn01xZwslphv83rqfb0xKxsi4EUU5JbtTxirfS7RJpHF3BCuA==
X-Received: by 2002:a05:6870:7385:: with SMTP id
 z5mr350695oam.228.1644377362569; 
 Tue, 08 Feb 2022 19:29:22 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id h17sm6098009otn.60.2022.02.08.19.29.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 19:29:21 -0800 (PST)
Received: (nullmailer pid 3581079 invoked by uid 1000);
 Wed, 09 Feb 2022 03:29:20 -0000
Date: Tue, 8 Feb 2022 21:29:20 -0600
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Peter Geis <pgwipeout@gmail.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 13/27] dt-bindings: display: rockchip: dw-hdmi: Make
 unwedge pinctrl optional
Message-ID: <YgM1EGnuOdKnBFB/@robh.at.kernel.org>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-14-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220126145549.617165-14-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_192924_072776_4E27901A 
X-CRM114-Status: GOOD (  11.19  )
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

On Wed, 26 Jan 2022 15:55:35 +0100, Sascha Hauer wrote:
> None of the upstream device tree files has a "unwedge" pinctrl
> specified. Make it optional.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml   | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
