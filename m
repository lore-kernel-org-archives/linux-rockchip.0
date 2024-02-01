Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCFF9C4828D
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 18:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d77AEyhHNdOnwCUTQVkloOBz0DmN0b3jFDknvw7WRxg=; b=sX3uYC5f/1OSFb
	zdmXerHggIUfg3SBtcL0hucfS9SpaUgZFqmQzYCXb0CesvE7Hp5LB7gQWAwI/vM/hWm5yxhzHG3/S
	LHGvow4piSI1uW4c5hp2dXMtr7TSCKh+ACv/HeGQh8TNthqFCvPFOlv4t4lhmVeYiD7IQN8JOMED6
	0rFEqU5KfVFh8HJB++Ym2SwZV6UyGMlVqRidVU9G4DN3sDgtwE2tWksAIYMTIlNxwbsRE7ItEdz50
	MzGi6O/4PstspD7EPk36KrigQM+0sDXrTkdRWF0/IVXNSzUXTh+F7yOvmgWhU2u14OlozHr5U/HNX
	v6+l3qEIMCt9XPxcQ21A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVbiO-00000008zhL-43Jk;
	Thu, 01 Feb 2024 18:23:08 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVbiM-00000008zgG-2CZQ;
	Thu, 01 Feb 2024 18:23:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C8BE961003;
	Thu,  1 Feb 2024 18:23:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 625A1C43394;
	Thu,  1 Feb 2024 18:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1706811784;
	bh=g30JJF6c2p9BNtqLzB7XLKvKHMAUsAjHRtAPmzxpNec=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P5bm9aHJFe5C09SLrv5P8D7FyWqccaceRdwXWPzs31IigkUX5cR3+dS4usDCl7sMp
	 BSu+SPA0C5NO1P0FRs+6K2+SF3/WBNxlMr9TKBy0ngmLOAmvNt4IlVj2pkwUw2r90J
	 Y7nDNsYw4jfFEBIeImdlpHUOZyWbJcIHrJXZw/ek=
Date: Thu, 1 Feb 2024 10:23:03 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Christina Quast <contact@christina-quast.de>
Cc: Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
	Wedson Almeida Filho <wedsonaf@gmail.com>,
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Benno Lossin <benno.lossin@proton.me>,
	Andreas Hindborg <a.hindborg@samsung.com>,
	Alice Ryhl <aliceryhl@google.com>,
	FUJITA Tomonori <fujita.tomonori@gmail.com>,
	Trevor Gross <tmgross@umich.edu>, Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>, rust-for-linux@vger.kernel.org,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 3/3] net: phy: add Rust Rockchip PHY driver
Message-ID: <2024020105-bankroll-opium-a6e5@gregkh>
References: <20240201-rockchip-rust-phy_depend-v2-0-c5fa4faab924@christina-quast.de>
 <20240201-rockchip-rust-phy_depend-v2-3-c5fa4faab924@christina-quast.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240201-rockchip-rust-phy_depend-v2-3-c5fa4faab924@christina-quast.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_102306_629467_FAA88359 
X-CRM114-Status: UNSURE (   9.99  )
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

On Thu, Feb 01, 2024 at 07:07:00PM +0100, Christina Quast wrote:
> This is the Rust implementation of drivers/net/phy/rockchip.c. The
> features are equivalent. You can choose C or Rust version kernel
> configuration.
> 
> Signed-off-by: Christina Quast <contact@christina-quast.de>
Cool, but why?  Is this going to happen for all phy drivers going
forward?  What's the end-game here, dropping all .c phy drivers that are
in rust?  Or having duplicates for all of them?

thanks,

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
