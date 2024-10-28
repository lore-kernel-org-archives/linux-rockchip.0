Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC916D10C11
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Oct 2024 13:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJVReUKFucyXfIuIIzod68l+GbMxrLrYVW7UbVyhl+M=; b=4WgIGyfDOtSarv
	MURDWkqT3Xj/H+irmvpZYMSRmfWbOnSlQmR/toivP7w4FVdUcjKq0/d6oWnIHBNWVDYKX8gYieGrC
	XO4WL2NlZwAknp+HpzPDxVvPGprCo/eIb7sTGql+Vcl8wh2/PH7/SUXeSspKXPCwcPS9O1Y01nRQC
	8JAww62sNkcB8i1Llamrqes6rjjsx6RXFNWQNlOl1whaBcAPZm/s/KWaC10wYyXqGlpmao+Y9rx5x
	7A9Ox81YmXD27YSqYk4mA6MyfxqaGY/RqMpxh+pFV0Dgy+xTSZ8DjuDI+CUgkV73gDnDcfjFkuJj/
	CvljyUw6+ki8HP9Zhf/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5PRB-0000000AseW-0V2K;
	Mon, 28 Oct 2024 13:05:37 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5PP8-0000000AsMR-0Zha
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Oct 2024 13:03:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=6WJHuzTaZjJDzN3YDvM8wJF+MG1Ybn/TMg5TyTbr7H4=; b=XBycRvSKAm8fGZg24OEPiRE4Ni
	BLhE2plbT8KL8da9F7fiqDXSbySNaBOjrfKuN7OTQlzvTr6GOHt1kVwfLKMCmXfUMAMoWvzGxmU71
	3nCzOkIOhtsgtKTkEn/T+6DnT5JrHoNqanRe5OWHictXCENnoq+8FqJ4RkfutQpSnZOA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1t5POx-00BRny-TA; Mon, 28 Oct 2024 14:03:19 +0100
Date: Mon, 28 Oct 2024 14:03:19 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Johan Jonker <jbx6244@gmail.com>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
	pabeni@redhat.com, david.wu@rock-chips.com, andy.yan@rock-chips.com,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v1 1/2] ethernet: arc: fix the device for
 dma_map_single/dma_unmap_single
Message-ID: <86192630-e09f-4392-9aca-9cc7e577107f@lunn.ch>
References: <dcb70a05-2607-47dd-8abd-f6cf1b012c51@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dcb70a05-2607-47dd-8abd-f6cf1b012c51@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_060330_218712_492748C1 
X-CRM114-Status: GOOD (  11.76  )
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

On Sun, Oct 27, 2024 at 10:41:48AM +0100, Johan Jonker wrote:
> The ndev->dev and pdev->dev aren't the same device, use ndev->dev.parent
> which has dma_mask, ndev->dev.parent is just pdev->dev.
> Or it would cause the following issue:
> 
> [   39.933526] ------------[ cut here ]------------
> [   39.938414] WARNING: CPU: 1 PID: 501 at kernel/dma/mapping.c:149 dma_map_page_attrs+0x90/0x1f8
> 
> Signed-off-by: David Wu <david.wu@rock-chips.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

A few process issues:

For a patch set please add a patch 0/X which explains the big picture
of what the patchset does. For a single patch, you don't need one.

Please read:

https://www.kernel.org/doc/html/latest/process/maintainer-netdev.html

It is not clear which tree you intend these patches to be applied
to. This one looks like it should be to net, but needs a Fixes:
tag. The MDIO patch might be for net-next? 

    Andrew

---
pw-bot: cr



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
