Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D18CD609D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Nov 2024 11:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tbJ2GGjAmTBRuCgw+/HcJBQ2Hta5R5DuIGaU/XtB7LE=; b=iGqAhrLfOwsf+p
	UGfM93Qoopho6N4n7YzVngpwao/AEETNi6Hf9juVGNAxfMWwDX9lcCnuMauv3FZdB3WYULDoVM4Fq
	RF70QZC24vdgeQYLM6ZH6XZKjetfXAzl8gvoDCW4L0HOGDFDhKR+K/ag31b4Ut3IzlKZeSM5b6Vnz
	e6Batjggg7ZkYva5AwfcYANOoEHXzRB8fIi37/T7A1yjoGFlr4MXKD/yfaTMoBZJaFT8mHTbgTCmY
	pxYpbPOrzDSd8qUNW6XPkAQudxwfcwvaBingJ9q9wk3Fz76PfYEzMA3LO8HMExCqKWeH3s9F3DM1M
	HAAZg56T/U77ntpklvow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGG3M-0000000CyrD-10ON;
	Wed, 27 Nov 2024 11:17:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFqu-0000000Cwic-2Sy9;
	Wed, 27 Nov 2024 11:05:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=dwDmA6skYXcjb+3giHmONmMK1TWUq1rfdu1TdOWnKkM=; b=jC4Qf6Z34pla9wt4LKBGTlfWtf
	cWD+9s5TgURjpIWz0uM9A3O5+0FIPGktRKmtjnI7ram+gnDjCNigmqEAkMq5OuM5A+zcpE5Q/BpIk
	i+pKu4k5i1jzBh4BZnr94KiJEJYGgzgQ2+n0OZDfnISGiOpQpM4Ejwq+/AepupXeZ1eIHfXgpNVyT
	weWadve+G1HSIgiRejBUud034nzQ/UqdsLCqL2kmItTErhbTBYq/hALKnP1A45xL1GG1zc5Pvpn50
	fbhKGBDsKEUvjsZ1OWsRmhJNnsvzNcHB+f84hCOYYqDHg/Ph6JWOWH7XjmnRrbXIUFwwnvnKACHT2
	DPINEu5g==;
Received: from i5e86190f.versanet.de ([94.134.25.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tGFqj-0000Hk-5v; Wed, 27 Nov 2024 12:04:49 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v1 04/10] phy: phy-rockchip-samsung-hdptx: Add support for eDP
 mode
Date: Wed, 27 Nov 2024 12:04:48 +0100
Message-ID: <2131853.KlZ2vcFHjT@diego>
In-Reply-To: <8df0acc8-b7aa-453f-b55c-30144f51d7cf@rock-chips.com>
References: <20241127075157.856029-1-damon.ding@rock-chips.com>
 <4260470.1IzOArtZ34@diego>
 <8df0acc8-b7aa-453f-b55c-30144f51d7cf@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_030500_619101_84E53088 
X-CRM114-Status: GOOD (  31.53  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Damon,

Am Mittwoch, 27. November 2024, 12:00:10 CET schrieb Damon Ding:
> Hi Heiko:
> =

> On 2024/11/27 17:29, Heiko St=FCbner wrote:
> > Hi Damon,
> > =

> > Am Mittwoch, 27. November 2024, 08:51:51 CET schrieb Damon Ding:
> >> Add basic support for RBR/HBR/HBR2 link rates, and the voltage swing a=
nd
> >> pre-emphasis configurations of each link rate have been verified accor=
ding
> >> to the eDP 1.3 requirements.
> >>
> >> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> >> ---
> > =

> > [ ... huge block of DP phy support ...]
> > =

> > yes that block was huge, but I also don't see a way to split that up in=
 a
> > useful way, so it should be fine.
> > =

> =

> As for the huge block of DP phy support, I will try to use the existing =

> rk_hdptx_multi_reg_write() to set regs in next version, maybe the way =

> can make the codes more concise.

I actually did like the the dp-side of the phy code.

That you need to add all the DP stuff can't be helped and I actually find
real functions nicer than having anonymous register writes.

I.e. the hdmi-side with its register lists does write "magic" values to
registers.

So personally I'd just leave the dp-functions as is please, until someone
does complain (I was not trying to complain, just mentioned why I cut
it from the reply :-) )


Thanks
Heiko


> >> +static int rk_hdptx_phy_set_mode(struct phy *phy, enum phy_mode mode,
> >> +				 int submode)
> >> +{
> >> +	return 0;
> >> +}
> > =

> > I think it might make sense to go the same way as the DCPHY and also
> > naneng combophy, to use #phy-cells =3D 1 to select the phy-mode via DT .
> > =

> > See [0] for Sebastians initial suggestion regarding the DC-PHY.
> > The naneng combophy already uses that scheme of mode-selection too.
> > =

> > There is of course the issue of backwards-compatibility, but that can be
> > worked around in the binding with something like:
> > =

> >   '#phy-cells':
> >      enum: [0, 1]
> >      description: |
> >        If #phy-cells is 0, PHY mode is set to PHY_TYPE_HDMI
> >        If #phy-cells is 1 mode is set in the PHY cells. Supported modes=
 are:
> >          - PHY_TYPE_HDMI
> >          - PHY_TYPE_DP
> >        See include/dt-bindings/phy/phy.h for constants.
> > =

> > PHY_TYPE_HDMI needs to be added to include/dt-bindings/phy/phy.h
> > but PHY_TYPE_DP is already there.
> > =

> > That way we would standardize on one form of accessing phy-types
> > on rk3588 :-) .
> > =

> > Also see the Mediatek CSI rx phy doing this too already [1]
> > =

> > =

> > Heiko
> > =

> > [0] https://lore.kernel.org/linux-rockchip/udad4qf3o7kt45nuz6gxsvsmprh4=
rnyfxfogopmih6ucznizih@7oj2jrnlfonz/
> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/=
tree/Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml
> > =

> =

> It is really a nice way to separate HDMI and DP modes.
> =

> > =

> > =

> > =

> > =

> =

> Best regards,
> Damon
> =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
