Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7322FC48BC4
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Feb 2024 23:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aHXdqNxzwtdDtd32dEngK7P4oZIIqTuYSr5gmO7zXEE=; b=4j6WFFR5RiX2W9
	HHGSouas6gvLU7hIf/VoLam5LLeL81vQd9JFkqvhkT0Ywd0H3WnWqNLGQt/XbJkIE9H4b/9JRrhyf
	Ta4hBgd18z+IWLRGsHwFwomm7LWV4gIv+GAW/VtXB9Ghyv09m7tMtK18OOS+g8a0XEBSr1vDdweIB
	syZPfiHOQhPxkOf+YyY5pLjFf3SskDqHkByB1mt7wp0liASk6qPib9HgsriHgOl7Gr/W5OTR2peef
	eJZAITsvNyyktQKzP+G18qbCgGPzDFlpegGVHDBpTf5AzjnV/O5K3Wo3C/aQshvSBEEFXaZXZdK3g
	ZJD4pvlTojVGiUsjTAJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raOwr-0000000EZQs-27jR;
	Wed, 14 Feb 2024 23:45:53 +0000
Received: from fhigh3-smtp.messagingengine.com ([103.168.172.154])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raOwn-0000000EZQ4-331z;
	Wed, 14 Feb 2024 23:45:51 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id D2E1C11400C2;
	Wed, 14 Feb 2024 18:45:45 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute7.internal (MEProxy); Wed, 14 Feb 2024 18:45:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1707954345; x=1708040745; bh=AQeY3wowKfmbs6NAg7U/aU+sEcmVoRrQ
	g5C1WLQ/QO0=; b=PGF6LE/zkDkCYCDm/EJaL5w0K9+oXiJY11zZWFAJm3A6x5OT
	hvTDzTGTGh0JHAru/3tvOouhTIhZFaS+gVZT8kVD0zNj9St7d/6JTQFekOrZUb0C
	Z+e1VrbB2701a+jOuW3nmiGm1q/GBlU7ZITwVj8V8wju5Q4Mte9N4mCHiPOvQJQ/
	ArO9eKyHPz6vu66mI0RGfx5mD28KM/13hWHVsbPjr4mn9J+NjsS7YTjTFwT+FvsN
	L5ED6enZbWdntfJw2HApjRHPMNt9JQX0TzceikeelyLC3Z0pC/m0v9SX+rSE8245
	pSj0l28Lm40zH2H17cdqwfkLu0F//GzoglI5kg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1707954345; x=
	1708040745; bh=AQeY3wowKfmbs6NAg7U/aU+sEcmVoRrQg5C1WLQ/QO0=; b=K
	yU24nWblowt5brepYqhv6N5qd26FZXoSlN6P220E81HW30koTR1imPi/acCiHEHr
	hl916m7X39ViLbAN2AQSw/fLghKny2RF0RUVSeK+gIsziKCgmebk5JQLPohS1uwz
	kQUBE8CG8OQEzHNsanpyskaL1aojThbyztqU/0akmx3pifHd/6jt3vCEAFsj3QWX
	rsReDrfy7N30/LjUxfGTkkPdXcC7FQ5h2XGqt1AKmdZIZ6beJud+/yjgPjvrEJnu
	AjytQUp/aVThVCxwvS3X7FKjQhuKvHHl+V9zf9o+lAlqW96vn8mqqMHKAIVXjrnc
	KRU1P5rDWHiDI9j+FTidg==
X-ME-Sender: <xms:qVDNZWHQoDROPXgJowx7MWn4lnle8T_fjnl0MBg-t3kc9gHdJp7d6w>
    <xme:qVDNZXX7EWNaHN_r_cOAZ8du8E8mO7O0XI2J51b4Izy8Ek4IBS9b5umgbpatRz7LN
    hH6g6-icw>
X-ME-Received: <xmr:qVDNZQKHz5PInv9C4CtVaj7WMam4j8_U0e0maZkrZ2v8vnfIcBqM9FkcgFyNEsLa4CopB_VbGk-Eb3XdjiP8tD4t40AW0ZfY1B1oFQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudekgdduvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefkffggfgfuvfevfhfhjggtgfesthejredttddvjeenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeehhefglefhffegfeekgfejleekudelfeevhffgkefgteeftedvieegkeejvdffheen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:qVDNZQG0Y9kzOgZRWdfoIbd344AzibkCTxqA8mTm1LSbCuWceL5HmA>
    <xmx:qVDNZcVOXC4Vao3e_kMJkXNRwmwU2DBBJwMdTdk8TB8cT1C_TcaMsA>
    <xmx:qVDNZTMklaBxEWqSaPKDzG3MXZ-cQnx0b6uB51J3fCxR56mIGKOhpw>
    <xmx:qVDNZdV4r5lJSb-FppgdDlv1dx_Q0-vgCFIojEWSqUCM1wCAIFQSHg>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 14 Feb 2024 18:45:41 -0500 (EST)
Message-ID: <0e6cee7c-9726-4d45-a06a-a8882e271e7b@feathertop.org>
Date: Thu, 15 Feb 2024 10:45:39 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: arm: rockchip: Correct vendor for Orange
 Pi RK3399 board
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
 <20240214040731.3069111-2-tim@feathertop.org>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <20240214040731.3069111-2-tim@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_154549_985099_72018C53 
X-CRM114-Status: GOOD (  14.54  )
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
> Update the vendor to Xunlong.
>
> Signed-off-by: Tim Lunn <tim@feathertop.org>
Fixes: 08b64bd2c681 ("arm64: dts: rockchip: Add support for the Orange 
Pi RK3399 board")
> ---
>
>   Documentation/devicetree/bindings/arm/rockchip.yaml | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 5cf5cbef2cf5..29f922f3ca4e 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -626,9 +626,9 @@ properties:
>             - const: openailab,eaidk-610
>             - const: rockchip,rk3399
>   
> -      - description: Orange Pi RK3399 board
> +      - description: Xunlong Orange Pi RK3399 board
>           items:
> -          - const: rockchip,rk3399-orangepi
> +          - const: xunlong,rk3399-orangepi
>             - const: rockchip,rk3399
>   
>         - description: Phytec phyCORE-RK3288 Rapid Development Kit

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
