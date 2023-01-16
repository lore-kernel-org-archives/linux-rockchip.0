Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30702C46467
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 12:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXnsLYRI3tkp7r1KSZhj+N9sRGjh/bJHGPIs+NQOZxk=; b=qwfzUD+S9EOXxr
	hA9+Q7RO7nc8Wy/xgq1qQW/HMEJ/jHmxZ7VTBxEDNUmLiogYEeoxMFSEsmKl49YCRgmUDT9me6EyI
	XNwNvyk8t6YXYWB53ApkvaXSJ6WuVJoca9I0prq7vILTOuQTCVoJq2hd+0+Eoq5QTODRhyXrOgPNy
	1osJANEkS5zltThZEBuordn8MBYo5f8f7lqIR+XySbjWR7PlZHomMlCfxE7IHT7wsM+Gktb8zBM+g
	WGOH/TBF88li8eB1Pk8cMPFxLsmwM0kMhD5Q6m73KfhhS1grZWWx+Y4IiF1GERhhQxx1wmzjxp60k
	RevtPpO87tj8cOnJBEsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHOpx-00A8nZ-Ej; Mon, 16 Jan 2023 12:43:41 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHOpu-00A8mC-Bu
	for linux-rockchip@lists.infradead.org; Mon, 16 Jan 2023 12:43:39 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id 188so30081017ybi.9
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Jan 2023 04:43:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bzAXwdCvDxq2ZXNmGsdcs5ULG6ySxlBGhBK+Q84iWyc=;
        b=z429dc8HTSxSpP83/Qvm8uHIwVOjUxW+fB3mUGvLwV7TDdHjjp5oZmDcHqKCuGx3rg
         HL/QvYIf9C2va1HJ+tXJ9BFWFytG6LZRHpd2yqYSSUqbvWzX+OaniGDqRYr4yPeJAhUb
         NzGHYw5tDuLWgXvZntzWDQ603DCyNowwAYQV1MHA8TGybyn2CiFV2t3zDLe7GozgxwbS
         cQl23omTkC15QGGvX29CHZvT79o24NreIe9YBmanerG3LxwnIjo8JpIeCwW8uw1BbP/J
         oQBhWD3vNF0Cd58k01fdckG5P3DvCwx0zEVMp7tEd0Lz45k8FYZJLEtfTatwlEc+xHA/
         C1pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bzAXwdCvDxq2ZXNmGsdcs5ULG6ySxlBGhBK+Q84iWyc=;
        b=cOr8H8S0EPFmRrcuDYKpmv9tpK0Wpj28Qp/smv7jAqvELuL+gelEYseGU3KItKLT7E
         IPmt5OxBBgiZAFE+Mvs7FN6EpyXjwawQ+hXnNOx3m6VJbctZg+EhtNmpueQoh1qXBx0R
         Px3W+NJO9+HK5pmu4Z4XWTXHne4MpzHAFwbte/pNW6AT6Snh7YVl4MbR9ZQOx3QYU226
         fYjsfqZyJm+FrYL5LO4TqW47b0oRW1HUb+qTuZqWDFq60H9qPmxofVL9Jbkb1PzvEyMy
         1DfHvCgh+Av2pP5/owHnJBcTphzlzrHwTvvbUz2ITQhBMMHkVoTfYsz82pX3e8/bYoqe
         VDOg==
X-Gm-Message-State: AFqh2kpQfTJsiGkpxXGzSxF4YQJg35EEBiFy+k67h48JO10b356toXup
	nt6ZZurlkAZ0DgrOiMLFgJreR8EpxbpXzD58z12AEw==
X-Google-Smtp-Source: AMrXdXvAx6y1ThlA1UIN8G7jYozTcqWPm5nhqThDDSJen+uXvBbrhIA8Aeq85e+9eAZsYZA6UVZvtUEAHY1gLjQITy8=
X-Received: by 2002:a25:c042:0:b0:7e4:fa1:b33 with SMTP id c63-20020a25c042000000b007e40fa10b33mr255611ybf.460.1673873016453;
 Mon, 16 Jan 2023 04:43:36 -0800 (PST)
MIME-Version: 1.0
References: <20230110172955.1258840-1-jonas@kwiboo.se>
In-Reply-To: <20230110172955.1258840-1-jonas@kwiboo.se>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 16 Jan 2023 13:43:25 +0100
Message-ID: <CACRpkdaY7Q9WngrznF8jch8fzfu8uEbk1t30NAMd2tBdLnZXOA@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: rockchip: fix reading pull type on rk3568
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Jianqun Xu <jay.xu@rock-chips.com>, linux-gpio@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_044338_488677_FB90CE72 
X-CRM114-Status: GOOD (  11.26  )
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

On Tue, Jan 10, 2023 at 6:29 PM Jonas Karlman <jonas@kwiboo.se> wrote:

> When reading pinconf-pins from debugfs it fails to get the configured pull
> type on RK3568, "unsupported pinctrl type" error messages is also reported.
>
> Fix this by adding support for RK3568 in rockchip_get_pull, including a
> reverse of the pull-up value swap applied in rockchip_set_pull so that
> pull-up is correctly reported in pinconf-pins.
> Also update the workaround comment to reflect affected pins, GPIO0_D3-D6.
>
> Fixes: c0dadc0e47a8 ("pinctrl: rockchip: add support for rk3568")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Patch applied for fixes. Thanks for fixing this!

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
