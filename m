Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEA02C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Apr 2022 08:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xcr4NOAIHpr2WHHUWqNDlxYA0xmejmoQbrCT1UEo0PI=; b=trsRO+MxNuXcRS
	5AmABCcbicNLYgHpwwIXuvkenNz/SvdFjjU7q0l6/9F6qng8w02Hn45MWu5t4XMSBZy5WXptpEdE8
	SIf4fmXsylX/XKE9iFt0RSF4mOawYmNj6BWX+XoyBLyTX4qQ7aDi02ZM0m40SNp/nH74scbbvwvTZ
	oMtO8c3MbfzVB6aIjc0lLIp47RcGS7sBlyqbgoDkzuRlcx4VYDeZNILZuvLJAlDJ0FYSSB8tVeMPM
	NQTJz+AOLDKORseiYFa8h6zJPI5nh2Vy8tD1N2tfXXknWoxqk4g2Dn1JerSsDHV0uRqXgGOpUUhUh
	UKyk2Sw1+7tq9gJ0wprQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neueU-004Uor-3t; Thu, 14 Apr 2022 08:16:30 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neueQ-004UnE-Gr; Thu, 14 Apr 2022 08:16:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6YMpm44acphdMuRGEx9DBy3vdiDjBzEpIjiQ/MN8cI8=; b=V9L2VcKqDpUCMVFPhIRU+cC5lb
 oAwHcN+Gl9Km7FecMITzEBk68MACkuskRzc8YFegR19juSR6D5IlIy5TMpvyvvxryCW3ez4S9ohqW
 LCCE67T+Osu8LzvuSYSKaMbSy7iJByDg7CZ4WXB2mTnx6fIz2AHiV8wXfEoNWuRPB1Fc=;
Received: from p200300ccff1771001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff17:7100:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1neudp-0001ui-UW; Thu, 14 Apr 2022 10:15:50 +0200
Date: Thu, 14 Apr 2022 10:15:48 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Samuel Holland <samuel@sholland.org>
Cc: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>, Sandy Huang
 <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Alistair Francis
 <alistair@alistair23.me>, =?UTF-8?B?T25kxZllag==?= Jirman <x@xff.cz>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, Geert
 Uytterhoeven <geert@linux-m68k.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Liang Chen <cl@rock-chips.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, Nicolas Frattaroli
 <frattaroli.nicolas@gmail.com>, Peter Geis <pgwipeout@gmail.com>, Rob
 Herring <robh+dt@kernel.org>, Sam Ravnborg <sam@ravnborg.org>, Thierry
 Reding <thierry.reding@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH 02/16] dt-bindings: display: rockchip: Add EBC binding
Message-ID: <20220414101548.2b9c3dad@aktux>
In-Reply-To: <20220413221916.50995-3-samuel@sholland.org>
References: <20220413221916.50995-1-samuel@sholland.org>
 <20220413221916.50995-3-samuel@sholland.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220414_011626_744464_C8EA9DE0 
X-CRM114-Status: GOOD (  14.22  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Samuel,

for comparison, here is my submission for the IMX EPDC bindings:

https://lore.kernel.org/linux-devicetree/20220206080016.796556-2-andreas@kemnade.info/

On Wed, 13 Apr 2022 17:19:02 -0500
Samuel Holland <samuel@sholland.org> wrote:

[...]
we have sy7636a driver in kernel which should be suitable for powering a EPD
and temperature measurement. So I would expect that to be 
> +  io-channels:
> +    maxItems: 1
> +    description: I/O channel for panel temperature measurement
> +
so how would I reference the hwmon/thermal(-zone) of the sy7636a here?

> +  panel-supply:
> +    description: Regulator supplying the panel's logic voltage
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  vcom-supply:
> +    description: Regulator supplying the panel's compensation voltage
> +
> +  vdrive-supply:
> +    description: Regulator supplying the panel's gate and source drivers
> +
SY7636a has only one logical regulator in kernel for for the latter two.

If we have a separate panel node, than maybe these regulators should go
there as they belong to the panel as they are powering the panel and
not the EBC.

> +  port:
> +    $ref: /schemas/graph.yaml#/properties/port
> +    description: OF graph port for the attached display panel
> +
In my approach for the IMX EPDC, (I will send a better commented one
soon) I have no separate subnode to avoid messing with additional
display parameters. Not sure what is really better here.

> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - power-domains
> +  - panel-supply
> +  - vcom-supply
> +  - vdrive-supply

If things differ how the different phyiscally existing regulators are
mapped into logical ones (even the vdrive supply is still a bunch of
physical regulators mapped into one logical one), then not everything
can be required.

Regards,
Andreas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
