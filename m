Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2ED9C9830E
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2026 19:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:CC:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zk+3w75yTwKqcSjppxceSjQfpsM1xV/W4aJmBFC6wB4=; b=yy5RGkfRtn8lju
	6rcIF3/gKO6foLYMc0tR1Fa9zIbf9Rf0x//rkFrj4cozkZsam3NQ7sMYwSdgY/wrNstwHw6D7zFKH
	KkFBUbItfSnMw2pa1oA9j0rSoXpnffYXbosyBlKb+4HnuGFFaLa1ejA1mR7eIHIP6C3ODFG+JDXIp
	Hu68NEcU4hP4He1qe6YReQVBJHU1PH9fc4LQJVT9U1T/tDp4j5geNhZAoHx5qyO3J+CZONF40hYT3
	E7sFGxdWiUfqOFt8mtdnmh8kghBUPIPOfxzHCHz6F7sUKxxwV8M4MHjRZStBHhSVEAyPdTQSAFA7i
	LTir9y6tLCbg7Q85Y+SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xABlB-0000000EHcg-1URV;
	Fri, 25 Sep 2026 19:39:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xABl9-0000000EHcT-2axh;
	Fri, 25 Sep 2026 19:39:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:References:CC:To:From:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Yp2r+AdNSSNhj8bzMtH1mu8mCpgJfBoAB8kZorGPwPA=; b=K0SNo5QHu2Pu3ROi9UL/fXg0tp
	VnCTgGr2iLzcSCYfTOxTUcDH1g1AKqaKt6A34yY4pj2Qs4l4W2juEZZYwxekNb3GKpRtFt9RQLsv4
	bNaPLQQa6ljPuDE/ATdqfoaxU3wlfS+qzXwpqJa9uwjEOvZfvrDs9XbWz5ZEH1dAp6RsgGH0aLVwM
	ycvqixcLcLd1IxVIqj+k0V1wbRgXkoa0tGMykD/emDGbNqfKt3lJpNpb7aH2+5YGfWpyGnehh8ZTq
	JQhrPOzYWcTJymDcu5AdEpuAIQQLlHafELmPwraR7ieOkAbtI9UdIiUwrVjfVixh3ovLv58YwNap8
	cMwvvm9A==;
Received: from [95.181.193.9] (helo=mail.auroraos.dev)
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xABl1-0000000HIQd-2Agz;
	Fri, 25 Sep 2026 19:38:59 +0000
Received: from [192.168.2.104] (91.78.45.169) by exch16.corp.auroraos.dev
 (10.189.209.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1847.3; Fri, 25 Sep
 2026 22:38:46 +0300
Message-ID: <66a4cfe1-286c-4d63-9285-2445c48739ab@auroraos.dev>
Date: Fri, 25 Sep 2026 22:38:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] pmdomain: rockchip: fix domain check in
 rockchip_pm_add_one_domain()
From: Sergey Shtylyov <s.shtylyov@auroraos.dev>
To: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
CC: Ulf Hansson <ulfh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	<linux-pm@vger.kernel.org>, <linux-rockchip@lists.infradead.org>, Caesar Wang
	<wxt@rock-chips.com>, Kevin Hilman <khilman@linaro.org>,
	<linux-arm-kernel@lists.infradead.org>
References: <20260920175928.42566-1-s.shtylyov@auroraos.dev>
 <CAPx+jO-Ph038WJQ4gMH93XzoMC09+meht=yT9JQBAnTD6HzGEg@mail.gmail.com>
 <eae7ec74-5b90-4258-9576-159c700bd8f4@auroraos.dev>
Content-Language: en-US
In-Reply-To: <eae7ec74-5b90-4258-9576-159c700bd8f4@auroraos.dev>
X-Originating-IP: [91.78.45.169]
X-ClientProxiedBy: exch16.corp.auroraos.dev (10.189.209.38) To
 exch16.corp.auroraos.dev (10.189.209.38)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_203855_775344_C0553EFF 
X-CRM114-Status: GOOD (  13.01  )
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

On 9/23/26 11:44 PM, Sergey Shtylyov wrote:
[...]

>>> In rockchip_pm_add_one_domain(), there's the check (most probably for
>>> the case where the "reg" prop has an unexpected value?) which doesn't

   By "unexpected value" I meant a domain that isn't controlled by this
driver and so have no explicit initializer in *_pm_domains[]. Looks like
for such domain #s rockchip_pm_add_one_domain() should fail with -EINVAL.

>>> make much sense as the variable pd_info will be NULL iff pmu->info->
>>> domain_info is NULL and the variable id is 0.  What does make sense
>>> there is checking pd_info->pwr_mask and pd_info->req_mask which (as
>>> seems to follow from the code) can't both be 0 for a valid domain...

   For the domains that have no matching initializer these fields should
be both 0. I had chosen checking these 2 fields instead of pd_info->name
as I intended this patch as a fix, easily backportable to the LTS kernels.

>>> Found by Linux Verification Center (linuxtesting.org) with the Svace
>>> static analysis tool.
>>>
>>> Fixes: 7c696693a4f5 ("soc: rockchip: power-domain: Add power domain driver")
>>> Signed-off-by: Sergey Shtylyov <s.shtylyov@auroraos.dev>
>>
>> Applied for next, but without the fixes tag, thanks!
>>
>> Note, that I am dropping the fixes tag because if there was a real
>> problem, we would require yet another fix on top to get the

   If a defective DT is considered an issue then there's a problem. :-)

>> corresponding domain declaration to be correct. Yet, the patch is
>> useful as is!

   Like I've already told, my aim was not detecting the bad declarations,
just bad DTs. I probably just wasn't elaborate/assertive enough...
>    I was thinking of doing a more elaborate description but if you
> considered it good enough, OK... :-)

   So what are you going to do with this, leave things as they are: the
patch merged to the next branch (in its current form) and not merged to
fixes? Perhaps a revert or an incremental patch?

>> Kind regards
>> Uffe
MBR, Sergey

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
