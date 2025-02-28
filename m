Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1113C282C6
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 17:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K5fckSQBUWnZEIUXcU7Fa3tda7yIhscPmimQ5VsOJGM=; b=G2lFmEb9w9b/1y
	d1pXNXdhMDD9Y9udY38JnzHiAHLc4sD9GmGB4SASim0mVgrzYA96JStZMDkMPWBM3R9Tn4bFx4Fi0
	BvF5E3IaS3GNnPt2g1T16Yps6dAW3weozv0nr9yHSnjO5llN83UH/LDVlp0bLsKtw/wRR3GkQ6wf9
	m1YoxbgE3ejHXcTdP3wyrGboOoXZSIEJrRpM60EfjLhoo7AC+ERuK+1TjfEoGnxvHrOryD6Ri3qlt
	G48YHu3k18HvHfaFjk8bDhB+0Vx7QqpbJ6J4WHgaL3xOWScvQ2BGnqXKUY7Vm4HGDpQzr+CfHxwi9
	8KAQ+yU/lHunaJz521eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to4Wy-0000000C1gw-1ROZ;
	Fri, 28 Feb 2025 17:52:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to4Qh-0000000C0S9-1cjM;
	Fri, 28 Feb 2025 17:45:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=2sRrVQmgK0R2z5wr+aIoaoWSaXv+nBUPnIdA1TCMyRA=; b=pdiHPkkEaE+yoXVffSrekcrk2V
	UceJy7SUF5Xqf9FVYJVBFcEljZXjL6AzMHraNIeHXyC57VQJr2RbKWuxDhqzlcAWUZM/Hi8/8jClL
	p8hMC5A3Wi0Hny1px+xu7OJlmwfsnmVM7Hr4TUTKeZJP5MEinS2qX5h1v1tRLoR9W+nO4nXTBen0M
	CBq3GRbWZNcikLjc39IpKeN3aB7grOAwCjD+AVg7sylF3V9csGTviacBu6KhOsQ79S0FHpkAl/vvy
	thDh212CzjTRYjY/DLxfNz+itc5hwTtOtqE6+T3cIppLTZCAfGXFWWgezZqs3S3jgg466v8JLXXcB
	UPvwwgSA==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1to4QV-0002Po-0K; Fri, 28 Feb 2025 18:45:31 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH 2/2] drm/rockchip: lvds: Hide scary error messages on probe
 deferral
Date: Fri, 28 Feb 2025 18:45:30 +0100
Message-ID: <3032732.6M6d0yLqnL@diego>
In-Reply-To: <b09e5470-2392-4557-9f13-62b6586e5c7b@cherry.de>
References: <20250228165755.405138-1-heiko@sntech.de>
 <20250228165755.405138-3-heiko@sntech.de>
 <b09e5470-2392-4557-9f13-62b6586e5c7b@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_094543_440251_C8863965 
X-CRM114-Status: GOOD (  21.29  )
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

Am Freitag, 28. Februar 2025, 18:42:32 MEZ schrieb Quentin Schulz:
> Hi Heiko,
> 
> On 2/28/25 5:57 PM, Heiko Stuebner wrote:
> > From: Heiko Stuebner <heiko.stuebner@cherry.de>
> > 
> > Commit 52d11c863ac9 ("drm/rockchip: lvds: do not print scary message when
> > probing defer") already started hiding scary messages that are not relevant
> > if the requested supply just returned EPROBE_DEFER, but there are more
> > possible sources - like the phy.
> > 
> > So modernize the whole logging in the probe path by replacing the
> > remaining deprecated DRM_DEV_ERROR with appropriate dev_err(_probe)
> > and drm_err calls.
> > 
> > The distinction here is that all messages talking about mishaps of the
> > lvds element use dev_err(_probe) while messages caused by interaction
> > with the main Rockchip drm-device use drm_err.
> > 
> > Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>

> > @@ -604,8 +602,8 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
> >   
> >   	ret = drm_simple_encoder_init(drm_dev, encoder, DRM_MODE_ENCODER_LVDS);
> >   	if (ret < 0) {
> > -		DRM_DEV_ERROR(drm_dev->dev,
> > -			      "failed to initialize encoder: %d\n", ret);
> > +		drm_err(drm_dev,
> > +			"failed to initialize encoder: %d\n", ret);
> 
> All the above are using dev_err, but starting here, it's drm_err, is 
> that on purpose?

The last paragraph of the commit message was supposed to explain that
(which it seemingly did poorly :-) ) :

> > The distinction here is that all messages talking about mishaps of the
> > lvds element use dev_err(_probe) while messages caused by interaction
> > with the main Rockchip drm-device use drm_err.




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
