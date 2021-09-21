Return-Path: <SRS0=QbJo=OL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AE5C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Sep 2021 10:08:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9880E61038
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Sep 2021 10:08:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9880E61038
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eh8lHqdBpvCd6+BYeku5+ZycEyLe+2Fengmcn409mjE=; b=L8al8b0PhWoCVB
	IqYa9xuk42EcYqteyhuiOByjhPK1CQXixxZr8xdIRzkbbXVWi+7bPxPi2MkRIKrv07A0LvK1I0kjP
	C0QmYFbcO/t0WqvsXbSU1NnGMFZaydV8fJ+zD/c6ePomXzgqZbf2A3/tpEIHgT2JqL+CQj3sUlLPB
	1M1pVSJhlNq3MeEwIPMsuixP1GVxVaU+9B0sQpfCQqPUhJ15R6DyFbrg+LoY7ww3tHKV31s1qJ/Pu
	0wX3pdvuNKU7gvaeD2L90IqVy3HxkB+kK+FJ3LyYC6bM1J68a1qEmFfSskpQkeN+JLJHgWZSYMmuz
	QkiVT9ECzG1R7AbLskCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSchO-004C4z-VZ; Tue, 21 Sep 2021 10:08:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mScdH-0049a0-3d; Tue, 21 Sep 2021 10:04:13 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mScdE-0001rd-Hx; Tue, 21 Sep 2021 12:04:08 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andy.yan@rock-chips.com>, Alex Bee <knaerzche@gmail.com>,
 Sandy Huang <hjc@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Daniel Vetter <daniel@ffwll.ch>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jonathan McDowell <noodles@earth.li>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, David Airlie <airlied@linux.ie>
Subject: Re: [PATCH] drm/rockchip: handle non-platform devices in
 rockchip_drm_endpoint_is_subdriver
Date: Tue, 21 Sep 2021 12:03:38 +0200
Message-Id: <163221857584.2031971.6026620150373954389.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210914150756.85190-1-knaerzche@gmail.com>
References: <20210914150756.85190-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_030411_237120_172740DE 
X-CRM114-Status: GOOD (  10.04  )
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

On Tue, 14 Sep 2021 17:07:56 +0200, Alex Bee wrote:
> As discussed at [1] rockchip_drm_endpoint_is_subdriver will currently always
> return -ENODEV for non-platform-devices (e.g. external i2c bridges), what
> makes them never being considered in rockchip_rgb_init.
> 
> As suggested at [1] this additionally adds a of_device_is_available for
> the node found, which will work for both platform and non-platform devices.
> Also we can return early for non-platform-devices if they are enabled,
> as rockchip_sub_drivers contains exclusively platform-devices.
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: handle non-platform devices in rockchip_drm_endpoint_is_subdriver
      commit: 37825e07ab413187e1ea078bc33dcdb835008be2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
