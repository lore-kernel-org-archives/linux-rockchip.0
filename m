Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E4F5C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 06:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HbcbUPLQHc3cE4CYqUUUhge55ua4BzmyqQt48wc/wmE=; b=Id+Y9qmaCWuQk5
	itCEC04Hn3EAU542cOxb0z2/YjKqZhISm4gMm3IsBISKjrK/3FrdIIP8eSnPd+V0E1KlCEp6NrIug
	XPUEjGgxu4pFArXefiwiaX/SVGOFLG2WgzqnYr6s4mx/k0KDLMvR8HbUJaGmpWTpUXBKPX+27HbZU
	eRLAkrz/Q6sUOshBD35+pfPY6pz+T3PbtVemeJIulV2+tJuWBJ6NjCPKH9fOjr5Vs7QY+i9/LvNJJ
	2XpBeTQA3xLIoMxH+eoTWBeINyuJKZHR8DChsyPsdrUfeQCzUNfUjxUuyFALl90Ow0SZxoOToMR9Y
	aq5PxUeo/avtX2Nbwu+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxL2C-00000001576-47BC;
	Thu, 18 Apr 2024 06:14:12 +0000
Received: from smtpbg153.qq.com ([13.245.218.24])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxL27-0000000150T-3IsR;
	Thu, 18 Apr 2024 06:14:10 +0000
X-QQ-mid: bizesmtpsz7t1713420800tgm1cll
X-QQ-Originating-IP: r/ejyZvgSRLvHsenLKM5xIQ9Ri/IXB9uPybLXv/mbNk=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 18 Apr 2024 14:13:17 +0800 (CST)
X-QQ-SSF: 01100000000000C0G000000A0000000
X-QQ-FEAT: r/cTxDoDoiH1Bc56LytD5jHVqtEDUAmA6aiMrRAEKAdMlrveYx4SbJi/4uT5M
	g6dLDzYLUNd4PDN/sm2r/upe7uy83xRpSvCeDnoXEFHNSQUBh8gziUn/kz9gG2oDqEwwwiO
	ipp/UUAE14D4yLjZUEvC3yWOc++7XxvvdhLGEoHBQKjm+qAvvItsnwVG1P5dkYtr2+DqPe6
	vmiJdwdaDK7OEYk/bg98ezjn5KA88NwIhvfB/tyUT4TogJK1lZhuxi1UuAXb0RQ5C5zbH3/
	I6Az/Ss/H9QhxmEoAQg/cskMU9bMK1d5b48ysLMoP20ukSsTStBKnsE1R+QwsO+T4zA+uKd
	OEKIjCa1rzvXcZRnmdrr75oYiy5RCzcBdXoXWWG7TIuH9YNqW54GQThHvQ4dv+qYVALU6nv
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2346405261263451864
Message-ID: <54A57FB24C5E1752+669a5f22-b9fc-4cb6-8df5-367331dc4658@radxa.com>
Date: Thu, 18 Apr 2024 15:13:17 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: add Radxa ROCK3 Model C
To: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240416130010.379705-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20240416130010.379705-1-amadeus@jmu.edu.cn>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz6a-0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_231408_767422_88D5A940 
X-CRM114-Status: GOOD (  11.03  )
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

Hi,

On 4/16/24 22:00, Chukun Pan wrote:
> The Radxa ROCK3 Model C is a similar board to
> the Radxa ROCK3 Model A with the RK3566 SoC.
> Add devicetree binding documentation for it.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>   Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 99bd5e2c76a0..dc3847bd67fe 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -777,6 +777,11 @@ properties:
>             - const: radxa,rock3a
>             - const: rockchip,rk3568
>   
> +      - description: Radxa ROCK3 Model C

please use "Radxa ROCK 3C" here too.

> +        items:
> +          - const: radxa,rock3c

and "rock-3c" here.

> +          - const: rockchip,rk3566
> +
>         - description: Radxa ROCK 5 Model A
>           items:
>             - const: radxa,rock-5a

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
