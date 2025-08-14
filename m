Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A0F4CA0EEB
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Aug 2025 13:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQ4/x/1fry5lehI4XpCtS7D0eG435+3lxay2oRViJZU=; b=RcfwYF0dmRuaC8
	YoZgaQWXQX4Nom3bILbQMDsEkyhSHvNGhECyGihpE5U0C0Qd+ddoNjmktiENmuEIo8BEx7pEkP6mV
	vttCyAaNJ0CjhSqQXHMDTRk+8weOWO3qdFY99XQbUUcI5Esak1Z10yPSu71caGUsKLahbxmmzeMiI
	a6W0lVZlfhp2GnyjeJCVrQdj/2VZtvmEH7u9Yod5k5emCyGAzzRlzA2X1EMp2QuZWmBOJNQKmgkXw
	E30gQVC+o2NyEIfhV15MZsFPcnhBz0Lave1CcJaZbdg1ckAUAg0g7esh4larp7M+6CMLkFbeRVRFR
	glBkXQVCQOncKu1vyy1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXn0-0000000GxXe-3Etx;
	Thu, 14 Aug 2025 13:14:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umUXY-0000000GTYN-2KWG;
	Thu, 14 Aug 2025 09:46:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=MkAu2hEhQvHxgjZYFuwTW+sucst3RzoiJMIBnTxCCXM=; b=W6qWh+4j/jFgmsNT+vvq7Urksf
	NbbeKUx0+G4bdKHtHX5GO/4jS+f1OtXJnkpswszSFXw+p/m+XpK/FHOdr0QDeBeVKwQewpyCfbAaO
	9yaAVp1sDgt5nSAHda1NT0sC1zYUjrc60W9c9PK9Onav/bX8x+Ea9tFhCBqxMFr3JQDJi8dSH6kfT
	ZnACpKOn5srU9o4fdlhdqU4tTFBmY9FzfsgWsdD7wpMB3h4uuw+gGTr1WRzQ/Pw3ehltJ/+HZdxcS
	y0uIMZvxM+bVMmYemZz3RR/hfEx3Hdw+yFCH4ATbRmAmnAlrwFlSJAYqv3CPVtRcFWDzOHvoAqlYF
	hqyRtR7A==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umUXV-0000000GKip-0MtK;
	Thu, 14 Aug 2025 09:46:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=MkAu2hEhQvHxgjZYFuwTW+sucst3RzoiJMIBnTxCCXM=; b=2hq+WBiGzJRNWbHX2D4SNxAvs1
	YFzjD7xdAIlSVhNZ3bx9ylupMIduDRYZGshhX5klrcWHHag6H/jZtDuTfwRjFfZc6nzExlCBrU/XL
	1ViCJn5/J/dFRSPn/twVDu2TYzQXB3S2Oi1OZ+I/TkcjHIQ4qdXL8fACBkcbIQ+oMd9rXNhEAK8jO
	HwdmunTZe7b1mNplyzReTVWmTf/u2H1YBlW7BDKUntr6+k0nk/YLmp+Luksr2DSDtCzhMa3MwApQ5
	vUmAu3wgq1xUvWcDlcpmOkZIXSMrNB/pF3DidjXmNRCFckNKldVUKKHn5NARbA1rJewKUNoRL+FNt
	REXA2h0Q==;
Received: from i53875b38.versanet.de ([83.135.91.56] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1umUXC-0002c8-M5; Thu, 14 Aug 2025 11:46:10 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Piotr Zalewski <pZ010001011111@proton.me>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH v2] rockchip/drm: vop2: make vp registers nonvolatile
Date: Thu, 14 Aug 2025 11:46:06 +0200
Message-ID: <175516475520.1500001.17369279178987813949.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250706083629.140332-2-pZ010001011111@proton.me>
References: <20250706083629.140332-2-pZ010001011111@proton.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_104629_294677_BAC01396 
X-CRM114-Status: GOOD (  15.63  )
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


On Sun, 06 Jul 2025 08:36:58 +0000, Piotr Zalewski wrote:
> Make video port registers nonvolatile. As DSP_CTRL register is written
> to twice due to gamma LUT enable bit which is set outside of the main
> DSP_CTRL initialization within atomic_enable (for rk356x case it is also
> necesarry to always disable gamma LUT before writing a new LUT) there is
> a chance that DSP_CTRL value read-out in gamma LUT init/update code is
> not the one which was written by the preceding DSP_CTRL initialization
> code within atomic_enable. This might result in misconfigured DSP_CTRL
> which leads to no visual output[1]. Since DSP_CTRL write takes effect
> after VSYNC[1] the issue is not always present. When tested on Pinetab2
> with kernel 6.14 it happenes only when DRM is compiled as a module[1].
> In order to confirm that it is a timing issue I inserted 18ms udelay
> before vop2_crtc_atomic_try_set_gamma in atomic enable and compiled DRM
> as module - this has also fixed the issue.
> 
> [...]

Applied, thanks!

[1/1] rockchip/drm: vop2: make vp registers nonvolatile
      commit: a52dffaa46c2c5ff0b311c4dc1288581f7b9109e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
