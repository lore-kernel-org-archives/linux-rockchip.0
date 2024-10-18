Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1F77D2FFE3
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Oct 2024 09:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OFSqC3g769IVwqEEv+GztzKDX9YT/3W0QbTPTKA7u20=; b=ptUkFVTJzqG/fo
	6yPanH7e8nxXrOXl35AecLpzi2LCrmKDOpxLyPQOVYRdykiBY/exxObPfrlRUCOoVysNRo13X5IOJ
	s6+D1sFT7TSWpqYv5Wd7viCFMMVTkshX7OqNgx9Zmx2bqMzXWP7FWw16YnZMBrA6N/a5mtY+BiJlM
	HRnYKZYt/L4uSTVJhLL9JogdMQChGt3LgUFrPn1Q1rAggKXhNIxXSMKgAceEO4hheoXhZuZCrn7br
	4U80kscbTMiTl7WU3BUfl06bUJPc0TFGEa3x5jDbY8NBlQVLo7V6sLRrwhz3SKOTGLTGMBlbJOI5K
	fK5vGuE9QgU2RYK4bJRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1jRV-00000000DFZ-1T4r;
	Fri, 18 Oct 2024 09:38:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1jQf-00000000D9a-4737;
	Fri, 18 Oct 2024 09:37:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qouiPpn6YX1/1IcGgtK9bT+Ht7HWLyCulNlPM8Iwk6I=; b=xlOcfpWwGRohG4z1NAUaxGZA1/
	NvM1tupAENJpjtgEBrJCMbFKfDkb+/8L2uChgGznhbjIS8T47Wl8lnW1Nj3Il59B/nCAESqQ/72j7
	al51RGLk2HTgyKzXC1pclRBKepoBEQkPPPzv3ZffHXfF2oJkS+KcY80XCOG5NXlM487rTCue7yvD3
	E4gYQ1qrpCBCVWrIlw6jnTEYd73dn0CdZQ8A+GhwoqkuTCmqDLjrrJaVHy72jO8aRzGaCAOzRRUca
	8+IG+pCCSW6Ac5Kn7ifMeE6pXwtBmNg0y5K8g9xbIQF5yKu6NJnHtAPHQ6zaPtFIGf9vJNtSTe23s
	IYEugtVw==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t1jQW-00072T-2A; Fri, 18 Oct 2024 11:37:44 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/4] rockchip: Fix several DT validation errors
Date: Fri, 18 Oct 2024 11:37:42 +0200
Message-ID: <4604343.LvFx2qVVIh@diego>
In-Reply-To: <D4YTW4DVRT68.1Z97ZHDYWTKHT@cknow.org>
References: <20241008113344.23957-1-didi.debian@cknow.org>
 <D4X8GJV0W6JL.32E469JSATFEP@cknow.org> <D4YTW4DVRT68.1Z97ZHDYWTKHT@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_023754_076857_EF5B7F95 
X-CRM114-Status: GOOD (  24.48  )
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

Hey,

Am Freitag, 18. Oktober 2024, 11:35:51 CEST schrieb Diederik de Haas:
> Hi Heiko,
> 
> On Wed Oct 16, 2024 at 2:35 PM CEST, Diederik de Haas wrote:
> > On Wed Oct 16, 2024 at 11:41 AM CEST, Diederik de Haas wrote:
> > > On Tue Oct 8, 2024 at 9:28 PM CEST, Heiko Stuebner wrote:
> > > > On Tue, 8 Oct 2024 13:15:35 +0200, Diederik de Haas wrote:
> > > > > This is a set of 4 small device-tree validation fixes.
> > > > > 
> > > > > Patch 1 adds the power-domains property to the csi dphy node on rk356x.
> > > > > Patch 2 removes the 2nd interrupt from the hdmi node on rk3328.
> > > > > Patch 3 replaces 'wake' with 'wakeup' on PineNote BT node.
> > > > > Patch 4 replaces 'reset-gpios' with 'shutdown-gpios' on brcm BT nodes.
> > > >
> > > > Applied, thanks!
> > > >
> > > > [2/4] arm64: dts: rockchip: Remove hdmi's 2nd interrupt on rk3328
> > > >       commit: de50a7e3681771c6b990238af82bf1dea9b11b21
> > > > [3/4] arm64: dts: rockchip: Fix wakeup prop names on PineNote BT node
> > > >       commit: 87299d6ee95a37d2d576dd8077ea6860f77ad8e2
> > > > [4/4] arm64: dts: rockchip: Fix reset-gpios property on brcm BT nodes
> > > >       commit: 2b6a3f857550e52b1cd4872ebb13cb3e3cf12f5f
> > >
> > > Please revert the 4th patch.
> > >
> > > I must have messed up my testing previously, but BT does not work on the
> > > PineNote with the 4th patch applied and does work with it reverted.
> >
> > FWIW, I figured out what went wrong.
> > My testing was correct, but redo-ing the implementation to make it ready
> > for submission wasn't very smart.
> >
> > With ``shutdown-gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;``
> > it does work correctly, but I forgot to change GPIO_ACTIVE_LOW to
> > GPIO_ACTIVE_HIGH before submitting.
> >
> > I'll first figure out a better procedure before making a new submission,
> > so the revert is still the best approach IMO.
> 
> I've now done a new submission:
> https://lore.kernel.org/linux-rockchip/20241018092237.6774-1-didi.debian@cknow.org/
> 
> So please don't revert the 4th patch now.

hehe ok :-) .
I meant to ask if the fix wasn't simply toggling the gpio polarity, and
I guess with your patch you were faster than my question.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
