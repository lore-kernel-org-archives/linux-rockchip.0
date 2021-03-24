Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85B6BC433E1
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 14:53:22 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A76E961A11
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 14:53:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A76E961A11
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L9ovw/baEK+EId+cnWqP15GM0PXhmgJCe5n5tV63wwE=; b=ha6BxC6v88FqO/SEh+CgmTHpH
	ygKBqywBnDGU3Kg4whw8L91WF6Yltafl8XP4NyV7Fc2qJGybJeMNC6O7MmNsmKRXpJ6vNiPOcpRnA
	5pQaMfuVu9va7y3CfHvcLnw7wlbb2YPMfGlXFTbRCpa4fG8iP+MiF8cjAXNwwRQREAJ2Dk2BvV7qN
	tPBN5myZTvtveJT+F5KsOfOVK3eR4+55/YyZA9xs+5CY23bu2G3MMFTV3xtdCEYyz3WqlMFrH3eO1
	Bzx36JldI/tyCQe/A8GcxV767Abcbnp5Jvdasb/o+wz+cMemyKCnJIwCF18YNaoXws7xP4LYurIeI
	o90dOvOeQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lP4sm-00HEkL-5H; Wed, 24 Mar 2021 14:53:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lP4sc-00HEjU-Q3; Wed, 24 Mar 2021 14:53:08 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lP4sX-0000qF-Gw; Wed, 24 Mar 2021 15:53:01 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org, Helen Koike <helen.koike@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 hjc@rock-chips.com, robh+dt@kernel.org, sebastian.fricke@posteo.net,
 linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 ezequiel@collabora.com, cmuellner@linux.com
Subject: Re: [PATCH 3/6] drm/rockchip: dsi: add ability to work as a phy
 instead of full dsi
Date: Wed, 24 Mar 2021 15:52:59 +0100
Message-ID: <12741091.uLZWGnKmhe@diego>
In-Reply-To: <d7b8137c-66ce-935a-c8d7-e507146143d7@collabora.com>
References: <20210210111020.2476369-1-heiko@sntech.de>
 <20210210111020.2476369-4-heiko@sntech.de>
 <d7b8137c-66ce-935a-c8d7-e507146143d7@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_145306_987425_CB36B6D3 
X-CRM114-Status: GOOD (  16.68  )
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

Am Montag, 15. Februar 2021, 15:33:19 CET schrieb Helen Koike:
> > From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
> > index cb25c0e8fc9b..3094d4533ad6 100644
> > --- a/drivers/gpu/drm/rockchip/Kconfig
> > +++ b/drivers/gpu/drm/rockchip/Kconfig
> > @@ -9,6 +9,8 @@ config DRM_ROCKCHIP
> >   	select DRM_ANALOGIX_DP if ROCKCHIP_ANALOGIX_DP
> >   	select DRM_DW_HDMI if ROCKCHIP_DW_HDMI
> >   	select DRM_DW_MIPI_DSI if ROCKCHIP_DW_MIPI_DSI
> > +	select GENERIC_PHY if ROCKCHIP_DW_MIPI_DSI
> > +	select GENERIC_PHY_MIPI_DPHY if ROCKCHIP_DW_MIPI_DSI
> 
> maybe alphabetical order?

ok

> > +static int dw_mipi_dsi_dphy_power_on(struct phy *phy)
> > +{
> > +	struct dw_mipi_dsi_rockchip *dsi = phy_get_drvdata(phy);
> > +	int i, ret;
> 
> It seems "i" could be removed, use ret instead.

I don't think so

I.e. the driver does

	i = max_mbps_to_parameter(...)
	...
	ret = power-on-clocks-and-stuff
	...
	dw_mipi_dsi_phy_write(.... dppa_map[i].hsfreqrange)

So will need to keep the param index separate.


> In general, the patch doesn't look wrong to me.
> 
> For the whole serie:
> Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks a lot :-)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
