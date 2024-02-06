Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB697C4828D
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Feb 2024 23:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=quJjruEH4l4sW/yF0vyK1dP2GOgCP8We50OuIYthGdM=; b=QxuaL47xhpauqV
	BMqSL1FCV4l3Q1+ngsQAcKffjH36w0SGU6AUjlVErOKq6f4PBDhsVGyEOpAlsu6R59HRm/O0bSfMX
	7u8rbP9/1sqJmO8D3ueG7O3WcgphVhO0/YXrVMczJcXjkoOKthtTDE5HUnbI+ny7Klf+Z5ayIwli/
	niEoXIF4Xza98BbjLXT4mkYmR+Ry54inMkJYzmxpCPYV5gtU5/YdBXrtpJFa9YlRCSOZAv3FBMxZq
	ykU+dApHjK3ODZFtgGbM9sKk5SJglnZjuRxwwRh34G8YqFdGEK0yCBm16Pmqde5AH5ThPMif1Mtb3
	K4pKsr2EGJLZHNpMBvsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXURI-000000098Pw-1TEg;
	Tue, 06 Feb 2024 23:01:16 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXURF-000000098PG-1Z9p;
	Tue, 06 Feb 2024 23:01:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=SPTt7oR80AXopIqc8+4lr98M7p1eXFt9rIgm1PC5o50=; b=fQrdi6qPz/zge9lAr3PYPcDhWX
	wgsdjTy6Y9dfZKxU31mz5TfYs83AxSbxnZsNk7jea/wFJC0w1dwy577REAke3LBptq8c4PGLkP/Yi
	vQiUhZim6exUJ1Fb83XryCA1YOXZE3oEIOC+N942NdhvoXg5bkw3z6xFFXVbKUrrNPbc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rXUQj-007Axh-DB; Wed, 07 Feb 2024 00:00:41 +0100
Date: Wed, 7 Feb 2024 00:00:41 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Trevor Gross <tmgross@umich.edu>
Cc: Christina Quast <chrysh@christina-quast.de>,
	Shashwat Kishore <kshashwat13@gmail.com>,
	Christina Quast <contact@christina-quast.de>,
	Miguel Ojeda <ojeda@kernel.org>,
	Alex Gaynor <alex.gaynor@gmail.com>,
	Wedson Almeida Filho <wedsonaf@gmail.com>,
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Benno Lossin <benno.lossin@proton.me>,
	Andreas Hindborg <a.hindborg@samsung.com>,
	Alice Ryhl <aliceryhl@google.com>,
	FUJITA Tomonori <fujita.tomonori@gmail.com>,
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
Message-ID: <8a95a80f-55da-4606-a55c-59b63a249178@lunn.ch>
References: <20240201-rockchip-rust-phy_depend-v2-0-c5fa4faab924@christina-quast.de>
 <20240201-rockchip-rust-phy_depend-v2-3-c5fa4faab924@christina-quast.de>
 <CALNs47tnwCgyvM2jBo=bTt1=2AJFt3b6W+JsTHM3Np2tbNJYCA@mail.gmail.com>
 <eb229460-0efc-448a-863f-ac0634a72f2c@christina-quast.de>
 <CALNs47tfmcayLdbLbArPS=AHwETiaQKZ09h69_Q4HmfrMPk4-A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALNs47tfmcayLdbLbArPS=AHwETiaQKZ09h69_Q4HmfrMPk4-A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_150113_435009_AC090478 
X-CRM114-Status: UNSURE (   8.85  )
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

> Andrew might have some ideas too. There are a lot of new phys coming
> out since MACsec is getting more popular, also some newer specs like
> 10GBase-T1 and 10Base-T1S.

Those can also be hard to get hold of, unless a vendor is interested.

Another source to look at might be OpenWRT and DD-WRT. These projects
are not always good at upstreaming. They sometimes just use the vendor
crap drivers. See if they have any PHY drivers for devices not in
mainline. Any they do have should be for COTS hardware you probably
can buy off the shelf.

    Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
