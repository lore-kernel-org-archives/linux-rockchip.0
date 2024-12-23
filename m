Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DA37E7718D
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Dec 2024 12:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdZNKMSqQvby5hbQpxU6376/uwzrGZCh9oMsMyNgPYc=; b=46uKIVDIZ2UHkN
	jCpHRlBWEwFQpSGsxsPeqVIlW9oYPPiIFsBSzweFRt+Wdtw4vza+OU4XXyyK6MzZjyF2WEKHnZ9Nc
	jEOX2SPUHYY5tGE1PJj67xlBiPOs1xtr6isL/nkh7JMhJTYijnF57W3Sr96HzvYGytAnlDMemCNoi
	EIWN6Fpo6lnCbnYpCb73fS+UkiH2nb9Ru1aH+gGHuljGvYIuyqQF5vLJxruS2KMp9z817CxLc3buu
	depO7OVxZJzi8rpvTRj5/zs234KivzBU35kpx0Jsv5CaxbefBuWRMfx80jrHzVvhv2lu6nS4wywm7
	QecpPYm36SY0IQ2tZgug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPhCK-00000009y60-1THj;
	Mon, 23 Dec 2024 12:06:08 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPg1O-00000009oYQ-1LVW
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Dec 2024 10:50:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1734951030;
 bh=ldpU7U+iDeDqdGmWrr2McLkbrGNSwEPYJtJhCL7zXIg=;
 b=sON0gedR1ram4Gzmd9Faq6dzeR17akklVFBSXvGjjUwmqklid9X6a0eJdsw8upYSLHeY/WuN8
 OTbSbkvSsyb4by2A3Pp0P6yRRA3mDi+jiGVr24NJhOBRX8vlmzWRm1ke8XrSKW4mIdkNS0zQ2hR
 f9ApoMvv+0RxTs7dgafEp+mx/4oeN582Qjfz1ElVs0e9XxuJgnRWnHmRbu5OFAj/yCj/xdPafwq
 rOfnpCF4/rjIpdBvWsZsBkk7YcRC05MCNmaquOdUJPnyCiGM8IfCyhM5vBfFLwOaDZ3djvtgRlw
 hXZYFVxIIpTu7whGC1otWVYyGrAjjEoOQAPIlj/kHg3A==
Message-ID: <d7b2e993-c6c8-4e60-bfe2-80857ca8a992@kwiboo.se>
Date: Mon, 23 Dec 2024 11:50:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: default to host mode for USB on
 Radxa E25
To: Chukun Pan <amadeus@jmu.edu.cn>, naoki@radxa.com
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <4D8217DF36191C3E+be8bbb4f-ea52-4f81-8501-ff551f54621c@radxa.com>
 <20241223030006.852427-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20241223030006.852427-1-amadeus@jmu.edu.cn>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 67694076445b82250f09d24a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241223_025046_724102_AAAD4560 
X-CRM114-Status: GOOD (  12.08  )
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

On 2024-12-23 04:00, Chukun Pan wrote:
> Hi,
>> I've been using the uSD card for a long time as a bootloader only,
>> so I don't know what the problem is.
>>
>> Do you have any information on how to reproduce the problem?
>>
>> Best regards,
> 
> Not stable on openwrt/lede, sometimes falling to sd-highspeed.
> Maybe it would be better to switch to sd-uhs-sdr50 mode.

I would advise against using any sd-uhs- mode for sd-card on Rockchip
RK356x boards because of a timing issue during boot between mmc,
regulator and IO-domain drivers.

Any board that support changing between 1v8 or 3v3 io-voltage for the
sd-card is possible affected.

There is a race condition during boot and when IO-domain driver has not
been probed before UHS tuning is started the tuning is done using a 3v3
IO-domain configuration instead of 1v8.

This can typically be seen by comparing UHS tuning during boot and when
same sd-card is removed and re-inserted after boot.

Ideally this race condition should be solved instead of limiting use
of UHS modes. However, use of sd-uhs-sdr50 is typically more forgiving
and has been used on other boards.

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
