Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BD4DC61DA4
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Mar 2023 15:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oiiHn9b/xuUsgr62aDaKF265yqgu2P5k5f/DL/65mKM=; b=InYlSrSUA0nYLd
	bATuD3BePIscsiBq2wEINjgY3PDSjAIcFAUlLHCLvYz5krubw2xFvfu/HhIQps6t2wX4+eLeprzMq
	nGf8BUnhdqgqYqw21MbBAIPPWw/9pG6Q4EgJ1hRSiUaQ6ysz+Pnu9HwYrj3Do9jKiMc5qweWfZchx
	/3+wGsYwUUh31u36JZe0oXoyXELNgwvrGMN9Yby0pRo3qiRnybsvHtzSuffk4wX+l1BMRZSmFZdRi
	lL7tzM333Ln3/5wf568vU6BoyeLXpbkj1ujp7892Ao1zBSDdKyTQcX/YnwzwVDCxeUqqCU0VFQdZ2
	e9/2Di7YpWWZMqFf59NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYqDW-00AOde-DU; Sun, 05 Mar 2023 15:24:06 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYqDT-00AOdC-CB
	for linux-rockchip@lists.infradead.org; Sun, 05 Mar 2023 15:24:05 +0000
Message-ID: <32cb5f8e-7e50-af63-ae27-5eda91b66c11@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1678029840;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LILnWwT+X01TlcMDNKt57y/oun3eaRS2/bsTMJ/7RMk=;
	b=X/rsn9XKlZjsL0EN4667M8P5xeWi+KUzcZU5hXoVasvXhgOsMWt0pduNhbPWuTv0EBGrGF
	s1Yyfv4ljOGFjmRHhj5mKMMjeULrUrwNM13CU9Tuolzey8wXpuQweLGcJ1GFe6b+SE/mjZ
	7ADtiAyNtFFzQw4nDJLOmVaj5e6PA63WbC4GeOEFT5+sGexsTf2ilMFX2Ph7jjU6ImGxVE
	qG8+PTi+vLna1DMfFWJdaMZwZaHwJrqlmu/2D5RoHM5bCtrtT4OGEE7dM3P7ZquCIVgNaB
	PmELKn78WZPjZY1V6Yls0bLE9V7/gmAfNXb9XgC/w7k4v4aykWxCURGvDavkCQ==
Date: Sun, 5 Mar 2023 16:23:58 +0100
MIME-Version: 1.0
Subject: Re: [PATCH] arm64: dts: rockchip: Lower sd speed on soquartz
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20230304164135.28430-1-strit@manjaro.org>
 <CAMdYzYoxti1ZU-xvc66bVx5TmRfUJK=Zx17pHSvaEELuRE95Uw@mail.gmail.com>
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <CAMdYzYoxti1ZU-xvc66bVx5TmRfUJK=Zx17pHSvaEELuRE95Uw@mail.gmail.com>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230305_072403_932217_1AAA6376 
X-CRM114-Status: GOOD (  15.75  )
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


Den 05.03.2023 kl. 14.43 skrev Peter Geis:
> On Sat, Mar 4, 2023 at 11:42 AM Dan Johansen <strit@manjaro.org> wrote:
>> Just like the Quartz64 Model B the previously stated speed of sdr-104
>> in soquartz is too high for the hardware to reliably communicate with
>> some fast SD cards.
>> Especially on some carrierboards.
>>
>> Lower this to sd-uhs-sdr50 to fix this.
>>
>> Fixes: 5859b5a9c3ac ("arm64: dts: rockchip: add SoQuartz CM4IO dts")
>>
>> Signed-off-by: Dan Johansen <strit@manjaro.org>
> Makes sense, considering the problems we're having with other boards.
> We should probably stop using sdr104 altogether on Rockchip, at least
> until they release a chip that improves on the limitations of pinctrl
> speed. Considering the frequency cap it isn't that much of a hit.
I agree, better have a safe default.
>
> Acked-by: Peter Geis <pgwipeout@gmail.com>
Thank you for the Ack.
>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
>> index ce7165d7f1a1..102e448bc026 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
>> @@ -598,7 +598,7 @@ &sdmmc1 {
>>          non-removable;
>>          pinctrl-names = "default";
>>          pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk>;
>> -       sd-uhs-sdr104;
>> +       sd-uhs-sdr50;
>>          vmmc-supply = <&vcc3v3_sys>;
>>          vqmmc-supply = <&vcc_1v8>;
>>          status = "okay";
>> --
>> 2.39.2
>>
>>
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
-- 
Kind regards
*Dan Johansen*
Project lead of the *Manjaro ARM* project
Manjaro-ARM <https://manjaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
