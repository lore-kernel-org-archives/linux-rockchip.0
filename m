Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1E05C25B5F
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 11:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9kwKav+T7vggk9DVSNF2cgZ0bSaMjfSVyMKnr+JKP88=; b=NGX7BQ3GCFLOSAqU3zdTdBGdDy
	W3HhVdpAxQU5Zjjuc8JMLdswvtTGrgWYq6+4ZL2Q2YZg78dAtlMPUwPvPa2X3NL1EgVgR6DCbeT6b
	MEex7HQFcmYGINf1U+8mKKkG5jrYCXDFaQDbnxaZsVoGh59x1aO/tM32j1YGVhlH/j1IAMKJIhBOO
	PrJcJMr2u96ftTCGyQoJj+hnqGK3NGOQ2nTx0dSpo7ZM32uQyYIps7BLjdgpZqRWrkZNRPlxSfPXL
	6kPuOHQUSd8D0hWVyILdEYmQXe5MDPfljVzAHL3dQNioXR6Ai8i+Gapn30gYHD+lu9OHiQItqI675
	vYw5I0tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3wnW-000000079Xi-3gsc;
	Mon, 06 May 2024 11:46:22 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3wnT-000000079Vh-2Dwu;
	Mon, 06 May 2024 11:46:21 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1714995976;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TDHj3I2bKZV0Oufn+FLrJiGvu/3S5EEePKKlBJVETJA=;
	b=S97BmLBfNTDEVmteDIRcwYLH9I05+zB3fB6YiZTR6PiQOmLotWIdYE/aO9rD9W9/sqICDZ
	kEzZT2uhtq2RuNajIuoFtb4kwOStatPh/hugkxSv2S6TUKeWrr9dnThyeOrijbs9Gt4scX
	IBoM7HjShWnynpz9lmPno4w1dyLR+XkR0blLtR3ggZBQKTrNShbxdM1ZYLyZUGsy2CVLaK
	tvpomTvp4FOrfDKLJHKaMNaG+8yIes03eZa4YF+r3zZNBiqQKuXAFWuzEeAiQJFwweK8vo
	kA37V9fEWXflnjsmrAw7XjTYs5NdGQC14wIUOOwpMTQfpOI4MCnWior3MnFI9g==
Date: Mon, 06 May 2024 13:46:15 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Lee
 Jones <lee@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] dt-bindings: arm: rockchip: Add Radxa ROCK 3B
In-Reply-To: <ade304a1-ea43-46cb-b425-b08055db49dc@linaro.org>
References: <20240505134120.2828885-1-jonas@kwiboo.se>
 <20240505134120.2828885-4-jonas@kwiboo.se>
 <ade304a1-ea43-46cb-b425-b08055db49dc@linaro.org>
Message-ID: <c306b46bc695a256c35e506d98a08e47@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_044619_908841_3B43C3F5 
X-CRM114-Status: GOOD (  10.34  )
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

On 2024-05-06 12:48, Krzysztof Kozlowski wrote:
> On 05/05/2024 15:41, Jonas Karlman wrote:
>> Add devicetree binding documentation for the Radxa ROCK 3B board.
>> 
>> The Radxa ROCK 3B is a single-board computer based on the Pico-ITX 
>> form
>> factor (100mm x 75mm). Two versions of the ROCK 3B exists, a community
>> version based on the RK3568 SoC and an industrial version based on the
>> RK3568J SoC.
>> 
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>>  1 file changed, 5 insertions(+)
>> 
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml 
>> b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> index 51cdaabaf0d9..41f2ab79e612 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -799,6 +799,11 @@ properties:
>>            - const: radxa,rock3a
>>            - const: rockchip,rk3568
>> 
>> +      - description: Radxa ROCK 3B
> 
> Does not look like it matches recent fixups for names.

Actually, I can confirm that "Radxa ROCK 3B" conforms to the recently
employed naming scheme for Radxa boards.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
