Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EAF1CAC5B0
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Oct 2025 15:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SUjuPF7yhIKbHQ5l+XwBnZWhnK5iGPFCyCYPizzMZPs=; b=s36P9M1uxbYi2g
	68mWho8/giSj+QOHoFtiWkMDhi5wS3ti8ZELBjGTUxdtN+AgI/7sZFlXVkaNWcQ5m8f+PQcEdrLtA
	YTwPch/8L9WYhBOitXIhtdV3fVx4AOw2rzQs8uPcZgbHZBQ+u3fse28QkGhdO42zLK5RSo0VnW+fM
	2I0CjuqORwFs5FpuOY9Iudt4FkqS8g/a0n16kF7KfRtMhDZ+R9htikUjjEGH3nVW9BNhcsG2509B+
	INZf51ZtbPs9w5ZwoWfxpX8+E23YX4wSgo8kSX4PuVIXAjpmnVOLIt4zbf6+WQwvndD6TJi4w1QKD
	YOXPOkXJog5bg4LpTlFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4LaA-0000000Al8N-45db;
	Thu, 02 Oct 2025 15:51:02 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4La8-0000000Al81-2gCO
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Oct 2025 15:51:01 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1759420250; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=BBmF9prk/9z+d/PIko3gG5IAT2wZMeU/HJGNEXDhsL79OLHLgbEgpOeLVoJnl5DXS+DoGGzkwff1tTDsHOfd3jUXPP16XMT87Ubd3PkGDGUxxUeKgqJ3NsNiOQylMZPMMAzWQDHw1XD81wPAWyemhcLgQku0QejlYuAXimBPizA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1759420250; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=cjZk9P3mPo8vEXyNeg2cfL82WiNZDB6NKkkVZEOqqe4=; 
	b=hA43kO52+tz+ehJfz9xv7c/voKNs3CmoZ91Fc96JxIZxLf09+kvn0qCnRzSimdIPYQSV/2f6MtRz1b4KQOtk5lb3lLTYhxKFtRoTacky7A8T9ddjd/RbDLuqKcg0q8yv1+jOkdpqNvq/jjxywTLBTV9Aa/hlevSZtWHsdYuMTbo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1759420250;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=cjZk9P3mPo8vEXyNeg2cfL82WiNZDB6NKkkVZEOqqe4=;
	b=Jk0maqcUR5RFGMo9gQtZKBtwo79YQjWnsCWrWNDjB4GcjyI7SexYYl2RnOZnmPUW
	dfEJJiUN46+9ElIDZbIA4k63oloHRyOx4q/De1OcfrkybweMzm0oJ7Ng3Gybr7h94aq
	HCnHbf6vXLEfoeLA9DKLx1mieVPuvtOsGIB7RolM=
Received: by mx.zohomail.com with SMTPS id 1759420248615533.0821852004965;
	Thu, 2 Oct 2025 08:50:48 -0700 (PDT)
Message-ID: <169cf964-85a7-4f96-9a0c-0f06c7bfa012@collabora.com>
Date: Thu, 2 Oct 2025 18:50:41 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] media: synopsys: hdmirx: Detect broken interrupt
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, jose.abreu@synopsys.com,
 nelson.costa@synopsys.com, shawn.wen@rock-chips.com,
 nicolas.dufresne@collabora.com, kernel@collabora.com,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251002140750.579059-1-dmitry.osipenko@collabora.com>
 <wrzkhnslrwnpsv7gbdcvxobahun7l6foftftk676hxinfeqwjr@v3di5okva7co>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <wrzkhnslrwnpsv7gbdcvxobahun7l6foftftk676hxinfeqwjr@v3di5okva7co>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251002_085100_756079_7CEDB9C2 
X-CRM114-Status: GOOD (  11.94  )
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

On 10/2/25 18:33, Sebastian Reichel wrote:
> Hello Dmitry,
> 
> On Thu, Oct 02, 2025 at 05:07:50PM +0300, Dmitry Osipenko wrote:
>> Downstream version of RK3588 U-Boot uses customized TF-A that remaps
>> HDMIRX hardware interrupt, routing it via firmware that isn't supported
>> by upstream driver.
>>
>> Detect broken interrupt and print a clarifying error message about a need
>> to use open-source TF-A with this driver.
>>
>> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
>> ---
>> Changelog:
>>
>> v2: - Added PHY r/w lock and moved the clarifying error message as
>>       was suggested by Sebastian Reichel.
>>
>>  .../platform/synopsys/hdmirx/snps_hdmirx.c    | 90 ++++++++++++++++++-
>>  .../platform/synopsys/hdmirx/snps_hdmirx.h    |  2 +
>>  2 files changed, 90 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
>> index b7d278b3889f..e6456352dfa5 100644
>> --- a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
>> +++ b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
> 
> #include <linux/cleanup.h>
> 
> Otherwise LGTM and hopefully helps people to figure out the root
> cause of their problems:
> 
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Thanks for the review. The cleanup.h always included by mutex/spinlock
headers, there is no need to include it explicitly.


-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
