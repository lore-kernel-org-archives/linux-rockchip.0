Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2BECD7360D
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Nov 2024 20:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/Jc9gUH7KDazDHN3bvL3MXYLlacQi74+FHMjMSWUYM=; b=VtdObpu35u9FHY
	4SqxzUS9lfpiK1NT4J9+KifvjkQ0Bwu3l9PKHS0yoXuM4ynm+PUF74dU2Z7hvLoMiVESON2FT6pvS
	IresVcoCVaZ+5FqiJ/38YQVKlGq636zYnt6ByO5Y4LthZ6QtqAdqZu81QYE/YLxsJ6l7ulFvlmfUu
	EiyC9aQ8zo+1+B22FTUmNTdRVkfG0D2m260zHJ/0ATN3TzWjbVi9i8lEo9d47p0VaenfkyERDTb3J
	OJrreoz9L7fFiAnupzARewnvdpOcuKommn1qbIc9S+qS79carRu+XueU7nrHqCdgP4yZjL26RUamv
	fB/bYpEC/3e+97x2U81g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHU2x-00000002XJj-0GnU;
	Sat, 30 Nov 2024 20:26:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHU1x-00000002XDe-0llL;
	Sat, 30 Nov 2024 20:25:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=7zLaGCMDGsCJKOc1IwLPI+bZJjfcisw70zunW0yk10M=; b=0zKLputJip9nTRlXLWyCCTQ13n
	1f/TZEKJPD/pkyR4NLE51GUwc7dCni98FZE/XXSaF9f0Ih5jKhQoUMWm2vcG4vAw95L/qERg2x67l
	S/tTkfeWDzDr38USyDKIzP6O9sjp1tWRMpBoYORU8GccFAXgGaqL2rwEihHXg2QhAixwg/fPfAK3K
	7ivms/2XXWzV6dkE8eX6HVMxNkZjX2yXpXFVz193aqEhvOG2i6w8TylQrCdRgFrKRB4K/6hv9tCPj
	7egDlw08oLvW1tEHuAJv819qMZFd1gnkaBft7CofvqxX6l9FROxThpBfvGdWuUY9VXvjqqFZCoPh1
	B4GIpIOg==;
Received: from i5e86190f.versanet.de ([94.134.25.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tHU1h-0005Ux-7S; Sat, 30 Nov 2024 21:25:13 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v1 04/10] phy: phy-rockchip-samsung-hdptx: Add support for eDP
 mode
Date: Sat, 30 Nov 2024 21:25:12 +0100
Message-ID: <2886747.Y6S9NjorxK@diego>
In-Reply-To: <6e1f35c0-5ea8-414f-b3ea-4e7222c605ef@rock-chips.com>
References: <20241127075157.856029-1-damon.ding@rock-chips.com>
 <2131853.KlZ2vcFHjT@diego>
 <6e1f35c0-5ea8-414f-b3ea-4e7222c605ef@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241130_122529_212988_D02BD88E 
X-CRM114-Status: GOOD (  24.21  )
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

Am Freitag, 29. November 2024, 03:43:57 CET schrieb Damon Ding:
> On 2024/11/27 19:04, Heiko St=FCbner wrote:
> > Am Mittwoch, 27. November 2024, 12:00:10 CET schrieb Damon Ding:
> >> On 2024/11/27 17:29, Heiko St=FCbner wrote:
> >>> Am Mittwoch, 27. November 2024, 08:51:51 CET schrieb Damon Ding:
> >>>> +static int rk_hdptx_phy_set_mode(struct phy *phy, enum phy_mode mod=
e,
> >>>> +				 int submode)
> >>>> +{
> >>>> +	return 0;
> >>>> +}
> >>>
> >>> I think it might make sense to go the same way as the DCPHY and also
> >>> naneng combophy, to use #phy-cells =3D 1 to select the phy-mode via D=
T .
> >>>
> >>> See [0] for Sebastians initial suggestion regarding the DC-PHY.
> >>> The naneng combophy already uses that scheme of mode-selection too.
> >>>
> >>> There is of course the issue of backwards-compatibility, but that can=
 be
> >>> worked around in the binding with something like:
> >>>
> >>>    '#phy-cells':
> >>>       enum: [0, 1]
> >>>       description: |
> >>>         If #phy-cells is 0, PHY mode is set to PHY_TYPE_HDMI
> >>>         If #phy-cells is 1 mode is set in the PHY cells. Supported mo=
des are:
> >>>           - PHY_TYPE_HDMI
> >>>           - PHY_TYPE_DP
> >>>         See include/dt-bindings/phy/phy.h for constants.
> >>>
> >>> PHY_TYPE_HDMI needs to be added to include/dt-bindings/phy/phy.h
> >>> but PHY_TYPE_DP is already there.
> >>>
> >>> That way we would standardize on one form of accessing phy-types
> >>> on rk3588 :-) .
> >>>
> >>> Also see the Mediatek CSI rx phy doing this too already [1]
> >>>
> >>>
> >>> Heiko
> >>>
> >>> [0] https://lore.kernel.org/linux-rockchip/udad4qf3o7kt45nuz6gxsvsmpr=
h4rnyfxfogopmih6ucznizih@7oj2jrnlfonz/
> >>> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t/tree/Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml
> >>>
> >>
> >> It is really a nice way to separate HDMI and DP modes.
> =

> I apologize for reopening the discussion about the phy-types setting.

there is definitly no need to apologize. We're trying to find the best
solution afterall :-) .


> With the .set_mode() of struct phy_ops, the HDMI and eDP dynamic =

> switching can be achieved, which just depends on the right setting of
> enum phy_mode in include/linux/phy/phy.h. So the previous way of =

> configuring phy mode may be also good.

I think the deciding factor is, is there a use-case for needing to switch
modes at runtime.

I do think the mode for the dc-phy and also the hdptx-phy is pretty much
decided by the board design.

I.e. when you end up in a DP-connector (or eDP-panel) on your board you
need DP mode, and when you end up in a hdmi-connector you need the
HDMI phy mode.

So I think the phy-mode for the hdptx-phy is largely dictated by the static
board definition (like devicetree), hence going with the dt-argument for
the mode.

Like similar to the Naneng combophy, selecting its mode via argument
because deciding if it ends up in a sata port is a board-design thing.


Is there a use-case where you need to switch at runtime between
hdmi and eDP? Like starting the phy in eDP mode but then needing
to switch to HDMI mode, while the device is running?


> And other phys may want to support dynamic switching too, like the =

> Rockchip USBDP combo phy.

I guess USBDP is special in that in also does both modes dynamical
depending on its use (like type-c with option DP altmode)


Have a great weekend
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
