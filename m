Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DE8CC54735
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 11:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8NERkvpPbLwlna7LCaUqxj/2Bgadyoi6ezEArjApvE=; b=xR75eV70cPdsJm
	SkqzTqA9pkt3Cq1n4H07PQDPZnxkXNo9OIRzaG7pxPcPS1iCUbxQLir+llno6G9DM+R9yz5ssuvE5
	8/dvQ4fPYUpQ05A+BdtSp5c1lCyMiMWq9GKrURuW4RQ1BYx3yANrQvLsvQlF+eXgsmcYVwAVd8+7S
	ZQqjlDrf9h37QVO2TYhPi57ZfixPQDHtm75doZ10DDH+y/f1Bx0SPqEiqvs6JI2tK8YROjsJWo+G+
	jWVynnPZoWM1AJPR02bP+m5Qw4YewM28Uta1ymXwARJyJG1r4NEPOo9d104oFEySu0m9p98NxaGBc
	hH/LKXtFIEzgF3OvQuVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siuMb-0000000Az9K-4072;
	Tue, 27 Aug 2024 11:27:53 +0000
Received: from smtp.forwardemail.net ([164.92.70.200])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siuMZ-0000000Az7Z-1w1b
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 11:27:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1724758069;
 bh=nQ4QainTGN2Jed9JjhWBNvyI+iuWOCGmVBnaGKnvp9M=;
 b=B5q18Ml5mWkLQnRc3OuYtj2pt9BIUi+tBRbGDJueHhYufaksLrr5Bn9Idp8FLhcoisb5i3Iaw
 5eXstRXLLlcJF7ZoM5Oeves5N/mJl9N3pw8ZgDERiv33M+HbkOOsjW2HIyGInX2B05tnmmrT2wh
 wduDCNMT1IbHWU8/0mcYWJbbKcNgK761GDOvISMOIVaqtU0+ZdULRLYw5UfCt0rp9Bt4A+5VWts
 1yloTWkrD3kpnDy6hxJoZSECMcxZ8fIP3OKMTLpgG1CdBp9qKrPZWJIAp5OJQ68EAhreO01udUd
 XbLOR6TrYSUeqTVVQx3HT4q4TF7tBTXd9pJNi2uSUW3w==
Message-ID: 7a6e6536-bcfd-4448-aa5f-25f492435e8e@kwiboo.se
Date: Tue, 27 Aug 2024 13:17:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: arm: rockchip: Correct vendor for
 Hardkernel ODROID-M1
To: Krzysztof Kozlowski <krzk@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Aurelien Jarno <aurelien@aurel32.net>,
 Dongjin Kim <tobetter@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20240826205538.1066103-1-jonas@kwiboo.se>
 <66ccebe1.c80a0220.22579e.e8daSMTPIN_ADDED_BROKEN@mx.google.com>
 <bf6145b6-8dd7-40e8-8b33-7eacd2c20a37@kernel.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <bf6145b6-8dd7-40e8-8b33-7eacd2c20a37@kernel.org>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 164.92.70.200
X-ForwardEmail-ID: 66cdb5bac498660ae9674ab3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_042751_511534_5D9837D4 
X-CRM114-Status: GOOD (  13.11  )
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

Hi Krzysztof,

On 2024-08-27 08:50, Krzysztof Kozlowski wrote:
> On 26/08/2024 22:55, Jonas Karlman wrote:
>> The vendor prefix for Hardkernel ODROID-M1 is incorrectly listed as
>> rockchip. Use the proper hardkernel vendor prefix for this board.
>>
>> Fixes: 19cc53eb2ce6 ("dt-bindings: rockchip: Add Hardkernel ODROID-M1 board")
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> 
> Your messages are broken somehow. Broken message id, rewritten by google
> but I cannot grab the thread neither by original nor by "fixed" message-id:
> b4 ... 66ccebe1.c80a0220.22579e.e8daSMTPIN_ADDED_BROKEN@mx.google.com
> Grabbing thread from
> lore.kernel.org/all/66ccebe1.c80a0220.22579e.e8daSMTPIN_ADDED_BROKEN@mx.google.com/t.mbox.gz
> That message-id is not known.
> 
> b4 ... '20240826205538.1066103-1-jonas@kwiboo.se'
> Grabbing thread from
> lore.kernel.org/all/20240826205538.1066103-1-jonas@kwiboo.se/t.mbox.gz
> CRITICAL: '20240826205538.1066103-1-jonas@kwiboo.se

Noticed that this series behaved very strange, may try to use the B4 web
endpoint for a v2.

> 
> Anyway, this was sent:
> https://lore.kernel.org/all/20240116192605.GA274661-robh@kernel.org/
> 
> it is technically ABI break, but likely without practical impact.

I can see that for the other two listed boards the compatible has been
corrected, not yet for the Hardkernel ODROID-M1, do you want me to drop
this change?

I mostly wanted to prepare/unify before adding the ODROID-M1S (rk3566)
and in a separate series add the ODROID-M2 (rk3588s) board.

Please let me know if I should drop or keep this compatible change.

Regards,
Jonas

> 
> 
> Best regards,
> Krzysztof
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
