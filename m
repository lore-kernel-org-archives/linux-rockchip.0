Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27646D1AD35
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 09:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14MWb6wFYu9Wf5Z+9DWngxhY/Suqh5MtkMrgbZf3B5Y=; b=CZDRqe9hLCGnjX
	dWezyZy/VdUWSWjyg7QHpUIzL+wxS3+f/huwyYDWtQIFPyfdYh+dWicst1l84EcYUVs4N2M8+HoeZ
	gG4zqUOrqw2TzLo5X9HxhTeSj931HqjZX2JPq8kspCDsFrrVTNEyquXed1oRTFcVxdJjT1HTtmAxf
	HwjNUNi/fNiqvhFAO+Q3NBmnVHKBK63nVEY9lp6DL2ydNq2M7K2ElO1c5mOW0pNyk29JS6WbE2Ejq
	G2kRN+BTMa1SYGSiSKEK+rl/KVrE6eweQ/cu3OExC2GxODEaC+cvK1N5i+ZkP65ZUg3DtB0PUkAef
	dg0jazWwoRfFFnx0Ybbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t10MT-0000000BEy6-3FIW;
	Wed, 16 Oct 2024 09:30:33 +0000
Received: from mail-40133.protonmail.ch ([185.70.40.133])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t10Ge-0000000BDkr-12Ce
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Oct 2024 09:24:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1729070670; x=1729329870;
	bh=1hC389bUY1zoJGbXCZyplZ6rSSoOY8vZaU70geZtI5E=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=G6UOLutSrDKqnGdNsoLaiXdsF4OkKPTcXhxvKoGpCceWHV3n2yUPvT8Axmez6STra
	 fJUbwP/J8j5zEwRIc0pDDpsDyHpfD64BgPB29D14Cg+LnZshdSaOPteeJzEB1nkiW8
	 ffD1m1N+uD55hR8UQh99vB6+fMm7eOzsorFacjGJekBTvhwVjCzOy7IWJAUOQ8fuJj
	 v3X04SWmc6A/QwyBOABQRWTGZ9YqRx5dotvwVzaRafNWHuconc634u/WhxRBVhg+yr
	 zHaPuMqQU6XXx2MyJidx+1UB0t6pUTb+t3EvHz4ymzhTd5e1le8i4ZOLy7CynkjFLO
	 dfOam5eHGQM1Q==
Date: Wed, 16 Oct 2024 09:24:24 +0000
To: Diederik de Haas <didi.debian@cknow.org>
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: Andy Yan <andyshrk@163.com>, hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, skhan@linuxfoundation.org, Daniel Stone <daniel@fooishbar.org>, Dragan Simic <dsimic@manjaro.org>
Subject: Re: [PATCH v5] rockchip/drm: vop2: add support for gamma LUT
Message-ID: <BeXoC3pECSSWt03s_nNVohvTHHdML_K2_kGtlaGpyWHOyHiC-7rmdkADP1eN-PH01n7e29wVcMhEtW4MT50OL2dXEZzdCKdeZw3NPhQZx_A=@proton.me>
In-Reply-To: <D4X4BE9PTJ1Q.2TDYBLWRFYMYA@cknow.org>
References: <20241014222022.571819-4-pZ010001011111@proton.me> <7b45f190.452f.1928e41b746.Coremail.andyshrk@163.com> <o_Cyz_ARcHj4zNlovv75MBwslIRhn3YWlscoNrlpLVobh7eWIMEQR5bNv0yhHx2KEx_gbYi_gH-8Y-CdvRZs9lZscz3-lhAbM50GXUdtSKY=@proton.me> <30940542.b36d.19290215124.Coremail.andyshrk@163.com> <1974DYrs9gLrQrZ5VwCglFgKDDK686iyqnS_g6uPB-s9wZ_4CqfZXPjmYWihLgrkRu7ptNjpkFeqB0uTt73RFId6cL8FowQ8LFltPmaKCoI=@proton.me> <1ae9f15d.e52.19292e05e73.Coremail.andyshrk@163.com> <QvjHFQ4xeCu-8Isrm_jtNRWLowVNFzC8qnHJ6LUGI2iFTTJoEK8fBrXjG9LUrn5Wt9fJ9F04ukEf-koifwCR0uH9nr0AelyiWI85KASNkOQ=@proton.me> <D4X4BE9PTJ1Q.2TDYBLWRFYMYA@cknow.org>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: 0f9ab51e7de25b031eaa1a4bf04c70848cb633ff
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_022432_465332_AF381D6A 
X-CRM114-Status: UNSURE (   5.24  )
X-CRM114-Notice: Please train this message.
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

Hi Diederik

On Wednesday, October 16th, 2024 at 11:20 AM, Diederik de Haas <didi.debian@cknow.org> wrote:

> On Wed Oct 16, 2024 at 11:16 AM CEST, Piotr Zalewski wrote:
> 
> > I will rework it to[1] and test it. (Have to check if hdmi out on pt2 works).
> 
> 
> Last time I tried it, hdmi out did work.

Nice, thanks for the info :)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
