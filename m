Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAA84C369CB
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Apr 2025 01:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AU4xZFfdhQecZHzaf2B4A5BLoNnOMdFPQab94z1Byi4=; b=N4mmrNWYWkGSzE
	MBRjtGjCu+2ABs75OT+jeb67mD7Nm0H4oya2MJu3w46iNB0twsvr5a3As3Y7WpQUxlJ0Wfq1oWrNB
	MRALay5DkcBjyrBllp3pk/4j6xc9Xsi8Nicqn9Oi3XdFHpn6AXT11hkIcXySjb+tES8Xfuc/DgCGx
	LF9pp7fjbddnu5f6eur97zfoWSKtgkY99V85BndMyliP+v7MnQ/g/SRoercD2+27kx83QdU+89E2S
	2jTuZma0klowIUv411cyCFnpGXgiYS7Sqw//HoqwVAxkvOMsYJzNjIz5qcdHuaMxnwbi1Ed3YRcPG
	E5AkSNT//TWgAXcvKbDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7kx9-0000000CSnz-49KK;
	Thu, 24 Apr 2025 01:00:35 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7kgx-0000000CQVF-31N4;
	Thu, 24 Apr 2025 00:43:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=QTVmIoV8bT7TS1J/bHn0cF9ZcR5e5MVRDdBrhghGq8c=; b=m
	YxNlMXlspOe81pr+rfZ922TXq7NPZVFz2l/cr9hGOHCmECkeuqrNXH+or4V2+NQk
	hZuLwwMjC6S1sQdRE8ZdnCPit5RfJutnbss/kSCvxmZLU0NUs5WRDtXFXdZwpI9g
	ZJdiSQ9ZaHzk9kWFAXg7ytfzoXuzf3+hr3OFCu4ZyI=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-102 (Coremail) ; Thu, 24 Apr 2025 08:42:47 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Thu, 24 Apr 2025 08:42:47 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re:Re: [PATCH] drm/rockchip: add CONFIG_OF dependency
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <a4tcrxepuvvxixpab3txz6tdbh6janiedjqddl2ybfo6plhjcl@r5bxdabuhjep>
References: <20250423164422.2793634-1-arnd@kernel.org>
 <a4tcrxepuvvxixpab3txz6tdbh6janiedjqddl2ybfo6plhjcl@r5bxdabuhjep>
X-NTES-SC: AL_Qu2fB/ieukst4SadbekfmkcVgOw9UcO5v/Qk3oZXOJF8jCzp8D4yf1JTEnDy1fCDKg+MkAiHYjpJ8Pt0f7d2fYwuVF/Ep8+wUnGXRqnQ58Y+5g==
MIME-Version: 1.0
Message-ID: <13627027.772.196653f45f1.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: ZigvCgAXfIYHiQlo2ESdAA--.63259W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqBU5XmgJh6IglgABsp
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_174352_054449_810A4398 
X-CRM114-Status: UNSURE (   6.70  )
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
Cc: Simona Vetter <simona@ffwll.ch>, Arnd Bergmann <arnd@kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Heiko Stuebner <heiko.stuebner@cherry.de>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Geert Uytterhoeven <geert+renesas@glider.be>, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <lumag@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi, 

At 2025-04-24 01:18:45, "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com> wrote:
>On Wed, Apr 23, 2025 at 06:44:16PM +0200, Arnd Bergmann wrote:
>> From: Arnd Bergmann <arnd@arndb.de>
>> 
>> DRM_DISPLAY_DP_AUX_BUS cannot be selected when CONFIG_OF is disabled:
>> 
>> WARNING: unmet direct dependencies detected for DRM_DISPLAY_DP_AUX_BUS
>>   Depends on [n]: HAS_IOMEM [=y] && DRM [=y] && OF [=n]
>>   Selected by [y]:
>>   - DRM_ROCKCHIP [=y] && HAS_IOMEM [=y] && DRM [=y] && ROCKCHIP_IOMMU [=y] && ROCKCHIP_ANALOGIX_DP [=y]
>> 
>> Rockchip platforms all depend on OF anyway, so add the dependency here
>> for compile testing.
>> 
>> Fixes: d7b4936b2bc0 ("drm/rockchip: analogix_dp: Add support to get panel from the DP AUX bus")
>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

    Acked-by: Andy Yan <andy.yan@rock-chips.com>

>> ---
>>  drivers/gpu/drm/rockchip/Kconfig | 1 +
>>  1 file changed, 1 insertion(+)
>> 
>
>Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>
>-- 
>With best wishes
>Dmitry
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
