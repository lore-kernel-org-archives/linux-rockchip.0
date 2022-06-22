Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E530C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jun 2022 05:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=olJfJEFbjIhwUpkXyVHsuEXAvLpguOaY8Fz9CahIpQE=; b=Cxk/jQXe+zid2VAhxbyotBvx+8
	OV3KQ2cnY/83dGh0BBR8R0bODTRM4ifu2tcVm5JQxTaIpBwzOpnZc8R9B9XM6kPkDQENZvN4qL5Nj
	qgBt7G7e40zTdgtV1fQpBxeLgHChreTd+nfeaHJsYdEZ4ppnRAx5IMX1Su2xJL4EHgN9jrkMxN5H3
	mTGzEGsg+md5P16AaVwrPTZ85VGn1tB8cSLR+jYujAAhQHuJkRhnCPkXIW20gcxE7mWCY2nvYb4Dy
	pDxP3ECAti6hEG5XLxMfzv2XtE2OmZkpHF3Cqp9PwYlwaBYk9E4KLLjVzTmvmJz/vSZ0qse39CcX5
	xpRVhfWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3sj7-008ZsA-Sa; Wed, 22 Jun 2022 05:16:29 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3siw-008ZqV-CA; Wed, 22 Jun 2022 05:16:19 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 713ED5C0085;
	Wed, 22 Jun 2022 01:16:17 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Wed, 22 Jun 2022 01:16:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1655874977; x=
	1655961377; bh=raNbZ5XrTaJju1j0bn9K1zUDHO3TU92MxD3fSTWP0rs=; b=q
	vdtq3WjDZiEK5YG9tchH647p/Iw/Y5Zs7hMfLZkyFMvl+ffhtGzPt/ILO9t/J4pY
	aVh6OCUixEJv78Ux+OHNZvJwyAK5CgKVQxx1AiHax5x5K8xTi8IbgCNWVvn2OOX/
	4p+2g7+hhbEgfpbb/QUIf/61BGVvunohHXeGWVNq24IKYBn9+QRYAGHG17Tf3jgl
	CYCvRfQqKUPXN6YBCDs3epBhPSd2GHdO2hpHdWBimj8pV8IC26DcQLR6w0Rb51DO
	ngUg5fwmsSj9LTy6HcxGB/vnOXMk6E1YC4VvC3Xl2lqbgZd3FcR5lJbJ4JgPly51
	iSeHDn5HYcj8ghd8WJqXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1655874977; x=
	1655961377; bh=raNbZ5XrTaJju1j0bn9K1zUDHO3TU92MxD3fSTWP0rs=; b=x
	WhshaypefrwmpT1bwf3HCZBvc4U7xKpYZ/Tgu8AyTFwK74d1VX3NPQNHFDf42WsS
	tMP4C8joE2oEk6zKYmJOSpa7DCkVyaEX9RtGiUEq26y48T5p+qf3GNmFxR2WHpG/
	BZeESjon+nMKiXRkikeVNcqnPOFtwJ1G4qH8lktmfFIE3Dhy/0F0hH4Yw9dy0fRT
	ZIv9LM1+63kg1/pNjNRt89GFHgIoGBTFYkDaFdXZJXKKp5qd1OrzW9u1tB3vg2Qj
	/MpHOCjqiiUW2qXYwrtZdz1idZIvZgPAYf8sHYcuFvoONwzjPMkvOlytjvSuwjXx
	OSpuKtY/7vIc1ANK/i/Xw==
X-ME-Sender: <xms:oaWyYsCjSgg5cbgE8Hrl1-4Uh7lj1ynHoXi-nFiszyd1h9_-QlrhmQ>
    <xme:oaWyYuhU3FOPWNk33MayY29C3KnW9OXvBZEKrH9XhO__Dkyr6lPOvOvZxBdsWqr-k
    OxnzEdEgNFEu1ILDw>
X-ME-Received: <xmr:oaWyYvnuWBbobhQNwfP-tuYSqgx_8NQdUeBKN7k4ziDIL3WtFJApT7Q94T6mrD1-fh4W4fEphn4c8wJ7fajR1VNTFqL42vfQ82oT3BXFrN53d2B4AsOrck9xFA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudefgedgleegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepuffvvehfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghm
    uhgvlhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenuc
    ggtffrrghtthgvrhhnpefftdevkedvgeekueeutefgteffieelvedukeeuhfehledvhfei
    tdehudfhudehhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:oaWyYiziAOsu4ceIlQgNl01DIuw3FK6LeRyciThy9lRTP86LKkjeaw>
    <xmx:oaWyYhSZZ7-FVHlReemQFpwH92FS8WiyaufgGfeycagsCkDZhlnjPA>
    <xmx:oaWyYtbB-om1ZEg8Va4NPxaWGMzKH1ygm0ZJWUifimyEkdzRe9DZbg>
    <xmx:oaWyYgF5qI69K325-oVH_SS3LWoTtbiFl0ol0KrfADdHIjZN49bV0A>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 22 Jun 2022 01:16:16 -0400 (EDT)
Subject: Re: [PATCH] phy: rockchip-inno-usb2: Sync initial otg state
To: Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220622003140.30365-1-pgwipeout@gmail.com>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <f252c182-e306-174e-dd32-51c9a406d3f7@sholland.org>
Date: Wed, 22 Jun 2022 00:16:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20220622003140.30365-1-pgwipeout@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_221618_539239_36CBE1CF 
X-CRM114-Status: GOOD (  15.14  )
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

On 6/21/22 7:31 PM, Peter Geis wrote:
> The initial otg state for the phy defaults to device mode. The actual
> state isn't detected until an ID IRQ fires. Fix this by syncing the ID
> state during initialization.
> 
> Fixes: 51a9b2c03dd3 ("phy: rockchip-inno-usb2: Handle ID IRQ")
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>

One comment below. Either way it fixes a bug, so:

Reviewed-by: Samuel Holland <samuel@sholland.org>

> ---
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index 6711659f727c..6e44069617df 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -1162,6 +1162,12 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
>  					EXTCON_USB_HOST, &rport->event_nb);
>  		if (ret)
>  			dev_err(rphy->dev, "register USB HOST notifier failed\n");
> +
> +		if (!of_property_read_bool(rphy->dev->of_node, "extcon")) {

Currently the IRQ handler does not care who created the extcon. We should at
least be consistent between here and there.

Regards,
Samuel

> +			/* do initial sync of usb state */
> +			ret = property_enabled(rphy->grf, &rport->port_cfg->utmi_id);
> +			extcon_set_state_sync(rphy->edev, EXTCON_USB_HOST, !ret);
> +		}
>  	}
>  
>  out:
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
