Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8577E95A67
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Oct 2023 22:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kAt2Cm6FyR2+DT8bm0ew1cjhSgVequrpyhKLupbPfXQ=; b=4XjAss81tl9APO
	ljbEj9Q4+3dbpVrzGaFfbNwPNdt634EI2v7pS/CQuxtXoD1axFqxXJ2E6qFSypRbC+wuUXGW20j3r
	z/qCllgMyGVf4qqqQAOVml+mKnFKTjizYKUm+E4tX3omLaF1Wr8GhAfo9cwFnhPGZIqn3hs2GzlCG
	mBN6guuxxufD21EvlIGLvWwtVI4XT+uJOdjG+JDc5TWt9DbHWlk+WE1YtBgAHsvhz3ETxbjHQDZ60
	uVtvmyNG4f4p4Ukm68o2MfXLTEXYUJWyyi+lJYz8IUWzgAd7nmGOMMB6h3KmoxFP8ZES1ZBI70S13
	L8biRbPYUyH4BOS+KcsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpcCw-009P1L-2y;
	Sun, 08 Oct 2023 22:25:06 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpcCs-009P01-2q;
	Sun, 08 Oct 2023 22:25:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 6B888B80D40;
	Sun,  8 Oct 2023 22:25:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A6F5C433C7;
	Sun,  8 Oct 2023 22:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696803900;
	bh=VXitWHqq4leNa1/V/OcVVi+BEGZhzWw0cZ6hmoOcQMQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CWZ5lJ1PFWizHfcrPeU727vpdOlmvFuhXbiMXMETd5787gXM8KBsPJnIo16SQafAK
	 54Kx+jIPC3M3FMHb9Dsj5esfScadzWYXJafsXimSK09/aLsUNBc/HVkEAJcJAbnLiN
	 Mb4tOttbrpFjBpCZXskrX/mmtSRvqgegio6/ZgJaeXASVoyPPszZQbckGDiDoZ8TlW
	 cVBCoPl1wM5GwbXeOTa0yk1g3d9aUVipM6WlBAKlDIfYLCttcACLJ7jsVoB7gCcvv8
	 DO+YEqbQ4NfVkqf1UV/MzEqujRmGkdHBHC5cgkkhUHUGrbtp9HIVsa+lO9QojnE1X+
	 GJwXPDNjCBkUw==
Message-ID: <6be92f71-f023-32df-a787-1ee3da37107b@kernel.org>
Date: Mon, 9 Oct 2023 07:24:56 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 22/26] dt-bindings: devfreq: event: rockchip,dfi: Add
 rk3588 support
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Robin Murphy <robin.murphy@arm.com>,
 Vincent Legoll <vincent.legoll@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
 <20230704093242.583575-23-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20230704093242.583575-23-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231008_152503_078631_6871AD7F 
X-CRM114-Status: GOOD (  15.74  )
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

On 23. 7. 4. 18:32, Sascha Hauer wrote:
> This adds rockchip,rk3588-dfi to the list of compatibles. Unlike ealier
> SoCs the rk3588 has four interrupts (one for each channel) instead of
> only one, so increase the number of allowed interrupts to four.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> 
> Notes:
>     Changes since v4:
>     - new patch
>     
>     Changes since v5:
>     - drop interrupt-names property
>     
>     Changes since v4:
>     - new patch
> 
>  .../devicetree/bindings/devfreq/event/rockchip,dfi.yaml       | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> index e8b64494ee8bd..50d3fabe958d5 100644
> --- a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> +++ b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> @@ -14,6 +14,7 @@ properties:
>      enum:
>        - rockchip,rk3399-dfi
>        - rockchip,rk3568-dfi
> +      - rockchip,rk3588-dfi
>  
>    clocks:
>      maxItems: 1
> @@ -23,7 +24,8 @@ properties:
>        - const: pclk_ddr_mon
>  
>    interrupts:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 4
>  
>    reg:
>      maxItems: 1

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
