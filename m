Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F70EC46CD4
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Dec 2023 07:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=07q57f1uWA2m055IHAk1LPnLd3wR5fkW3iMBRHCYD20=; b=aVUC5KyDuU6yg4
	Y/mpdQiWkKGMxVsxqEVIgXeSbam+Dnsom1AYBOZ9Va7U3vVUEg/sTOzyrwsXf4IXiE1jpYfUYoiPP
	qDuoQJgQy1fAk2O44Klb8RZqEniZ832RoTX6FzaZuqXvy2WZYuCMISYrI2dU8yQvtgLUV9ntCMwXs
	8xg/P9ZBwppN27gcfl/SrZUNO0VYU0AxKfg+wDd0uTBosaYgMgpOaj13S1nMO9HzAr5t+UeT8QlDI
	wssSG1SCqJDjzuDY1hAFWJkEWTvoqkLsxneFaekzMeZLmjg+SuewxaVGomb/VbiG++y9UOFesBv5z
	PwiHcA4ZUJ/ygCHDOT2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIOIF-00E8t4-2h;
	Wed, 27 Dec 2023 07:25:31 +0000
Received: from mail-m92238.xmail.ntesmail.com ([103.126.92.238])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIOIC-00E8qi-1n
	for Linux-rockchip@lists.infradead.org;
	Wed, 27 Dec 2023 07:25:30 +0000
DKIM-Signature: a=rsa-sha256;
	b=RvX2VA+qI1jiltEok1fDOizrstnA6Z7klvR9bzHy36BDyFVTtZ4gmOcU6MqVIq6Sn3JLyGzH/8li0hUTzKEjM+Nicl6YgYi5vzHxi/wWND08EqP1QcSelydxWZ6xDpTnMKdkJKsHeQzjo6xbdXkNIUM2uo55rF1+xrWwNLW3VFM=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=QnFLxX+GaJFfr30gVyz7S+XQmtJ4OPMKRCqYFZBcc6U=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.93] (unknown [58.22.7.114])
	by mail-m11877.qiye.163.com (Hmail) with ESMTPA id 2AC0C4001AC;
	Wed, 27 Dec 2023 15:25:21 +0800 (CST)
Message-ID: <a9dd13e5-6433-4509-b4b7-61c50fbca8dd@rock-chips.com>
Date: Wed, 27 Dec 2023 15:25:20 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: vop2: 3566 vs 3568: green screen on 3566; on 3568 all ok...
Content-Language: en-US
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 Andy Yan <andy.yan@rock-chips.com>, =?UTF-8?B?6ZmI5oGS5piO?=
 <herman.chen@rock-chips.com>
Cc: Linux-rockchip@lists.infradead.org
References: <7408CE66-E110-4DB2-8B73-856E71E16754@gmail.com>
 <b1381668-9561-4b69-9183-3ec582b4c0df@rock-chips.com>
 <15DF99D4-D626-4C3A-B25A-C713E5264C7C@gmail.com>
 <ef6186aa-f600-4d3a-be0d-155ff3336a27@rock-chips.com>
 <DEF50A27-6DF2-4B83-8F30-A47AA3878BC6@gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <DEF50A27-6DF2-4B83-8F30-A47AA3878BC6@gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0hNT1YYT0pOSUwZSUhJQ0tVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8caa29e3fd2eb3kusn2ac0c4001ac
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ohw6OQw4OTw4KwkxETERES9L
	LT9PCTlVSlVKTEtITU1KQklKTE1MVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFISk1INwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231226_232529_159726_83587CCE 
X-CRM114-Status: GOOD (  10.33  )
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

Hi Piortr,

On 2023/12/26 19:22, Piotr Oniszczuk wrote:
...
> Perfect.
>
> Above patch + vop2_win_data rk3568_vop_win_data[] reordering to:
>
> Esmart1-win0
> Esmart0-win0
> Smart0-win0
> Smart1-win0
> Cluster0-win0
> Cluster1-win0
>
> makes Kodi and MythTV working out-of-box with EGL DMAbuf and DRM planes HW decoded video rendering :-)
>
> So with your help we have single 6.6.8 kernel offering EGL DMAbuf and DRM planes HW decoded video rendering on rk3328/rk3399/rk3566/rk3568/H6/H313/H616/H618/rpi3/rpi4
>
> once again: many thx
>
> (p.s: it looks like only thing missing in 356x to be perfect open-source multimedia soc is: lack of rkvdec2 for hevc/vp9 hw decoding. Are there any plans from rock-chips to help foss to bring-up mainline kernel support for rkvdec2?)
Rockchip do not have plan to add rkvdec2 driver for mainline kernel, 
since rockchip vendor SDK does not use V4L2 based solution for video 
encoder/decoder.
For rkvdec, rockchip has already totally open source for both kernel 
driver and userspace mpp driver, people can understand how it works if 
anyone interested in it.
If developers would like to port the driver for mainline kernel, it's 
welcome and if you have any questions about the hardware during porting 
the driver, we can help to answer.

Thanks,
- Kever
>   
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
