Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2C95C25B08
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 03:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wX1KCmtbrriblIm1fBppW/B6EvELBzSoPcOwXqcoqok=; b=ZuTFMZo4c22A9oDX/nwi66/ijc
	bUaIzRUBWKzA1wEqQ8AKougi13oSPcYrfCB0+8L8RWBikfWFGyC06fIgMw/VpfgUD4FF6rkrkYlDv
	wlP4j92xG8xYjdiNs0XsF4QUcxN7HxtQ9m4w6kmhaCSVY5mnSEhFryfypRuxWdJ8UzZkU8oYS01k8
	JbAFoKUy1CtbZU5Pd66EXJtzhLni7RLaOv2eyvnaH8WIR5VmapUomGaj2Qz4Gd7JygHznXfTJ2Qzg
	5kZ05KI0jGV7datpnaDN+kiMJYHGmLDY0iw7FJT7DAsUy5b/d00GelIcicNwyGMHcfF5t6WYoK1Im
	8YiQVCOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQKnT-001gmA-DX; Tue, 23 Aug 2022 03:41:47 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQKnE-001gWU-HB; Tue, 23 Aug 2022 03:41:34 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id A39315C0092;
	Mon, 22 Aug 2022 23:41:31 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Mon, 22 Aug 2022 23:41:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1661226091; x=
	1661312491; bh=CMNLfcQRTj+R28UNum+p5/OqksTiYz6SjnJF3Y4QVwY=; b=g
	iec6xGS2SDGO/srHmwmwyqEY2qWm50F//hhHCnZXzxXMIHOcIw/ljny2ZZ5QMPQ6
	clyI9zIih+F0xmKJ3n2j8Hac+S1onHhSNYYcMVqFXkhEC24/U7P4k4HUy6AAU1xe
	Y7xVIFcm4JK10TKcfnSavjae/5Nk+YdnI0rfuQIaiJpAaH2D4L5pdMxqITs6NPrP
	gSEl3P0jFQT2cP5/gapfAruXtMdWouuJLYr4427rpfyqrL67Ht7zuFtj0iIXN02a
	x9VIuchP8CYw3i4RV3cBGk6H+jxOliDJv9lj0cf2r2xuuCDcOr03c3lBHM7EaaV9
	muHBBctmfM7n2xVlTbfiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1661226091; x=
	1661312491; bh=CMNLfcQRTj+R28UNum+p5/OqksTiYz6SjnJF3Y4QVwY=; b=w
	dNcQ2x7HmD0yyo0TwNZVVB3qQKK4knWsAf4E3YA7svjT1orCPyKSM9uAdwMqTDsY
	xRcotgvTt5Eq7SHdNbpl60hLvOgBtpEBrlqfTDJkgLdkYDV8uWKh/0zH65aMmlnz
	ctuZps/Vwoi+mZ32D4V7dYd9Zf+mqNIhngWSwNx8a4OawHve+J5VT2Ol8Z+l1m98
	J9zB2Aw+DRni5/75COJhDbZi0j3LBWPXz/gTCfzxNGP2N5SQDSNXxsJt8UbLHVmh
	cNysNe65zH2+ozWa69qLvVd9K5YISlMu6ZlwEEs55Uq7kHTCN9R4zL8+GDEKuFRW
	LmPOYMVNsjnKAGOmxJUjQ==
X-ME-Sender: <xms:a0wEY6zjQlrt8sNBp02vqJD8uoABqp_bSbovD6Dg3UV6xtg9Joa6Jw>
    <xme:a0wEY2SUjdm7vbIbm2mCi6aWkxpQvhree_HKJKI7ZQa5rgMt6cLpOrVb3HZrt8sQH
    mZmRYTac2gBALSAPg>
X-ME-Received: <xmr:a0wEY8VeKlDOuwSzlDqWfQymwZM_T1o6onXxPvm4wLDzRsp8WjvEUxDs_Xj7uurF95rAqPMJh14yMKJHz5lXqNG2IL9N8crQ-TlO3P4cgbfCd11BWS4_L_VUXQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeikedgjeehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepuffvvehfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghm
    uhgvlhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenuc
    ggtffrrghtthgvrhhnpefftdevkedvgeekueeutefgteffieelvedukeeuhfehledvhfei
    tdehudfhudehhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:a0wEYwjErqu3ZtDXtTUU7Ytcu3iV22HI94dNQ5Io-SM7ZAEGkx0jIQ>
    <xmx:a0wEY8BrLAFV-6I4C17YTL9UlTlIOedx6rScKHNu-u5HKiikz77n0A>
    <xmx:a0wEYxL9nr5RZNKLMTN6t0S-1uT5PrlxNrEedx01mmOyKtavJq8MjA>
    <xmx:a0wEY42CcrguKp_39qRLmc68NiGPnvjpXMCgU1nrf-sD3wcpW7Nzog>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 22 Aug 2022 23:41:30 -0400 (EDT)
Subject: Re: [PATCH] phy: rockchip-inno-usb2: Return zero after otg sync
To: Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Markus Reichl <m.reichl@fivetechno.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220822103219.3985075-1-pgwipeout@gmail.com>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <717fe4e0-ef9c-edef-80d1-caeeae1319b9@sholland.org>
Date: Mon, 22 Aug 2022 22:41:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20220822103219.3985075-1-pgwipeout@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_204132_906609_E74D162A 
X-CRM114-Status: GOOD (  15.90  )
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

On 8/22/22 5:32 AM, Peter Geis wrote:
> The otg sync state patch reuses the ret variable, but fails to set it to
> zero after use. This leads to a situation when the otg port is in
> peripheral mode where the otg phy aborts halfway through setup. Fix this
> by setting ret to zero after use.
> 
> Fixes: 8dc60f8da22f ("phy: rockchip-inno-usb2: Sync initial otg state")
> 
> Reported-by: Markus Reichl <m.reichl@fivetechno.de>
> Reported-by: Michael Riesch <michael.riesch@wolfvision.net>
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
> Tested-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index 0b1e9337ee8e..5fc7c374a6b4 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -1169,6 +1169,7 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
>  			/* do initial sync of usb state */
>  			ret = property_enabled(rphy->grf, &rport->port_cfg->utmi_id);
>  			extcon_set_state_sync(rphy->edev, EXTCON_USB_HOST, !ret);
> +			ret = 0;

The bug was caused by the unexpected consequence of (mis|re)using the "ret"
variable for a temporary value. Please introduce a new variable here, else the
use of "ret" is even more confusing. This code also wipes out any error returned
by devm_extcon_register_notifier().

Regards,
Samuel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
