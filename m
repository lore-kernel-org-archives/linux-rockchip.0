Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4413DC3DA49
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Jul 2024 21:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8EQ0lxMOuVn+Thb51BjJDeGZ3wBTThfguml38a6erAE=; b=wlB9TFX+XqPGU/
	EXwzEIAdd3FMxbUrw+QjGX/LCQeFSErHgmRkaZkuFplb29OH0vcT2CuadZjAUmfSTatxrYqRI0rHg
	LG8rbgxcsiWw8sN9NV+FA2aypWa6KfLqiY/P1Iv0OCJ6vZ53k0Hft+ZWrSlGfF28dsuLqK/qsaHe0
	3gRSAJY+Laf1QC6a2cB6hokofbRrb1Zn1gOFZgCX+l7vLo5aV/5f9jN8vdTG2SjteKnYkn3XzCakm
	YASzGBWj1fsBG2Dofh+7OcoDNXXb0qZixnuoUvbmfVxdABt/paSYmyE0MnqnzEZbIlqzT6V3m5aL8
	LrDaMR1sHjL0V8hd8ppA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVHNt-00000005gbg-2vpe;
	Sat, 20 Jul 2024 21:12:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVHMT-00000005g1g-1e1V;
	Sat, 20 Jul 2024 21:11:26 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sVHMS-00067D-52; Sat, 20 Jul 2024 23:11:24 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: ukleinek@debian.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/8] arm64: dts: rockchip: enable usb ports on qnap ts433
Date: Sat, 20 Jul 2024 23:11:23 +0200
Message-ID: <3384439.9LS3J3VOpE@diego>
In-Reply-To: <20240720210856.778014-6-heiko@sntech.de>
References: <20240720210856.778014-1-heiko@sntech.de>
 <20240720210856.778014-6-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240720_141125_469836_CD22D3E7 
X-CRM114-Status: GOOD (  11.19  )
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

Am Samstag, 20. Juli 2024, 23:08:51 CEST schrieb Heiko Stuebner:
> Enable usb controllers and phys and add regulator infrastructure for the
> usb ports on the ts433.
> 
> Of course there are no schematics available for the device, so the
> regulator information comes from the vendor-devicetree with unknown
> accuracy.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

ignore this one ;-)

I updated the subject and them fumbled with git-format-patch



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
