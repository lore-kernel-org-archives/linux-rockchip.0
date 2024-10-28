Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A788D1039A
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Oct 2024 13:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUN82rPc2SpyFTKMjLxkANbCmdPQ412skLuBv9YuOjI=; b=A0lKckeJhoSPeS
	6u16CcfET+AIZNiShgtJLNmcmeMVJq4OiNpw9LnO0tkdBpyqa1eJzAv8o8wpPRNAroVDvxXwhZTlQ
	kfZwigxnavFcB28GPmt2JmoKE2kOottfE/5KNtte4IXBwprycmMKsu2MVPPZHvnknhsWLCUacCtwb
	o4srt/TJcP/3Aqldjxe5EqwdDIcL6SB2Z6v82/QhYB0ecDUyZA/LAcuYYG/PlF9Q3MpHIpM6/wAMS
	+fAIJXOrxCeFpr03aGQdAYC8FLJBWZxh7jTGx6GHyl7EjFFMBI04xN1GAqXPyglNChnJh7A5QUYrb
	dHeN2+gAnxGtwmeFEO2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5PLs-0000000Arpg-1671;
	Mon, 28 Oct 2024 13:00:08 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5PLK-0000000Argp-0kXb
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Oct 2024 12:59:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=jzRfsORNZvsjrYssNca38SOvtAL4bIuf/RDFrDeFoV0=; b=IS41XOy3kWGvXgWiQkdJVqIqhP
	P5ZWgMaxOmti1evlonFJvqk3PovM+95v1BM6GU3LwA8sTYQ4g/4u4VRvj3VMHvM7ZEBD3qIbMTboK
	s2zY3DNyDJxkUGD4anKRqQKVNHsU6fJ2EvpyIR4XkW9LuFVKJtAMrcEo1UGXAcfhGTlM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1t5PL4-00BRmK-E7; Mon, 28 Oct 2024 13:59:18 +0100
Date: Mon, 28 Oct 2024 13:59:18 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Andy Yan <andyshrk@163.com>
Cc: Johan Jonker <jbx6244@gmail.com>, davem@davemloft.net,
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
	david.wu@rock-chips.com, andy.yan@rock-chips.com,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v1 2/2] net: arc: rockchip: fix emac mdio node support
Message-ID: <0a60a838-42cb-4df8-ab1f-91002dcaaa14@lunn.ch>
References: <dcb70a05-2607-47dd-8abd-f6cf1b012c51@gmail.com>
 <f04c2cfd-d2d6-4dc6-91a5-0ed1d1155171@gmail.com>
 <250cdfef.1bfc.192cd6a1f72.Coremail.andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <250cdfef.1bfc.192cd6a1f72.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_055934_234757_8A012C98 
X-CRM114-Status: UNSURE (   4.74  )
X-CRM114-Notice: Please train this message.
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

> Hello Johan,
>     Thanks for your patch.  Maybe we need a Fixes tag here?

What is actually broken?

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
