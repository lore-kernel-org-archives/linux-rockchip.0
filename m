Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14817E81A25
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Feb 2026 15:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bsjBTqUWlM/MnkzyLz9QfK0d8gOBn1ie9GT3IFqW4qc=; b=kc4/dGf71YR0C2
	+dfGcN+6plj7G9pUP5DoaIyYKL4pmd2eooLt9TOLd3F0IalZ+KKuwFyhpD58mC6ROV/RpqVLYCBBN
	2wT+0/FtRercT/p5T0v5BWs7L9UCSoKfUivtKfCMrnUBMR9C4qddbDeTQBOen0ayeRQHzco/Ckfmb
	Rp1PSSNK94kDpX4PuTMwo8ZhQ1nomPoEoCVqFxCOpQMVmN9/uaUwFMTuHsXhEIXE44xIXj3mWUWuy
	Hbr6SrLoOUW684MxnZCJ49FlalynjfrlWT742+/8gvqQ9x55k0X4yvigQx+/cpwQVTY3m2lnEWOYc
	X2e3eUi6sQ+Pzf/SHlgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs06O-00000006q7o-2fYF;
	Mon, 16 Feb 2026 15:01:32 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs06K-00000006q6Q-3Zti;
	Mon, 16 Feb 2026 15:01:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=fZ0BCqVUH5xPPVxomeaJKF0H4wRC7cRMGuNTgfAR7WI=; b=w6PjxASXJb/jnKoq7U4mc7F09F
	M+xmz3gOYR7Ca1HJInWEsV5zH2bW7wTOmUURs8Iqd/CedefWZsl40Eml0ThMfyZS96rueKMgBG4zv
	Z3GYZTxYKJKEl1eD6d/vndPPB7BzF8znThFBD5KMyrGoWDlc50i6brFtlE32V91VSFrC/qEaiauFh
	LgDo4370TZ7ofHrDPYb31I8cSwTfqRp4vVCbBly/4F8zr87B0JN3GmwCfaL9Df0ReNWQYLYuZZ/ZA
	/dJjNkCQ+lPvU0WaSAfDlkFOELE+aN5C3/GsLc2AgZRHIp306ODXzaPchHtcOCqIKglF+c+m5/O7W
	GOxrcLrQ==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:47910)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vs05t-0000000073K-1oiw;
	Mon, 16 Feb 2026 15:01:01 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vs05p-000000000K6-2pxV;
	Mon, 16 Feb 2026 15:00:57 +0000
Date: Mon, 16 Feb 2026 15:00:57 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
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
Message-ID: <aZMxKdkl2Qa7e1WU@shell.armlinux.org.uk>
References: <aY9s5PXP4zZ7R6fa@pie>
 <aY9xsslT56D9LGLe@shell.armlinux.org.uk>
 <f1e047e1-3f1c-4562-ab43-af2fe358fe04@lunn.ch>
 <aZDGsJNLZIty0242@shell.armlinux.org.uk>
 <a4aebacc-c273-4e42-97ff-0cdd88d771dd@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a4aebacc-c273-4e42-97ff-0cdd88d771dd@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_070129_185928_C75FA0B4 
X-CRM114-Status: GOOD (  15.86  )
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

On Mon, Feb 16, 2026 at 02:57:48AM +0100, Andrew Lunn wrote:
> On Sat, Feb 14, 2026 at 07:02:08PM +0000, Russell King (Oracle) wrote:
> > On Sat, Feb 14, 2026 at 05:50:15PM +0100, Andrew Lunn wrote:
> > > Rockchip have recently started adding support for a new version, and
> > > appear to of listened to what we have been saying. So it could be the
> > > next generation of chips get this correct.
> > 
> > Have you seen any proposed code from Rockchip for their new scheme?
> 
> There was a patch, including a rather odd formulae to convert register
> value to delay. I gave some feedback, but it has been silence
> afterwards.

Searching lore's netdev archive doesn't seem to bring anything up.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
