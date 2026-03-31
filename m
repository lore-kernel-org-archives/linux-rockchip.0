Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39C31109B468
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Mar 2026 13:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WM+ldMQRrDbwcaN2sC6Fj7qHkJrI1vrBwcQOJPrKjoE=; b=nwbnGNv/7uMB8F
	4ZNqcyOzM4XSRiAQDin6Y+P4yt8kH0BFNimJdf4toQci8iyRRc8FB/+aFa56NgQyY6UK1M8w82RnB
	LFXqAGCzP4ratvjSWTODLDkS60PvSPVL5Z3O8w1BpPhH/0L0XWd9nullyjP3up0KX/EB6iI4jZ2GF
	ujmeafDH6DvQ0+rQZG3vojpLsyqzuLykZay1dpMlP70XSs/YR7OR+CaxLiM6acD4S/oWJr/UFMvB4
	GeMAzDy50xtCpJTARcT37AOdq/tBTTDVjrPLrCeS+qqt+Cg5UKbbhlo1tcsxoS5WKgHKuRYP3p9qv
	AOl/fp7KNmUv3OqHacvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7YzM-0000000D003-3AEs;
	Tue, 31 Mar 2026 13:18:36 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7YzI-0000000CzyK-2RxR
	for linux-rockchip@lists.infradead.org;
	Tue, 31 Mar 2026 13:18:33 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-661b16ac011so10695477a12.2
        for <linux-rockchip@lists.infradead.org>; Tue, 31 Mar 2026 06:18:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774963110; cv=none;
        d=google.com; s=arc-20240605;
        b=PRvH0lfwenIUY9XStgw8jyS7PCPoajibPzfHd51gOm73f76bn2CHzyJB7QtMqanpMN
         4IWYrBs8a9NR/daKx5zipfh8yM0PydEY+ydffBB/9tAnpavaecB5MjSQWtAfl1c+7JTs
         gOG7ynpoeScFtE7bx5gRev8IJKT4ApL+gLMt9Ie/8L2hFq+2XXdc7cTWBf2l2y8ukl6L
         H4cMIeSzO4bDOzmrsX0Qq8HK8qdddgj4Xmk7pDipjjv53B0S3l9EwLaJzVSWbukd6Ffx
         US3T4xCC7m340AwO3LD/270vLZkHfiFb/miOYoXBS1ssZEYH8w2Tw5hOFw7nJ3pTrBvn
         OFWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6VNbbvUY3UV4c5nAnHb+NpQ9gBlif8YcQdMt8wQ0IbI=;
        fh=4IqVXjKg/KNmmI7PVPjFoAzU/9cWYl3yZ53mKLmHl2E=;
        b=ec7bEc6Q/Sp487Lji/SHCXSj9iwFzhRor3UyewKPiX9KiQCctL88PvrJrPKUZqJnxe
         kIV9gtTBnme2L0RJz0heZo+tXyJiI3CuIu5fnBpMgR5UpdkqT19VpsFYyuOHjI8LZmx4
         xWdO9y01yIiAfWFz+rT35JLvw1rNaqJRZlggmBzUCxq4KauBN15C9epZORALd46fJaM5
         xogP+lkne20NeQ9bFB0ewm3KyDSGDbfEADyKq49fEQlKIwknVK72kXWgJkPLT91JTPYo
         H55aN0e8RLAg/hhTdDaewtupsLPd+DUE4nIYWLv6JWEdLKpjcP2P+0s0J8mT1oHKiWRZ
         22qw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774963110; x=1775567910; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6VNbbvUY3UV4c5nAnHb+NpQ9gBlif8YcQdMt8wQ0IbI=;
        b=qsFJkAn90barDshBVlv/ZyF9GEQWib2qzaOhW+G431SzcHQP1Yx53EGI1Bizu3sKj0
         GpBqzSlF37zqJWvsrExW4ArOF6bwjY0GZrihyTrnaCkk3lZMi8k1lut/qT+NWBCwGd88
         1C9cOHjK/fr1zF69mrkFw+6lN/mBA30FIHKIWc3wCF5mG4fFgQj631eJTEiJqFfL7PR/
         kIjBkUmx3/rv+kBPOUQh3a22BhYcn3I4fT0i+ff8jKV2GBjhxUyzRgKA36501iBRYF0L
         txvs97f51e0YTxaVZljmz02SAvWM62t6uv9r8dmENJZC42gcZrS05OzDYvzyGpE3v27i
         uNPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774963110; x=1775567910;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6VNbbvUY3UV4c5nAnHb+NpQ9gBlif8YcQdMt8wQ0IbI=;
        b=l7y1oGdRrV6W3H9jOh9oQ2h2ncKhJ258fw/nGF74rGND8eXv1/nOEq7slffsLN0WIu
         6bX36pWDQBS6U3MI6RNM/38Vcp0N3Ix3L7fgUgT2A4ejaVflWOY7L8tHNGKCh/gI0M3a
         vqA3wJRFgyUo+qAgfUBKBVyYxXWndAO1TgDjE2Ns2z+9RKYzpC2BjFyNZf5xuM+6qyTm
         Xx1nCSgb4ln/vKL9JlJnVzJLU3ZMjvMgUpmH0WUn78o4CH/wrTkJd4X3g/+JHDzybdk0
         2mRpH77rF86gDreieUyfdMNgyJ50UYA/H9sDpsS0Tmx8A7lme/XVFj4/DiPXCxx1O73n
         8xTg==
X-Forwarded-Encrypted: i=1; AJvYcCUqg1vJLvG+pWT07ftPGuZiafd66R6+31kiuB+r7senW50xCpcxo6+CKbNCk8swgtbixgKMiOtgBXay5NuuJQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwajJArjxdsT+4P3czzXVyyHIKOhek+tQc1NK100H5qNAS+uOS0
	DKLluSz9QJSF+0kf6gB4fGAD5YLDRrZz7P8AoYOn/h/+2TgDi4DMS54KUuLTQQb4hqJe+/M5d4+
	zRfUNiPjuYERN6JK2brwxtnOpgPyMexg=
X-Gm-Gg: ATEYQzy3jv06jr8J7uq5QDV7utDb4glcDg8YHq2zC2tps5TyIDdjNRBMRyH7W1XPdqJ
	ft58cJCvSqhopl8Bxhj8VYvo6j7dwWEJR32LtIRlQ2syX1klr50I+PEUd2ZzZKycRVpN7wZVBlw
	z2jcclR4JMlsA+P5mn9wqMQ3yDhQ09WyPR01bUh4NusnlzwZyydoKqgXJxhspTq/NLcag3mn3dv
	Neyz6Y7EREvECcVA+Cc3fI1scCAorUz7LA/VOvNrFYJ2zHMRHKWmWyIbmjO4OOIbesq+dbusm6p
	dU8sug==
X-Received: by 2002:a05:6402:3549:b0:66b:a9bf:2f with SMTP id
 4fb4d7f45d1cf-66ba9bf090cmr5857704a12.2.1774963107139; Tue, 31 Mar 2026
 06:18:27 -0700 (PDT)
MIME-Version: 1.0
References: <20260321105146.7419-1-linux.amoon@gmail.com> <acaO5ouMmGA8-tqJ@zenone.zhora.eu>
In-Reply-To: <acaO5ouMmGA8-tqJ@zenone.zhora.eu>
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 31 Mar 2026 18:48:10 +0530
X-Gm-Features: AQROBzByRXPbx7tA51z_8CluOw54nEqGeZC01-m9c54wTUWKrbejLJocvfXsXnk
Message-ID: <CANAwSgRVXd4PLAV3NGVdmxcJUVe6UUs74HkRmOG7TkkoLBCFeg@mail.gmail.com>
Subject: Re: [PATCH v2] i2c: rk3x: add support for SCL OE debounce and slave
 hold recovery
To: Andi Shyti <andi.shyti@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	"open list:I2C SUBSYSTEM HOST DRIVERS" <linux-i2c@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	David Wu <david.wu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_061832_641943_CC055D02 
X-CRM114-Status: GOOD (  15.84  )
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

Hi Andi,

Thanks for your review comments.

On Fri, 27 Mar 2026 at 19:43, Andi Shyti <andi.shyti@kernel.org> wrote:
>
> Hi Anand,
>
> ...
>
> > @@ -1125,6 +1141,17 @@ static int rk3x_i2c_xfer_common(struct i2c_adapter *adap,
> >               }
> >       }
> >
> > +     /*
> > +      * If a timeout occurred and the slave is holding SCL,
> > +      * re-apply the timings/dividers to attempt recovery.
> > +      */
> > +     if (ret == -ETIMEDOUT && i2c->soc_data->has_scl_oe_debounce) {
> > +             if (ipd & REG_INT_SLV_HDSCL) {
> > +                     dev_err(i2c->dev, "SCL hold by slave detected, resetting timings.\n");
> > +                     rk3x_i2c_adapt_div(i2c, clk_get_rate(i2c->clk));
>
> argh! this nests i2c->lock. rk3x_i2c_xfer_common() already holds
> it when calling rk3x_i2c_adapt_div().
I agree; the current implementation can lead to a deadlock.
To resolve this, I'll split the function into locked and unlocked variants.

Note that this deadlock only occurs if REG_INT_SLV_HDSCL is active in the
interrupt enable mask, as shown below:

 static void rk3x_i2c_start(struct rk3x_i2c *i2c)
 {
        u32 val = i2c_readl(i2c, REG_CON) & REG_CON_TUNING_MASK;
+       u32 ien = REG_INT_START;

-       i2c_writel(i2c, REG_INT_START, REG_IEN);
+       if(i2c->soc_data->has_scl_oe_debounce)
+               ien != REG_INT_SLV_HDSCL;
+
+       i2c_writel(i2c, ien, REG_IEN);

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
