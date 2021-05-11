Return-Path: <SRS0=2pai=KG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E99C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 22:56:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1B3CE61285
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 22:56:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1B3CE61285
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NS+2bHsMkn/ia7qWGf9NrADbbIcJPSDZLuzGjwFWudY=; b=O8DEfZgaW40OSUqZXC8vkCqC2
	gtLM30R+Svtd/Qh3jojbovG9lNfyxUeGklMlObd+mkW64Sd2mS2/TnkBLhAK5/VEoDOSRnunCNqkK
	ySw8BPl7b6AU6QKbMAcuVZvhSOg0GpG6CCNqiqQrFcRkVinVqOOe/r4JpdluvnEkY6M58q7TQ1h/x
	U4aNuVQWUg6papRm6Ai66UWlY7xBl9O3jcYebkxJJlVwhMvizKtPT9pW5hCQfg9cgP+tfI2yU+W2X
	CKUaqdDU+qqfXfCt4cEvmxByf4gATBZt32RxaBLp3j9Yvfa61ksXjIiLT5qjgLVlBpbTebIKkGE30
	EYjPBvmwg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgbJ1-001THA-BV; Tue, 11 May 2021 22:56:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgbJ0-001TGu-4Y
 for linux-rockchip@desiato.infradead.org; Tue, 11 May 2021 22:56:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=xyJsr5+GU6OwmtbK8l0br93cj/vlkcS6F2ecLZDOOUw=; b=SuGxwsLjX+ap3YfJ1+KNiARGNm
 JE9owkDPsWnOWHOHFvvn6EoemTLzP1xH/dolBVTX5/Ol9YRdJ1+TCzRpKKYwEOhHrClUnorXjFECK
 KG06ToC9xz1+M6LZcSplSbS8J6IPjPGH5oECdTN588KjDFkXnoUhAxkiuRBHsWZkDOxX9ObVSWaXX
 OBfBg/rJKQ2FzLCA4RWEGsDnnloNl8azO6uypOl6j1+KpAj70Z/GP89zFeqBWmj3oOp6M/S+T9OH5
 4lNHqyPibF4keuyJpkUzGfMYSLJSQgJ42Mx3Muyp+hnscDFUXfFUBq890uhPJnxU2+ydeAZjSgrFv
 WrPGnAcQ==;
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgbIx-009y9F-9C
 for linux-rockchip@lists.infradead.org; Tue, 11 May 2021 22:56:44 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id r8so28452216ybb.9
 for <linux-rockchip@lists.infradead.org>; Tue, 11 May 2021 15:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xyJsr5+GU6OwmtbK8l0br93cj/vlkcS6F2ecLZDOOUw=;
 b=rWUpmSmO26Ym2+SrQlRqIz2mpWdRvsw/gaBtPdipg5SId8RboUQCy8TKew5ARWnnO4
 MRhqXDJ7GQFISDXt0yEF9HlAQlHqya8CPZa/s8TUwJRYT9NGPyodcTenVHxaZPylISXu
 MYiBfVktTjdS18KL/MlJx92mPeG8mLTLY9AwNKn4087o2l3zemO/lXP4qomLmgB3dJXv
 OtakumQPDJkapyMmqfE5jsj8CNL6Q7NrwLyf0Zi19hIXZ1/2WdgCuqKOE5XUl8gzv32x
 f5ss0HfomCSV+b3WxIkrFGo8FbeVXxJKjb7y5p0vmWbzhp4zHdGgoVgPp8Q/iSZD3WiS
 eujw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xyJsr5+GU6OwmtbK8l0br93cj/vlkcS6F2ecLZDOOUw=;
 b=Sd5qKnfCBVmpV93RRlBpHMK4JVcHuH85BSPfhZX/aXqRPVj/iRioX8+P5lC9j0T4v4
 SSp747MW4o++i3yMwJp1GZwXckeIA6AXUHNozRnGSwoJY9Rkz+TM+pofy79U1FsZQf16
 Xr+m6YcTjyHBCpqhL2ssrBp4hUN8JoLecDdsZbkHDuyU6dvsITmw5bwqROGkKdWIh6lQ
 NGCMkUhREhMZcGcDWN/Bq2bvoXKK3JkSpxE6ohDl1ZAi1DWggGmlJXaditBmjihvm5dn
 L+ajm1fltp9cfqXJbdrJr8zc5uwmmh3PLDgyWpX2tu+AqJmhNpwcR3IzBHg1z6t5tJTi
 tjGA==
X-Gm-Message-State: AOAM531+RhOLWGBv5ptM4XezgNTKB4/xJq7n0lmc6KQY8JO5yMs+2Cl0
 e4UCSE93dn5naVVHj4YkGTiskW/OnicHbOHi78o=
X-Google-Smtp-Source: ABdhPJxOJZq72lv83XITy6KKMDBkZMUV1JsOyUKmrwI3/5stYIVXL+jKGpVgHRkOvEq4dklqzJSD5C6XiyPth1TW3Gk=
X-Received: by 2002:a5b:3c2:: with SMTP id t2mr43272548ybp.39.1620773802086;
 Tue, 11 May 2021 15:56:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210511214605.2937099-1-pgwipeout@gmail.com>
 <20210511215644.GO1336@shell.armlinux.org.uk>
In-Reply-To: <20210511215644.GO1336@shell.armlinux.org.uk>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 11 May 2021 18:56:31 -0400
Message-ID: <CAMdYzYon+uscEXS=ntmQWD-ROr4owvbQwuWdb2DLmh74Gri1mA@mail.gmail.com>
Subject: Re: [PATCH] net: phy: add driver for Motorcomm yt8511 phy
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Linux Kernel Network Developers <netdev@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_155643_364518_A35CF62B 
X-CRM114-Status: GOOD (  17.73  )
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

On Tue, May 11, 2021 at 5:56 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> Hi,
>
> On Tue, May 11, 2021 at 05:46:06PM -0400, Peter Geis wrote:
> > +static int yt8511_config_init(struct phy_device *phydev)
> > +{
> > +     int ret, val, oldpage;
> > +
> > +     /* set clock mode to 125mhz */
> > +     oldpage = phy_select_page(phydev, YT8511_EXT_CLK_GATE);
> > +     if (oldpage < 0)
> > +             goto err_restore_page;
> > +
> > +     val = __phy_read(phydev, YT8511_PAGE);
> > +     val |= (YT8511_CLK_125M);
> > +     ret = __phy_write(phydev, YT8511_PAGE, val);
>
> Please consider __phy_modify(), and handle any error it returns.

Hey that's really neat, thanks!

>
> > +
> > +     /* disable auto sleep */
> > +     ret = __phy_write(phydev, YT8511_PAGE_SELECT, YT8511_EXT_SLEEP_CTRL);
>
> Please consider handling a failure to write here.

Will do.

>
> > +     val = __phy_read(phydev, YT8511_PAGE);
> > +     val &= (~BIT(15));
> > +     ret = __phy_write(phydev, YT8511_PAGE, val);
>
> Also a use for __phy_modify().
>
> > +
> > +err_restore_page:
> > +     return phy_restore_page(phydev, oldpage, ret);
> > +}
> > +
> > +static struct phy_driver motorcomm_phy_drvs[] = {
> > +     {
> > +             PHY_ID_MATCH_EXACT(PHY_ID_YT8511),
> > +             .name           = "YT8511 Gigabit Ethernet",
> > +             .config_init    = &yt8511_config_init,
>
> Please drop the '&' here, it's unnecessary.

Will do, thank you.

>
> Thanks.
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
