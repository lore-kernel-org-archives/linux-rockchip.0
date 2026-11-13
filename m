Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F15606A323
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 15:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=fz99P7KJ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.a=rsa-sha256 header.s=dkim header.b=nFxA6vUo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=EIIL94buj5EoTpLZzuNkIUnmwn1Jyksj4He1BpcHees=; b=fz99P7KJZxXTS3nTAUwlMq3wAT
	ZZlankTZ58kXTWX8gbtpjkTofzn4KiKVRLeviK+7+FBH/S3n9nY9l11Md4b79Ztg+qsKmy1rT40Kh
	Q17XgDgSV1HjHu1KFJzHgYdXFS634+C7HDvv59KpzSdMsgh65j1eI1nkkNTIFEyZeqst53rxSfkLF
	uvrgG4HHcF8kkVp/5ED2PvRrDaqLrwRqvb2UgI6E2lxh+wdDXvoHVMPz+XjZmcdp6IjM1AQ3lkrER
	mCygDbLUhbApEYFuRkOlYMppZsFdUZ8CL00aF07Br1wIDJ0/IAvKtaIRJ2gWhk+68+peOl8tR4v4u
	fyiT1YNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRtPz-0000000DQgk-0MJI;
	Fri, 13 Nov 2026 15:42:23 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRtPt-0000000DQeh-0RDD
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 15:42:19 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 0E5F64E415A7;
	Fri, 13 Nov 2026 15:42:13 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id C707360015;
	Fri, 13 Nov 2026 15:42:12 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 216FA11BC11E7;
	Fri, 13 Nov 2026 16:41:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1794584527; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=rHB1s2IjKO7bwiIKX5FWkoy/jmzbxhzjzTrvBEzLn5E=;
	b=nFxA6vUoH0x4DTtoCgCXxJmVcI3pdkHLUk/3kmd7oD/49D39QXUjVuJLZLwTecCZkhIcNl
	PXCqJZXRvM/0ZP12N5JH5FNHiMRoDWR+gPyByVcVZ6HeiMGWoCNIkCLClvZFEwvruvfKI9
	ZzDTRQoYOrCsfLu8mtNiKhKFbw6z1FlP5h2DnU/dTUgLuHPXxJazAMbnatXFvaqOOqF2Ah
	DZEReUJk6f4zc6HkVPom4VPQXb74rha0hpB6vWrFE/6v199j1bALFfj54wht54zFUYswX2
	SvwVzQBX6uUjEBLD4nfOUhIiIHGHUp0/Tlb2FwSbVdwqlImG9cF39sUgOlkdvw==
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Fri, 13 Nov 2026 16:41:56 +0100
Message-Id: <DMU749TMB523.3OCGPYVI4NZDU@bootlin.com>
Subject: Re: [PATCH v3] drm/bridge: analogix_dp: use devm_phy_optional_get()
 for the DP PHY
Cc: <Laurent.pinchart@ideasonboard.com>, <airlied@gmail.com>,
 <andrzej.hajda@intel.com>, <dri-devel@lists.freedesktop.org>,
 <heiko@sntech.de>, <jernej.skrabec@gmail.com>, <jonas@kwiboo.se>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, <luca.ceresoli@bootlin.com>,
 <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
 <neil.armstrong@linaro.org>, <rfoss@kernel.org>, <simona@ffwll.ch>,
 <tzimmermann@suse.de>
To: "Jun Yan" <jerrysteve1101@gmail.com>, <damon.ding@rock-chips.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.22.0
References: <385a67f0-e5cd-4dba-9b9c-5b766462c6c0@rock-chips.com>
 <20261113131248.2804840-1-jerrysteve1101@gmail.com>
In-Reply-To: <20261113131248.2804840-1-jerrysteve1101@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_074217_291708_F3AF1C63 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hello,

On Fri Nov 13, 2026 at 2:12 PM CET, Jun Yan wrote:
> Hi Damon,
>
>> You are right, this is really a valid concern.
>>
>> If CONFIG_GENERIC_PHY is disabled, the old code could still proceed and
>> keep the driver probing, while the new version would return an error
>> directly.
>
> -ENOSYS can only come from the !CONFIG_GENERIC_PHY stubs in
> include/linux/phy/phy.h; the real implementation in drivers/phy/phy-core.c
> never returns it. And the stub for the optional variant returns NULL, not
> -ENOSYS:
>
>     static inline struct phy *devm_phy_optional_get(struct device *dev,
>                                                     const char *string)
>     {
>             return NULL;
>     }
>
> So with CONFIG_GENERIC_PHY disabled the PHY is still treated as absent
> (NULL), exactly as the old -ENOSYS branch did. With CONFIG_GENERIC_PHY
> enabled, -ENOSYS cannot occur, devm_phy_optional_get() turns -ENODEV into
> NULL, and any other error is still propagated - same as the open-coded
> check.
>
>> It should be better to keep the -ENOSYS handling to preserve the
>> original behavior.
>
> Overall the behaviour is unchanged in both configurations, so no separate
> handling is needed.

Thanks for the analysis! Cna you send a v4 with that explained in the
commit message, possibly in a more concise way, maybe with bullets for the
various CONFIG_GENERIC_PHY on/off cases or so, for readability?

Reading it now, this v3 commit message kind of said the same things. but it
misled both me and Damon, so it's worth a clear explanation.

Thanks!

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
