Return-Path: <SRS0=ncim=NC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 856C8C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Aug 2021 08:32:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 46D0C60F41
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Aug 2021 08:32:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 46D0C60F41
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZPd4wGf3JE9Wm799duU4YGk/dpHku5Gd4/qWIXLLnKo=; b=aGQ0zg8AcNHoUp
	yF5QlulbLNKYMrCsHmQFfSjCCxh3eockcK9lhE82PGZFZRkp+5vB5S4FVkUCb5VZM3Cn2juSMPdsX
	xWJDcJZM5yaQNO4ekRtTt7FEBg64Ow/wrK+luVluGXNTWw/R8NMBQh0KFcQnCdEQ+XeOGwlpaK2Aa
	GvR7XJ/koqBZApKE5zLEWzc/hDChpbSg2WgpGfj54SgKPuWPwCublSMHgh4t0UT+pKkONP0zx16EZ
	IpglbHU+namo3dyT3L0GJSZN8pdvjhWjpasGnM/bBPhUa79cl25NX/yfgOvD0KkzlWaRD2MDaPmLP
	b3X9Xii5xlkEkT8JUvcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDjev-0062K6-Ao; Wed, 11 Aug 2021 08:32:21 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDjeq-0062J6-A3
 for linux-rockchip@lists.infradead.org; Wed, 11 Aug 2021 08:32:20 +0000
Received: by mail-lf1-x12f.google.com with SMTP id p38so4178905lfa.0
 for <linux-rockchip@lists.infradead.org>; Wed, 11 Aug 2021 01:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T9aF/gnHHaozYj2J+OBaspaiiV6uiEkY/GBIP7m0gEg=;
 b=z4zPOj2oXB+m27UeJcQn5BVLsxsB4z1KOcQYkV7Zp4KvMRcbXTwGaQYgvfjzMX/nBU
 +zmL0eQOyKOXcbZUzpKCJJfPmbA62iwzKwBm+4YtiuzZjzMDYUtdFO0Mz87QkQPr38YJ
 fggNcHhRGF/BagSG37jlWaIkXwYqR0dnF13GLl5azCiqyXmrLFlj3Tzz5mag8r20A6HE
 pZ7rAO2PUBHurc0seOXsZIH1lLrsbGPHPpF9eFSVOwVG8GzQQjJDJ79SKGk+YdBFO9Gx
 3MZeVhJt+5R2p2mJ8v9vcjavRhrjmWHrZ+uhVc8cVKFVyzaTQfCwk2AHhFi9e1n9y8UE
 jwsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T9aF/gnHHaozYj2J+OBaspaiiV6uiEkY/GBIP7m0gEg=;
 b=tXks/9CLBhHt4f03gftEPSMSwASCpERxRWW7xiKIxJroKMr2xoSrhBz/BH018h9lks
 9sTObBRAQKMxy1ySn91CxovqPl0syltCtcTktt/HO1GMWW3hhEj0hy+hovFTs2E5JkQ7
 /X6A1vE7MfNgC/U06mAZ+27RvWlhccD1hfpExgTDI7YvTGSUhNntl8R5rL3d0aXlZ/iA
 TYkKBuJn8AJoAW44wM89TEW2oJBeSw6DMqnV9BvVh5BNArCfIDKICEtbIFJ3zIVKl4Ov
 7AKnHfCt+Szq/Zhj4EMlkFA5bo6ntOm8vH/VxgLem817p6nxvV4747mltucO/jzpClTZ
 5Ykg==
X-Gm-Message-State: AOAM533zHjWSGs414+sEiYTcgR7J0PkgU5+wWGlvZWu2pntVBDA7qpof
 OQvYN+Mi1kqXs42bWmzRiOZ6+8qaWPlM4CDUJPqgpQ==
X-Google-Smtp-Source: ABdhPJx8KOnvL7KNjPPz1PGddRFRscqa0/aQu7hNC6SM9IIiyOqA7hHEP9AiCoar+a37Et8CsHj/YEfe9PFf6cIfeKQ=
X-Received: by 2002:a19:c7cd:: with SMTP id
 x196mr24373795lff.465.1628670734307; 
 Wed, 11 Aug 2021 01:32:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210726013345.1634442-1-jay.xu@rock-chips.com>
In-Reply-To: <20210726013345.1634442-1-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Aug 2021 10:32:03 +0200
Message-ID: <CACRpkdbU+SXCaJ5N65zKw-btn_CQisp+rhozjtCaZ7y59mvTtQ@mail.gmail.com>
Subject: Re: [PATCH v7 0/9] gpio-rockchip driver
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210811_013216_457773_D2C86645 
X-CRM114-Status: UNSURE (   6.87  )
X-CRM114-Notice: Please train this message.
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

On Mon, Jul 26, 2021 at 3:34 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> Separate gpio driver from pinctrl driver, and support gpio v2 controller.

Mostly looks good, but waiting for a respin to address Bartosz
comments on patch 5.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
