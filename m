Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1DBDC2D0E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 07:40:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5E7BE2395B
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 07:40:42 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="A/IU01Eo"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5E7BE2395B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EMju6HaMsm6F0bEzESlfS++/D6pC1v66+2dTKXEmUN8=; b=A/IU01EoxJF3EaG6bQI6aAmM9
	RfeDQkNJp5mg/uvSy7xJ/ICV9PEw6uTNs9dLvS5lQeqPleSPbEC3zAXAkxkQsCqtTK+0FZqPcMFoM
	Z9T5oLXGQ/v0l8dRb/6zx+UtV6L1cCTiXE/nxubowrIDh7UNV4VlFSk2Snoh88C2v5kSFHuzmTcJx
	QIAuG3x2AsN2n5Hd+khO2HKCBhR9GlUHwhMVlliFhbpckbbYLIS9M46gJ0LfdPgPKSuTqEIrJfWjK
	DSfqqp1bAA5dn16kKZbXeXnhtpeUCyjDYuab9NhpCyq93HxqvYuhzLQv4aCfCCCAR2JyJ8F9Nb/kp
	HMvZABs6g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKcuh-00083L-4T; Tue, 22 Sep 2020 07:40:35 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKcuc-0007xb-9o
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 07:40:33 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id D9F278D5;
 Tue, 22 Sep 2020 15:40:07 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.127] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P1665T140084565235456S1600760407091705_; 
 Tue, 22 Sep 2020 15:40:08 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <618a05ef9dc6f4f46f8c8d808fa8263e>
X-RL-SENDER: andy.yan@rock-chips.com
X-SENDER: yxj@rock-chips.com
X-LOGIN-NAME: andy.yan@rock-chips.com
X-FST-TO: algea.cao@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_1/3=5d_drm=3a_rockchip=3a_hdmi=3a_remove_v?=
 =?UTF-8?B?b3BfY3J0Y19tb2RlX2ZpeHVwIHRvIGZpeCBjbG9jayBoYW5kbGluZ+OAkOivtw==?=
 =?UTF-8?B?5rOo5oSP77yM6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNlcythbmR5Lnlh?=
 =?UTF-8?B?bj1yb2NrLWNoaXBzLmNvbUBsaXN0cy5pbmZyYWRlYWQub3Jn5Luj5Y+R44CR?=
To: Vicente Bergas <vicencb@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 algea.cao@rock-chips.com
References: <20200921181803.1160-1-vicencb@gmail.com>
 <20200921181803.1160-2-vicencb@gmail.com>
From: Andy Yan <andy.yan@rock-chips.com>
Message-ID: <76b8f420-2afb-eba9-5c98-6f10762c4b37@rock-chips.com>
Date: Tue, 22 Sep 2020 15:40:06 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200921181803.1160-2-vicencb@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_034030_949683_E68A28B6 
X-CRM114-Status: GOOD (  23.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add our HDMI driver owner Algea to list.

On 9/22/20 2:18 AM, Vicente Bergas wrote:
> Under certain conditions vop_crtc_mode_fixup rounds the clock
> 148500000 to 148501000 which leads to the following error:
> dwhdmi-rockchip ff940000.hdmi: PHY configuration failed (clock 148501000)
>
> The issue was found on RK3399 booting with u-boot. U-boot configures the
> display at 2560x1440 and then linux comes up with a black screen.
> A workaround was to un-plug and re-plug the HDMI display.
>
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> Tested-by: Vicente Bergas <vicencb@gmail.com>
> ---
>   drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 45 ---------------------
>   1 file changed, 45 deletions(-)
>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index c80f7d9fd13f..fe80da652994 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -1142,50 +1142,6 @@ static void vop_crtc_disable_vblank(struct drm_crtc *crtc)
>   	spin_unlock_irqrestore(&vop->irq_lock, flags);
>   }
>   
> -static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
> -				const struct drm_display_mode *mode,
> -				struct drm_display_mode *adjusted_mode)
> -{
> -	struct vop *vop = to_vop(crtc);
> -	unsigned long rate;
> -
> -	/*
> -	 * Clock craziness.
> -	 *
> -	 * Key points:
> -	 *
> -	 * - DRM works in in kHz.
> -	 * - Clock framework works in Hz.
> -	 * - Rockchip's clock driver picks the clock rate that is the
> -	 *   same _OR LOWER_ than the one requested.
> -	 *
> -	 * Action plan:
> -	 *
> -	 * 1. When DRM gives us a mode, we should add 999 Hz to it.  That way
> -	 *    if the clock we need is 60000001 Hz (~60 MHz) and DRM tells us to
> -	 *    make 60000 kHz then the clock framework will actually give us
> -	 *    the right clock.
> -	 *
> -	 *    NOTE: if the PLL (maybe through a divider) could actually make
> -	 *    a clock rate 999 Hz higher instead of the one we want then this
> -	 *    could be a problem.  Unfortunately there's not much we can do
> -	 *    since it's baked into DRM to use kHz.  It shouldn't matter in
> -	 *    practice since Rockchip PLLs are controlled by tables and
> -	 *    even if there is a divider in the middle I wouldn't expect PLL
> -	 *    rates in the table that are just a few kHz different.
> -	 *
> -	 * 2. Get the clock framework to round the rate for us to tell us
> -	 *    what it will actually make.
> -	 *
> -	 * 3. Store the rounded up rate so that we don't need to worry about
> -	 *    this in the actual clk_set_rate().
> -	 */
> -	rate = clk_round_rate(vop->dclk, adjusted_mode->clock * 1000 + 999);
> -	adjusted_mode->clock = DIV_ROUND_UP(rate, 1000);
> -
> -	return true;
> -}
> -
>   static bool vop_dsp_lut_is_enabled(struct vop *vop)
>   {
>   	return vop_read_reg(vop, 0, &vop->data->common->dsp_lut_en);
> @@ -1512,7 +1468,6 @@ static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
>   }
>   
>   static const struct drm_crtc_helper_funcs vop_crtc_helper_funcs = {
> -	.mode_fixup = vop_crtc_mode_fixup,
>   	.atomic_check = vop_crtc_atomic_check,
>   	.atomic_begin = vop_crtc_atomic_begin,
>   	.atomic_flush = vop_crtc_atomic_flush,



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
