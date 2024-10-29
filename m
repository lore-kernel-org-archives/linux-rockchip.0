Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3370D2AB3B
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Oct 2024 13:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AChpqQogBqmkCxOF4Z0wKrL4oGDXpF+zRAz2A/RdrCs=; b=MymIBBw2TqO0ST
	pIgEHwpcKNRjzZFZuKQmiDK35E8E1o4POAIfeDOLfTYyfSqcMlxhAxS3PEAS/VSbr5JvMb9ULZBYp
	8GDAZWUINHNiXA/4OmMOdVAgqc38l16lQaiFkgsHLTRMnmjB4f81gYWvBjPNluwCzQlM8K9c9Yfje
	BxIIRz/3Ycn3Sfz+o/ABaRjgkUDuNwqzlS3O7FlXkL0qEGV/HmPtQ9YXKoEJmhfanKz1AWPopRc12
	JCpzjpHgxHBUlmY54ww2V65CXTtesUieL1GG8Ls/x0VK9GLxOMmDy0lehxCbD1sLxjqTQjgQeJ2zs
	BJTjdJOwPOBG17cdTogA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5m57-0000000EXVG-0oc2;
	Tue, 29 Oct 2024 13:16:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5lcS-0000000ESQs-2DfT
	for linux-rockchip@bombadil.infradead.org;
	Tue, 29 Oct 2024 12:46:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=LY7Fbz/Fi+xKC3ClkbwZw0JUxpl8Rh5O1YgX5ak65zY=; b=kyVPbMjhRrUri9BrVJohST2z83
	Do14kYBQcovxDLBZA3Dg6wjM2ojJjW0GvfdcD1fzx1KJtZZScAEJzodf7niPFTT5FBwbnth7gcxec
	mLSe2PTJsDXYftI0R2d5uRa8raZA11zo4xnZ3c4vK5SK6zRc42ftaa65xvV6NIru+yZjdqEHLIBUM
	r5qJ24OZEW51NQbd1fMtqrAsg7xlM2Xoj+jXhyn3AkF5GAjBSKHM5AiLqw7kEsfmMP82llRG1ktdB
	Nv28FdXqKprFxwtmxipg49g8x8br+mDS3D0/DEVAZqZTv5xwRt95uJdpoOmdUh9A2I3ZQUgLYgchc
	BtWtYgnA==;
Received: from vps0.lunn.ch ([156.67.10.101])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5lcP-00000009tYl-01l6
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Oct 2024 12:46:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=LY7Fbz/Fi+xKC3ClkbwZw0JUxpl8Rh5O1YgX5ak65zY=; b=E4qziFBZet6GGyRwtWnnIH8NzW
	tw4gbTG06OaXGpVV3qabxpma9zubRNE+6cX/rT/XpKzBVbMhTwWy4B3A61oyvHCN4HQ5WZv6Z81mT
	mWZahB8nobf7eayLrxzKB4QGvXONabpryX/RkEc5m3izZSge1lq8f7YzQoVNe5HP9bQo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1t5lc8-00BZiY-Ox; Tue, 29 Oct 2024 13:46:24 +0100
Date: Tue, 29 Oct 2024 13:46:24 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Andy Yan <andyshrk@163.com>
Cc: Johan Jonker <jbx6244@gmail.com>, davem@davemloft.net,
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
	david.wu@rock-chips.com, andy.yan@rock-chips.com,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: Re: [PATCH v1 2/2] net: arc: rockchip: fix emac mdio node support
Message-ID: <9926fc06-7f64-4902-b933-23b68571db5b@lunn.ch>
References: <dcb70a05-2607-47dd-8abd-f6cf1b012c51@gmail.com>
 <f04c2cfd-d2d6-4dc6-91a5-0ed1d1155171@gmail.com>
 <250cdfef.1bfc.192cd6a1f72.Coremail.andyshrk@163.com>
 <0a60a838-42cb-4df8-ab1f-91002dcaaa14@lunn.ch>
 <a7c2431.871a.192d75e5631.Coremail.andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a7c2431.871a.192d75e5631.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_124641_841940_4677C8EC 
X-CRM114-Status: GOOD (  11.32  )
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

On Tue, Oct 29, 2024 at 04:22:16PM +0800, Andy Yan wrote:
> 
> Hi Andrew,
> 
> At 2024-10-28 20:59:18, "Andrew Lunn" <andrew@lunn.ch> wrote:
> >> Hello Johan,
> >>     Thanks for your patch.  Maybe we need a Fixes tag here?
> >
> >What is actually broken?
> 
> The emac failed to probe after bellow patch merged.
> 
>  [    2.324583] loop: module loaded
>     [    2.328435] SPI driver spidev has no spi_device_id for rockchip,spidev
>     [    2.338688] tun: Universal TUN/TAP device driver, 1.6
>     [    2.345397] rockchip_emac 10200000.ethernet: no regulator found
>     [    2.351892] rockchip_emac 10200000.ethernet: ARC EMAC detected with id: 0x7fd02
>     [    2.359331] rockchip_emac 10200000.ethernet: IRQ is 43
>     [    2.364719] rockchip_emac 10200000.ethernet: MAC address is now e6:58:d6:ec:d9:7c
>     [    2.396993] mdio_bus Synopsys MII Bus: mdio has invalid PHY address
>     [    2.403306] mdio_bus Synopsys MII Bus: scan phy mdio at address 0
>     [    2.508656] rockchip_emac 10200000.ethernet: of_phy_connect() failed
>     [    2.516334] rockchip_emac 10200000.ethernet: failed to probe arc emac (-19)

So it is failing to find the PHY, and given the 'mdio has invalid PHY
address' it is probably looking in the wrong node.

The commit message should explain this.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
