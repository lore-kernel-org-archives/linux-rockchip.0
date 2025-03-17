Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9E5CC282EC
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Mar 2025 19:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P0tBigCtmIkbc6Ssh5sWNUsoFlRl5TdS0kCkHRIShNY=; b=w8MU9v1glceUYd
	st6TsZnIZ/URdVYZLHrG3I8YGoqmAjh45evJKUlQiHQ9FpQyJEODsmqa4f6oPDC32XIOQ1EY7Ty11
	EwJfwPtkJqDqwNVOenHmO30zVZ+pLvs6SU86hoHK9rxGShbJsEVki2zGoCcfj/seGijW0CkdfQILx
	rUnsezGmU1nEMg2xkIYH8Mwh07QWrk0q5w5ltDg9VaaeFetvKeIl7DfCezOeDNoyjcJUxLd5j9NoZ
	LrJ9hv3kdy2CtqYoSjjcQ8W3trRJZZbXjlpv0LlqDCBtnY5QJYN/e5PncMYXkJOu7I6udhrxZQ8vG
	7Bc+aW6XCIcJjkApIq7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuGUG-00000003rHt-1VIu;
	Mon, 17 Mar 2025 19:51:00 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuGUE-00000003rH1-0BNP
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Mar 2025 19:50:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1742241056;
 bh=x7uD5anQxB6XbAyXnokdg7fGkN/BWmwgVtIghm68D1E=;
 b=w21pZnkj/QKL1gNyW5j8lH6RQFOubEh+tQ2+1NYkUH7zJjtqxIqfxB1xRaELIHkuCeNfQuyyd
 XoVqP36WEWLKJ0/mnFSCK6n6n5W2KgQT8yuIhBZZtrvmetAm8MMwRVq8KnPp9ZY7kZsERp0wud0
 4r16w1ePFpsLtODqwZ3GaOb2GmDIFASmuXQo0KhRg07V4EFY3asru23CzjHw98r2uREJQv/u3pM
 svNrmn5lVln11j4hjxBb3x7EyPLaHtqQPEAbQGxps8Wb3YiWWFYVnEMQ2KYrZUR3gGiis057Q+K
 bw19+8SJoOb2nhOdWw00mXIdaA3ddaTGD83b7iIfb3PA==
X-Forward-Email-ID: 67d87d10eee8cc91c8429fed
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <db3bf1cb-3385-4676-8ba4-41fea0212bf2@kwiboo.se>
Date: Mon, 17 Mar 2025 20:50:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/5] net: stmmac: dwmac-rk: Add GMAC support for RK3528
To: Simon Horman <horms@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, David Wu <david.wu@rock-chips.com>,
 Yao Zi <ziyao@disroot.org>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250309232622.1498084-1-jonas@kwiboo.se>
 <20250317194309.GL688833@kernel.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250317194309.GL688833@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_125058_425076_0091A9CB 
X-CRM114-Status: GOOD (  19.85  )
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

Hi Simon,

On 2025-03-17 20:43, Simon Horman wrote:
> On Sun, Mar 09, 2025 at 11:26:10PM +0000, Jonas Karlman wrote:
>> The Rockchip RK3528 has two Ethernet controllers, one 100/10 MAC to be
>> used with the integrated PHY and a second 1000/100/10 MAC to be used
>> with an external Ethernet PHY.
>>
>> This series add initial support for the Ethernet controllers found in
>> RK3528 and initial support to power up/down the integrated PHY.
>>
>> This series depends on v2 of the "net: stmmac: dwmac-rk: Validate GRF
>> and peripheral GRF during probe" [1] cleanup series.
>>
>>
>> Changes in v2:
>> - Restrict the minItems: 4 change to rockchip,rk3528-gmac
>> - Add initial support to power up/down the integrated PHY in RK3528
>> - Split device tree changes into a separate series
>>
>> [1] https://lore.kernel.org/r/20250308213720.2517944-1-jonas@kwiboo.se/
> 
> Hi Jonas,
> 
> This patchset looks reasonable to me. However it will need
> to be reposted once it's dependencies ([1]) are present in net-next.

The dependent series ([1]) has already been merged into net-next [2].

Do I still need to repost this series?

[2] https://lore.kernel.org/r/174186063226.1446759.12026198009173732573.git-patchwork-notify@kernel.org/

> 
> And on the topic of process:
> 
> * As this is a patch-set for net-next it would be best to
>   target it accordingly:
> 
>   Subject: [PATCH net-next] ...
> 
> * Please post patches for net/net-next which have dependencies as RFCs.
> 
> For more information on Netdev processes please take a look at
> https://docs.kernel.org/process/maintainer-netdev.html
> 

Thanks, I see, netdev seem to use a slight different process than what
I am familiar with compared to other Linux subsystems and U-Boot :-)

Regards,
Jonas


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
