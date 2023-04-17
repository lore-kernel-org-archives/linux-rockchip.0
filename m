Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A030C77B70
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 08:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7L7ws84qpZvGWxjViyQKwVgQ/JHbGdZe32KB3SK/so=; b=spePPMHRRRVEGB
	c45gm4J/uotLNeXUir4TYyNHMppj9KHQyi1gcYTEkMlHq/CKObMV5nNrsk7MnJjIgYzFKoqjjrwYH
	NQ5LnR2mRTMwtJe0B2+/s7Rh2Qh1AxE3OX4wF5d49CGHh6tsf56V2hzogEsMeL0AsdlCBKiOc5G0Z
	tvTFxDGaNP9QLjcC/T8UnX1mXKSug2SvKwKQAqBXwgrHfv+Q+i2VZkwc7qGY3MNMAwbdFwVZAuaYd
	UdrRQdSlG6ZuJB1gT5uJt3i164InP7fHBN4r0w+HjwkvFCrSDJ1+VkAU1x5v0sT/2kAL0npugwCzi
	gZdaZdRY654uC8dbXrrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poK72-00FMIo-0o;
	Mon, 17 Apr 2023 08:21:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poK6y-00FMHL-1s;
	Mon, 17 Apr 2023 08:21:21 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1poK6b-0001cB-Kj; Mon, 17 Apr 2023 10:20:57 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Olof Johansson <olof@lixom.net>, Chao Wang <D202280639@hust.edu.cn>
Cc: hust-os-kernel-patches@googlegroups.com,
 Chao Wang <D202280639@hust.edu.cn>, Dongliang Mu <dzm91@hust.edu.cn>,
 iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] iommu: Fix unwind goto issue
Date: Mon, 17 Apr 2023 10:20:56 +0200
Message-ID: <6931079.K2JlShyGXD@diego>
In-Reply-To: <20230417030421.2777-1-D202280639@hust.edu.cn>
References: <20230417030421.2777-1-D202280639@hust.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_012120_615518_4B8E2F6B 
X-CRM114-Status: GOOD (  12.51  )
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

Am Montag, 17. April 2023, 05:04:21 CEST schrieb Chao Wang:
> Smatch complains that
> drivers/iommu/rockchip-iommu.c:1306 rk_iommu_probe() warn: missing unwind goto?
> 
> The rk_iommu_probe function, after obtaining the irq value through
> platform_get_irq, directly returns an error if the returned value
> is negative, without releasing any resources.
> 
> Fix this by adding a new error handling label "err_pm_disable" and
> use a goto statement to redirect to the error handling process. In
> order to preserve the original semantics, set err to the value of irq.
> 
> Fixes: 1aa55ca9b14a ("iommu/rockchip: Move irq request past pm_runtime_enable")
> Signed-off-by: Chao Wang <D202280639@hust.edu.cn>
> Reviewed-by: Dongliang Mu <dzm91@hust.edu.cn>

Looking at the code, that makes a lot of sense.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
