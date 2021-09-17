Return-Path: <SRS0=N4HT=OH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FBBEC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 23:38:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2A56661130
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 23:38:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2A56661130
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7KUSnRFNE4wN0vEnDWJajW6Qdm91OVg3GsQjXpjKO8=; b=PT4VMrkBH5E+45
	0yyDewINvZEGE5wPJlH3T4mLNzSnE5sk1IPXp1rEURJ9M9zIB+Usp7M6YfDDEBbi5627PjNGRgt5Q
	GUjiP+Axq2gkRa2bILQ32yYVNZiuVrAYWzq3SR2GS0DivZ9jNmgcrL/nfm2hDi/EY8YgfK8zh7SJD
	UvLuMAWc5axpJe1D6w5UkVlKdJKZ9p+2HB7rpLH9u0IyUw5wXTKhGEOPO1/ZHVMTV7y9owVwnLYyp
	AFtgw/7kVTeyqx2rbsLkxFFd1cp11PXW2YYaNfYABni0TsaE/wI4qLVLsllwvKRd8Q/yfSkIIJG2M
	iUwl1lU+DDGsUtyHU7Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRNR1-00F8qT-4x; Fri, 17 Sep 2021 23:38:23 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRNQy-00F8px-Oz
 for linux-rockchip@lists.infradead.org; Fri, 17 Sep 2021 23:38:22 +0000
Received: by mail-lf1-x12f.google.com with SMTP id e15so967159lfr.10
 for <linux-rockchip@lists.infradead.org>; Fri, 17 Sep 2021 16:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KeHzeB7io94eA/ZJSHL1lXdfmPLUOLShSlChdwb/4UM=;
 b=dy9OzlFOrhnl1DS8/X+L7nE1kMFKgnlxfciOEhe+x+cltD1TM7SnASV0vjMxXR/urJ
 kIkBxfeK5sxCQgMft8Yyfukwk5oiWkXaZVJzhT0fhd4TdKGiDkPn/M7WUZkjn8dIH2cK
 sCGAXski8FM3PPJ0AsCsv7dSz8+bad5pHjO2gPuYTY8kwb6dAvj6HRvj1Z3HWi7eN9u+
 C5aOzaMx7T9W6JVKIifyQEGb8tHMb2R2Y5aGafrOp4Biu6oWNeZTAxtLM2fdWh5kx2l1
 bUd1fQfkYn7tmjFQWZ4gp3ARCgd7YoLuubNMaNgsjcTE8KD3mEneFcX4pktxKupTJ9FZ
 d0XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KeHzeB7io94eA/ZJSHL1lXdfmPLUOLShSlChdwb/4UM=;
 b=1L5FimFsnqzzzZfUxk7vKK8IN9z7DzlZFGJnoKNFRq1+jo5Zgp7vF8+RSN27BDkNSX
 kDzrr11hC/qQrcOonR5bFiftGzkg/kcyEjL3pG2FuP+dLj8OmT+i1KDdnFsVrc/zpnEa
 2TRF32b+oCGNeyW8tsydIDIm64oGA2gPpmyKHRPjPhl1UN6SF52RBj719jWGQrrciYKg
 liXzMIqoJqwV4152SsL1RxX1oZZTX17Cm958LTeny7pPx4cWs3KA57gkHgXutOSMOydf
 xDEjvizRBxbnNQgn4+HtJUF+KJhzaZRRCJ5K13oTn+cze6nz/oLB8EQvFNHdkbtbvxbP
 WwzQ==
X-Gm-Message-State: AOAM531C8cOR7rOP33ZRVbcQ+G5xDkKnwIqwEbuYk0mlmTIw47U+EIe5
 vKYgPWWLHCzpP9eZF3cz0T+MAgvR6adCc8W+bxGVpQ==
X-Google-Smtp-Source: ABdhPJw4EoEAssdj+o8H6LXsDHc8O7NrGufrLKeqnpYTgwFQ5ZKpgVAqKHY0OKYZbCBYW1+1Ss4+AJAaLD2tWKh8CwU=
X-Received: by 2002:a2e:b5a7:: with SMTP id f7mr11859236ljn.19.1631921899350; 
 Fri, 17 Sep 2021 16:38:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210913224926.1260726-1-heiko@sntech.de>
 <20210913224926.1260726-5-heiko@sntech.de>
In-Reply-To: <20210913224926.1260726-5-heiko@sntech.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 18 Sep 2021 01:38:08 +0200
Message-ID: <CACRpkda2Hc6E27LK=vH_qKkTayG3qP=BGdqBKyLR2dMhekyWTw@mail.gmail.com>
Subject: Re: [PATCH 4/4] gpio/rockchip: fetch deferred output settings on probe
To: Heiko Stuebner <heiko@sntech.de>
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Jianqun Xu <jay.xu@rock-chips.com>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_163820_859680_5F3D0A07 
X-CRM114-Status: GOOD (  11.97  )
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

On Tue, Sep 14, 2021 at 12:49 AM Heiko Stuebner <heiko@sntech.de> wrote:

> Fetch the output settings the pinctrl driver may have created
> for pinctrl hogs and set the relevant pins as requested.
>
> Fixes: 9ce9a02039de ("pinctrl/rockchip: drop the gpio related codes")
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Since this patch depends on patch 4/4 I applied this to the pinctrl
tree as well.

I still think this looks a bit kludgy but can't think of anything better
right now and we need a fix for the problem so this goes in.

But we need to think of something better,

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
