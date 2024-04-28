Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 474D2C4345F
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Apr 2024 21:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JdSBinIPLKo6SX4TJZt1vyJ4Y0c/TIkn3SjoTufYo74=; b=cUHIQjKsCnA3GCt/+6Xkt6eBIb
	5FCE1GSNxTKUCZkF61V60MhIVpWtWTMzoaxbCfuVd5Pt0FqFeQHB2akrgqHwua5SItAWXTrfS/Bmr
	VUzoUbGOSawQQ60ZaKuVfQPNoFo++k7ucyPM8ikiN7ZqBD9o2PwuyEnCnWkY+c8aVfB06N1uGQSoE
	wAHaoR9LXR05K4et8NEbzhYS+Er1UTTIib05bzgtvKpnKOvh/oMerRhlX7bCe9KNkHyO00EnQux1Q
	69eXn7N0L1DbfX9FNcTHcbnPOyxG41Nk2+8D4TlQozZMBhjkOCsr5lvgB7EFyCJwR/RslgPfbrZfb
	nSOvgnkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1CH8-00000000lep-46sY;
	Sun, 28 Apr 2024 21:41:34 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1CH4-00000000lbk-3J3b;
	Sun, 28 Apr 2024 21:41:32 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1714340486;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Br6/mlh4IbIGBLsAZO56LX/rMiHfPwJFLzbYvHw/Wok=;
	b=EJb4KSIna+pZFFr9jVzc9Zn9UN+jlLP1PmhpYlNwIBLNiZY1mVmQ74OmJq7+UEeAUbTG19
	ieRRrKZoVYqmky00vauNVsx8lpUkgTsAFp6CaBOdUM/J+K8ocoLgcCUN/tFjHyc5D2MF3A
	CZ6DXqXSJ3J5qdFXxKVOtL4E7E+RkL9ZWMdRj1Pv0cpGvPDMycPNSXm5ZtZDPr9C71BooX
	qbYCNMad6VSKTOV5H/UntEjVrZqte+u76aYt1GVvxM6BaV+uSQhaKn5j7+YWTKeq8JHGDd
	PKjzA2X9fP+eQtoy+aW5iomTjTuhHt15bx6CGMCRH8gxW87YnyT3nQ7mK0kwCw==
Date: Sun, 28 Apr 2024 23:41:24 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>, Conor
 Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob
 Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: add Radxa ROCK 3C
In-Reply-To: <d6004beb-2e7d-4f26-a202-0c5baabd4023@kernel.org>
References: <20240428123618.72170-1-amadeus@jmu.edu.cn>
 <20240428123618.72170-2-amadeus@jmu.edu.cn>
 <d6004beb-2e7d-4f26-a202-0c5baabd4023@kernel.org>
Message-ID: <f4baaff6fe20bba48cddb356df6e531a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240428_144131_401769_D5D73A6F 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
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

Hello Krzysztof,

On 2024-04-28 18:37, Krzysztof Kozlowski wrote:
> On 28/04/2024 14:36, Chukun Pan wrote:
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml 
>> b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> index 1bbbaf81134b..e04c213a0dee 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -799,6 +799,11 @@ properties:
>>            - const: radxa,rock3a
>>            - const: rockchip,rk3568
>> 
>> +      - description: Radxa ROCK 3C
> 
> There was some big renaming of these boards. I assume you are using
> correct naming?

I can confirm that the naming above is fine.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
