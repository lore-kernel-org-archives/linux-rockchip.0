Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EE9DE77188
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jan 2025 06:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UPQac67Uyhl0Xbi7k/iyUHWQ5olWXotfPTYfABHSBMg=; b=45QyQdegp62u/u
	7MhwGt/LaTiz+2mxkAPLQUp2yqPnXpHB0fn13SuNlHRkHAaZEjHJMPSvGNfun5tSE6q6cPu94lo6h
	2J/thL9XlEoPekTL57oMGvWBFRsEvOM+yhVki3+j0kHfFYwKlgcWJxmrVb3hT+pT3yJt+XdTCOXCM
	5cbo8fij9CTPo/NTwWAN37QoOodleN9VWlzLpz+EhHfBERy94A7tLCbZvKT7bsUZ+jmfhzz06nc8Z
	4VumF1DZyVWJMZbowocEu83Ju//eMRC0hy4Txof0RpbhDQKVBQuqI8BPZLSXPSwuajFRbp6pgIJUJ
	ZPo4dVdnHIfkC2Thtt9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTbSK-0000000CFiQ-1JFQ;
	Fri, 03 Jan 2025 06:46:48 +0000
Received: from [54.207.19.206] (helo=smtpbgbr1.qq.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTbSC-0000000CFg2-1E8N
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jan 2025 06:46:46 +0000
X-QQ-mid: bizesmtpip2t1735886766tuil99m
X-QQ-Originating-IP: W37CiL0oc3E07rqJuU8i6xM+rLObu+uxHqFdvFR6QlQ=
Received: from [IPV6:240f:10b:7440:1:8992:1149 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 03 Jan 2025 14:45:59 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 11742114379543080906
Message-ID: <E280EE989942CA2A+4252fa87-049d-4b73-ac28-537f29c09660@radxa.com>
Date: Fri, 3 Jan 2025 15:45:58 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Radxa E52C
To: heiko@sntech.de, Kever Yang <kever.yang@rock-chips.com>
Cc: robh@kernel.org, conor+dt@kernel.org, liujianfeng1994@gmail.com,
 jonas@kwiboo.se, cfsworks@gmail.com, dmt.yashin@gmail.com,
 jbx6244@gmail.com, sebastian.reichel@collabora.com, tim@feathertop.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 marcin.juszkiewicz@linaro.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, michael.riesch@wolfvision.net,
 macromorgan@hotmail.com, krzk+dt@kernel.org, jing@jing.rocks,
 dsimic@manjaro.org
References: <20241226024630.13702-1-naoki@radxa.com>
 <20241226024630.13702-2-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <20241226024630.13702-2-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NG63YEgwc4yzUiPOyIXuX7fqJKcTMJKvc7UoxAgSu3UnTwopMW7SX7xV
	Ngc9YmRRzmkyZwHR4PlNdkRfbvHHWqTaPsKH6r/pFWLYSJXk2jFmjKtaXfXS74brm7DaCt6
	TYpgzNS4iRpUpfEeFTgdVPjpMVMr6HRA58gkhrpbjdIQ7E/FrbaBqaJS+ZjOGh+sLHw0mEG
	upnjgT5C5biiNOm6Q93jM4MivP/j8c+VaKiXFAZZogICPJlixdQz/YAPFB5z0YQJlrO4/v/
	oOidAE2ovigk1Xnj5MiYIHOsyMJJ+ZBWTaEtNNsUP5LjO24stMdPVKZEqsIFsYda22A4RE5
	SF50uyZP4Xbc3VL6b53kRogz8Hb+7wRQD1+fby3dGYZdn7uYIUOi0fBuQGsoXBw4d+1dARW
	ljRtjKh6U+tCZA/ey7ClBGs6gZAcUd/36QF7efCBHTHH0mimwmuEfJ+mUoTzPlaKZGjruVT
	DKAUoEeWe24A5HpZFE9rkGBRwxteJ5YehvTC+aJ3IPG9qJ+Z0rpGK/0ws40kqYQeHVHSLSm
	kDF91PmlqZHlAX1H4aUfCVn1NL6nsa+ixZHIwwOMoVRp8Q5EtjdXvZQkbZPWukj2cpTYQIK
	f7sjoz4GDOdY6xfhJaRjoyH1pFbVpcnMa+Pr9e23/AtQDLhfLeqY4i+bUCi/KSUN5S4I/J4
	JyaD0G8aEiD7IQMJcF3ERafl7Zy9pJnKNPzkHooDARS3+EvOoeUjdLBI0pReZ+yW/83Jaeq
	KBvietg2h+O2N285IUA2D61pg/cewIkj/UCEQjOCSGc2S06PK728hr0LB35avM9AgVlmyib
	PZ4y1n3f3yUcvYqiQmnHGAc10ruZPg50F1+0b2MtTlufoMMLsF43YlzCMfCwpUoPgPpxuwU
	w9zz8w+Apb3xXOtoIk9Y0XagCPlus3rTJU1Tjf6c5p4TAeUwd27hTukEoen/mLWE
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250102_224641_195851_759B98D6 
X-CRM114-Status: GOOD (  11.46  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Kever,

What do you think about the introduction of the "rockchip,rk3582" 
compatibility string?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 12/26/24 11:46, FUKAUMI Naoki wrote:
> Add devicetree binding for the Radxa E52C.
> 
> Radxa E52C is a compact network computer based on the Rockchip RK3582
> SoC.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v3:
> - Collect A-b tag
> Changes in v2:
> - Add "rockchip,rk3588s"
> ---
>   Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 753199a12923..2152d170524a 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -812,6 +812,12 @@ properties:
>             - const: radxa,e20c
>             - const: rockchip,rk3528
>   
> +      - description: Radxa E52C
> +        items:
> +          - const: radxa,e52c
> +          - const: rockchip,rk3582
> +          - const: rockchip,rk3588s
> +
>         - description: Radxa Rock
>           items:
>             - const: radxa,rock


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
