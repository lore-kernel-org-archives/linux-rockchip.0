Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0828ED2F7CF
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 22:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wY2pf8y3ZMZUYsiLsfPYBTl7ePUox+j3/PDZ7LM4Wy8=; b=0M508A5sxKuMGW
	jdVYm19XZ+Dxis8eLZiBaejw35+VdF/tAfQ0ABB0n909zv6t58Ws9qgxMusKlLLwjoge7cM4OpTzp
	W7XXoAOjZGnDd+ot9RCdDpAiZxj8dWkRVyh0qCweJSKiq3meoI74pmH4xdymcDSXSh92cav+IO4Zv
	/UHg7nX4zrDHdDYMK0ZUTyHOgK29IHWdGPROuJW11sRBKxYf4kalbZedl9WT66nAuKBVZosMpNaCr
	UBawY+D3DVHPH7Mmogvj3/OEcAt3tIJM81Wr5cRYP9SEWO+p5BiQyRKTV1u187gvMI5Vu1gJFFtCx
	QVjQcr4BMuor4YmNiLaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1CAK-0000000D8CA-0Lkl;
	Wed, 16 Oct 2024 22:06:48 +0000
Received: from mail-40134.protonmail.ch ([185.70.40.134])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1C8V-0000000D7ti-1a3K;
	Wed, 16 Oct 2024 22:04:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1729116291; x=1729375491;
	bh=otJbHyZujNBalaTmidGF7B0oyofrDrA0kk+tMXiuG/s=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=YZNJi6NI5uCjD1Kuu2PpS3Ieh1Zh06zEO3pEMXQfwiMmQ2rsIZQ6p7qO8nvrmfL89
	 gu2Wvgmyg34MyeWwuq6CBcJcC08bxC6J7ONvmjPq3LiYmq5M3aqw2IXgB4Sp4XRdqp
	 Vj6YeH60MTXk4pTyv7SUhxPdoErnwttSJm/FyPSNs4tM94SFKUt9q2ZngbFL8T9gt4
	 VUTZG8bdKCGY06yI7t2xQhz3I7+S5pkhd617unvm0hZoF6nWGaHpmYgR3HOctqLJLU
	 rB1eSaSWjLtjojHXuOoRRCcdZIq2oAlfPV0983dje0NqIn+0deFw2Go5wejuADSXsH
	 UwF0LeKUpu3lg==
Date: Wed, 16 Oct 2024 22:04:47 +0000
To: Andy Yan <andyshrk@163.com>
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, skhan@linuxfoundation.org, Daniel Stone <daniel@fooishbar.org>, Dragan Simic <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>
Subject: Re:[PATCH v5] rockchip/drm: vop2: add support for gamma LUT
Message-ID: <qQ8K1eMN92mXXKiHVEiv4sUKmuXirPwokVQJRMsoMu4SmeW5OksIhhsx7P2MCymkWJeyAqX_YSvg-iUbP3Njt7XHHDXAqIRxtKmwoBkfRYA=@proton.me>
In-Reply-To: <bDA4Uh6mp04Po1miJIueRsMNZ9W09DHEnRjG4CzWBn243gI_ExYhjwC9j-KMgOvUS5ofKsAa926IGfVGz4fNt9P_kOBpTyIOakgbB9Sqc-4=@proton.me>
References: <20241014222022.571819-4-pZ010001011111@proton.me> <13fc0084.1321.19292eec34e.Coremail.andyshrk@163.com> <bDA4Uh6mp04Po1miJIueRsMNZ9W09DHEnRjG4CzWBn243gI_ExYhjwC9j-KMgOvUS5ofKsAa926IGfVGz4fNt9P_kOBpTyIOakgbB9Sqc-4=@proton.me>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: 9bf1c476827f42656380d0b9b801739f99b648d3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_150456_205749_E80B1287 
X-CRM114-Status: UNSURE (   9.79  )
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

Hi Andy

On Wednesday, October 16th, 2024 at 11:23 AM, Piotr Zalewski <pZ010001011111@proton.me> wrote:

> > > static void vop2_crtc_atomic_flush(struct drm_crtc *crtc,
> > > @@ -2790,7 +2945,13 @@ static int vop2_create_crtcs(struct vop2 *vop2)
> > > }
> > > 
> > > drm_crtc_helper_add(&vp->crtc, &vop2_crtc_helper_funcs);
> > > + if (vop2->lut_regs && vp->crtc.dev != NULL) {
> > 
> > There is no need to check vp->crtc.dev here, set has been set in drm_crtc_init_with_planes .
> 
> 
> I tested it and this check must be here because trying to enable color mgmt
> on CRTC with no associated device, causes null ptr dereference later on in
> drm_crtc_enable_color_mgmt (unless something changed in recent kernel
> versions, last time I tested was 6.10? or even 6.8).

Just tested it without the null check and it works. Next version will be without it.

Best regards, Piotr Zalewski

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
