Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96E6CC05027
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 13:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IsIrUNnLpxs1f44GxCTiBOxhXKIOhVq0v3nOmzpcwV8=; b=w3mDsJw37GjM4L
	HKirGvw2DHh+toaq12n2i7Z+3XXUGRrG5tWCXavuSBUUXwvk+aSk2mt/yLlJerx0CJDN/i5PN6/5N
	JrqWe4DIbXYh523HXkgQJwobvy95P6kuRQGDLRGbrNN+16QO6GR9U4zuFqfv2OftJnpphmA6/xeMK
	i4jxW4La4jtmBnQnsJArsSEq0hXKx5T0Ve1pW/tBptnhNFGYyONIGIHt13EJkiAfNnssOzDomGmLi
	Kx8t2IeqdVU1LOYjXV/rXMWisTqT5DnDwLDGbhKWLxbJOYfqY21ILM/gtkW+e52GR4LOpnHCgOska
	yOEMokoh3LeVgieWJS3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2YH-00AzpL-9g; Thu, 26 Jan 2023 13:44:29 +0000
Received: from mail-yw1-x1136.google.com ([2607:f8b0:4864:20::1136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2YE-00AznY-Fo
	for linux-rockchip@lists.infradead.org; Thu, 26 Jan 2023 13:44:27 +0000
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-4fd37a1551cso22732607b3.13
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Jan 2023 05:44:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+PivYBvT//fhOJifn8GUHrZsSg9zLcCPOv6nlRmaHzI=;
        b=L/vb2O4i1Ct4bt7R0wAfNZVn9dcnDGaAWwDe/lEFy4Jb0JCId4n6nJPJ9mQeBqs0FZ
         9DYzDZ8Ak2EiY2ITcbblIaUQPlFbmGtQMZ+G6eSg27KxH8OBxEL8o4FvOd4v9WKMnVdG
         7Ca2q4Z8PWkQT8gl1VRERw9OtRl83xc1siK04f587Y2We6Pabxu9mLWMFqvQVmmmfhAA
         /BicSkLu0on4pqaeophqVdHWLAhp9HViAL+z8o1n0h1r9lUT4+8HJ80IlbJiDFvOitYk
         C2rhmaWKSl+Jncs3CRavXdnlYKoZSkmTAGNXs1T/wMBTvITnAcrn1yNRxk1yfE0L4pUB
         bBVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+PivYBvT//fhOJifn8GUHrZsSg9zLcCPOv6nlRmaHzI=;
        b=dpVSRuPq8Z7P8NXVYtpPlDKUMOInAEWO00H9DTddNvNkkx8SyUmVanK7XuKiyYH1EO
         uWTgL1u2lp4hNWd5oPxbs8sdvs0AAYceZUwblPmKlOy/2rikxo3LToga8tQk+ugeifbc
         8L3+catTdm3dfzdqpQxXNEEEgt3igwNuNeTMzY139CvNP+fpH7GyfXUqkHNP24XUTjzf
         pg/dhFSb8EB3rmA/V67424Yb+QbS1OYSYlsHNg0RHClb6LgVKWfYnhKKK92uKa/vs5tA
         paiG2+svxCcwCatWqrBTIFrtM4+QXpojRZDkg7ChHlGsp0TAZ+mWx09+jHrIo41o+u3h
         Tqcw==
X-Gm-Message-State: AFqh2kr25QEK9Hw//lbVejVpgAywv+kTlYSM+DPyo964aQWuKkW+IquO
	FDQPOiYjT4vixdZMuSd16CiVRzmmzUBL4ZY7s5hOJA==
X-Google-Smtp-Source: AMrXdXuoa/a/hnuvpGi7fAa3/wjXsF3qLLk13Qa7zXuEJlGrjLfaBAXtJbT1Gdrgo4CC9bIxFoGoaXBu7LJTKcvch2s=
X-Received: by 2002:a81:6842:0:b0:4ff:e4bc:b56f with SMTP id
 d63-20020a816842000000b004ffe4bcb56fmr3073866ywc.488.1674740663215; Thu, 26
 Jan 2023 05:44:23 -0800 (PST)
MIME-Version: 1.0
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
In-Reply-To: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 26 Jan 2023 14:44:12 +0100
Message-ID: <CACRpkdb4=r2un35p=7m9RAB5BSz3stnR35jVTirBKmv56qs65w@mail.gmail.com>
Subject: Re: [PATCH v2 1/8] dt-bindings: gpio: rockchip,gpio-bank: add
 compatible string per SoC
To: Johan Jonker <jbx6244@gmail.com>
Cc: brgl@bgdev.pl, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	heiko@sntech.de, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org, 
	philipp.tomsich@vrull.eu, john@metanate.com, 
	quentin.schulz@theobroma-systems.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_054426_572242_5BE5E371 
X-CRM114-Status: UNSURE (   7.71  )
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

On Sat, Jan 21, 2023 at 12:06 PM Johan Jonker <jbx6244@gmail.com> wrote:

> Currently all Rockchip gpio nodes have the same compatible.
> Compatible strings should be SoC related.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
