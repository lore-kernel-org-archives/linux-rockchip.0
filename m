Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFBB1C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 10:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w3P/9gj06TIFxtFMDZIIh6wD1zPwGOYAvxkLHZnNSJc=; b=3vPzBloNjehlR6
	qT1W1gzdWvckprgVM1QCuAjnV+uKhVtD2ggEIY95JeGsm7OXUQdmpqkwSaiscD1/pccH9k9HxJZ1D
	Dxp8KaC4jMCHJuQbFaYq/k4o1sAG9z8vSgKJtBXR2EVtS2OFL79cIY9XE15qpjKvvRmD9KzSUnvRk
	fgYY4BuAkB6ygVXydB0LnDpFYFV5w4GByfkm62rflO/Hfq2JlgP2UQVPZR7ROpwQ3TMf5MVKqNRWv
	rAbsb4znjiDfo5E375NQctYlj9OKP8C5UB5/KkQ4sOFU47p/g+r60cYAE2rA4Z4PfWeR2V5AkstYR
	Qois/MzlySi3wnyCHRxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seBDf-00000006aHw-0loH;
	Wed, 14 Aug 2024 10:27:07 +0000
Received: from smtpbg150.qq.com ([18.132.163.193])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seBDa-00000006aDK-3eXv
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Aug 2024 10:27:05 +0000
X-QQ-mid: bizesmtpsz4t1723631156t3ciwaf
X-QQ-Originating-IP: z8agEcpH6/0P7R27jL8QkQTZFDRm43AH3FLkBgmY4+U=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 14 Aug 2024 18:25:54 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8622350672067910073
Message-ID: <8FF4228B18A1DFEE+d359188b-64e9-4ce6-8796-f3fecd6a0781@radxa.com>
Date: Wed, 14 Aug 2024 19:25:54 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: rockchip: add support for Radxa
 ROCK Pi E v3.0
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240814095727.1662908-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20240814095727.1662908-1-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_032703_472389_DD7E01A5 
X-CRM114-Status: GOOD (  11.65  )
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

On 8/14/24 18:57, FUKAUMI Naoki wrote:
> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> RK3328 chip.
> 
> [1] https://radxa.com/products/rockpi/pie
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v4:
> - update compatible string for OpenWrt

this is for https://github.com/openwrt/openwrt/issues/16168

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> - drop A-b tag
> Changes in v3:
> - collect A-b tag
> Changes in v2:
> - fix typo in commit message
> - add missing --- in commit message
> - add new section instead of new item in rockchip.yaml
> ---
>   Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 2ad835f4068e..1d426d4e1928 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -790,6 +790,11 @@ properties:
>             - const: radxa,rockpi-e
>             - const: rockchip,rk3328
>   
> +      - description: Radxa ROCK Pi E v3.0
> +        items:
> +          - const: radxa,rock-pi-e-v3
> +          - const: rockchip,rk3328
> +
>         - description: Radxa ROCK Pi N8
>           items:
>             - const: radxa,rockpi-n8

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
