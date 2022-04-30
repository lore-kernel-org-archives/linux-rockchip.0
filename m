Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C28D7C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Apr 2022 15:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GfKYqZHpbeK89kLgyFD0jK6wnd3K8aqeBI6FJ3UF3Zw=; b=b4bpqmjVC9rR4c
	aWr5N7IkpSKVKvlu4oQUXf1Pr+v6g0AQKMevZtHx99MnuJ8wnqaab/NhARvEcr5zsRCLnV91JUp+T
	UkoBPlMqYol1L5++eK7EUdqDawOki/5mlz/DG1EWP7rT/q8tT/s7y8PC2Hem+88H4QNJgqkwKHdLL
	Otb8YNDpJWiwY5Eg7syU6+xN2jQIDpk7D2rSxpYpj0FQoJ93X6DAEV3wvEsFp4XMgt1hKb6pmXVuQ
	r20rNGZxtF8Uc44hCesMP427BdvUJmTVMz0tpLHhVbLEgLapSbTeahc5SgpnXtd03D3NE6PK8WZdI
	hBC51j8DBRwcbSUP7iqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkpP9-00Eaxf-KQ; Sat, 30 Apr 2022 15:53:07 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkpP7-00EawJ-Ji
 for linux-rockchip@lists.infradead.org; Sat, 30 Apr 2022 15:53:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=lxRU4LE3pvOW3ivVzq+FV5/t6uMeAUpHsCxeSXoPW3M=; b=jXI2aVt7bjb5ddwZ6Y5/6fdyjI
 QCFaK7Z7eTmsXS0W+gvekQj1zhc0LZx0Ufb6Iqm405H4GQNxo8lXVuwvXVaEJAAB4iA6n7QHj8wGn
 3siWN5DD3CGDyxm00w0JElWRQpoPsKBkh3JkUivDHE6gRPknVFhPLlUjvh6Kpko6II4g=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1nkpOy-000eIR-VZ; Sat, 30 Apr 2022 17:52:56 +0200
Date: Sat, 30 Apr 2022 17:52:56 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Peter Geis <pgwipeout@gmail.com>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1] net: phy: fix motorcomm module automatic loading
Message-ID: <Ym1bWHNj0p6L9lY8@lunn.ch>
References: <20220228233057.1140817-1-pgwipeout@gmail.com>
 <Yh1lboz7VDiuYuZV@shell.armlinux.org.uk>
 <CAMdYzYrNvUUMom4W4uD9yf9LtFK1h5Xw+9GYc54hB5+iqVmJtw@mail.gmail.com>
 <CAMdYzYrFuMw4aj_9L698ZhL7Xqy8=NeXhy9HDz4ug-v3=f4fpw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYrFuMw4aj_9L698ZhL7Xqy8=NeXhy9HDz4ug-v3=f4fpw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220430_085305_685295_4D3BD4F1 
X-CRM114-Status: GOOD (  11.97  )
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

> Good Morning,
> 
> After testing various configurations I found what is actually
> happening here. When libphy is built in but the phy drivers are
> modules and not available in the initrd, the generic phy driver binds
> here. This allows the phy to come up but it is not functional.

What MAC are you using?

Why is you interface being brought up by the initramfs? Are you using
NFS root from within the initramfs?

What normally happens is that the kernel loads, maybe with the MAC
driver and phylib loading, as part of the initramfs. The other modules
in the initramfs allow the root filesystem to be found, mounted, and
pivoted into it. The MAC driver is then brought up by the initscripts,
which causes phylib to request the needed PHY driver modules, it loads
and all is good.

If you are using NFS root, then the load of the PHY driver happens
earlier, inside the initramfs. If this is you situation, maybe the
correct fix is to teach the initramfs tools to include the PHY drivers
when NFS root is being used?

     Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
