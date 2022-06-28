Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98806C43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jun 2022 13:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dh5vNUub4KD3YrRxsPu5tYI9/ooYOAqM6JqbL1nX6eE=; b=nq+a3KmTLvpdX6
	tXQ+acn3Vf1Q6ZV9t/S6U384ULm4hEPuXKBF3SxcnCwEgp6q8PYl9zS/i4O1kx5gqye3Le91nvr8i
	Z/j9fwtrddiU9UEJwVVHY7apJizRVoTtdU4O4ZxdtgE/uPyGzkFBMQjeWHwykVV2qLJxsAroEtdgX
	1ZWMbMe+PUWSwh7/wNL8mXg6Iw7zKGCCcfTtWG0nQitE7iHvOLd2FOp8PNJ6Riom4qugpCaqjub5B
	qmeK/IjBKJnJhW5S4BVJPVu6WXdeQnOyaW4t1CqcdFD5OpSCKRu2iP691ZFWGiamcIEtDdTDJArLA
	HScIki0tmVxstYPUAgCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6BjX-006aZ2-DF; Tue, 28 Jun 2022 13:58:27 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6BjT-006aUI-RR
	for linux-rockchip@lists.infradead.org; Tue, 28 Jun 2022 13:58:25 +0000
Received: by mail-yb1-xb35.google.com with SMTP id h187so20147065ybg.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jun 2022 06:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2/l7W+OssRRYQModKHWxWKmgYil2AiQmmsO4Fs3j34E=;
        b=kzEgPie5pY0c0ahz2zTJxPOw01bu71JnTCUESsurSekWEfS5exSW/cJqaS2kOLFZW+
         IYpmXp4AnNxegO/cntNbrVoKNLN1a9RzN0hByEGTIGZ0L50g7PRTv0/vJx0CM+PPblJe
         jK72CWBbaR5L/ROcbOoguxAUkN/Cnp8hmNqMKpGJQSZABtr43cdVlJ2RzFp5z1Ow1zws
         O7+oGnxVXiWrkzHlM9OKxdq3zauWv5/gmlhxe0S0K8d618YrhFt356dAhBKX2q9KzgVL
         zTfEDnUiI+5FpceqZCWDdH7on3X2Mw8lhq5R5Sb2Mdg4hlGbSrCtepCFMp5Ym+uwCDEk
         Q8rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2/l7W+OssRRYQModKHWxWKmgYil2AiQmmsO4Fs3j34E=;
        b=AAp2naEmeN9h0j6gyMAdzySjuJxbfgBCcYbN+yWvFnzeqWR4YAYxfZq8spmCo37Nns
         F40Lbl+e3+j+n5diJvaJBMNcPOyiKPTGBk/CRfLiUHQCmbHgO8mMPZj4sGwJcfQfYaou
         /2BAJZmwoPgq57qmHAgvfJibXbR4r2LIzBplk4M+g9mNyIKgi9AU8XaEkEgtb0MdZ04o
         kRNVwLbVDCF9yEJvjuX6P/p7fti+GdqfyaUDqEUwLXorF6YjN/G/4vTx/jHESjaKIjdB
         fiEVb/nFgMnRqYZA6YRK14oHjb1FwMyDOgtBWCwH93LoHWt2BOhmA7Qz9M/cjQRpO3DD
         A7Tg==
X-Gm-Message-State: AJIora8AI+bbE737zjPg0SbTtveziUhQs5jhSNh1WdUF1lLU/+7FCbU8
	RbQylfo9kylMf0dyOZWoZ8aL7bRik8gabqeni9Fk+g==
X-Google-Smtp-Source: AGRyM1s6T+OzQpi21xhADOxFCQu+HizTLSBGEeUHU6KCbRefmRdacgeQvdx2yDE1xwu1Y/sLnazE19sz7Mfsu8aAT08=
X-Received: by 2002:a25:e7d4:0:b0:66c:899b:49c6 with SMTP id
 e203-20020a25e7d4000000b0066c899b49c6mr20150388ybh.291.1656424699840; Tue, 28
 Jun 2022 06:58:19 -0700 (PDT)
MIME-Version: 1.0
References: <20220623160801.240779-1-sebastian.reichel@collabora.com> <20220623160801.240779-2-sebastian.reichel@collabora.com>
In-Reply-To: <20220623160801.240779-2-sebastian.reichel@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 Jun 2022 15:58:08 +0200
Message-ID: <CACRpkdausrTN2c3QXLFJu0R1B6WsUda6POeUG2XasqBB6hSCtA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: gpio: rockchip: add gpio-ranges
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	kernel@collabora.com, Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_065823_922364_0E342CA1 
X-CRM114-Status: GOOD (  10.15  )
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

On Thu, Jun 23, 2022 at 6:08 PM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> Allow usage of gpio-ranges with the rockchip gpio controller. The driver
> already had support for this since it has been added to the mainline kernel
> in the first place.
>
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
