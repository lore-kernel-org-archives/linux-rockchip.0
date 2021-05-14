Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53563C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 14:09:42 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ACA6B613E9
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 14:09:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ACA6B613E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mO0uFohRCnV8vYZ9b6mM1tw7Wm73XmWUtVTlvzGGMa0=; b=cAtBImlsXg/jtZnyoBpu0qcd8
	qwTcXbFHOEzKetoC/QP0w+h0ITepLXuxft6o8bVL+0+/vSX0ZnSP7FsrCFIV43Tq3PxMe3R3RYfkJ
	x8Qe2o7d3K3aya3oAamMbdTLrerU2JJzOOX2T9FoG5alpY+TSZppwAdXQsY8JCgwDDpATGJTkTdIu
	GFug5z3fCezi5+z6HDESrqjnLqth4v3H7a2hzXmkTT+wMWY+ni/tvGngOgiYABf8Q2+uaq9CNbomp
	LWgoJytlfuQoM3Qb2ERHKeUyTOpjik8Nfpw9A1By6U2LZv2++a4VJzevafgsynZ73phVWBbg+Fv0p
	plCg8P8Xw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhYVV-008Eo4-5j; Fri, 14 May 2021 14:09:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhYVS-008EnY-Fa
 for linux-rockchip@desiato.infradead.org; Fri, 14 May 2021 14:09:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Otk7mMiSc5A5v5B8dOYgVn2Dr/WcLxHSnAJOb5ykiJo=; b=GikyDg9EY+CQPmGJf5wsfTqytQ
 pi0sQe2C8r1JZvdHLsN0ocfCnTeUtiN/QMTk3VTcEMeZFDvXeu7Soayrpy7GNy34LOyV6RJq6ltFx
 uPpC3fLZn6Wc6qRDuBHqXa3q8oXpYwHKu/l0mfI7ycI0hM9GeMEcPb9WVcQ3EmB7mYjsTIu+FTT5f
 lSfyjhohvtc+1lhQyOIalYwPZDFbdDyiI+XESXDGvp/4D2RU9jlzU4HL9zfXNa22+WYsOtRpl55vh
 z9/sjkh/GLFqCADWv5ataK9Fef/UHQX09s/eRAs0WABo44BZMjE0+nPKoQBFZ+gaZ5eFdAE6bG77d
 5+cDkK8A==;
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhYVP-00C1og-GB
 for linux-rockchip@lists.infradead.org; Fri, 14 May 2021 14:09:32 +0000
Received: by mail-yb1-xb30.google.com with SMTP id r8so39016137ybb.9
 for <linux-rockchip@lists.infradead.org>; Fri, 14 May 2021 07:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Otk7mMiSc5A5v5B8dOYgVn2Dr/WcLxHSnAJOb5ykiJo=;
 b=o4vcd6YLzAV5hIR888IZxIQTBfO7VGvGH0dFK+chAvKgiX1CnalEE45VV3VFSfsMyD
 ivwRRQVHidAtYS3702n6ZEzdgSTldrjE0GcpZ6/PBqzPt38dIrZHfOLvkH6OSiKRvWkh
 Kx1XKRvUIyP1lk+koKPKdnhKi44jj0oZ9HecrsdlatSlAPpVEvnvxaquhr3tSDQcw40C
 0Y/0dlCQFVRV4+Sk0Fdsrk0OrZ96uF6Pz5uU2T+eNhIF3xDtbyOJIQ7VWtQ0SMdj96i6
 mfOpX7EqqWjAR+RHRThg7qr5CP5HOwk+pOl4qMX0fm/BxXwJL0/WiVBxRLM9jJvQ2TBO
 xxxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Otk7mMiSc5A5v5B8dOYgVn2Dr/WcLxHSnAJOb5ykiJo=;
 b=ZOEO9WaUWQhj31niVtinCd3eTH9YNDnavE8bBPvQ7DqPKYzLCX+uBcHKXiXBh2vIir
 9GEkNY7mi5kDwmckXnQXh1ilfvbBX+Y7IfwO92NzPWMSyIWgXIjUM4uGPfTKY7wsjkRh
 AHrFscAl9s/XtWLsF3zRdAetARwXjaSjH1/5ewXkGyu1+Sw01vbb40cqtPJQ8tVZYKkt
 PR0oUQ6fU+m/bf1++1qvvBBBl9EXvABKkPn0GwZu/5WFxa1DASO1DT3nRVe6fZaFh5P2
 9+h9XLNMhh+wxcvab+eD6JyZUYMB0lWUDnHItKNTBKR7zOpz2Aj3UaFY8KaoCvhIX49n
 5xhw==
X-Gm-Message-State: AOAM5324VZINESoMChuHCknm/nL5bwXu9EiVQsoruHPpgBRkWXvw1cCQ
 pZhWVgH8IjGws5zuoevPohSTFRHcWFVvOG1ifJc=
X-Google-Smtp-Source: ABdhPJzDd/2DcOIs+kq2kBBNEw4Yh0u/Eq93ffNmw8V2bV3zYPrRg2hFsFr6eQcNA5Mwh2OWwfVYTaHftdfjVboC698=
X-Received: by 2002:a25:4d56:: with SMTP id a83mr57107356ybb.437.1621001370174; 
 Fri, 14 May 2021 07:09:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210514115826.3025223-1-pgwipeout@gmail.com>
 <20210514130908.GD12395@shell.armlinux.org.uk>
In-Reply-To: <20210514130908.GD12395@shell.armlinux.org.uk>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 14 May 2021 10:09:18 -0400
Message-ID: <CAMdYzYqQ4gaFRD8wbdm9PRpT-ZeiL6WVj_eHKnF_uF=mKx3A4g@mail.gmail.com>
Subject: Re: [PATCH v3] net: phy: add driver for Motorcomm yt8511 phy
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Linux Kernel Network Developers <netdev@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_070931_574396_AB73EBBD 
X-CRM114-Status: GOOD (  20.89  )
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

On Fri, May 14, 2021 at 9:09 AM Russell King (Oracle)
<linux@armlinux.org.uk> wrote:
>
> Hi!
>
> On Fri, May 14, 2021 at 07:58:26AM -0400, Peter Geis wrote:
> > +     /* set rgmii delay mode */
> > +     val = __phy_read(phydev, YT8511_PAGE);
> > +
> > +     switch (phydev->interface) {
> > +     case PHY_INTERFACE_MODE_RGMII:
> > +             val &= ~(YT8511_DELAY_RX | YT8511_DELAY_TX);
> > +             break;
> > +     case PHY_INTERFACE_MODE_RGMII_ID:
> > +             val |= YT8511_DELAY_RX | YT8511_DELAY_TX;
> > +             break;
> > +     case PHY_INTERFACE_MODE_RGMII_RXID:
> > +             val &= ~(YT8511_DELAY_TX);
> > +             val |= YT8511_DELAY_RX;
> > +             break;
> > +     case PHY_INTERFACE_MODE_RGMII_TXID:
> > +             val &= ~(YT8511_DELAY_RX);
> > +             val |= YT8511_DELAY_TX;
> > +             break;
> > +     default: /* leave everything alone in other modes */
> > +             break;
> > +     }
> > +
> > +     ret = __phy_write(phydev, YT8511_PAGE, val);
> > +     if (ret < 0)
> > +             goto err_restore_page;
>
> Another way of writing the above is to set "val" to be the value of the
> YT8511_DELAY_RX and YT8511_DELAY_TX bits, and then do:
>
>         ret = __phy_modify(phydev, YT8511_PAGE,
>                            (YT8511_DELAY_RX | YT8511_DELAY_TX), val);
>         if (ret < 0)
>                 goto err_restore_page;
>
> which moves the read-modify-write out of the driver into core code and
> makes the driver code smaller. It also handles your missing error check
> on __phy_read() above - would you want the above code to attempt to
> write a -ve error number back to this register? I suspect not!

That makes sense, thanks!
I was thinking about how to use __phy_modify with a functional mask,
but it didn't click until I had already sent it in.
Also thanks for catching handling that ret on the read!

>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
