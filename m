Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16067C54E94
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 13:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6XxqUNBBiuXzWN1gfD+RspwiUnEdYr1t8g96oh9M8gk=; b=j6d3P6FRLBqRKl
	yu2e8Co6GcXrzXEQafwA3OG9/5MmGRO+FaTCS2Gcm6Voy/xTZa7r+xzM+TAoKBs64jKKydmox4X0r
	xy1TAaNluBn5gKTaaEl+oA5xJOWmIO09vsTuQxttYjAjuKiZo8DWrX+FKShXmLsPnHnuD2IqLxyUe
	RPqRiEJYw58uC54U+eGa0xDFMxLD7ePRkRa3zzdysQ7VlxUpDcq4hPfOmVmgA5H5NJXrH1LuUc+Ix
	JexhRzj7cehg7DTgAcd+Xd1hys868McUFXVjSAnEHtLJEQ2Li/t5jKHlueIjveCVeUxukFyXufqNs
	w0lK8u97XSfmNRUl00GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2ZK-00B0B5-23; Thu, 26 Jan 2023 13:45:34 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2Z3-00B04E-3U
	for linux-rockchip@lists.infradead.org; Thu, 26 Jan 2023 13:45:18 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-50112511ba7so23343347b3.3
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Jan 2023 05:45:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ez2MrtSZb4tJ2jAwb3xppJ5lPZWy2uAXURxNWDwb/a8=;
        b=jy9JYMK6gGCl2o5vqFUdI6tHbmkfYsjBO8GG+hWJRcIBUD7E0/MhEgMyCGRFLTbD03
         ndLgGBYeHr/kcUJ3I19+pyzfLN9bLCEHT7egMaC+cTwEljplfce9DKPBDPlYMZ7IFVhR
         jDkVfEmXHvaFjY/55rk+y2nhrLPV3u4Q9p2K/kw81MoA8hpzcEuvAuKiDWyobGSNWhuF
         gp8/QXyuUrefZCmozuVO0LxlNyg3qOAuS7h/IVJFk1tu4VEKpxC/DEjl0M0pK0mTOMwq
         cKYF7lmbQmQns/bRIIh7r1SnGhUkeyEPttzyH4k+FHTHqY09UAZKeEpdab/5tVIfhY4G
         Zatw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ez2MrtSZb4tJ2jAwb3xppJ5lPZWy2uAXURxNWDwb/a8=;
        b=OLdEaOh/mk/slQOibnYKo6EUqD7/qg22WUTFoGPlMqFWXmWcJuKbplujGw3PTbUvHV
         3oQ9UoKmYGTnpVT7odeaLUEnZwxn+9KMQdLzXFKsL8pSBdcDc2RIBaBe0zc79Zteg3hr
         tjjILOTzTHXFuhZUeI4HsFdv2Yk7YvURZyzszg6Je5YFvP6JL/EIJO5Wz6z+qhta7BY3
         iFw8TS1Bsda/RMB/BCNUI7iLri9zn+93SYB607eFoObOVHnGlwSnZdkCnu1OLMf54UI1
         QR0ujhyZ/oIZcAGAIM4qM3zpzrEs9NJA9VBVI990TetobY+dsyYZSRICTDNrIirYS/Y8
         U7pA==
X-Gm-Message-State: AO0yUKWY4y8M27sJUKvmhgxUBgYbVDH43Zbh9r4sznb+alE6WdZc5dE8
	SBn+7xUyIV+BSp3Mxf5Qjok6bWBYkOjVo4zgUIRvnA==
X-Google-Smtp-Source: AK7set/7+Fp1NjZoyI+mM8UZOZRBtXPThin2BMCIsY6GmayDtC8+bkdTlyqKNL262/1QMt+vCKGslTx4Vz4eu9Y1JF4=
X-Received: by 2002:a0d:e701:0:b0:506:66f5:fd24 with SMTP id
 q1-20020a0de701000000b0050666f5fd24mr955721ywe.130.1674740714000; Thu, 26 Jan
 2023 05:45:14 -0800 (PST)
MIME-Version: 1.0
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com> <137b56f0-8e86-f705-4ba7-d5dfe3c0b477@gmail.com>
In-Reply-To: <137b56f0-8e86-f705-4ba7-d5dfe3c0b477@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 26 Jan 2023 14:45:03 +0100
Message-ID: <CACRpkdYYB4-qhgbN3D8-Yjs9QVcj1oCZZHTVJXsyXgC=p-e=NA@mail.gmail.com>
Subject: Re: [PATCH v2 2/8] dt-bindings: pinctrl: rockchip,pinctrl: mark gpio
 sub nodes of pinctrl as deprecated
To: Johan Jonker <jbx6244@gmail.com>
Cc: brgl@bgdev.pl, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	heiko@sntech.de, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org, 
	philipp.tomsich@vrull.eu, john@metanate.com, 
	quentin.schulz@theobroma-systems.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_054517_207997_983A3E90 
X-CRM114-Status: UNSURE (   8.51  )
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

On Sat, Jan 21, 2023 at 12:08 PM Johan Jonker <jbx6244@gmail.com> wrote:

> Mark gpio sub nodes of pinctrl as deprecated.
> Gpio nodes are now placed in the root of the device tree.
> The relation to pinctrl is now described with the
> "gpio-ranges" property.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Do you want me to simply merge this patch to the pinctrl tree?

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
