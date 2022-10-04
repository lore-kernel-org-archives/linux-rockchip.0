Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B44EEC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 07:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Ylvk4AAPc28BqH53USDLZbiKJfFv2Amj4FjNyh4N8A=; b=MTT6+QuhIhIdAd
	clYaEIWViIRKp6ouCzwRamMhg3DkzJB8Rcl+SqslnQlPzmxXTJh2C91AtP6VwqCwp2Sc8IokPrknF
	uLkQYsE6GT3Ysucn3rf0TIFu+JMOCGb/iZUB4ikGyJ2h9SGODrRRLA0ytBGVmns8Z5mdGSYhMt/qc
	/JNca6GspcHalQ4xVQ3tZzVNr6+sQNg7dwBNNz7LOhrYDiFl2a2V3vyvcs8OBKX8gp5Yc0Xwn4DkC
	auBs8/ACldt5byjBfWhk5StUUZ1bsCeUPMbblypMrMMJPO56kthai5tJQCFtcSditks8Wi9Yh5//v
	3ebDj8xdLhnP+0hoks9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofcAq-008itV-Of; Tue, 04 Oct 2022 07:17:04 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofcAo-008isd-E1
	for linux-rockchip@lists.infradead.org; Tue, 04 Oct 2022 07:17:03 +0000
Received: by mail-ed1-x532.google.com with SMTP id l22so16158699edj.5
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Oct 2022 00:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=FgVeTPqRw4B3XAH2kYr+aPe2b3d0JKi9DV9fMipPoGo=;
        b=ey5bCSZ3PQTUCb+QiKsru+2J4XcK5RXGNjM47DG7oFIJNfIyH+Y8t1kwhXTWF/MhAm
         CTIKcCwkCZmWoJimjMRO+exYfN22e18PScPPI0eTj7mHIO7m2Cl09sXvv1pceptE1Rfa
         9I4pxv+cfVK/4LSBOmJ0bJbrG+BE7iSLFe2bX8V4ZMUJSajsFJAdDtd6C/L2PhN8+lZi
         9CgHnje7bw0znV/nNxmxhItNAWce3myzuue1lTCtA6nfc6L+GKR9TYtmSeDPLZeS1YnH
         JB2QsCG2+EMmycw1/leJMg/k2BBPJnW6xfX6amPFFrIHdhaohfHz/WrVKjzmuaoBD0Gz
         CcWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=FgVeTPqRw4B3XAH2kYr+aPe2b3d0JKi9DV9fMipPoGo=;
        b=djk+5Gu6E1VqEU65gD1ZoUEap1YIh8zlbUdeOuFzrOUnEJKQ7OSv2Cn2TR0dBMFVjz
         PKTID6eZH595eo9/0gCW6rb44/stFXEtt0ppre/kyxZHyJrQBslS+/Otj8NryfZwUF5r
         AW4haHnySoj8d+RMWhpP+TD6JkGgnR/avxfashLgKs8m11NqWRCuzx7PC92TnPaP6B2O
         Rs/ptpbAwtvJ5H8eSX4PN8xVqCqaTH6dgaODx+9Q7XCyEucb+V9oMIcJwAHQnwZt4scB
         bR5N+A5OyPM6d49u04LP24GE+HbDVu+G/2AhVSroegSS5PNq1w5dBOuEbs8TX3rV9sk4
         96tg==
X-Gm-Message-State: ACrzQf1KKc8NW+FTohbVt1HsY+Hn8cLZxUWXsYpGCemK5Wx27JVVSrCU
	tdmkZjq4Ht4i9DQIYqges3zFmnZ46MDHhRYVDdlnrA==
X-Google-Smtp-Source: AMsMyM7hSdj1S8kUyJJWdUvxk28dwWUaTuGGEOV58h89seD4YZSGchbmCIbbYfpHrcsoW+BONxwNGvucF9EZLaEysWI=
X-Received: by 2002:aa7:c050:0:b0:453:4427:a947 with SMTP id
 k16-20020aa7c050000000b004534427a947mr22205982edo.172.1664867819366; Tue, 04
 Oct 2022 00:16:59 -0700 (PDT)
MIME-Version: 1.0
References: <20220920103108.23074-1-jay.xu@rock-chips.com> <20220920103108.23074-16-jay.xu@rock-chips.com>
 <CACRpkdb0wysqkSST7Qv+yy8g53oTpYWvbSqxLk6EVMEABQW4iA@mail.gmail.com>
In-Reply-To: <CACRpkdb0wysqkSST7Qv+yy8g53oTpYWvbSqxLk6EVMEABQW4iA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 4 Oct 2022 09:16:48 +0200
Message-ID: <CACRpkdbgi1XZq=Nmeum=2Fvv68pxj=66nseAiv5HpVOsnMfx_A@mail.gmail.com>
Subject: Re: [PATCH 15/20] gpio/rockchip: disable and put clocks when gpiolib
 register failed
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: heiko@sntech.de, brgl@bgdev.pl, andriy.shevchenko@linux.intel.com, 
	robert.moore@intel.com, robh@kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, lenb@kernel.org, rafael@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_001702_485021_33A13163 
X-CRM114-Status: UNSURE (   9.65  )
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

On Tue, Oct 4, 2022 at 9:16 AM Linus Walleij <linus.walleij@linaro.org> wrote:

> On Tue, Sep 20, 2022 at 12:31 PM Jianqun Xu <jay.xu@rock-chips.com> wrote:
>
> > When gpiolib register failed, the clocks should be disabled and put.
> >
> > Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> (...)
> > +err_put_clk:
> > +       clk_put(bank->clk);
> > +       clk_put(bank->db_clk);
> > +       clk_disable_unprepare(bank->clk);
> > +       clk_disable_unprepare(bank->db_clk);
>
> Always clk_disable_unprepare() before clk_put().
>
> I think you can drop clk_put() if you switch to devres dev_clk_get()
> instead.

devm_clk_get() I mean.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
