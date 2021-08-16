Return-Path: <SRS0=fzRm=NH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFAD7C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 23:06:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BC20560EFF
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 23:06:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BC20560EFF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mLivHM3+QepBlyemPQm31Xr0SCdSCpurXlKXxZcz10k=; b=oRIFZy4eGdm6rt
	lJrQRa2nybpJAFIBH4t6jtBnIQPkQMdlwNKdNKrtrsMa/7QGk9Ofp//gkJavHJ0hGMw/xNqDujbt1
	s7hfg3HsI1LgcYfW7R+ZWdJUIeAvsO4PiNhONNTZ51XbCuT1fZhKq1orKXaauteC5mLPKNg6CMBxH
	tBUzlT25oIDIrdViKXTV+RJuTwJPKKxLWCMlKZS5xyvVPZb5AuxmuFw45HTsyRyvjw9UTLHNA2PCX
	GrcXgtRecLW6he+N+vn6TDPqOUoaUunowpW3SxK45jt/0bCBz/XtHBTVvh0ACzuC5c7XgYTdUNRqf
	/5m+oPjVrAyw58t0WNaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFlg5-000TkR-9n; Mon, 16 Aug 2021 23:05:57 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFlg0-000Tjb-Gv
 for linux-rockchip@lists.infradead.org; Mon, 16 Aug 2021 23:05:56 +0000
Received: by mail-lf1-x129.google.com with SMTP id x27so37625145lfu.5
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Aug 2021 16:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UC3O21ks4vKE7+RYDOtk9IlHGwB78ZQ6lTOzuJdIDYU=;
 b=yAYKkVkxnlwAmL3Qvj2nidxR6exT5PxgbrYW9MCyeiFF8SG/83v3DIJndCYgKixsmx
 /bnYYcuRA0eHenEvSlsYHcg6TEh2o6X0UljriW+bRdskVzpxnDbAgn+WR/1wBMHfB0bi
 Rd9bL4c2FH9qsu1t/f5sXuwrX8x8sRLaW3elSgdlio2I1j1tkRQSTLDghGZHTezgkIK/
 I9bAylySVoxrAoBopy/txj0bt3xkrOhPXBknfUiOz4nBz539l2l/XVFIfQj7FC+hXQ4N
 C5Drpfzdg4lP3Z9M22VYPEoElItzbCsQIrJ+OBSJzK6huFN17AKkDCD5bGUOm+RmzVkO
 sZfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UC3O21ks4vKE7+RYDOtk9IlHGwB78ZQ6lTOzuJdIDYU=;
 b=OIJ3vtUePt9eU+jjInomGJiVHuf6Fc6IzAHqslblVVX0q0Q1ja1KQwbcdiw2RLTTXp
 sVmzbCdRKHRNYBMMP0k9kD7iTs3VVJgoSQOjiJJVRRq9D886T0l6jxklAt3W95j9qT7s
 Ufs6mNYU6dylSYPBZWCqpxw+I8T5ViaLZu20wdRKc2T4KcOQYJ8I8KbdmIB3nL+j5fjC
 0LFa/D3bnzCkqdOrY8zzbFmFRJwH7lIhL5FEt2G7x1hgqAiTARtLOnjMhXw6eZFEdXrt
 Q5nmegvv2lR0lINH4vgA2eLG7b3uRr+o7EODl5ykGqzk5yRepN/PaunStZosyk/MSnFV
 dCrA==
X-Gm-Message-State: AOAM532U3G/doUua3lqQm6ws5oWSOnSduc2zqKaQ9gXWXNAnQQwlW/Tj
 Z+ieoIJIYUaO9zr0x1Yj7l0fp6WuocdfFhVlnXaPBw==
X-Google-Smtp-Source: ABdhPJzU0/TChXAcVDzn3cLEs7Ur5r3PsW4On5glrHdI0gAGAEwuW+Be9LaRnlRGffSRt/IpUTqHDGY/OnGO3eSHUTo=
X-Received: by 2002:ac2:562b:: with SMTP id b11mr131619lff.586.1629155150395; 
 Mon, 16 Aug 2021 16:05:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210816011948.1118959-1-jay.xu@rock-chips.com>
 <CAMpxmJWQ1pDoPZHjg1vvZYhPrY+3BZi3Zuv2P7xKYRDW0dyw8Q@mail.gmail.com>
In-Reply-To: <CAMpxmJWQ1pDoPZHjg1vvZYhPrY+3BZi3Zuv2P7xKYRDW0dyw8Q@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 17 Aug 2021 01:05:39 +0200
Message-ID: <CACRpkdYg3JHPjrA13xY53xcBT1brUsp8pJ_LE50Wx-GRE5m2Ow@mail.gmail.com>
Subject: Re: [PATCH v8 0/9] gpio-rockchip driver
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Jianqun Xu <jay.xu@rock-chips.com>, Rob Herring <robh+dt@kernel.org>, 
 linux-gpio <linux-gpio@vger.kernel.org>,
 linux-devicetree <devicetree@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210816_160552_604416_BED5999D 
X-CRM114-Status: UNSURE (   8.50  )
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

On Mon, Aug 16, 2021 at 9:14 PM Bartosz Golaszewski
<bgolaszewski@baylibre.com> wrote:

> Linus,
>
> are you going to take the entire series through the pinctrl tree or
> should we split the patches?

Both, haha, just created an immutable branch! :)
Pull it if you need it.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
