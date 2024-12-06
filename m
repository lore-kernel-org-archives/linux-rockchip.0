Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57DB6E77173
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Dec 2024 12:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ryL08wTluw2ocYjcUw7QWkI/0hG5uEedGVVAI8PUtE=; b=OPFV0S4OND7DiY
	18LIV8mnQ/tr4G+WVfQdqHArJ8zW+7uiPEUoqALEanvjdWlgAXBh/o5bQ31QJ0NKPKWmjbHaCyywO
	3CWkCb8VRhRtABuxmW8MgAGyCenwGmL90iOtaLEASAwexFEF0AUUYH0V6Sz//gvJAKTum+NzeIFxo
	k1EKL6RpEtHW1cnx1zKUm4Z1DeYy4xw9M7Zt/Je/ky1L6VDvF11tY4a3IBTgo6/kFazxTZR+jzgcB
	BHzjykr9DssgAAo50fiIbQQHpR1EfT50al6Qarj1egMSpIt0vgKTW9NrC0hcCMzx4cwHpn1RleQq1
	YFsJ/CbmMREjIy0utffg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJXAk-00000001X2v-1zMq;
	Fri, 06 Dec 2024 12:11:02 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJX9A-00000001WpZ-0ulK;
	Fri, 06 Dec 2024 12:09:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=n4hW/V/Xu2dnjj6AYJ4WjJceT096qx6cfGkMAL+BDWw=; b=h
	g1ELVI/I4z/oSYqyoWt4/Rca5z33HAmc9Rb1shux5Yco08X9sw16uhdQKUvbaLqJ
	H2nL1hi88EublB7N7C0MKLBzGFPJb3+6zsnyuJQH5K4zple2nEyCaCzlKGlmlajc
	qtknFjry0sJ/KJMuGlVEtTkEu/IdPwBe0lqJSyfrA0=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-118 (Coremail) ; Fri, 6 Dec 2024 20:08:47 +0800 (CST)
X-Originating-IP: [58.22.7.114]
Date: Fri, 6 Dec 2024 20:08:47 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Guoqing Jiang" <guoqing.jiang@canonical.com>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
	dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re:[PATCH] drm/rockchip: Remove unnecessary checking
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <20241206114233.1270989-1-guoqing.jiang@canonical.com>
References: <20241206114233.1270989-1-guoqing.jiang@canonical.com>
X-NTES-SC: AL_Qu2YAfiTuUEp4SSeY+lS8zNM9K56MKvt5LljqcQFePgqqTHL3g4cZnlBM0vW6uJQJuqD7OHbXn3B2mnPVyPr
MIME-Version: 1.0
Message-ID: <6db9676.aa57.1939bdf5e6e.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: digvCgDXfwdP6VJnmyI5AA--.11968W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hetXmdS4Imk1gABsZ
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_040924_599420_CD617AAC 
X-CRM114-Status: UNSURE (   6.15  )
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

Hi Guoqing,

At 2024-12-06 19:42:33, "Guoqing Jiang" <guoqing.jiang@canonical.com> wrote:
>It is not needed since drm_atomic_helper_shutdown checks it.
>
>Signed-off-by: Guoqing Jiang <guoqing.jiang@canonical.com>

   Acked-by: Andy Yan<andyshrk@163.com>

Thanks

>---
> drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 3 +--
> 1 file changed, 1 insertion(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
>index 585355de696b..64f5f547fb7a 100644
>--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
>+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
>@@ -488,8 +488,7 @@ static void rockchip_drm_platform_shutdown(struct platform_device *pdev)
> {
> 	struct drm_device *drm = platform_get_drvdata(pdev);
> 
>-	if (drm)
>-		drm_atomic_helper_shutdown(drm);
>+	drm_atomic_helper_shutdown(drm);
> }
> 
> static const struct of_device_id rockchip_drm_dt_ids[] = {
>-- 
>2.35.3
>
>
>_______________________________________________
>Linux-rockchip mailing list
>Linux-rockchip@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/linux-rockchip
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
