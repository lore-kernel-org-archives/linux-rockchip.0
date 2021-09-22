Return-Path: <SRS0=qd64=OM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E1FC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 09:46:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 78C52610D1
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 09:46:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 78C52610D1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jpYNyuseMGKOCMorLo6YEw1+9QW3mU9IlIXAM8vgtlg=; b=BAwWAuBYXzi2OM
	jwCvEI07sRno+iEcujQ4G1AlXy2ZvgjfE86++zmE6ok6aGT2/0nQWsIrgoqaA9VkZ54AEVCSlxc2l
	ztgsTOR+IcQe4WGgiTGqxgPcysoDwKIO7zYUJq4IAEEyKVOQoSWauXlEOcggxJvJMbpzNAsQnC3ar
	y4jnk2v3lhxX9Wum6heMYZvsI/AirccKCIlWA2q60ZZlSc77Og0Vv1w1nQDxTQedkKTAioQso+3UU
	xjyzBDuHpE7Y3PxUoym4ZI6fkzLVtlGrBrLIiXEWn87mvxCRSv0TyS8leU+4rXZywSs5nMMvEW7rD
	DTZd84c5E15OVzWzRhGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSypW-007coS-VQ; Wed, 22 Sep 2021 09:46:19 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSypT-007cmL-Of
 for linux-rockchip@lists.infradead.org; Wed, 22 Sep 2021 09:46:17 +0000
Received: by mail-qk1-x72f.google.com with SMTP id c7so7777790qka.2
 for <linux-rockchip@lists.infradead.org>; Wed, 22 Sep 2021 02:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x4q1zxIuVhedHp6MaKOmCNyuAc8NXI5z0ykLN2TcSPw=;
 b=d3h8EJ+7mUYPJ8Z7QMYRNGyR4gJ7Rsu9S4NOQ0Q+n+DBQw03lIIG5Jp0IGuCAD4/Az
 XYnXKP0NPP6I53EEQUAwILRM+a2Kl8f9Y1Skwe4A/nSTkehhxTebRxXCe54AQ4AmJsWe
 A+uKFm0sMneN9XFHAUhlKbGXXKrkFQiwdJmdNm059wmUiVG+WOi8QeL1E6aZqSw2gC8v
 FHsAuvXa8ZYPbXOSeot+JJlvB7xCKDbJf79nN/JD5MbgW1JKnQ34LZoB+w9VTwMxv9PI
 K6vp48mtaE1pqsl/61aSwfnnfmWHGlmbFqojpoigPT5feXoTd2exKQ7uixFNNF3QajKV
 Zk6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x4q1zxIuVhedHp6MaKOmCNyuAc8NXI5z0ykLN2TcSPw=;
 b=rljDoK1+U3v2uj7gjZoE96w2Irs2NKkJS0PekAnknxy3OES35SF91vzLwcl0DnLv8a
 XKXDWaqerPalC3lOyGs5vIOkp69/M0rTWPXj8Vu2dE9H+ns96pQYosqAW/9hG+EvDmnE
 nZFyX/EQ+3DVuAsnIWh+WYaTzoY9uAQCw+0L4wUO2oEMb0YrNpcgT+BOgGGTGmNUQWZG
 +Kry6rXdITK3OE9/XfUtbw9iobG+3rp1LC8TFrF5Nip4h4fC16TaXbWWduuIPPUMdA3U
 nhzGdHj7nnP1IR6S4g4K9uqwOg2oaoYEbHUzC+ju9cKsXwgP4S5sAyLaymvBwiIIzlEg
 mVMw==
X-Gm-Message-State: AOAM530nYnr0Jl49trLBpOD9hdVMMZJJYJuHwKcomj9GJKovBJnZ/ZsH
 OXG8aR6ykq+PEklVQkXsy/lIwj0PhzpS6BvIxFR7cg==
X-Google-Smtp-Source: ABdhPJwuJo+CQrlxjfmYaZEDq/Kd/ZVERj4tt1Le63TAlWMISPWNd2Vc1plyXiv3nR0JB7c4tQXS1ZRo8CWVaazxQW0=
X-Received: by 2002:a5b:783:: with SMTP id b3mr40177499ybq.328.1632303974160; 
 Wed, 22 Sep 2021 02:46:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210913224926.1260726-1-heiko@sntech.de>
 <20210913224926.1260726-3-heiko@sntech.de>
In-Reply-To: <20210913224926.1260726-3-heiko@sntech.de>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 22 Sep 2021 11:46:03 +0200
Message-ID: <CAMpxmJWbdb+v6An6b-cYOJEbkCRC0=Khw4VjH4T=9_V+9j3Xmg@mail.gmail.com>
Subject: Re: [PATCH 2/4] gpio/rockchip: fix get_direction value handling
To: Heiko Stuebner <heiko@sntech.de>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Jianqun Xu <jay.xu@rock-chips.com>, 
 linux-gpio <linux-gpio@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_024615_826943_DF113DFB 
X-CRM114-Status: GOOD (  11.10  )
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
>
> The function uses the newly introduced rockchip_gpio_readl_bit()
> which directly returns the actual value of the requeste bit.
> So using the existing bit-wise check for the bit inside the value
> will always return 0.
>
> Fix this by dropping the bit manipulation on the result.
>
> Fixes: 3bcbd1a85b68 ("gpio/rockchip: support next version gpio controller")
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---

Queued for fixes. Thanks!

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
