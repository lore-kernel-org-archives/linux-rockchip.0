Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB9F5C4828D
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 21:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zx3igjCCz6Ckh4hamLrjsfNHI0sstje+0zMkaunaoWI=; b=PUQ9QVYzbx7zw+
	6uZ39VeZNQI9JfD7MIKRGbpqkcZWxIZQDFu+UsXQ0xBA/GxlWfJxnmt6hyZpP4TlwYTIkZRPtjezs
	o7Lj8U0+i03qtVv054JcoUYVz+2fnKIkj44GEAtiNg2c1Z4o5zO/pTNrCb9gDyrnnPKi/aer0Tzuj
	xlkI4xaECMrAUMGCyiwpNG4HKi893UzBrxI0ehQpShaLUSWmMWLykEL01R70TtEaC6n/FiLzWVfxG
	/2rNCDMgVJaG8VpKEaZw8qS1HqAWztsd3sMgXHDtvPf+6CP0fGtOjUxaF+UaA8jJovUTWiOo3g96c
	PCJrtiwV6PUUnjtvansg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVegd-00000009QF7-3nW4;
	Thu, 01 Feb 2024 21:33:31 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVegb-00000009QEY-0esK;
	Thu, 01 Feb 2024 21:33:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=B3OEY63cwbO4YybUSmVo7dQCRT2Z2Gq0tUVDWFfTub0=; b=XdYuMRNlzfxtCYfazJe+UjRaZ4
	iM9J5rNL7JiJR/FbjgoKUEuOaf5SS1gvSWBr2oIWB8eegdyGcI98KWiv/DTzwKlGHu26X3X2fhTJY
	/CzKpiALqEyBvwAoFu6bCEl0xf8N25/IMgPRHphWP8AGXHvEI8ec747SP318i9Vv15kY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rVegH-006izN-TG; Thu, 01 Feb 2024 22:33:09 +0100
Date: Thu, 1 Feb 2024 22:33:09 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Christina Quast <contact@christina-quast.de>
Cc: Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
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
Subject: Re: [PATCH v2 0/3] Add Rust Rockchip PHY driver
Message-ID: <123204c4-9fe9-42d4-9555-bd421494c0e1@lunn.ch>
References: <20240201-rockchip-rust-phy_depend-v2-0-c5fa4faab924@christina-quast.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240201-rockchip-rust-phy_depend-v2-0-c5fa4faab924@christina-quast.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_133329_221246_9D782D2C 
X-CRM114-Status: GOOD (  14.87  )
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

On Thu, Feb 01, 2024 at 07:06:57PM +0100, Christina Quast wrote:
> Based on the example shown in drivers/net/phy/ax88796b_rust.rs, I ported
> the rockchip phy driver to Rust. The code in drivers/net/phy/rockchip.c
> was basically rewritten in Rust.  The patchset includes changes to
> phy.rs, adding more struct driver functions for the abstraction with
> Rust.
> 
> The driver was not tested on real hardware, because I do not have a
> board with this phy, and I would appreciate it if somebody could try
> out the driver on their board.

As a general point, please post such code RFT. Also adding RFC would
be good, and explain what sort of comments you are requesting.

    Andrew

---
pw-bot: cr



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
