Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3784DC4828D
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5OtblOlcLILSBVVBpt/Kk09yJzkeJ5Fz1/WOEr/LnLw=; b=NpnzEQDP56s4rm
	cwUbOILDRVJF0ZSFQ6lMXGgcgM29k/0Iip6UVVrPveq46ajKc4TRC27IeNNabGYLPQoba2LsF67l/
	ewGDQCQO6MQ9By5HDotw0tbeOU6Ln/uiY3Q7muqt9iV6uUY40bv/x+aCU0oAaKEV95kXZ4+fsLRmY
	U59KoH//fHWWTqEnUN/+tvRxmm0aOddAYu7pNIG51Q2H5KwOzqQ6/YCJw1mME3nBS/kdy9ujfyiWA
	sYOzX0RomYM03wpF0CGv56uQIKjr7xmyoC/ONGqlrotA9bJgYToALQwC5adruIcpI8JHRvtdC6BnU
	kCJn482wFQOOX+hPvf9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVedY-00000009Pix-1m3Q;
	Thu, 01 Feb 2024 21:30:20 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVedV-00000009Phl-49zf;
	Thu, 01 Feb 2024 21:30:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=n9vCqnQ6kLBE0f/I+0hHoajVVyErt59ig2/HWfGH0AA=; b=zxmqXiyXFy7SLUTKfKDL3w89pd
	oZb7jeslnq2ro4bmDEpZb9hGEa2BgVxzuEcILzPX7uMaWphgfNsfqBja0UV+QqPgO0z0esv1Zcg8A
	ovckSI8Sp6N5+RWLIx52C5a28/YKrK5qgGV0N3S8MTLrih4qMkWmWvpGcPy/jWy3US9w=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rVecz-006ixF-4T; Thu, 01 Feb 2024 22:29:45 +0100
Date: Thu, 1 Feb 2024 22:29:45 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Christina Quast <contact@christina-quast.de>,
	Miguel Ojeda <ojeda@kernel.org>,
	Alex Gaynor <alex.gaynor@gmail.com>,
	Wedson Almeida Filho <wedsonaf@gmail.com>,
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Benno Lossin <benno.lossin@proton.me>,
	Andreas Hindborg <a.hindborg@samsung.com>,
	Alice Ryhl <aliceryhl@google.com>,
	FUJITA Tomonori <fujita.tomonori@gmail.com>,
	Trevor Gross <tmgross@umich.edu>,
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
Message-ID: <6725eeac-45ee-4f3f-a612-0ef5725b9fd9@lunn.ch>
References: <20240201-rockchip-rust-phy_depend-v2-0-c5fa4faab924@christina-quast.de>
 <20240201-rockchip-rust-phy_depend-v2-3-c5fa4faab924@christina-quast.de>
 <2024020105-bankroll-opium-a6e5@gregkh>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2024020105-bankroll-opium-a6e5@gregkh>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_133018_054556_79CDCEB5 
X-CRM114-Status: GOOD (  16.09  )
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

On Thu, Feb 01, 2024 at 10:23:03AM -0800, Greg KH wrote:
> On Thu, Feb 01, 2024 at 07:07:00PM +0100, Christina Quast wrote:
> > This is the Rust implementation of drivers/net/phy/rockchip.c. The
> > features are equivalent. You can choose C or Rust version kernel
> > configuration.
> > 
> > Signed-off-by: Christina Quast <contact@christina-quast.de>
> Cool, but why?  Is this going to happen for all phy drivers going
> forward?  What's the end-game here, dropping all .c phy drivers that are
> in rust?  Or having duplicates for all of them?

As one of the PHY Maintainers, i would say no.

Now we have an example, i think we should be a lot more strict about
what we actually merge. It should be a driver for hardware which does
not have a C driver.

We cannot drop C drivers since Rust at the moment does not support all
architectures GCC/Clang does. PHY drivers are architecture
independent, and in real life used on multiple architectures. When
Rust eventually catches up, we could consider dropping C drivers when
there is an equivalent Rust driver, but from what i hear, that is a
few years away. I don't want to be supporting a C and Rust driver for
the same hardware.

     Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
