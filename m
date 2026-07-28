Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A73CC53219
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 20:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGZnVKh8rL4cMguPzDDStXvz0mQ0hZQe6OrQT3MxslA=; b=Tc/rA20v43V4rt
	SGckBas1MKWXh/Tsx9KMCynDawsfhSlikjKTIrUG50iRjmfig7HpLtfNL/qL773d4dHkvXxTnvlBW
	oepOX5NgmuWIhrDu2EzzfwTgagFZw1ECI+cRKKImav2F0BE1NDWnjiaBWl6sprlWp3ebhx+QR3v4G
	HawryOGVHO1JNtopOdUuCGND/kgSWN0dImmWFCohsgRW9Jpw7H9TUi4L4CqDgG24MxMmU2V9NQs9l
	1DFSY2Iytfb08yMdHslz38ozkr5nagL77BAVKEdXakAAmd3TUWIvixA7b46NQGk1Ifqbn3MZDbN3g
	vTRfHXPWDzEMlWGDyn7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woopL-00000006Evi-2au6;
	Tue, 28 Jul 2026 20:55:03 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woopJ-00000006Euq-1Wk9
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Jul 2026 20:55:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=ZTHaShcUtSb3SrSfg3jYBwVK3GqrBvt47fUDb+LWjF4=; b=LvCycbRoenNLtwxTEhKZFbwDIQ
	uUhmt4dD1TL2t1/HRjiXOPmjpHUCcxyNYwR9TYnHSnTcAczOmwYuqsy8YsVUTnYY+bs7d99fc6ZN/
	nyWk8GbTJFtt5qz2WvsnvX8c4zbfETM7xqvrLo1hbwmT6AYD8W2WUsJSj1qqd+gxHyik=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1woooz-00EhJ7-DK; Tue, 28 Jul 2026 22:54:41 +0200
Date: Tue, 28 Jul 2026 22:54:41 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Gavin Gao <attinagaoxu@gmail.com>
Cc: Alexey Charkov <alchark@gmail.com>, Jiaxing Hu <gahing@gahingwoo.com>,
	Frank.Sae@motor-comm.com, hkallweit1@gmail.com,
	linux@armlinux.org.uk, davem@davemloft.net, edumazet@google.com,
	kuba@kernel.org, pabeni@redhat.com, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, maxime.chevallier@bootlin.com,
	heiko@sntech.de, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH net-next v2] net: phy: motorcomm: enable the reference
 clock for YT8521 and YT8531
Message-ID: <37c2162d-134d-48c5-92d8-3355306f15ec@lunn.ch>
References: <20260727205602.1188008-1-gahing@gahingwoo.com>
 <CABjd4YwmznLERMx_DgfTeqXmOEZh=pcOjf+NYfkV069mETe-uQ@mail.gmail.com>
 <CAK2JjQVsJbC5wuLs1wFvose0S9ho6FDNPbhteveWOttE0prjeA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK2JjQVsJbC5wuLs1wFvose0S9ho6FDNPbhteveWOttE0prjeA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_135501_409540_4C6213FC 
X-CRM114-Status: UNSURE (   9.60  )
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

On Tue, Jul 28, 2026 at 09:57:32PM +0800, Gavin Gao wrote:
> Hi Alexey,
> 
> I slightly prefer keeping the helper.
> 
> This looks like a common pattern for the Motorcomm family rather than a
> YT8521/YT8531-specific detail. Other PHYs in the same series may need the
> same optional reference clock handling later, and a small helper keeps
> that path easy to reuse without duplicating the same code.

Please don't top post.

Look around at other drivers. Is it generally put into a tiny helper,
or used inline?

My gut feeling from reviewing lots of drivers is that it is inline.

    Andrew

---
pw-bot: cr

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
