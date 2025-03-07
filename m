Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D4BEC28B23
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Mar 2025 18:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MEUPp7gmL+kn9fdDJt6Y0RSL1KhI3tVg+CPpPfDmprc=; b=O2ZtZyz5fkNQSO
	QBopw5ayyNyFqoM4X0OiZuPn4asAtZXBr2OKBw8APdrwOrczsa2gmyyIGkatABwPKLsh5m7KvQBJp
	naFbYq/5zW9NeC03fvm7FlbejuI4NSiOcCw0VfjE8Ljeg2cz0LYWOUDNeXBuT0ceN0izNeFwNUfFd
	VNEc3kz4+aApc2K4o5WNifAr84Bdla1+InJGHuHm6N1SouNUh96284rSeZGRlSrTILljDCkV+lvFJ
	JaxynqbpnfyB1raZVVtlfZZJSsmpUMhrFs0pFK5xPh92FIKFtnNta4ptaMRtB8vnzRs0b9WR/8uSC
	q2YvH43BITnNKqg8VX1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqcmL-0000000FFlQ-2tOj;
	Fri, 07 Mar 2025 18:50:37 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqcmJ-0000000FFk9-1ro4
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Mar 2025 18:50:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741373434;
 bh=qmRiDQKZXzZ5w+8TJZygVsnLCM0DBXbnOysWCxlvMp4=;
 b=aMGjL7nG/XHHzP6CtSXljRfBKmX/TR4vCBZOL9NwA5HClucbTZvfyYDmAPEREs/45nXkHuv35
 7iD7+RfMBP174bkbdKGSS0oWcupBfdVftAB1yBKP2ajiHBxIPy9PepXqxJh+HpfctvbNl6t6BIY
 oOshMiSeYz+N5HufmnXRYD9nHjbQc4Cp6UYncXrXGH7ConaZbAlv7nrTt5Or1Y8XWMb25WPQja/
 yB3mQtxqRh5DxferpeDZCd8JWRAZFzuUJP/QdtmkO7vtOBPmQ0ZFFpDoCMMLjsgZrl+DZnSbB61
 /OPTPtxTzug3SWkYwoRuHGgE2mN0HAPAcWcw1yb/L0hg==
X-Forward-Email-ID: 67cb3fe8789af4fdcbb0b28f
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <67294dfc-a816-4828-9e45-6a897c5710d5@kwiboo.se>
Date: Fri, 7 Mar 2025 19:50:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] net: stmmac: dwmac-rk: Validate rockchip,grf and
 php-grf during probe
To: "Russell King (Oracle)" <linux@armlinux.org.uk>,
 Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiko Stuebner <heiko@sntech.de>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20250306210950.1686713-1-jonas@kwiboo.se>
 <20250306210950.1686713-3-jonas@kwiboo.se>
 <bab793bb-1cbe-4df6-ba6b-7ac8bfef989d@lunn.ch>
 <1dd9e663-561e-4d6c-b9d9-6ded22b9f81b@kwiboo.se>
 <20250307085558.5f8fcb90@kernel.org> <Z8s5ZZyTCpS9xHlA@shell.armlinux.org.uk>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <Z8s5ZZyTCpS9xHlA@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_105035_822659_F7B28DF7 
X-CRM114-Status: GOOD (  10.14  )
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

On 2025-03-07 19:22, Russell King (Oracle) wrote:
> On Fri, Mar 07, 2025 at 08:55:58AM -0800, Jakub Kicinski wrote:
>> On Fri, 7 Mar 2025 00:49:38 +0100 Jonas Karlman wrote:
>>> Subject: Re: [PATCH 2/2] net: stmmac: dwmac-rk: Validate rockchip,grf and php-grf during probe
>>>
>>> [encrypted.asc  application/octet-stream (3384 bytes)] 
>>
>> Is it just me or does anyone else get blobs from Jonas?
>> The list gets text, according to lore.
> 
> Looking at the emails I've received, some which were via the list, some
> which were direct, I don't see anything out of the ordinary - seems to
> just be text/plain here.
> 

I just learned that my outgoing email provider will automatically
attempt to PGP encrypt messages on a per-recipient basis using Web Key
Directory ("WKD"), and Jakub Kicinski seem to have an openpgpkey
published at [1].

Should I reach out to my outgoing email provider and ask if they can
disable the automatic encryption feature?

[1] https://kernel.org/.well-known/openpgpkey/hu/k5mqwn6xdasq745xgzbqu7eq3p5ysxjz?l=kuba

Regards,
Jonas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
