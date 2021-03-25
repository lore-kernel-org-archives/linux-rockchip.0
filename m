Return-Path: <SRS0=wzRa=IX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03BE2C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Mar 2021 09:26:24 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 724CE619DC
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Mar 2021 09:26:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 724CE619DC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CD9TAzPEzAkMYCDkH9b0X1SL/hwqyESVQk/KSC7wsv8=; b=mirT/+U0rnJB3pE42spgcVzBV
	WWjO478TYPDXa4IyjvUknIHIyg1wPvrldKZNKf6x44WMRMgine4TEKhIeCSr9SUz4FpJcIfZhh87s
	svgK8INDWiBtMI2PId7aKXCbvwB+EKubgu5aAeXkVGkH0F6pJFDzmdjWLyHIBInGQ4ibszadg2PCv
	NJYhJ89Xri7bXAZ/6UqqTkOtNdWRmHo2J0j1mB3w8l7MdkGBLhR7C2OE+1sDAzywZU+eQrHpF33XD
	jisqfUSwCdyW7FYFROLE/pY7PZAKSJqw3SzG2jwh7+8aiWG/AaPP698bA+GliJP/gD7ExuwUdSzBG
	+pibFf6GA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPMFr-0014zj-Lo; Thu, 25 Mar 2021 09:26:15 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPM7E-0013as-Ng
 for linux-rockchip@lists.infradead.org; Thu, 25 Mar 2021 09:17:51 +0000
Received: by mail-lj1-x234.google.com with SMTP id s17so2199852ljc.5
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Mar 2021 02:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xtgWxHl1jBWFbgD+kv6AqSAbbwppmDLPyH8H5SEmUxY=;
 b=WYB7Cc3r/N8toO5HEXS4WvgZdy7e4DisDnlKJSVDlcwRznNZr3R/C2SKilRf8Rq4gj
 XHXoF+BOQkpgxnV2TcAs34RQwe1fA8xFgqxIpMXhF1+dsrccNXqaAz7GzmHsHMqSuDy3
 IXW8OETtw3Ehwes1LhfsJ1pwTAGJMfokwcUPGs2r4AoSlCaNeP7qxiXwSyUZ977FKt14
 SnqDCSgG3EDkOi51SUY8P3o6l2L4JU9POOt3xCt0GpVmKeJhSjh7XbSP41jy75enhdr0
 k1oVi8IQoNFyb7OQVJ61YCvuwnuO1P9bmHBFL7i0EbBDWR9UTS/lw7+hy0kdy5U5A8jq
 TcAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xtgWxHl1jBWFbgD+kv6AqSAbbwppmDLPyH8H5SEmUxY=;
 b=DI6PuCxVL36Bgyv1kJb/fi/kqx9PV+/PAyHOdENbpwLo7nd4mi6R17Dz11W04s600G
 2/P9zJYMszCle5kW0pBNtGwmqumBgs2nD+OzRmx7dZBMsImTlWvRH1RgM3mDYM/K2uss
 q86puvxO97lsehd0U3Zg/T/5VmM40GNO/3NjW6ss3houcYkBGIAZ1JK1NYegu3hNMMHu
 UOsvcPsFITJSd0QSIVdXHTNehiNK9BToZyaJ+0DjDNnzyAPNKR0iL7QiSiv0jcLO0u7t
 qbld1He1oftfZ7HEfvSRo4xiwVUVg+oavITjQ5Bh++5acvKinL7QsFls14LEAaGIS3nw
 qUQA==
X-Gm-Message-State: AOAM531T2zJxEJHUb6ZC1EJlWBed9QCLUdRm78DU3hzb+FtYX05shMvf
 v1LbdnwSznrrVaf0oT19IMOlvnWHDNdf95zsaPeDeA==
X-Google-Smtp-Source: ABdhPJztjGrwBtJbNrrNxBR/yEEBoi4BB8Tjr78VRoOeWtyAz1JU3+GYgpMwR4+Idq17mB80FNZQyb4r6pcliq6jXLo=
X-Received: by 2002:a2e:1649:: with SMTP id 9mr5210204ljw.74.1616663840040;
 Thu, 25 Mar 2021 02:17:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210316134059.2377081-1-geert+renesas@glider.be>
In-Reply-To: <20210316134059.2377081-1-geert+renesas@glider.be>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 25 Mar 2021 10:17:09 +0100
Message-ID: <CACRpkdZFqQd=g9u907LndbqNMYLnnAN-M5HRotbw5CU0EG0NDg@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: PINCTRL_ROCKCHIP should depend on ARCH_ROCKCHIP
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Heiko Stuebner <heiko@sntech.de>, Jianqun Xu <jay.xu@rock-chips.com>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_091749_393120_CA364331 
X-CRM114-Status: GOOD (  12.00  )
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

On Tue, Mar 16, 2021 at 2:41 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> The Rockchip GPIO and pin control modules are only present on Rockchip
> SoCs.  Hence add a dependency on ARCH_ROCKCHIP, to prevent asking the
> user about this driver when configuring a kernel without Rockchip
> platform support.
>
> Note that before, the PINCTRL_ROCKCHIP symbol was not visible, and
> automatically selected when needed.  By making it tristate and
> user-selectable, it became visible for everyone.
>
> Fixes: be786ac5a6c4bf4e ("pinctrl: rockchip: make driver be tristate module")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Patch applied.

I saw this was causing issues on S390.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
