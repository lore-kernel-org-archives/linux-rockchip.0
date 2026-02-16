Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4A5CE63F1C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Feb 2026 01:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azSP8HNsKkJgzbspQDOqziGIAVX38MvaaMcpvLVhRSk=; b=2ww/4eIrPgWdi7
	CJifuwhKaZxUx9HC5RvFX8C2CQ89x9KPRS5F9LGtRiWQLxPXxwpyTpslJMlWi9fwvT6yKLNUzVTP+
	sl1OTY12uQTQ5HhRr2j2QL46/5VbNV6Bhe/HLALWLNvyIB0VxH7tZReBAbu6gUoAcLFsH6JuVqfYx
	KT3ZyfeShx+9Hd/ApH4O29+U65Rw9DITF72OxGOpSz98I6bSokI/sN/aznjDhxiZVyQttTBFhDBhx
	kYxt7F9P46QGY7WD2C0Rts4utnMGHS52o3FTo1P0srVPBW/6h2a39wFGR+m4W9YuNBZ35jIRMVE4/
	wZ2rllq2yCnZfzIec+ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrnsJ-00000005rha-41fC;
	Mon, 16 Feb 2026 01:58:11 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrnsG-00000005rhC-3R6c;
	Mon, 16 Feb 2026 01:58:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=uc89jBtcLlFdS6/M6+W3LFai5QtY7x4yNmHjHJ8jUSk=; b=nfIHjmaeZZaFa/nCmijVPvJMJZ
	X8JLzv0KLKsk05aHsVvLYYg2df7DL5rQViVc1/Uok4zGVJAUikXJaP8iwOjaOfkxHAcOzS62Xr7/a
	4x5rH4LK+GMIH9jxFfA1WU8H8HMTzCpzemZmI3K/lqqzGy1i30trWM8U3InvwBfi0RS0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vrnrw-007RYn-Tn; Mon, 16 Feb 2026 02:57:48 +0100
Date: Mon, 16 Feb 2026 02:57:48 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Yao Zi <me@ziyao.cc>, Heiko Stuebner <heiko@sntech.de>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: Problematic understanding of phy-mode in Rockchip DWMAC driver
Message-ID: <a4aebacc-c273-4e42-97ff-0cdd88d771dd@lunn.ch>
References: <aY9s5PXP4zZ7R6fa@pie>
 <aY9xsslT56D9LGLe@shell.armlinux.org.uk>
 <f1e047e1-3f1c-4562-ab43-af2fe358fe04@lunn.ch>
 <aZDGsJNLZIty0242@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aZDGsJNLZIty0242@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260215_175808_881448_353043D8 
X-CRM114-Status: GOOD (  11.87  )
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

On Sat, Feb 14, 2026 at 07:02:08PM +0000, Russell King (Oracle) wrote:
> On Sat, Feb 14, 2026 at 05:50:15PM +0100, Andrew Lunn wrote:
> > Rockchip have recently started adding support for a new version, and
> > appear to of listened to what we have been saying. So it could be the
> > next generation of chips get this correct.
> 
> Have you seen any proposed code from Rockchip for their new scheme?

There was a patch, including a rather odd formulae to convert register
value to delay. I gave some feedback, but it has been silence
afterwards.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
