Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB9DEC282EC
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMZ07mIznwq0gNqZl+z/wgRx278dfuyUsbywQuRnFPs=; b=iUtTYIJ3wVTVvn
	AdTBvn/Z85QwT3xj/i0U3jLQzbu/Ufj5tkBXShLQdjv2aSBoYArWggWisT5GKBF6DPAKnGEgqjhcl
	EJsetdDcTK2SGHBrW8s9cvkrHG0HKYmak4mRxf/5jDDJ5sshYtfnw5cqwLW3Tf8zV44PRDSuT4Zyq
	kKp0yi+M6oGNzu8GUXOH8CL0k8t9vRdvRWN1J4cyTzIUUAiVFi5rtjH7evCfYfbmbVMrzBB8xtP5c
	9lvzNLIvfWEAOKjFYMjggbKGa7y1bfLcky10YtXJkqxnJkoIgqPlFNQ6Mn/tKvwyTmMCU6Z4EEDr/
	Qu2f88rPAtyRUt575nDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqJOE-0000000CKVl-2rst;
	Thu, 06 Mar 2025 22:08:26 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqJNN-0000000CKMo-2jK7
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 22:07:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741298852;
 bh=0HCYfVxow/nYeBfs/TuiH44ZuKNSPm8doYeM7l980w8=;
 b=sp9YrLg2EM0PwLVK2AlT4Ifh4Yj6OYK+cUZlI8g5XlO2xZob1AIWY+9mBz6/qxYu0Y/ncuk7e
 ep2HnscwpIg5cMnM434OldoT1y/Rqu92zs0GUcFoUOqByBjx/hcKnourlanznsezI/Mw+NYSTKr
 hCtvZaj+ljYi/XPUOUzneawMhaTWSUKD8gs709G335h6RooKfXGk9h1/nDo97rPJGvxoYZRSh2T
 QaX1l6kozcdXupZ1LAmWWDAMU+Fa8s2tv5NudL8coeawuPja2AFVPukRGFPGG+gSgFaEZQ9r40p
 b2nGkkOenv9+1q0vZz35vnJMXEFmoywExs/gSnfnAdXw==
X-Forward-Email-ID: 67ca1ca0c1763851c065bef2
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <3ab13afd-0a9f-485e-bdf2-7b413d418065@kwiboo.se>
Date: Thu, 6 Mar 2025 23:07:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Use DELAY_ENABLE macro for RK3328, RK3566/RK3568 and
 RK3588
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250306203858.1677595-1-jonas@kwiboo.se>
 <41bb2c8d963e890768bceb477488250e@manjaro.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <41bb2c8d963e890768bceb477488250e@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_140734_080032_E9D0713C 
X-CRM114-Status: GOOD (  17.86  )
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

Hi Dragan,

On 2025-03-06 22:41, Dragan Simic wrote:
> Hello Jonas,
> 
> On 2025-03-06 21:38, Jonas Karlman wrote:
>> Almost all Rockchip GMAC variants use the DELAY_ENABLE macro to help
>> enable or disable use of MAC rx/tx delay. However, RK3328, 
>> RK3566/RK3568
>> and RK3588 GMAC driver does not.
>>
>> Use of the DELAY_ENABLE macro help ensure the MAC rx/tx delay is
>> disabled, instead of being enabled and using a zero delay, when
>> RGMII_ID/RXID/TXID is used.
>>
>> RK3328 driver was merged around the same time as when DELAY_ENABLE was
>> introduced so it is understandable why it was missed. Both 
>> RK3566/RK3568
>> and RK3588 support were introduced much later yet they also missed 
>> using
>> the DELAY_ENABLE macro (so did vendor kernel at that time).
>>
>> This series fixes all these cases to unify how GMAC delay feature is
>> enabled or disabled across the different GMAC variants.
>>
>> Jonas Karlman (3):
>>   net: stmmac: dwmac-rk: Use DELAY_ENABLE macro for RK3328
>>   net: stmmac: dwmac-rk: Use DELAY_ENABLE macro for RK3566/RK3568
>>   net: stmmac: dwmac-rk: Use DELAY_ENABLE macro for RK3588
>>
>>  .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 19 ++++++++++---------
>>  1 file changed, 10 insertions(+), 9 deletions(-)
> 
> As far as I can tell, the RV1126 GMAC should also be converted to use
> the DELAY_ENABLE macro, which the vendor kernel already does. [*]  
> Perhaps
> that could be performed in new patch 4/4 in this series?

Good catch, the RV1126 seem to use a slight different M0/M1 variant and
unfortunately I do not have access to any RV1126 board to do any runtime
testing. For RK3328, RK356x and RK3588 I could at least do runtime
testing.

I can add an untested patch for RV1126 in a v2 if needed :-)

> 
> BTW, it would be quite neat to introduce the DELAY_VALUE macro, which
> makes the function calls a bit more compact. [*]

Personally, I do not see a real need for the DELAY_VALUE macro, current
use of the soc_GMAC_CLK_yX_DL_CFG() macro is readable enough.

The ENABLE_DELAY at least helps remove an otherwise more complex enable
or disable conditional handling.

Regards,
Jonas

> 
> [*] 
> https://raw.githubusercontent.com/rockchip-linux/kernel/refs/heads/develop-5.10/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
