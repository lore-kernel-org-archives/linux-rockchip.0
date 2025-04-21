Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55EAEC369D5
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Apr 2025 16:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PLeTxJCzIKF+rdBoBQ6EzViM2XAv+7Mpb8KXAV/1swM=; b=YTrCiXX59Y9TLn
	61B4+3yGGJ2Gq5N0o8zqT7orBP4caeJEXT20VcZPsR2vwV1xst21Oe4njJ4bXLMcadPvNDm2D5EFJ
	wvGNKvRpp/Ar/umwGWcjtzhvjY9hU9CweNd0pRBF88GESfR6RTjg9i2dpiR5I/Op1a5qFBLptGaBb
	6yjfg+do4o4J8Dqk0Q5fPNLOXFekFr6nq+rTPmVMxnkcVhtGx/Y0TlMZHfigMsbfmyeKft1cd+DGV
	87JZ55o3qNnVMMCJJ1ElPjwRquBuoYH2lhn+pmf0+M57mmrEra+dTq38Vs/8vWYzkE7cAybqiyl86
	jsrlU+2VemCi6oyqDjxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6tzI-00000004fVq-3x2C;
	Mon, 21 Apr 2025 16:27:16 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6txS-00000004fKH-1A78
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Apr 2025 16:25:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1745252717;
 bh=esv+rDKVix0ldoFrtD4D3MGlv5tCJf22iS0JUE37zVs=;
 b=RpuQnS/YbavYXIk1p1hVaNYmlDXUWxlMC6WkmiuN5BlvMDWovC/szQXpbvxX85zW5r9K9wZVj
 NEvCu+Wj2oz+X1eojBzGoiwTwl7wSMVUc+8DozVv+RCd6esrA1PT1sA5EAZAZj4V6HXo4RWN9bx
 WdvBte/wtAKEPN3BrdiWmNGmUhAhKE0ZPCqkrJOo5pA/w+iBEvni9UGTi+Z6CPblQGfNLYCRA1+
 pl5TUuIUvMuCD417K/2+FSM8clhepqbNuUx5aHo1/CXoBTymezgFW6qn6dFmmNBcIDiO7BhZ5eP
 3n0vDNqRKc7zp1LTUkqcnbZdMzvlqQGBGTn4Gx+6MMyg==
X-Forward-Email-ID: 680671678a5cda485177d286
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.0.2
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <18705cc3-ef2c-49f4-b284-bca2308950f9@kwiboo.se>
Date: Mon, 21 Apr 2025 18:25:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: net: Add support for rk3562 dwmac
To: Kever Yang <kever.yang@rock-chips.com>, "heiko@sntech.de"
 <heiko@sntech.de>
Cc: "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>,
 Conor Dooley <conor.dooley@microchip.com>, Jose Abreu
 <joabreu@synopsys.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Rob Herring <robh@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, David Wu <david.wu@rock-chips.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Eric Dumazet
 <edumazet@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20250418095114.271562-1-kever.yang@rock-chips.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250418095114.271562-1-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_092522_403171_99CBD0DB 
X-CRM114-Status: GOOD (  14.02  )
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

Hi Kever,

On 2025-04-18 11:51, Kever Yang wrote:
> Add a rockchip,rk3562-gmac compatible for supporting the 2 gmac
> devices on the rk3562.
> rk3562 only has 4 clocks available for gmac module.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> 
> Changes in v3:
> - Collect ack tag
> - rebase to v6.15-rc1
> 
> Changes in v2:
> - Fix schema entry and add clocks minItem change
> 
>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 3 +++
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml     | 1 +
>  2 files changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> index 0ac7c4b47d6b..a0814e807bd5 100644
> --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> @@ -25,6 +25,7 @@ select:
>            - rockchip,rk3368-gmac
>            - rockchip,rk3399-gmac
>            - rockchip,rk3528-gmac
> +          - rockchip,rk3562-gmac
>            - rockchip,rk3568-gmac
>            - rockchip,rk3576-gmac
>            - rockchip,rk3588-gmac
> @@ -51,6 +52,7 @@ properties:
>        - items:
>            - enum:
>                - rockchip,rk3528-gmac
> +              - rockchip,rk3562-gmac
>                - rockchip,rk3568-gmac
>                - rockchip,rk3576-gmac
>                - rockchip,rk3588-gmac
> @@ -149,6 +151,7 @@ allOf:
>              contains:
>                enum:
>                  - rockchip,rk3528-gmac
> +                - rockchip,rk3562-gmac
>      then:
>        properties:
>          clocks:
> diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> index 78b3030dc56d..7498bcad895a 100644
> --- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> @@ -83,6 +83,7 @@ properties:
>          - rockchip,rk3328-gmac
>          - rockchip,rk3366-gmac
>          - rockchip,rk3368-gmac
> +        - rockchip,rk3562-gmac

This compatible does not need to be added in snps,dwmac.yaml because
snps,dwmac-4.20a is already listed in this file.

Regards,
Jonas

>          - rockchip,rk3576-gmac
>          - rockchip,rk3588-gmac
>          - rockchip,rk3399-gmac


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
