Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8912C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 00:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RoG/C3hP5RPpc4r1hJ+t1Yzw+LWpIVhEs+LXr7TvaW8=; b=qYL1Ak8qP8RQwL
	aoLsJzCmbzm7/Gg4UcTbsmQNEMoPfBE4JxFlPu2jOf4/eOhqqHFLPt5XML4WCkEe6qSn/cil8p3Jk
	pZ4L1PfIlHLI6jl8QmjXNYRzckwOPfp45CdRP5DcR9uF5jRK2Sv3FcZe+VHziltfzc7vyp3Txi5Sj
	bZRIyE4TysChDV4Rw2J/Lp0HrMXP3ajWE8Ez6037nCWlFkUV7O70PWYYg7AvhZJ/cU2HF2B45XLL/
	B9e2QAxivuqzuq5U3w/0yTO0I+JckplUCRegbYa90Te2AObKtoP/m3jEl43lkk8PcipQn5AWFJvN8
	6obFAk1O2zyJt9drkxzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOqdP-00EWY9-NK; Tue, 01 Mar 2022 00:44:59 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOqdM-00EWXL-D4
 for linux-rockchip@lists.infradead.org; Tue, 01 Mar 2022 00:44:58 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id f38so12208677ybi.3
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 16:44:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4Nf/egCx0Q4I70uptkgfjEanQfEaR61lPRDpLPBXJeg=;
 b=M+GwEY56nFU9oLTxjb+5lEoD3/IkffH/Jqm+d2voDBhw0M2ZssZlz68XVTNiqKyZex
 2VYv/3KS0AQxzBjYeFCfmGuNnryR//ge5e5Xzm15Z8mqNUp9KLUmbhXKpD0W1YE64Uaa
 IXn7ED/d8T57Da2dbfaXSdp54mQuJ2ItYjUdGIrH5tPeWIgO8fNoJ8fTosV3Gt1AzSS3
 dyLNdP/Ree1IpO9xk4qOB31rUq8Uudb14yBkgUz4WKmb33H3RDnQD9+2QL9BSy62y8Wj
 Dykqh/rhsuUV/UiD50AK1Bvrt55DvegldSmB0GzIImVTOuiw+BZboMZn95y5UAoMewJR
 8EOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4Nf/egCx0Q4I70uptkgfjEanQfEaR61lPRDpLPBXJeg=;
 b=TecIp62P8t1vQIs+2HQ8WNjnOwuCrCClbTz4rhole2Wqd3p14bxlQuW9xDm5XM9okC
 MojgR9Co11iA6MRsD2nCLKpmt9/gNKoMlI4OUqnPFyOJn3I/ymBpTNi6ezHipkuH9Mgk
 +j9E0oWbzWCHNI6J4j0oRSIgTdp1VBNFLBxKDN0y77aj8P0GFqeYB7UiDU9yb+DPBOmW
 4vdreTSxsMb8OLjWPzfF2SIjKiRCW88Jhw1mW/3fNKwNyNyieeqQEMDpnE/YBSySwqYF
 qFshABTXajeFxKlru7imc3aiVCUn5qBGFPTTsXtQQ25xQgNUaW/COhBTZKmdPoQRHArY
 WAOQ==
X-Gm-Message-State: AOAM533U3UC6EvrzvjcHcsb8yjqqBXSl0Dps9mDZqzGL5WYUXS5WXpoD
 nJEgcbTrOwWiParTdHa9YxvAOGPLbbMsoaikO/w=
X-Google-Smtp-Source: ABdhPJwsZJOjFD+cAucEDnn2/44FhTiZJamnT2r0djxxGeEJQ+yLbZW1dmeCwnmdpyrs9rjHJusatuYijDxFVPCWY3I=
X-Received: by 2002:a25:f80c:0:b0:624:40aa:44ab with SMTP id
 u12-20020a25f80c000000b0062440aa44abmr21715244ybd.51.1646095495077; Mon, 28
 Feb 2022 16:44:55 -0800 (PST)
MIME-Version: 1.0
References: <20220228233057.1140817-1-pgwipeout@gmail.com>
 <Yh1lboz7VDiuYuZV@shell.armlinux.org.uk>
In-Reply-To: <Yh1lboz7VDiuYuZV@shell.armlinux.org.uk>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 28 Feb 2022 19:44:43 -0500
Message-ID: <CAMdYzYrNvUUMom4W4uD9yf9LtFK1h5Xw+9GYc54hB5+iqVmJtw@mail.gmail.com>
Subject: Re: [PATCH v1] net: phy: fix motorcomm module automatic loading
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Network Developers <netdev@vger.kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_164456_477252_BF052BE2 
X-CRM114-Status: GOOD (  22.74  )
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

On Mon, Feb 28, 2022 at 7:14 PM Russell King (Oracle)
<linux@armlinux.org.uk> wrote:
>
> On Mon, Feb 28, 2022 at 06:30:57PM -0500, Peter Geis wrote:
> > The sentinel compatible entry whitespace causes automatic module loading
> > to fail with certain userspace utilities. Fix this by removing the
> > whitespace and sentinel comment, which is unnecessary.
>
> Umm. How does it fail?

It simply does not auto load the module by device id match.
Manually loading the module after the fact works fine.

>
> >  static const struct mdio_device_id __maybe_unused motorcomm_tbl[] = {
> >       { PHY_ID_MATCH_EXACT(PHY_ID_YT8511) },
> > -     { /* sentinal */ }
> > +     {}
>
> These two should be 100% identical in terms of the object code produced,
> and thus should have no bearing on the ability for the module to be
> loaded.
>
> Have you investigated the differences in the produced object code?

Yes, you are correct, I just compared the produced files and they are identical.
This patch can get dropped then.
I'm curious now why it seemed to make a difference.

I am not familiar enough with how the various userspace elements
decide to match the modules to determine exactly why this is failing.
It seems to be hit or miss if userspace decides to auto load this, for
instance Ubuntu 20.04 was happy to load my kernel module built with
the arm64 official toolchain, but Manjaro will not load their self
built kernel module.
I originally suspected it was due to the manufacturer id being all zeros.
Unless there's some weird compiler optimization that I'm not seeing in
my configuration.

Any ideas would be appreciated.
Thanks!

> If not, please do so, and describe what they were. Thanks.
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
