Return-Path: <SRS0=Ahoz=DF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58C02C2D0A8
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2020 08:40:56 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E1D29207E8
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2020 08:40:55 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="W2pOIHu/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E1D29207E8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ravnborg.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZgmCWpF9foDYiNF3LMTv95TJiTH7j5h2ihboI5YwNOs=; b=W2pOIHu/hiUj4eze2LT+0sbzR
	ZEKkueU/8HIXIPgtL1ieoAAcpGD6LLba3woBrq7YF+8YEGhP7hQSqAq4BHEAk4UcXiqlHHJg3/iQE
	0BMd8tHZkVgoWql7QcepGShdM0OVpgfmGyaGSerA9szimlO4IfoFeSzdq/BD79ZFCLLd53XHAmHRr
	Cjc17YGznh+4653wZ6tgvXVHCjp+UCwx6jAC5ueNDyBlaIHagLh9pAczybM1YeOxxwfcAPcbwqtZ5
	6+dY+lODGL/NorJQNBf+oVlFnGqWHnDCN5HxqhAhfnQR54pu8NRImLxBftmpl1CzgL/6IyY09NoD7
	zIARA2y9g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kMoiI-0007w4-Dl; Mon, 28 Sep 2020 08:40:50 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMohw-0007lC-FB; Mon, 28 Sep 2020 08:40:34 +0000
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id D649B20043;
 Mon, 28 Sep 2020 10:40:20 +0200 (CEST)
Date: Mon, 28 Sep 2020 10:40:19 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH] drm/rockchip: Include <drm/drm_gem_cma_helper> for
 drm_gem_cm_vm_ops
Message-ID: <20200928084019.GA625010@ravnborg.org>
References: <20200928081643.8575-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200928081643.8575-1-tzimmermann@suse.de>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=CaYmGojl c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=8nJEP1OIZ-IA:10 a=QyXUC8HyAAAA:8 a=7gkXJVJtAAAA:8 a=zd2uoN0lAAAA:8
 a=s8YR1HE3AAAA:8 a=e5mUnYsNAAAA:8 a=JfrnYn6hAAAA:8 a=tvGS8sPWz2o3X_C6TT0A:9
 a=wPNLvfGTeEIA:10 a=E9Po1WZjFZOl8hwRPBS3:22 a=jGH_LyMDp9YhSvY-UuyI:22
 a=Vxmtnl_E_bksehYqCbjh:22 a=1CNFftbPRP8L7MoqJWF3:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200928_044028_692235_FDB18397 
X-CRM114-Status: GOOD (  21.79  )
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
Cc: kernel test robot <lkp@intel.com>, airlied@linux.ie,
 Daniel Vetter <daniel.vetter@ffwll.ch>, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 daniel@ffwll.ch, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Thomas.
On Mon, Sep 28, 2020 at 10:16:43AM +0200, Thomas Zimmermann wrote:
> Include <drm/drm_gem_cma_helper.h> to get drm_gem_cma_vm_ops. Fallout
> from the recent conversion to GEM object functions.
> =

> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Reported-by: kernel test robot <lkp@intel.com>
> Fixes: 0d590af3140d ("drm/rockchip: Convert to drm_gem_object_funcs")

As this has only hit drm-misc-next and not pushed anywhere else there is
really no need for the Fixes: tag. At least thats my understanding.

Otherwise the patch is equal to what I posted in the weekend so:
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Christian K=F6nig <christian.koenig@amd.com>
> Cc: Sandy Huang <hjc@rock-chips.com>
> Cc: "Heiko St=FCbner" <heiko@sntech.de>
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/dr=
m/rockchip/rockchip_drm_gem.c
> index 1cf4631461c9..7d5ebb10323b 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> @@ -10,6 +10,7 @@
>  =

>  #include <drm/drm.h>
>  #include <drm/drm_gem.h>
> +#include <drm/drm_gem_cma_helper.h>
>  #include <drm/drm_prime.h>
>  #include <drm/drm_vma_manager.h>
>  =

> -- =

> 2.28.0
> =

> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
