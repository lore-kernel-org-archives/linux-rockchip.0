Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FC1DC04A95
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 10:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wU8ByK6lISpD3sw0eSAxSsEtsBPzcGH7FXa7VpjSVzc=; b=Cw3hGPNhb649Q3
	fZGodfxfsrQP1kW3pyN7WK5FN+/Xhzo7i2VLVA0oy8aO5WiHAwRp0IsI9qcxko7QX/WS24ajPFWl6
	5SvLgqwuu4NI8vAmFOceiVg1yKBARV40832rxUE6ro6kbX+DrB/ntPfUFTvG320leO7Sfb+HN/nhx
	qdEg2iodKZ5SjYsQTL6TfOiHmielasfcP5XIaEsX161p/V2YTqe6+GdhRuTkrzSboFSH78QLgFS39
	MH5X7r1L82Q7k3vbIfBK9QCuZbi0OY/+EekcdcmHX/Wkr5PwyIAR359vW46eKzuByLzs1P4s2hL3A
	cJ/bMNVuAsusQH8SGBxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odUBW-00FZJz-6U; Wed, 28 Sep 2022 10:20:58 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odUBS-00FZDt-4S
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 10:20:55 +0000
Received: by mail-wm1-x332.google.com with SMTP id k3-20020a05600c1c8300b003b4fa1a85f8so748386wms.3
        for <linux-rockchip@lists.infradead.org>; Wed, 28 Sep 2022 03:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=T0xn5mg2OwPknW9TqXFuSjwhK/0Hwu0CezRKK3avViM=;
        b=Ckfbjz/+KHxkr/dKRe9/WrUWYQZeMNGsMH2jar6czpQowIFPPXjIAdoDYNKXQGbNcs
         G53PmFdQ+OP9E6vXpJzW3azj5/9hImd82sFq+KNEGwQ9nmuM6CjnewuFEIIuEKh+HK0w
         rQju3rKj9OuAnCXWlahXNCdtnmQ2UNru68/Ow=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=T0xn5mg2OwPknW9TqXFuSjwhK/0Hwu0CezRKK3avViM=;
        b=te7efxkGwhtDTi3EiEmsnn/31r7XF2HPvKURrfKY5Mbpxv35yLvAnCVopwRAbVVDG9
         TmV6+fWpBe2Xo+a0GVPglWZUbddCvrfYP48qh2l7HaQwe55ppJHaOPT0aXgpTiJhLA7c
         +xS1z1/2uUJOSieWHiQIvmmgjUoEjJIw96Ll/2XtrvyWCouoSKUv+0xMcwywfHZVPIH/
         weAw9wu/2OqjnXqVKuUXlVGBXRS/pS9Mckh32YP6M4dwycY04wVUUFlvwT/fz28SZwKm
         0dXtcl5kdC126r6lFrzUZEh0/BG1DBWbJFekrjFzI7dyBjFTxO0XhHfQUsrcKj/Cxr5c
         hR3g==
X-Gm-Message-State: ACrzQf0WLqqGdMmVbV6K8iBDIYYkKUOBZTO86NSpSv9Vi/hD2Yq+capu
	pdFz/WUy2yMhMQd2OAZYZDtBu+VGBtAbi7CooFH0HBcR3Y8=
X-Google-Smtp-Source: AMsMyM7wK/17XZ2aCj3SufOUs5xzmIi4m5DpaAYz1Uq8nvJyGw6YNo5s5C9s+JYTOOtItA+wzbGHHEb+36Cav1w4yxE=
X-Received: by 2002:a7b:ca46:0:b0:3b4:7ff2:1ca8 with SMTP id
 m6-20020a7bca46000000b003b47ff21ca8mr6164027wml.11.1664360447248; Wed, 28 Sep
 2022 03:20:47 -0700 (PDT)
MIME-Version: 1.0
References: <20220922064704.1740759-1-hanetzer@startmail.com> <20220922064704.1740759-2-hanetzer@startmail.com>
In-Reply-To: <20220922064704.1740759-2-hanetzer@startmail.com>
From: Simon Glass <sjg@chromium.org>
Date: Wed, 28 Sep 2022 04:20:34 -0600
Message-ID: <CAPnjgZ11VqF6Zk6qr+BnKMSBHGz-cN=0yc4BVmf-hmcFOveM8g@mail.gmail.com>
Subject: Re: [RFC PATCH 1/4] rockchip: rk3288: enable u-boot.rom for speedy
To: "Marty E. Plummer" <hanetzer@startmail.com>
Cc: U-Boot Mailing List <u-boot@lists.denx.de>, Kever Yang <kever.yang@rock-chips.com>, 
	Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Johan Jonker <jbx6244@gmail.com>, 
	Philipp Tomsich <philipp.tomsich@vrull.eu>, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_032054_225282_87CEF23D 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
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

On Thu, 22 Sept 2022 at 00:47, Marty E. Plummer <hanetzer@startmail.com> wrote:
>
> Trivial change, builds a bootable u-boot.rom properly.
>
> Signed-off-by: Marty E. Plummer <hanetzer@startmail.com>
> ---
>
>  arch/arm/mach-rockchip/rk3288/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Simon Glass <sjg@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
