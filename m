Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11246C28B23
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 10:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qft/VXDhOO0uy9QDwZ/jiohmPDuLDerD7gvmPhTeUJ0=; b=xOFoAriI3Bco2E
	nEFqk0/HOgk5OnTxOyCNDLq6C70+ZKQd1fAdZ+a1EE+PXTQCNe5ONVUjsYREA2Vq9grSVNhmE7b+6
	61QHh9Hq1f6aWz+/RXlm/9scK6uiKeCF550SviDffG2oWH00FFch1djSUPan+QGcDwLXGWBh2EM5M
	hUPeRfYqZcJizFAhSvMWWByALzdK+JX2huTsU9fnFwFCcqYj7Ff5UWREqrq7uetRWiQ/YMoEcR0Tb
	+r0URWPCn1V6fq6TfyuVtsrACgyt5Di9TtLb39LqhusjkAKKXW2UZEh1MXgETOOgapoI2fm5GRJ3f
	ZeoqBp7IIMd8xxUfYSqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tq8CS-0000000AakG-24Fl;
	Thu, 06 Mar 2025 10:11:32 +0000
Received: from smtp.forwardemail.net ([121.127.44.59])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq7py-0000000AXEk-0JNe
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 09:48:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741254496;
 bh=U6wIo8sTMBr3RbRnbR8Rzc/ze/1O+F9622aQgZcZWCQ=;
 b=bYiezuGYL9QUDUNDcLiXnal0zi/uoy7W+47GrZDZ1a/ewc3LPfcI0uC6Cyf90MLMH62D7p47k
 aob89hWzUFxS728dbfdBw3WRE8ltFmplefFtP82/50LtoSOvxOwxZ5SXIRgGX3+Jo+Ft8CpDzwd
 CV512fxbNAn18US1aCnWljZBLhG6QKu0o8KylBZu/ldFRyYwsNuHet/T/Xe1WXN5ws3EB4Oe9ml
 85jmk3pmlD52xMbXk+WT2vk+rWUsW1OXaZGi2Bs8Bw5wKK6V6AI45tCmxjWRhd79DBgrz46HXEK
 0C6IVnBgDEiuHWPlFSf37ZCwPug1C8UrHqFdsPoL3RMg==
X-Forward-Email-ID: 67c967d67c40f20919024cb4
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.59
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <ccd8be6a-c8d4-407b-906a-e4788a365775@kwiboo.se>
Date: Thu, 6 Mar 2025 10:16:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] rockchip: Add support for onboard eMMC on Radxa E20C
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20250305214108.1327208-1-jonas@kwiboo.se>
 <20250306090001.113127-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250306090001.113127-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_014818_232593_BDE79143 
X-CRM114-Status: UNSURE (   9.86  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Chukun,

On 2025-03-06 10:00, Chukun Pan wrote:
> Hi,
> 
>> Driver changes to use different delay and tap num is needed to be able
>> to support HS400 modes, something for a future series. With this HS200
>> mode should work:
> 
> I have tried HS200 mode on other rk3528 boards and it works fine,
> so can we enable HS200 mode for Radxa E20C first?

The host controller already report the HS200 mode, and as shown in cover
letter HS200 mode is being enabled/used with this series.

However, the driver must use different tap/delay num for HS400(ES) modes.
At top of [1] there is a commit that changes to use same tap/delay num
as vendor kernel and what I have tested worked in U-Boot. That commit
needs to be re-worked before it is ready. Also see [2] for pending work
before I plan to complete before moving on to the dwcmshc driver.

[1] https://github.com/Kwiboo/linux-rockchip/commits/next-20250227-rk3528-rk3506/
[2] https://github.com/Kwiboo/linux-rockchip/commits/next-20250305-rk3528/

Regards,
Jonas

> 
> Thanks,
> Chukun
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
