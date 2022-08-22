Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1BCCC28D13
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Aug 2022 08:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e+NIfFrvKlfVgRXosphtSWTYSzOay3FaXuxuq53mCK8=; b=0/QPY6MmkNGyZA
	TD74FWs7TVbCGru/brJKkyEZ3L1n54QtGpyGw81Bcbn5mQK2WKVDSzrRMmTqEM1NAkN1FcPGork5c
	emoffUsEhp7RS34ihCU6Ej3a79jnzzR7Zj8GBbuyR4w6tNQGrrGS8oOmL0qi2bbD3uYF/jjdUhcyw
	2w1BYTSRZ5gL3fJEtVrpvlnW1z9Zo5ttBCWt88zuCTM3CTCoIPE1U4eWfrMtK97QaEAK49ItJYXqU
	8rXBOmf2VF8HSBkD1VGDbVYO/SUv5wb8sI/rwPt1aAXDLaWyDBRln0Plc0oJa4BDQP5S08wgHKBsP
	kYDjsGLoczh7lATOttxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ3Ce-006hPo-C3; Mon, 22 Aug 2022 08:54:36 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ2wy-006YTD-Md
	for linux-rockchip@lists.infradead.org; Mon, 22 Aug 2022 08:38:28 +0000
Received: by mail-ej1-x62d.google.com with SMTP id ce26so3976125ejb.11
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Aug 2022 01:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=5OBoHrdlmLoJOWu5Z6u5wsXYdDXsGII6yOBzDwmmk64=;
        b=Q5AWfYM/rPqlMVN4qyTDPaeV/0+Fk0sK5jGatklasd63Xvzc/Kde3ny7t+KQZiqhIi
         xsESJzpeoc5Lj7GBHNkmN+DL75GF2tfoLYlTL0t5oybt5T4qkzTZOtSnum4SCRoVeD+5
         OwXvk2cy7EyTb3Gu6Hkp4xMVbEeb1iQSjZIJPPlEuaZSTW7Bq71o5TtgXC8JUKif7xJ8
         vvKdA/XZ8SX+JhfY6W5XqInUgwpTUMu5HM0oEiNREievTLz9/od5tYsgeuCNeCISgGJI
         7BYkKKmxWsn9xLuTDXk1pJ8ACucfi4oWsaMV/NjeMxbD2ocFyhJNvN9MVGBz62abvbCY
         QbSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=5OBoHrdlmLoJOWu5Z6u5wsXYdDXsGII6yOBzDwmmk64=;
        b=Z5DJ9jj9PmXIh0V2IAVZimg+OwPBNTIAEE3DjYtwsdjPMG6xXK9aQeqNXsCpjjRa+w
         R7kHWmOCu6xM26n4C1w529qNC/arv8x/z6PXOPva+gLCDz2GxlzZHS2gIEMW3pwlBokJ
         ym1jorW1V2GvybTwq/qiDNzQH24wsr7rarKgPYu/D/OFeXxf0SRalkpqm58bw2vsyZOs
         MQjFXiJbJJk38DEtc0ysyo3/nBiFykF7xop1NQWFIh0oDdjx6w+t8urI3IZXwnJtJqkO
         DMzu/lcxcx5vIi9MICO7KMPo+5lBBwA24RcOw7vEXNn9jaqtoHpk+bFQp2ErbPsf8+g8
         19Ow==
X-Gm-Message-State: ACgBeo2qAMJf/J40XImaS4TN2O8G9LiehjHIFiQZ/Aotr5rQNAwP6obZ
	XOEsLT0ZeiY2PzMkl4yijEHMT4nqOwfhYiwx0du3BscFgknIFQ==
X-Google-Smtp-Source: AA6agR6ZR63Fh74m2vscZd7j1aOwLRpZQ7CAvO0GxPchmdyIMOJWkKrwFuKZZRefZqXis0gsyYLXWca4nOtfLFidPho=
X-Received: by 2002:a17:906:58c8:b0:6fe:91d5:18d2 with SMTP id
 e8-20020a17090658c800b006fe91d518d2mr12458571ejs.190.1661157503046; Mon, 22
 Aug 2022 01:38:23 -0700 (PDT)
MIME-Version: 1.0
References: <20220802095252.2486591-1-foss+kernel@0leil.net>
In-Reply-To: <20220802095252.2486591-1-foss+kernel@0leil.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 22 Aug 2022 10:38:11 +0200
Message-ID: <CACRpkdZXTtar73-HP8_wcAsCYw7JOgPwkXZt-_3s0GdoggBABw@mail.gmail.com>
Subject: Re: [RFC PATCH 0/1] Making Rockchip IO domains dependency from other
 devices explicit
To: Quentin Schulz <foss+kernel@0leil.net>, Ulf Hansson <ulf.hansson@linaro.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>
Cc: heiko@sntech.de, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_013824_882072_CD2C3123 
X-CRM114-Status: GOOD (  17.21  )
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

On Tue, Aug 2, 2022 at 11:53 AM Quentin Schulz <foss+kernel@0leil.net> wrote:

> Some background on IO domains on Rockchip:
>
> On some Rockchip SoCs, some SoC pins are split in what are called IO
> domains.
>
> An IO domain is supplied power externally, by regulators from a PMIC for
> example. This external power supply is then used by the IO domain as
> "supply" for the IO pins if they are outputs.
>
> Each IO domain can configure which voltage the IO pins will be operating
> on (1.8V or 3.3V).
>
> There already exists an IO domain driver for Rockchip SoCs[1]. This
> driver allows to explicit the relationship between the external power
> supplies and IO domains[2]. This makes sure the regulators are enabled
> by the Linux kernel so the IO domains are supplied with power and
> correctly configured as per the supplied voltage.
> This driver is a regulator consumer and does not offer any other
> interface for device dependency.

What makes me confused about the patch is the relationship, if any,
between this "IO domain" and generic power domains (genpd) that has
been worked on for ~10 years.

I am worried that we are reinventing the world.

While my intuitive feeling is that genpd power domains are only on-chip
and not considering off-chip pins, I am not so sure that it warrants
its own abstraction and want to know whether this can be retrofit into
genpd rather than inventing this?

Documentation/devicetree/bindings/power/power-domain.yaml
include/linux/pm_domain.h

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
