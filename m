Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64970EA4FC9
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Feb 2026 14:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:Subject:Cc:
	To:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=482KI0WZfC3pWpVM8u5qP3+vyvTdyo8iSZwtJjzmF+8=; b=Ie0pBjbqu+5lEp
	ioXVEBF1C3wbVp45Qaqqu0Y8oB1BQu7WHRkVKaPL6o8uPlwyB9JMfu5qdoo+WcZ7dqI162C62sHKI
	mA0zQSsJgVxX4ZFakCiFXICVNQ8dHWhtZMEVGv7/Dupc4kRc8TDhj16rqZhI2MJixY+GlWagWyDCU
	9X+ATNdmagQlg4KJMt60FivJwL4uTxRKq9bMZfhzLi5oObKjTz8fqq3GQYsvU//M+ThZLJ/krBbhl
	vBMxBdgiJv8ByQJPFFiVj53uiw/FH5FRBqeyB9Cl7iNc4QITlHXlDLsfQk1db5CBFjNElzVOyxSDo
	Ay81m4OCON3NazAhF5vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuX6f-00000000UDx-3vxd;
	Mon, 23 Feb 2026 14:40:17 +0000
Received: from out-171.mta0.migadu.com ([2001:41d0:1004:224b::ab])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuX6d-00000000UCy-1UP8
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Feb 2026 14:40:17 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1771857609;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gMw6gf/oTSSqQro1Zpiosb4Vw6V7R5A1fyETNWZeN+E=;
	b=K7PJH590JkvaDXDSFyhWY/LA9PkPKekKf738AGPatQKh8iq85Hc8h/vy4twZj70vWljspl
	nlQZwhndSsBDcdVIaX0u9MAXXt7FuCeqT8aISrgrchStN8NytmQP2Dv6Gs2HJx38zwnnJ+
	4KCZ9V+R+L7SkwIy4gPve9dGbD1rylnIC6bJ80B29RgLhOemXH2lrBNdtE9vzM8TY5nbW0
	OwsiUM4wURlwid38th3rn61jD4pRxL2YmPvcB7tin1mh3WGRX1icKn8e+Eaj9LwbjeMugO
	y5l0gQLK5PqGKFEZcAzcz7CFjJqnoqAonA/WzkHLXVDIJAeXGJ8kOdybeCqfJA==
Date: Mon, 23 Feb 2026 15:39:56 +0100
Message-Id: <DGMF3IX3J3BP.1XT41P0G8P5OD@cknow-tech.com>
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>, "Cristian
 Ciocaltea" <cristian.ciocaltea@collabora.com>
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, "Detlev Casanova"
 <detlev.casanova@collabora.com>, <kernel@collabora.com>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix vdec register blocks order on
 RK3576
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
References: <20260223-vdec-reg-order-rk3576-v1-1-560976566bd3@collabora.com>
 <aZxkDGzEQCCLKR-M@venus>
In-Reply-To: <aZxkDGzEQCCLKR-M@venus>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_064016_004712_1847297E 
X-CRM114-Status: GOOD (  13.72  )
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

On Mon Feb 23, 2026 at 3:31 PM CET, Sebastian Reichel wrote:
> On Mon, Feb 23, 2026 at 02:25:05PM +0200, Cristian Ciocaltea wrote:
>> When building device trees for the RK3576 based boards, DTC shows the
>> following complaint:
>> 
>>   rk3576.dtsi:1282.30-1304.5: Warning (simple_bus_reg): /soc/video-codec@27b00000: simple-bus unit address format error, expected "27b00100"
>> 
>> Provide the register blocks in the expected address-based order.
>> 
>> Fixes: da0de806d8b4 ("arm64: dts: rockchip: Add the vdpu383 Video Decoder on rk3576")
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>
> This fixes this warning, but instead creates a new one, because the
> reg-names order is fixed in the DT binding:
>
>    reg:
>      minItems: 1
>      items:
>        - description: The function configuration registers base
>        - description: The link table configuration registers base
>        - description: The cache configuration registers base
>   
>    reg-names:
>      items:
>        - const: function
>        - const: link
>        - const: cache

See also the prior discussion wrt this:
https://lore.kernel.org/linux-rockchip/edabca63-594e-44ae-8a3d-0f60987a8664@collabora.com/

>
> Greetings,
>
> -- Sebastian
>
>>  arch/arm64/boot/dts/rockchip/rk3576.dtsi | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> index 49ccdf12ef7e..45eb0d053a6f 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> @@ -1281,10 +1281,10 @@ gpu: gpu@27800000 {
>>  
>>  		vdec: video-codec@27b00000 {
>>  			compatible = "rockchip,rk3576-vdec";
>> -			reg = <0x0 0x27b00100 0x0 0x500>,
>> -			      <0x0 0x27b00000 0x0 0x100>,
>> +			reg = <0x0 0x27b00000 0x0 0x100>,
>> +			      <0x0 0x27b00100 0x0 0x500>,
>>  			      <0x0 0x27b00600 0x0 0x100>;
>> -			reg-names = "function", "link", "cache";
>> +			reg-names = "link", "function", "cache";
>>  			interrupts = <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>;
>>  			clocks = <&cru ACLK_RKVDEC_ROOT>, <&cru HCLK_RKVDEC>,
>>  				 <&cru ACLK_RKVDEC_ROOT_BAK>, <&cru CLK_RKVDEC_CORE>,
>> 
>> ---
>> base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
>> change-id: 20260223-vdec-reg-order-rk3576-cc2ec6e05e98
>> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
