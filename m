Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A684C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Apr 2022 16:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pfUTkiSk3qhVGEptSJuhHkEJFiNJ8wzFJh3SZtP7f3c=; b=0zossVo/OO4Y7a
	rPtrj1ZVGktfmWThwKY1qUFAH38ZnUDZ9FopwmVIVAcbm6vEZu0tmKqIEOTeXZwY/hgVeWGrOcWiW
	IIDT8MIY7suZgZwfQO6rNxPNQcNp43XWNsLyWrWeQUkXj3UFxQkpAt0GtD3Yx6BElb3IucL/QOihR
	O1b4+XvBIdT+SPfRCXJX1fm/2Ut6wcpIfcC8KD5OQa7ZWAZp7LqtmEk37bpRzLiNWmMci+lCaY015
	EepE1i9ZcZEpbK3nnrHzgq61sa5+GoO+TLiauOYpPTf0TAjSwytHa1lgFFWMuMgsLIsKECQucnT5U
	x1/SbZ12DMtch61ufpLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkqGy-00Eg7N-Ti; Sat, 30 Apr 2022 16:48:44 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkqGw-00Eg72-G0
 for linux-rockchip@lists.infradead.org; Sat, 30 Apr 2022 16:48:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=dF1mmmBFDNP9HWUd+hs6Y1pIJYTO0dyqrecodlt1PlQ=; b=cPQi1qAZcGQGUaPBAA7ghyhZsu
 Kcj5E+qhh+Ka31F5l28xtkVKVJQ3WGtzmP+mAt3Y6l3OkZav8CDmsVKs26eQRc6xgABrD2gBmgQdz
 O/KxPtyROLauJBpg8XWEecq5bH+Q0Y6kq4adMNJrmbbRYSFsIZ3ilsdZK+dsnFTKkWv4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1nkqGq-000eX6-Uo; Sat, 30 Apr 2022 18:48:36 +0200
Date: Sat, 30 Apr 2022 18:48:36 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Peter Geis <pgwipeout@gmail.com>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1] net: phy: fix motorcomm module automatic loading
Message-ID: <Ym1oZCUdE2+PTyFZ@lunn.ch>
References: <20220228233057.1140817-1-pgwipeout@gmail.com>
 <Yh1lboz7VDiuYuZV@shell.armlinux.org.uk>
 <CAMdYzYrNvUUMom4W4uD9yf9LtFK1h5Xw+9GYc54hB5+iqVmJtw@mail.gmail.com>
 <CAMdYzYrFuMw4aj_9L698ZhL7Xqy8=NeXhy9HDz4ug-v3=f4fpw@mail.gmail.com>
 <Ym1bWHNj0p6L9lY8@lunn.ch>
 <CAMdYzYq41TndbJK-=ah31=vECisgRbPmtFYwOLQQ7yn4L=JVYw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYq41TndbJK-=ah31=vECisgRbPmtFYwOLQQ7yn4L=JVYw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220430_094842_567387_7BECEDB1 
X-CRM114-Status: GOOD (  23.06  )
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

On Sat, Apr 30, 2022 at 12:31:27PM -0400, Peter Geis wrote:
> On Sat, Apr 30, 2022 at 11:52 AM Andrew Lunn <andrew@lunn.ch> wrote:
> >
> > > Good Morning,
> > >
> > > After testing various configurations I found what is actually
> > > happening here. When libphy is built in but the phy drivers are
> > > modules and not available in the initrd, the generic phy driver binds
> > > here. This allows the phy to come up but it is not functional.
> >
> > What MAC are you using?
> 
> Specifically Motorcomm, but I've discovered it can happen with any of
> the phy drivers with the right kconfig.
> 
> >
> > Why is you interface being brought up by the initramfs? Are you using
> > NFS root from within the initramfs?
> 
> This was discovered with embedded programming. It's common to have a
> small initramfs, or forgo an initramfs altogether.

Yes, i do that all the time. But then it is up to me to ensure i have
all the code i need built into the kernel.

> Another cause is a
> mismatch in kernel config where phylib is built in because of a
> dependency, but the rest of the phy drivers are modular.
> The key is:
> - phylib is built in
> - ethernet driver is built in
> - the phy driver is a module
> - modules aren't available at probe time (for any reason).

This 'for any reason' is what i'm trying to get at. It is not the
kernel which builds the initramsfs. It is not the kernels problem if
the modules it needs are missing, it is my fault for not telling the
intramfs tools to include the modules needed to actually boot the
machine.

	 Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
