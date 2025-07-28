Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BB7CC83F17
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jul 2025 15:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R6DBqVj847OIPrn9lBimYAYqhcdUunU12DFtF5Y7xPQ=; b=PzxR7oUvcdYGv6
	ZnpHxaXY8yfH2Zo3us67C5AUpWK5pigbHcQB5Ui7bUcLfPxFgkbI/KvF9m7WD/CM4TnY+8zb3G51y
	TWNxPUE/FeRtkOrwfxG6ub4x1ybg43krpDi8UlvtHDx6Uevlfh7Rw/VCzDGIvblMjVUW3SRUFNVDP
	94NIq++l0WNpqvUaP0ccTVCYjxMi3/8n1DCIpE2iAoveAkXr6vkP15Pv6aNee0h/Np1Mk2gesn2NW
	Syty7JwgiwLCpAQZJujQpfH17SoPpRmYth9F4Zj6Rs5xOroPQ2hzeIx/Kdss57+7pm88iBjKei1pT
	oX3wK7e7fSQ9pT8gt9AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugPNO-0000000Ekci-2MAY;
	Mon, 28 Jul 2025 15:02:54 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugPJY-0000000Ek6s-1qNP
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Jul 2025 14:58:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1753714734;
 bh=rYuD7fR6ip+mX8V23wp9elDHlgpDSMqOrMV6oJH+6ZI=;
 b=zstZJNSsEPTCWZNwghBIPPOC1SLbjLBwGWDoIsGtEin4gOEXLmDxLJDSNhJJOlYBNrH80ttOb
 RhEC/gkTKTqWerg10fs0N8bHlVofF+si1s6IQFvb66SWCiebDUh3yWI/Cg7OWrXyhJGPprji6p+
 prNpuOADqKM68Zy7q0yClW0jhW+uJp8VVjctVoHjrqxwhdbhQG1t4euxYspnmlwHsNqtk8RJ8gB
 X/9eRdybNNyqHQV6q3KW0Yn/FJZLSZ86rrEVSaP74YcD8ga8t2xRD8zKy3cQnA908Lnw7ueCvr1
 aFyIu1IEWTjef7gQxuE8OMHmW8yIXEleStqOROjMwNHg==
X-Forward-Email-ID: 68878ff5351ec66b15a194ff
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.1.8
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <65023e38-0f90-4d12-8615-a595e399b516@kwiboo.se>
Date: Mon, 28 Jul 2025 16:57:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add RTL8367RB-VB switch to
 Radxa E24C
To: Andrew Lunn <andrew@lunn.ch>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 =?UTF-8?Q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
 Vladimir Oltean <olteanv@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Yao Zi <ziyao@disroot.org>,
 Chukun Pan <amadeus@jmu.edu.cn>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250727180305.381483-1-jonas@kwiboo.se>
 <20250727180305.381483-4-jonas@kwiboo.se>
 <be508398-9188-4713-800a-4d2cd630d247@lunn.ch>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <be508398-9188-4713-800a-4d2cd630d247@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250728_075856_825938_322DED46 
X-CRM114-Status: GOOD (  19.57  )
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

Hi Andrew,

On 7/27/2025 9:16 PM, Andrew Lunn wrote:
> On Sun, Jul 27, 2025 at 06:03:00PM +0000, Jonas Karlman wrote:
>> The Radxa E24C has a Realtek RTL8367RB-VB switch with four usable ports
>> and is connected using a fixed-link to GMAC1 on the RK3528 SoC.
>>
>> Add an ethernet-switch node to describe the RTL8367RB-VB switch.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>> Initial testing with iperf3 showed ~930-940 Mbits/sec in one direction
>> and only around ~1-2 Mbits/sec in the other direction.
>>
>> The RK3528 hardware design guide recommends that timing between TXCLK
>> and data is controlled by MAC, and timing between RXCLK and data is
>> controlled by PHY.
>>
>> Any mix of MAC (rx/tx delay) and switch (rx/tx internal delay) did not
>> seem to resolve this speed issue, however dropping snps,tso seems to fix
>> that issue.
> 
> It could well be that the Synopsis TSO code does not understand the
> DSA headers. When it takes a big block to TCP data and segments it,
> you need to have the DSA header on each segment. If it does not do
> that, only the first segment has the DSA header, the switch is going
> to be dropping all the other segments, causes TCP to do a lot of
> retries.

Thanks for your insights!

I can confirm that disable of TSO and RX checksum offload on the conduit
interface help fix any TCP speed issue and reduced UDP packet loss to a
minimum.

Regards,
Jonas

> 
>> Unsure what is best here, should MAC or switch add the delays?
> 
> It should not matter. 2ns is 2ns...
> 
> 	Andrew


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
