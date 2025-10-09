Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 418CBCAC5BB
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Oct 2025 01:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sRYE9hVTVDAgSl9iufJ0ku/NDd5hO+zoQdICH2bgp+c=; b=c2YBBHWy614oT6
	0gdfVDeJz3f4eRrRI/l3pjDBBww0D93t8yPWIDROx8DGJBAXojmxJMJnuSm55WOWDVLUXd0grWSjd
	fL2N2jL2exVYDmql3qitFSOdvrkgBSv7Q2i7WPZ5K2oLCEBjP7F0N55mP94n19e1HD4FsxRoKgGM9
	duMz/GE29C+p+Vd35M7y+t19ltcs5cf48P/pw7DM7mGWwQUuuerSGhc4+KAAOtmX4N+bhkr2HwIIv
	377tCQ4uc5byDd6uYDO054QN9i0CoYQDajLx/AtLW3vpXaaeUgeE+JQlSDB2Wm+QGaj8HN1G3fsxn
	VEEyqfWKFgzTS+3bM8nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6fjO-00000004yXr-0KO3;
	Thu, 09 Oct 2025 01:46:10 +0000
Received: from mail-m3276.qiye.163.com ([220.197.32.76])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6fjI-00000004yXP-3eo0;
	Thu, 09 Oct 2025 01:46:09 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 253d44f19;
	Thu, 9 Oct 2025 09:45:58 +0800 (GMT+08:00)
Message-ID: <ac2b6c11-b3c2-4ecd-a0b3-fafc584425bc@rock-chips.com>
Date: Thu, 9 Oct 2025 09:46:00 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 04/18] drm/bridge: Move legacy bridge driver out of imx
 directory for multi-platform use
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com,
 jingoohan1@gmail.com, p.zabel@pengutronix.de, hjc@rock-chips.com,
 heiko@sntech.de, andy.yan@rock-chips.com, dianders@chromium.org,
 m.szyprowski@samsung.com, luca.ceresoli@bootlin.com, jani.nikula@intel.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20250930090920.131094-1-damon.ding@rock-chips.com>
 <20250930090920.131094-5-damon.ding@rock-chips.com>
 <x2fpm4rb7ermb2tyjefdwwbvwvzt6uosd45ad7ku3tp3yqkmqc@bayzgz3jsqkp>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <x2fpm4rb7ermb2tyjefdwwbvwvzt6uosd45ad7ku3tp3yqkmqc@bayzgz3jsqkp>
X-HM-Tid: 0a99c6a57e3103a3kunmfad084a5a34e64
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkkZGlZNHUxNTBlKSBlJH09WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=WNdbsaZbbltnfB98jhkb8/mQbmF1sAaoVzHqeW9JnKbGUruIhACGVxkCCl91k3GBm68p9ZqogDvjX5tMx77yXn/LSwAAWRdhdh2Af+R1vTKiL8aRbalbQV2uWiC25vNrgQ5aMK8cVPAUcZHFWBzKDp71wr7tro+sAejfj7pfigA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=U8Lyg1iODEcriIg8AQsHGCBrZHwVaWgFuk2yxIxhxAI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251008_184605_400227_03F2CE7C 
X-CRM114-Status: GOOD (  15.28  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dmitry,

On 10/1/2025 4:10 AM, Dmitry Baryshkov wrote:
> On Tue, Sep 30, 2025 at 05:09:06PM +0800, Damon Ding wrote:
>> As suggested by Dmitry, the DRM legacy bridge driver can be pulled
>> out of imx/ subdir for multi-platform use. The driver is also renamed
>> to make it more generic and suitable for platforms other than i.MX.
>>
>> Additionally, a new API drm_bridge_is_legacy() is added to identify
>> the legacy bridge, allowing specialized handling for such cases.
> 
> Why do you need special handling for it?
> 

As you suggested, I will remove this API and add a temporary flag to the 
Exynos side.

>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>> Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> ---
>>   drivers/gpu/drm/bridge/Kconfig                | 10 ++
>>   drivers/gpu/drm/bridge/Makefile               |  1 +
>>   drivers/gpu/drm/bridge/imx/Kconfig            | 10 --
>>   drivers/gpu/drm/bridge/imx/Makefile           |  1 -
>>   .../gpu/drm/bridge/imx/imx-legacy-bridge.c    | 91 -----------------
>>   drivers/gpu/drm/bridge/legacy-bridge.c        | 99 +++++++++++++++++++
>>   drivers/gpu/drm/imx/ipuv3/Kconfig             |  4 +-
>>   drivers/gpu/drm/imx/ipuv3/imx-ldb.c           |  6 +-
>>   drivers/gpu/drm/imx/ipuv3/parallel-display.c  |  4 +-
>>   include/drm/bridge/imx.h                      | 17 ----
>>   include/drm/bridge/legacy-bridge.h            | 18 ++++
>>   11 files changed, 135 insertions(+), 126 deletions(-)
>>   delete mode 100644 drivers/gpu/drm/bridge/imx/imx-legacy-bridge.c
>>   create mode 100644 drivers/gpu/drm/bridge/legacy-bridge.c
>>   delete mode 100644 include/drm/bridge/imx.h
>>   create mode 100644 include/drm/bridge/legacy-bridge.h
> 
> I'm slightly concerned with the name of 'legacy drm bridge', It was fine
> for 'i.MX legacy', but now it might be a bit of overkill. Maybe
> something like drm_display_mode or drm_of_display_mode bridge?
> 

The 'drm_of_display_mode_bridge' is more descriptive. Compared to that, 
the 'legacy-bridge' is somewhat ambiguous.

Apologies for the delayed reply as I was on vacation. ;-)

Best regards,
Damon


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
