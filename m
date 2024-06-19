Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 678EDC27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 12:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Yw6IS95rf0Zg2LgDt0KjX9Md9iuTt7/xZW1FvrPhIE=; b=P37VNpamk3vwfA
	f2nvU7vaKAqmKFrMxuFOWWBUVygTS7rz2VElFd2E2kzKdBReSYbsknaLac5uJWqt5hUutNo95whgL
	6ae0syScZo72Jr1Xs2FUSMlWwP74J3rd7tIa72Eqv8evpYym/DyXdT9g4kuerbDt2F8Tsk3xfE9ag
	ijfpDxIuz9SDppH/tjnDoxQ4QQtvbkROf/FzOknIE86IzEWK40GglBew2W1ZOuPMs+ZXbEJjbN49s
	mQR2yhG09CMu1FW/Ez6USahU5HtoF6+bRvNMNBwSiWU7M5A22GsZo/2D5Yka6nhtbdTX9jvOW5E40
	da89W3AE2Isd7qWEAULw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJuTE-00000001BSG-1moX;
	Wed, 19 Jun 2024 12:31:24 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJuT8-00000001BNM-1mE6
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Jun 2024 12:31:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1718800246;
 bh=x02U8+l6EKieLoFUJAdvmmFWzcx31NceP9nLmd76s58=;
 b=FJok2Xc/xrFBHEHpEzIEcg5LRCyg5f4BYC7fVfMsuoMxBfBjoKTLKs8v0rz/Zju/HytFjMKlw
 NBDhRMrSN14ShrhpSUpVYYFgDeNr+oaQNn1uX8TwxJ89J5hE7oRBVKaL/wuTMGeDiqSMzwdURUE
 aIMKof6RR5nliWU0oFA986B2mnUN0cUjwcQygLcWEfjs4YETR1vvCEqjLytDRgR439ULcgwp5G3
 3l/sHgRn59P0lLTAYIUWipQRkU8S2DCUAs83i9TfrVeNfznIhcsyOSXZW/rxS6/pIsXWi4vRQvs
 DAsp5QPCFv9imz2o7JDoBUv4Iu+khWIqjtRRVTSnACEA==
Message-ID: <dc71686e-a3fa-48f7-83a9-34d0f365ff07@kwiboo.se>
Date: Wed, 19 Jun 2024 14:20:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: mfd: rk809: Add missing audio codec
 properties
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Lee Jones
 <lee@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Chris Zhong <zyw@rock-chips.com>, Zhang Qing
 <zhangqing@rock-chips.com>, Chris Morgan <macromorgan@hotmail.com>, Furkan
 Kardame <f.kardame@manjaro.org>, Michael Riesch
 <michael.riesch@wolfvision.net>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240619-rk809-fixes-v1-0-fa93bc5313f4@collabora.com>
 <20240619-rk809-fixes-v1-2-fa93bc5313f4@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240619-rk809-fixes-v1-2-fa93bc5313f4@collabora.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 6672cd025f5eef29994e8aa7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_053118_797812_70317201 
X-CRM114-Status: GOOD (  18.89  )
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

Hi Cristian,

On 2024-06-19 13:23, Cristian Ciocaltea wrote:
> The RK809 MFD provides a RK817 compatible audio codec, supported by the
> rk817_codec driver.
> 
> This has been already in use by several boards: rk3566-quartz64-b,
> k3566-roc-pc, rk3568-evb1-v10, rk3568-lubancat-2, rk3568-odroid-m1,
> rk3568-rock-3a.  However, dtbs_check fails for all of them:
> 
>   DTC_CHK arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb
>   rk3568-rock-3a.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks', 'codec' do not match any of the regexes: 'pinctrl-[0-9]+'
>     from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
> 
> Document the missing audio codec properties as found on the
> rockchip,rk817 schema.

This is duplicate of "dt-bindings: mfd: rk809: Add audio codec properties"
part of "arm64: dts: rockchip: Add Radxa ROCK 3B" series.

https://lore.kernel.org/all/20240505134120.2828885-3-jonas@kwiboo.se/

A v2 of that series with fixes for reported issues is imminent.
How do you want me to preceded with such v2 series?

Regards,
Jonas

> 
> Fixes: 6c38ca03406e ("dt-bindings: mfd: rk808: Convert bindings to yaml")
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../devicetree/bindings/mfd/rockchip,rk809.yaml    | 30 +++++++++++++++++++++-
>  1 file changed, 29 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> index a327d73f3c43..cadfb5f1c631 100644
> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> @@ -12,7 +12,7 @@ maintainers:
>  
>  description: |
>    Rockchip RK809 series PMIC. This device consists of an i2c controlled MFD
> -  that includes regulators, an RTC, and power button.
> +  that includes regulators, an RTC, a power button and an audio codec.
>  
>  properties:
>    compatible:
> @@ -93,6 +93,34 @@ properties:
>          unevaluatedProperties: false
>      unevaluatedProperties: false
>  
> +  clocks:
> +    description:
> +      The input clock for the audio codec.
> +
> +  clock-names:
> +    description:
> +      The clock name for the codec clock.
> +    items:
> +      - const: mclk
> +
> +  '#sound-dai-cells':
> +    description:
> +      Needed for the interpretation of sound dais.
> +    const: 0
> +
> +  codec:
> +    description: |
> +      The child node for the codec to hold additional properties. If no
> +      additional properties are required for the codec, this node can be
> +      omitted.
> +    type: object
> +    additionalProperties: false
> +    properties:
> +      rockchip,mic-in-differential:
> +        type: boolean
> +        description:
> +          Describes if the microphone uses differential mode.
> +
>  allOf:
>    - if:
>        properties:
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
