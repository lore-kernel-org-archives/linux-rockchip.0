Return-Path: <SRS0=ojj+=P4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FDA3C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 11:34:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4427761184
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 11:34:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4427761184
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7OHdJvqtpw1A1do4KviZDoHYGVL3M4mbeTdr1MpRzSU=; b=zpH+XUxXpDbdh1
	g5mZTgt7i0w3Tw7snFwhkOf7HkMlJr9mYqD93PGHb188lQvBSqwtNq3zLVRAnIEImDcu/ECmN0dbl
	0zSwnmAEKMuqg/rSSQbgDB+tvXSDZcHDIeWz3keEmKetaAjydCILgxCkxGiL4F4gSSu3nvjhw6GEw
	jo3Jq1xY50gbID9VNyYaMNa+a4+/uaNNXGAr+CYgeXtxFfWTtlO8kTo/5dKJgGZHAiJCViX4hXXWn
	5J40FcBoNKp80JW8IrwLDshv+Yn8Sl7ILXlTJ+6cWu0qgAjBL+jFztSgCc04k/LySthQ2Hb5JWD2p
	rUVUQEDBTEkBIQ2YKjjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkPON-001kCs-H2; Tue, 09 Nov 2021 11:34:19 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkPOL-001kB9-AS
 for linux-rockchip@lists.infradead.org; Tue, 09 Nov 2021 11:34:18 +0000
Received: by mail-ot1-x32d.google.com with SMTP id
 q33-20020a056830442100b0055abeab1e9aso30393433otv.7
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Nov 2021 03:34:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PgKxam+qAfleYvZBMFEu6UnavjbkQrXumKv/BiyI4/U=;
 b=BsYM6Bi7Lxtmtg8TotqlxPaHt/BSB3dxseSDPSXvt3P95Lsdz5OUUobMd8Zg/OIb8s
 SfO52SsBMHTxPSpKlirqScOYb5Tbt5sQptReQrEaGYLZAQmi7NzoqKIP1YEMAwmYTfLP
 IBbXbUJXqCCmB0MG/xyqWHgjHjAUhNnviVDCJqYpOlmi59HIOSMCXjZxX8WSWq2fRgUM
 qcGomXRP+yQZUZjmnx7eREORRt1m2UrEUo9+xknCInFtaa82UeNrzRtwBt0tyaAzW+bw
 V2JBPlP8+iaexpaRlGko+6fvVrBHJLuFDxAKZyoOVYNNHGX4GBIQcpyOWTCRj4GQXnGA
 vDJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PgKxam+qAfleYvZBMFEu6UnavjbkQrXumKv/BiyI4/U=;
 b=flDJOYk2E+GJdNRtfjBWGRJ71pi1L5xww58IDAmvEBqjUOLXro9Cnbfw3auljtid12
 yDEEriwNfUalIsYY9tO+MJQm2AS3/8KaZ70/EifAESVzz45SrSwbn53zdKCMxxTvSop1
 CVlzy0RH5sXk2hg3PJHaa6df7niFcrtrG7Ez/O3yBueGgl2UvipV0fa/XHRRUatkYjd6
 iGkyc4imgEEhGk1mVse1JzItx870g4031gteE9xoDTGh9t3B78gWimmEKsMK2SOo+VUh
 BpIVZHdh00K2WvjQL8DUo49Rar8OI4ktceAd52NDvPKW8MuEUD5hJQ62RM2xmW+XUOlS
 xvyA==
X-Gm-Message-State: AOAM533fkAppJG1XXOhQHUQCa0whRHd0iZ/N2RxL3QtoBXc57FekNnoA
 55HecFvUdzGQ19Tb1Ja6DXswPhbin6ofPP7Cfet/tA==
X-Google-Smtp-Source: ABdhPJzviuYIV0XEMzSLi/CNoAZWhBEhCFmwu82oJOK40s5TsX6ukEJ3mIwhbEoxvmOG8GkRWxc2kBDN8VinHR7raSA=
X-Received: by 2002:a9d:6348:: with SMTP id y8mr5397301otk.179.1636457656438; 
 Tue, 09 Nov 2021 03:34:16 -0800 (PST)
MIME-Version: 1.0
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <20211105124242.27288-16-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20211105124242.27288-16-andriy.shevchenko@linux.intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 9 Nov 2021 12:34:05 +0100
Message-ID: <CACRpkdZaWggKS9c97XXpKJXANVGc5Kcw7MzgfSNvW3+ztj=h7A@mail.gmail.com>
Subject: Re: [PATCH v1 16/19] pinctrl: st: Convert to use dev_err_probe()
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Jianqun Xu <jay.xu@rock-chips.com>, 
 Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>, 
 Andrew Morton <akpm@linux-foundation.org>, linux-gpio@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Bamvor Jian Zhang <bamv2005@gmail.com>, 
 Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, 
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Michal Simek <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211109_033417_409717_CE5B46F7 
X-CRM114-Status: UNSURE (   8.33  )
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

On Fri, Nov 5, 2021 at 1:43 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:

> It's fine to call dev_err_probe() in ->probe() when error code is known.
> Convert the driver to use dev_err_probe().
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
