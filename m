Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FA68C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 May 2022 06:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ob/2/E6kmy6Lsu71W3fnBKfJ2w2EPok6MY32gS1xsNw=; b=gcyM5Cb/YwT//W
	c/a1qqtyYIBhQupflfgs9hrFzW9IQBPBeQDsXhwPrIHZe1EVNh0R8db+h/Z07KLLStN58M7fwpqUg
	CwFMmihOPqaLncM3FDhD316UP4ntwoIGWkQlLKazJqPQ5sj6/EVFAgoQVVvsUmfXUQs1BG1P6Yo97
	5e60lc1v6FiSgpQoqffndgFGgm3y8729jYAFCxADn6ZQTrT3pQkJ6Qv1y5AdJwToJpT13HATskzX0
	M/2X5eGnFnTaDZqnfWdXCALS3cgEhDsQ3SYtp8DWvvBMyXJWnFlhcGRC8a5+cNvNosW0FAvhUcgfX
	pci2RPwP0SutnWjFim9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nl30P-00FeqA-5V; Sun, 01 May 2022 06:24:29 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nl30N-00FeQN-3x
 for linux-rockchip@lists.infradead.org; Sun, 01 May 2022 06:24:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3+qzA7PHMmDHNHuNIiXNUOUy8rzwaRd3MaO7YujuXCQ=; b=xXWvZRUz+UeJyVHlrRbK9vEEWU
 kc13z1UURFsemmhkm8BX2rGCOM6oSATTMIpaHZkI0Clvngr4KK9i0rMgFKxoy+8CjVUVp3CNvGtUO
 koMDmQsRLXiXKAxNVVjGlD0sk0A7biSGGwTs3dcmWh8ivQkfXXh3mxHnpJXaxnfCmgZMGUeFWVMVN
 T+/OKD2uj9nKchkGTuBuevzcr8ph2nfMCtvB7A0vobMrOVwsEq1qIxfJvpt45TIMu9I8/Vs/HKbeH
 gb09Y8J9r/CtQcN56LflJToxs3TxQhnYdpUk1/H3POiJ3/BZH2m7oReSWZLRelFIC+Rv3g6d9vbuO
 o0yR0hgw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:58468)
 by pandora.armlinux.org.uk with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@armlinux.org.uk>)
 id 1nl2yF-0005yo-0i; Sun, 01 May 2022 07:22:14 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1nl2yC-0003fG-Os; Sun, 01 May 2022 07:22:12 +0100
Date: Sun, 1 May 2022 07:22:12 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1] net: phy: fix motorcomm module automatic loading
Message-ID: <Ym4nFLqOsozrb+HM@shell.armlinux.org.uk>
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
X-CRM114-CacheID: sfid-20220430_232427_186839_9299D050 
X-CRM114-Status: GOOD (  21.99  )
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

If you're talking about embedded, it makes more sense to have the PHY
drivers built-in. They will take up less text and data space that way.
Typically, PHY drivers have very small amounts of text and data, and
both of these end up being rounded up to a page size when loaded as a
module.

> Another cause is a
> mismatch in kernel config where phylib is built in because of a
> dependency, but the rest of the phy drivers are modular.
> The key is:
> - phylib is built in
> - ethernet driver is built in
> - the phy driver is a module
> - modules aren't available at probe time (for any reason).

This is why many ethernet drivers connect with their PHY in their
.ndo_open method, rather than at probe time.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
