Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BB88C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 18:38:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9909961BF4
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 18:38:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9909961BF4
Authentication-Results: mail.kernel.org; dmarc=fail (p=reject dis=none) header.from=manjaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UCpra7JLoIFNWLMhN0P57kIdIGuC6Osu7fo2kzgqzS8=; b=dZGAeQVMqGyBWnRvnDbIrLpzli
	LA5WB866vyHP9TQHbUhQqX/95/YuMGBBZBgLaxGsAFEwDbwNGOvGe4cGbN59OL8PwhoUM0E9bcYWe
	AXlAjHZFedSmXfApshMATWgRI9wW+qz036BhDj/eAUDPU1fb6usY5pWzNnjgfwtPI57eq7RgPOi37
	lIIit79w3b2A3tKRvXux8oEeKDLdfDDelHRmd9ASvUOxh0arkp/QuFSfryVT35VISZQ52XBzaZ3ZD
	pkpSSNw23Ayz1yuPbDwda8lWbP7KWKsquUouzpeOoaIbM7EoqUTHsKFGoDp1ZK8sYrkQqe9uTuUNt
	PpEVgO7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnPpO-0067UE-6R; Wed, 17 Nov 2021 18:38:38 +0000
Received: from mail.manjaro.org ([116.203.91.91])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnPpL-0067To-EF
 for linux-rockchip@lists.infradead.org; Wed, 17 Nov 2021 18:38:37 +0000
Message-ID: <44b7f906-b1e5-c998-4dcf-8eb3b326ce9b@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
 t=1637174313;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SvxTLIhZSHgi7R0t9blZ6nng589zINZjC8SUwXLZrNA=;
 b=s49Gr57ams/zOIsrOG8k43Gy22FGCGxFUn6JtcYMbMt6xVgZdQtiZ4O89tKyQB7E+fLEgP
 3tuPv2E78koDQxva4RIOiQGs//U1IJYlcIVuCdu7UPhgHF6p2qqNarOPbQWEZGXUxJM6Ez
 7BASfSs9US+ZCZV/WQW1LFTpGd+eWUd3Lk7xSb4n+9WCym9XyRN1fz29WSDCGlG4NqVwiV
 v7efcfYgghnagR0t7wuOCUdPLGSFYKrUJI8DuZq2wpIebwddkPXohJLJbzDPSHOBW8FjMw
 kpiGCNbu/zJa6n/v5rD60vwzGW0MephV5M0i1K+Lyrg+hYoAZaUDPyudO6K8HQ==
Date: Wed, 17 Nov 2021 19:38:32 +0100
MIME-Version: 1.0
Subject: Re: [PATCH 12/12] drm: rockchip: Add VOP2 driver
Content-Language: da-DK
To: linux-rockchip@lists.infradead.org
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <20211117143347.314294-13-s.hauer@pengutronix.de>
 <7182753.rMVL1d3Icj@archbook>
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <7182753.rMVL1d3Icj@archbook>
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_103835_668226_975B786E 
X-CRM114-Status: GOOD (  18.87  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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

Den 17.11.2021 kl. 19.05 skrev Nicolas Frattaroli:
> On Mittwoch, 17. November 2021 15:33:47 CET Sascha Hauer wrote:
>> The VOP2 unit is found on Rockchip SoCs beginning with rk3566/rk3568.
>> It replaces the VOP unit found in the older Rockchip SoCs.
>>
>> This driver has been derived from the downstream Rockchip Kernel and
>> heavily modified:
>>
>> - All nonstandard DRM properties have been removed
>> - dropped struct vop2_plane_state and pass around less data between
>>    functions
>> - Dropped all DRM_FORMAT_* not known on upstream
>> - rework register access to get rid of excessively used macros
>>
>> The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
>> board. Overlay support is tested with the modetest utility. AFBC support
>> is still present in the driver, but currently untested due to the lack
>> of suitable image sources. Also the driver has been tested with weston
>> using pixman and (yet to be upstreamed) panfrost driver support.
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> ---
> Hi Sascha,
>
> thank you very much for your work on this! I gave it a try tonight,
> and unfortunately it appears to currently always attempt to use
> 1920x1080p60 as the mode regardless of the monitor. For example,
> on an old 720p monitor I had laying around:
>
> 	[  225.732342] rockchip-drm display-subsystem: [drm] Update mode to 1920x1080p60, type: 11 for vp0, output 0x00000800  HDMI0
>
> This results in a broken picture (all white with occasional glitches).
> Somebody else observed the same behaviour on a 1440p monitor.

Yes, my 1440p Dell screen showed white noise picture and so does my Sony 
Bravia 1080p TV, but that is likely not running at 60 hertz.

In any case, nice work as I've heard it works on regular 1080p monitors.

>
> Thanks,
> Nicolas Frattaroli
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
-- 
Kind regards
*Dan Johansen*
Project lead of the *Manjaro ARM* project
Manjaro-ARM <https://manjaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
