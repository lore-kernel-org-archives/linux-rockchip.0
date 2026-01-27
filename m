Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0206FD1951B
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 00:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+HcOh+z3Ns7cGsl/5M8Zzjwiib0T9sqsQgrO1MZjdU=; b=T1H0rUXIkat4Uz
	rtYAK3Mlp/VKoMClAh2Puhdj2HslhV+MtmOmd7m/GeZqxcuAiUx/FqAwErljTbGy1/pHxUGNJMEta
	ijRDlaHWI5fmE2PKJWWl7bvLBU6LvJHMQarOXASpy9MtSIP+WWPHyglt6Hlv/n9xV7J9i0T3UZI2u
	/p00WmP+H36kunHiKU53qLXvkb4SbuPdM7gLYdVR5Vt8zyDnAyAkiruEZfnQnt7s24PaL2u9FXFDo
	eWuXurJe5WMZmOKu1sxA8Tl6/F1LFzwvN3AaRRAy6f+YYyWGfH/N2/yyM5UnXyg3SThpETkHlFXyk
	Ffpf5FK3ixGF9WmvEU/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkXJ7-0000000DOwZ-0NBy;
	Tue, 27 Jan 2026 00:51:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkXJ4-0000000DOwH-38xA;
	Tue, 27 Jan 2026 00:51:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DD04A60051;
	Tue, 27 Jan 2026 00:51:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06CEDC116C6;
	Tue, 27 Jan 2026 00:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769475105;
	bh=/NtOgl//jXPuJSMTE/EaAvxKGxzbcDqlXUmd33t1b6c=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=qsrKNcrYztJ49G384fvcqcuUjsyoizPuJYIIv8nnqs0+tAyZTI82WG+jPhamGvMFD
	 DCClxEduYLpvjxsSkukoFdnjjSYF+JfvvcGKVzPPMVYOe6ED/vEI8EWDDZNgqS3lCc
	 JevaEQedSZNfAumwFasF1EJ3Cj2jMn5Ca6DHK0ZX1uLxje0wdXBtRv/VadplsmzohI
	 A3RyZAkFqYh9xQONrcQlzUqtrtWj3Qvm++lhrep9lNGuqa/FubpvPsQr0EDAVMfIVC
	 0XP0thotcb/9vc7XTXqFWC5BMsn4+NGrMMTqzG/ifvfPL3A7ybiafHeMhMQ2eH2NYL
	 17EbLfIjvaRtg==
Date: Mon, 26 Jan 2026 16:51:44 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Heiko
 Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, netdev@vger.kernel.org, Paolo
 Abeni <pabeni@redhat.com>
Subject: Re: [PATCH net-next v2 06/22] net: stmmac: rk: add SoC specific
 ->init() method
Message-ID: <20260126165144.25055591@kernel.org>
In-Reply-To: <aXd7aSk7KIxlQd5z@shell.armlinux.org.uk>
References: <aXdTi4ViCkhhXvFI@shell.armlinux.org.uk>
	<E1vkL28-00000005usi-30YC@rmk-PC.armlinux.org.uk>
	<aXd7aSk7KIxlQd5z@shell.armlinux.org.uk>
MIME-Version: 1.0
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

On Mon, 26 Jan 2026 14:34:17 +0000 Russell King (Oracle) wrote:
> On Mon, Jan 26, 2026 at 11:45:28AM +0000, Russell King (Oracle) wrote:
> > Add a SoC specific init method.
> > 
> > Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>  
> 
> I see the AI review has identified that this patch has an issue, whereas
> in the previous review, it was fine with this patch. I can't imagine what
> it's problem with this patch is

I released the reviews for you, the first one looks legit, I haven't
scanned the rest so YMMV.

> and there's no way to find out for about 9 hours (more like 19 hours
> for me because of the timezone) as the AI reviews are not accessible
> until then.

The patchwork checks are for maintainers. If someone wants to build
a public CI for contributors that'd be great. We can even provide
funds from the netdev foundation. But let us be clear that the current
setup is until now maintained primarily by me for me on the weekends.
Unless you make an effort to actually help I don't think it is in good
taste to complain.

> Makes me wonder whether it's worth continuing to submit patches to
> netdev anymore.

If you choose to continue I'd appreciate if you could follow the common
guidance:
https://www.kernel.org/doc/html/next/process/maintainer-netdev.html

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
