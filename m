Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 012C4C48BC4
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Feb 2024 23:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8yiEhhUY3QfIfwntlP0eby8Q87yJQKru2I4bI9o4JBU=; b=mlo3927bdlAqm6
	PF9L8R0GJU+GEh8qOk4+xv8+Ru5PNdNAvnW6lpJ+QXMOncXRXtibHh3ZSWpkrKqd+6K2V2pDHGUMC
	6jvvIKgANwe6V6CCBRB5MyqXGmc6PqRx2gaS/NQ56ExkwCG6/otRCLPgFWJgOYxzrzHL7yt6QUdFR
	YfFDiQqOu1IuyqUFGtLQMzYQjlZS3OgHC6qrApALv8Fr+60qIPtHd20rZFZuqe5McQcDxJyDub149
	lG8lTN65OXcwn8p8J7xKnrwzCTLcl4FLmEgJbPHvNlXpbBA+PxjxxPrEVakvANyZz73BauMzKv919
	c3oXqqZZGRn/oJmkcBtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raOp0-0000000EYfv-0DqT;
	Wed, 14 Feb 2024 23:37:46 +0000
Received: from fout8-smtp.messagingengine.com ([103.168.172.151])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raOov-0000000EYfA-2gwP;
	Wed, 14 Feb 2024 23:37:43 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailfout.nyi.internal (Postfix) with ESMTP id BE97E13800B9;
	Wed, 14 Feb 2024 18:37:39 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Wed, 14 Feb 2024 18:37:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1707953859; x=1708040259; bh=/UFfJYIm/yavIcO2nw7qw6EXLoX+Pvhw
	S6K9sGJKtnc=; b=Dc2PqHBSIA54bk5jx/HL8ncEcCJ8dx4USPT3/hYMTx0vlquB
	oEON0McF4x+kOjdaxH8znnE2nqIeMux5Orp2THmoILtHCw5MVblXmqsNt8AFQinj
	B8X6BnzIP3IFIoeQhWbQx94ID9qVuzJznUnqZhcHQZ6fs2UY043viHUhRbJP0w4i
	USfbWjxRln9dwTXnpxuDU3o7S3QlxyXG2yU4XDyHrAaEiMlRcb/MTHOLIlhUcMXg
	WvYODEaWDNxecKVYJTali5eXynUnegmTDeCBqGgjoyu3HkjnSN3CM6IRvwt5JdkP
	CRBx77gCtMUOU1voaqUePtkC85YSQyNNWspLlg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1707953859; x=
	1708040259; bh=/UFfJYIm/yavIcO2nw7qw6EXLoX+PvhwS6K9sGJKtnc=; b=r
	2Cs+7W6j6xo+o5B64T5cFuFbU0DuNU8+nsfVlNd1YFTKTghPwzW15gtDbboqkrPC
	qErQ3BcgF+1zCrsSTNamGusdaHppwtLHg5wulhXZTZEyHcWLHRytRIoqIgVWGiaw
	x84tlfu/lTu0IYTX8x5sNCfVb5Gk3jIzFJ+IKVn97SY+5v5NX3hlqYct0ahNBFr5
	ya5Am954aurv2GookVao1zo+9ptrlt6BbgtptYEnnDHY5SrMj6BjlTBOlevvAH3G
	ogMrF4yAbnn38pVDfz8SRg2WZU0PoDhCmmXyt3h8bR/Y3pml5wTy7Jet9gIJnxD2
	LmBl+lfczu19cU6tLDDNQ==
X-ME-Sender: <xms:wk7NZfFW_PXbkXwdsRTWvhCnftN7JgkYwlL1XudcKEupsYOBML3pqg>
    <xme:wk7NZcWmr95cnPYvR489vGUanqTHKE3aCMymkz3G7LbOQIi0V41r_ndTlHXv2dsQZ
    VCxElnKIg>
X-ME-Received: <xmr:wk7NZRJYmyslXFlWUIJqc2pvEarVclulWUuv4DjCuzjIxXFySlkwm78WFwP8DBDpWlSrVQ8jbh8DRrV5bOGI5a216OpyribhCHKYrg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudekgdduudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefkffggfgfuvfevfhfhjggtgfesthejredttddvjeenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeehhefglefhffegfeekgfejleekudelfeevhffgkefgteeftedvieegkeejvdffheen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:wk7NZdEXwDPUolblje4cQKguYlvdYcg5BYRPYL1ULQwZ51xC2gt9XA>
    <xmx:wk7NZVWuHw3pi7b1V7va6ZbODXZMCQ-tHpGLhDv3f8oxEGY9armslw>
    <xmx:wk7NZYM0YPrzTZdX4UqDekGMajBCbyfbyQMSpJIsXAeIsbtwWxxgrA>
    <xmx:w07NZaUdsm12Ula9ZJj0ghgmSaEwUrx4m92tipuODtEOH4M0WODwrA>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 14 Feb 2024 18:37:34 -0500 (EST)
Message-ID: <3f1c1f14-9a6e-4d07-8311-59d7b55e1c9d@feathertop.org>
Date: Thu, 15 Feb 2024 10:37:30 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: arm: rockchip: Correct vendor for Banana
 Pi R2 Pro
Content-Language: en-US
To: linux-rockchip@lists.infradead.org
Cc: Andy Yan <andyshrk@163.com>, Chris Morgan <macromorgan@hotmail.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@edgeble.ai>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Ondrej Jirman <megi@xff.cz>, Rob Herring <robh+dt@kernel.org>,
 Tianling Shen <cnsztl@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240214040731.3069111-1-tim@feathertop.org>
 <20240214040731.3069111-3-tim@feathertop.org>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <20240214040731.3069111-3-tim@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_153742_223859_06CD740C 
X-CRM114-Status: GOOD (  13.84  )
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


On 2/14/24 15:07, Tim Lunn wrote:
> The vendor for this board was incorrectly listed as Rockchip. Fix this
> now while they are not used anywhere, in the future they may be used by
> bootloader to select dts.
>
> Update the vendor to Sinovoip.
>
> Signed-off-by: Tim Lunn <tim@feathertop.org>
Fixes: 8ad885126daa ("dt-bindings: rockchip: Add BananaPi R2 Pro Board")
> ---
>
>   Documentation/devicetree/bindings/arm/rockchip.yaml | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 29f922f3ca4e..89261b9601ce 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -940,9 +940,9 @@ properties:
>             - const: rockchip,rk3568-evb1-v10
>             - const: rockchip,rk3568
>   
> -      - description: Rockchip RK3568 Banana Pi R2 Pro
> +      - description: Sinovoip RK3568 Banana Pi R2 Pro
>           items:
> -          - const: rockchip,rk3568-bpi-r2pro
> +          - const: sinovoip,rk3568-bpi-r2pro
>             - const: rockchip,rk3568
>   
>         - description: Sonoff iHost Smart Home Hub

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
