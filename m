Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B000FC83F17
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jul 2025 03:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yY3EibHzOTlUIX6lfz0vVluc7p9YBZvruQMAWbp9+NI=; b=u6X3VLeHLi5Zr3
	xw0GKx2SwgCXIhy8cq2wVlpwoEkyy5p3Z4UnrfTj/B0W+E28jjXZ3Y4joSrJDdXwarvBfrS50tKxR
	pi4mxtRMfzFuWE/tWXcmAv9X9AKBaFcrObOIGpdKoJC5uk7puufbh3SJdhWcTNxG9HWrCCbT+AF3k
	8wwlQhZRUPVFDE+aFG8mTizYEsNNLgWVPiiftrXaQ0Gk0KHAwf+VcvQTy2Xj1ozs5yz5KWOZQ5mlB
	Euh1F01iKG8nZuYZtJw/cX9JlMfJDt4Pb4ePJQiT97cCyxaMAnBoME49LSMz3TWLPlo7XyI2YPQmc
	rPS+TuaVycSf/1difNCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugajO-0000000Fp3X-0WkF;
	Tue, 29 Jul 2025 03:10:22 +0000
Received: from mail-m158197.netease.com ([47.251.158.197])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugaiv-0000000Foyp-0fEU;
	Tue, 29 Jul 2025 03:09:54 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1d8d749f6;
	Tue, 29 Jul 2025 11:09:47 +0800 (GMT+08:00)
Message-ID: <54ca1b36-fe13-4c2c-8e88-6e8e3c5d418f@rock-chips.com>
Date: Tue, 29 Jul 2025 11:09:46 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 09/14] drm/bridge: analogix_dp: Add support to find
 panel or bridge
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 jingoohan1@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com,
 hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 l.stach@pengutronix.de, dianders@chromium.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20250724080304.3572457-1-damon.ding@rock-chips.com>
 <20250724080304.3572457-10-damon.ding@rock-chips.com>
 <kulhumudepz3lqm6c36wbqtc4gv35pyqki7el63bovnvxcsjkk@nbxijrujm2vz>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <kulhumudepz3lqm6c36wbqtc4gv35pyqki7el63bovnvxcsjkk@nbxijrujm2vz>
X-HM-Tid: 0a98542859c103a3kunm87893e013b06b7
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR9NTVZDQh4aTUwdTU9NTEtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=AP/adSjE3FdRXEHhFfV/nKCal90lkpwjWfjHLGPfb4HSlsT7RWL53R0WCZtREraRkEqn6gfcUTrUm51n3M5e5MMoOWYJUUOAs6NGxMBIpzInGnbOZ4/XyxxOyPlF6netaBfMyjQw5ZBBydxKrervYTunuA0YKVAyinTn+SJDwPs=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=rUdqYX6T9QuWjeM9cJHzQiY8rQSOQ+4zW99e7T7EF00=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250728_200953_746222_F127CA96 
X-CRM114-Status: GOOD (  11.88  )
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

On 2025/7/26 20:03, Dmitry Baryshkov wrote:
> On Thu, Jul 24, 2025 at 04:02:59PM +0800, Damon Ding wrote:
>> Since the panel/bridge should logically be positioned behind the
>> Analogix bridge in the display pipeline, it makes sense to handle
>> the panel/bridge parsing on the Analogix side.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>> ---
>>   .../drm/bridge/analogix/analogix_dp_core.c    | 48 +++++++++++++++++++
>>   include/drm/bridge/analogix_dp.h              |  2 +
>>   2 files changed, 50 insertions(+)
>>
>> +int analogix_dp_find_panel_or_bridge(struct analogix_dp_device *dp)
> 
> Nit: the API does more than just finding the panel or bridge. Also the
> drivers use it in a more of 'analogix_dp_finish_probe()' manner.
> 
>>
> 

Yes, since the new API also includes component_add(), it would be better 
to rename it.

And the commit message will be expanded in the next version.

Best regards,
Damon


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
