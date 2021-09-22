Return-Path: <SRS0=qd64=OM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A4AC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 09:46:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 668E1610D1
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 09:46:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 668E1610D1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FdwmpGpyXFXx+CHm1ZQznIMMiqu3IgiVZaAY+iYWnyo=; b=LbXYehkqsDvW/W
	hPUwz/SyWsLRtahzGHl+I0BKwmLpL0ObXkmLsllbjOFzdk446D+1LqwO0kKf9mKk+MICbLueRAHoG
	6rCXzU/WSUm3arZR38VHc894cMQrF99kynZeM2k/5w2Amsi/qrGS9ZWd+mztZjUdFA5o1WgLYvrWB
	pciiLRrrrBkgyZhWIgCZEW5Y92MN6pdPO3ySYAfYoZCWMB3btZ2DOCEH76vsMTteXyWqM7KS2X95L
	aLQKUdFGDy/F1ioN7sL9HyxU1Vmb5pjYHVtrK8fHhrVScal7jiMJiMgMjPO1r4Ji0gbhSlCmUsQ0s
	ZrsDB7ZoLhAamfyKZrXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSypR-007clw-9K; Wed, 22 Sep 2021 09:46:13 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSypD-007cht-J6
 for linux-rockchip@lists.infradead.org; Wed, 22 Sep 2021 09:46:01 +0000
Received: by mail-qk1-x735.google.com with SMTP id 194so7296614qkj.11
 for <linux-rockchip@lists.infradead.org>; Wed, 22 Sep 2021 02:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bTthP8lbagoNgD4znkkkPcaT2q+h8fGmYWbFuWXoDrQ=;
 b=IWHUjcdXwzYzIZEw0LJMOVNcxFzxts7J5SwUd4EoNozkeV9qZ4BmaoI2p4SW6AVAIv
 pLx/v01w2QMqzU9DQegqZZ7VaYeBr8oN5Yj90pYLRrlIUouBY6EDACJVwIoTv/04mH6C
 dduy5DsXXdVgwah75k/WJzgJLoCbrGdPowzKhaLgT0eJtIMmAgEVoElmpvJqTB1GNrmh
 gMxbm6gGc1R2hNP/fQXCDqVBGrq3GM6kT+ccApCizLZL5rDuAAUaDmtmoY6mX0DWeIMX
 5z9Mps2n/SaMjCT/qYLVY0DFTLYpMBxO1yb76Z0FnotqC9ITeXUxvtjatVbqRKLZp2Bt
 QxdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bTthP8lbagoNgD4znkkkPcaT2q+h8fGmYWbFuWXoDrQ=;
 b=xwFWURvu4o2IhRiIM3YI4fBSf/+kt1cs7Cl91OLrfYZULiiDpJehQOD7qQhGX4NgoE
 UqhlwIH7n2ewF9lYvDBhihb9WWJVBwU2Rp5WTUU6ICllMWxU1CKuntu3Q/vNx/95ZPGB
 8TlTlx33/67tkdzjrU9tU+RDk1E3dNyR11sCGkMCCrUboKz5EPTBwcw+B0efvrdvtWaZ
 v33bzyZdoMd08UcZljGL6VrfOHHw/ipO1IxBUwAk0EoaU/mFQlqqjgpNNi5pPD9mTj2j
 AvqjGqAnN68QRNAIuxzKFQFCbDl7p5s6EwiTFqakeznELKJKloUSqbNjBxkfB3UKRvtp
 u+pA==
X-Gm-Message-State: AOAM530gt3ARbRM6X64dgmviTBcGYWX9jOauqe6Zymow9jrVYD53yLHt
 OFCQUjFpC0tIlwU6jtKJBzD8UqEzwzbYJ1SMBKlu0w==
X-Google-Smtp-Source: ABdhPJz1dWLmkTK19qnONV6Gew86lZTBWocxC61DECZPcAD2oPCv39vXAZxXVu5i/CJbZwh1QCWRFftDyNRigk96mqo=
X-Received: by 2002:a25:7146:: with SMTP id m67mr43663441ybc.353.1632303958187; 
 Wed, 22 Sep 2021 02:45:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210913224926.1260726-1-heiko@sntech.de>
 <20210913224926.1260726-2-heiko@sntech.de>
In-Reply-To: <20210913224926.1260726-2-heiko@sntech.de>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 22 Sep 2021 11:45:47 +0200
Message-ID: <CAMpxmJWHoEP923iJr8WxN+oQ6ffQgyCZj7bwNDcR=j9T_Ngb1g@mail.gmail.com>
Subject: Re: [PATCH 1/4] gpio/rockchip: extended debounce support is only
 available on v2
To: Heiko Stuebner <heiko@sntech.de>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Jianqun Xu <jay.xu@rock-chips.com>, 
 linux-gpio <linux-gpio@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_024559_720147_FD00DEE2 
X-CRM114-Status: GOOD (  14.00  )
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
> The gpio driver runs into issues on v1 gpio blocks, as the db_clk
> and the whole extended debounce support is only ever defined on v2.
> So checking for the IS_ERR on the db_clk is not enough, as it will
> be NULL on v1.
>
> Fix this by adding the needed condition for v2 first before checking
> the existence of the db_clk.
>
> This caused my rk3288-veyron-pinky to enter a reboot loop when it
> tried to enable the power-key as adc-key device.
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
