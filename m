Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE107C46CD4
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Dec 2023 07:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jJBz1SIHdJvioYGhiyOO//lH4XvRsdjGb658wYINRE0=; b=ylc/BoW0JYfwNLEoDcIZ6Htt2h
	jVVj6UxqOvTib1uvINGzhF/C+hIsN514hqcbnvB3BfrYZn+Im49uX+WoDBPDbcrcQ/7Who6YJIxOd
	UpCbDTdijXvFoq+VZcLAzOV9WT2q8ahKMs6Pm4MOKuoUyp/y0mvcc2WkijpJ+T8QO5jeh07TltNgR
	vlKOENDbl8843he0EvdrBKMRH+Qoyp65l6TRt37kGyk/xE6zA3wzteNPR6UP8s2uA1HMpoi1oaH1x
	YkuUYy4xYDJji5SmsDXkkCZlhg4uxrkrSoeXDx6+r6dPJsocxXesfFx5acpygn7/dPc1EyEMwFRu2
	nC81yBMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIOTD-00E9sc-14;
	Wed, 27 Dec 2023 07:36:51 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIOT9-00E9qH-1E
	for Linux-rockchip@lists.infradead.org;
	Wed, 27 Dec 2023 07:36:49 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1703662602;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vb+XA0D1YqX8aSKArbH4IPYErez7qJXgbs6PBNfW7B8=;
	b=VBPx3wvGuhEn4vQ8csDUOO1OceKVIx1iur4+Ep2QYZOs3Rmvq3HEoiQQooC8G7AUEE+Ejp
	LrRa/XYtiegeTJJN7Dz/E16a9svjSBR66fOj9Ca9eTiRrDeOfE06aXjiUjPyh9DQ1LIh+E
	/PNx+PCQo4Luwe5+O8lHEqyXH98k/xFycgZhXo9e0xYt2zEeZZZMalgJN68phpSW5UN6hK
	qxU0GCV6vCwtQmEdb25o+wesJFYc1sXHMugfSMRs5TS83brQl/3JC5+EPsmYYTgZ18NoMG
	MS9WWIWplEmj7zkxlMqO4iMZBUQ6k8nngyEBcmVYZPlkyZw25/ZD9K9UwbIcUg==
Date: Wed, 27 Dec 2023 08:36:41 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>, Andy Yan
 <andy.yan@rock-chips.com>, =?UTF-8?Q?=E9=99=88=E6=81=92=E6=98=8E?=
 <herman.chen@rock-chips.com>, Linux-rockchip@lists.infradead.org
Subject: Re: vop2: 3566 vs 3568: green screen on 3566; on 3568 all ok...
In-Reply-To: <a9dd13e5-6433-4509-b4b7-61c50fbca8dd@rock-chips.com>
References: <7408CE66-E110-4DB2-8B73-856E71E16754@gmail.com>
 <b1381668-9561-4b69-9183-3ec582b4c0df@rock-chips.com>
 <15DF99D4-D626-4C3A-B25A-C713E5264C7C@gmail.com>
 <ef6186aa-f600-4d3a-be0d-155ff3336a27@rock-chips.com>
 <DEF50A27-6DF2-4B83-8F30-A47AA3878BC6@gmail.com>
 <a9dd13e5-6433-4509-b4b7-61c50fbca8dd@rock-chips.com>
Message-ID: <fb43b99af44308232700dbf30e313cd0@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231226_233647_902102_0608A76C 
X-CRM114-Status: GOOD (  11.53  )
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

On 2023-12-27 08:25, Kever Yang wrote:
> On 2023/12/26 19:22, Piotr Oniszczuk wrote:
> ...
>> Perfect.
>> 
>> Above patch + vop2_win_data rk3568_vop_win_data[] reordering to:
>> 
>> Esmart1-win0
>> Esmart0-win0
>> Smart0-win0
>> Smart1-win0
>> Cluster0-win0
>> Cluster1-win0
>> 
>> makes Kodi and MythTV working out-of-box with EGL DMAbuf and DRM 
>> planes HW decoded video rendering :-)
>> 
>> So with your help we have single 6.6.8 kernel offering EGL DMAbuf and 
>> DRM planes HW decoded video rendering on 
>> rk3328/rk3399/rk3566/rk3568/H6/H313/H616/H618/rpi3/rpi4
>> 
>> once again: many thx
>> 
>> (p.s: it looks like only thing missing in 356x to be perfect 
>> open-source multimedia soc is: lack of rkvdec2 for hevc/vp9 hw 
>> decoding. Are there any plans from rock-chips to help foss to bring-up 
>> mainline kernel support for rkvdec2?)
> 
> Rockchip do not have plan to add rkvdec2 driver for mainline kernel,
> since rockchip vendor SDK does not use V4L2 based solution for video
> encoder/decoder.
> For rkvdec, rockchip has already totally open source for both kernel
> driver and userspace mpp driver, people can understand how it works if
> anyone interested in it.

This is awesome.  Though, could you, please, send the links to the 
actual official source code repositories, simply because there seems to 
be quite a few of such repositories, which becomes confusing rather 
quickly?

> If developers would like to port the driver for mainline kernel, it's
> welcome and if you have any questions about the hardware during
> porting the driver, we can help to answer.

This is also awesome, thank you very much.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
