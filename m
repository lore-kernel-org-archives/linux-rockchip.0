Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB95DC27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 20:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgGP5OfkK6QIGEa1nkR/Ucuy0TvLNPVPEozSLFz7SnM=; b=Qiv7Wz7cPsaxQ6
	QbJH040QxyITcY1Fs1k7YgCARaUoUgrs7pEEPGGjlZ8spp8u4Srg3ef+pIgJv5DPw9Li0svHKqkXF
	wFmzK6ATsMrHqjnUGJ2Uy50C7NLrpBr9J9u7tI92J1I4wyG104aJkIj+XLG8FP75jsFIfMciEpoK2
	B6OfchDND6eB/Ky54A3Iw1eHi88DFj4SMMXeu7pOUE3yuL6Nipx+3qvckoWYoWSLzKv8DkQDg972f
	M6IwXMRFVMntaitP4uqup6obWhv4NVZoT+oCusbja9oqNCygXTEHGocTlIkm09xHFpZEl5ZbH/fsW
	DHdOZIvMQ0l3mF/JEVRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK1b2-00000002bK6-1u2V;
	Wed, 19 Jun 2024 20:07:56 +0000
Received: from smtpbgbr1.qq.com ([54.207.19.206])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK1ax-00000002bGW-3a4Z
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Jun 2024 20:07:55 +0000
X-QQ-mid: bizesmtp90t1718827648t29alr3u
X-QQ-Originating-IP: jw7JnoawfYHHbSslnwUqf/bSFS+/9CI8+eX4tr78MCc=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 20 Jun 2024 04:07:26 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 964551825667608247
Message-ID: <793B93C3DF509ADC+f2b62f2b-bc05-4573-b783-ac0a6083a21e@radxa.com>
Date: Thu, 20 Jun 2024 05:07:25 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH 1/2] arm64: dts: rockchip: fix PMIC interrupt pin
 on ROCK Pi E
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
References: <20240619050047.1217-1-naoki@radxa.com>
 <171882539855.4191977.2793236782363724538.b4-ty@sntech.de>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <171882539855.4191977.2793236782363724538.b4-ty@sntech.de>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz6a-0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_130753_818618_8BFAD833 
X-CRM114-Status: UNSURE (   9.18  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello,

On 6/20/24 04:31, Heiko Stuebner wrote:
> On Wed, 19 Jun 2024 14:00:46 +0900, FUKAUMI Naoki wrote:
>> use GPIO0_A2 as interrupt pin for PMIC. GPIO2_A6 was used for
>> pre-production board.
>>
>>
> 
> Applied, thanks!
> 
> [1/2] arm64: dts: rockchip: fix PMIC interrupt pin on ROCK Pi E
>        commit: 02afd3d5b9fa4ffed284c0f7e7bec609097804fc
> 
> 
> Patch 2 is not appropriate, sorry.
> 
> The aliases are sorted this way since 2021 and the order is userspace-
> facing. So for the last 3 years people have boards with the sdmmc as
> mmc0 and changing this now would possibly break a number of boards.

this is the reason I didn't add Fixes tag. I think this change in next 
major release is acceptable... but it's wrong?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
