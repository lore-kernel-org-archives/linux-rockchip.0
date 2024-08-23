Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE092C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 08:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7sibVhGOtuVwN1uDek5CgzEYB/Y6R+vuai00d9Din0=; b=jsOBpS6M5/sfgU
	enrddeE8InJTPjnK+24JF0A1KKcQBIRutJqv5ccTRkOq5H+xw7eEjfoKrtZDBpEduByNwtwFGF7rq
	xM31usF1DCvX2kObAiP8pBBXJy8QoWGmJlaHjLODZ91ydO1jbdZJv/fp5If2bR8FlS1YDEFWoCe7p
	XwJaNKc3z6u+KXc2Zdkfs3QCFIffWyFJ/k5OcbPmLP7DObsO81ZtxdYS02116/okHb2xzS5Vl4Cmr
	iL2qjg6+cOYqfoAFPhQyvS3AMedAH+P3Ze7seDno+IodqkNzIQ1pnvF8EewJBSFJHk6evjN8doGr7
	/leSvNNcn7YJ2a+1UhOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shPqS-0000000Fv8U-05G7;
	Fri, 23 Aug 2024 08:40:32 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shPYx-0000000FqSn-01Mx
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 08:22:28 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5bed68129a7so2309414a12.2
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Aug 2024 01:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724401345; x=1725006145; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=gjHxTMy2Nb4CqjIIWZfncgAo/x9JF7WsLmBVhhpHbs4=;
        b=uBIBssMQRm3MovbJhpyWmMqpqX7rp9EOO+6IquaX0GtY3kP5dLcM3g9DEdPRPB8JhW
         LtrnZl5HnkCZOEYxKE26GAEdefqjkYzkRYpyyduscVwWU750VkjKOC/xuJE+pupcGfJB
         dQe3hiwDJlqBK14Hfk1hEDOT4G3VzBRkIjWdOjJdbEGY9TY61pmTQmX7ckl37T8CdaQV
         7ZYs4ijq4m8NhdyNschSAgJ6A7n4wbAU9VKonDUjdnlEYYIrxv8PmRYfjZE5d2Bxn0K+
         bOoX3Nt51c6UTCe97SLrZoPhtTSlJp6DLIQ6uhbarQC5oZ+DH9ULFA/BCNqZISNcsU7a
         fgww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724401345; x=1725006145;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gjHxTMy2Nb4CqjIIWZfncgAo/x9JF7WsLmBVhhpHbs4=;
        b=eAEH9u5LCDZ62CS1KjVNQcKtLrIqcrCl6uqgXozMu0Gbhjcrw3f9x8rOdY3FuTKbBT
         2rR/ur8llcPKGU09SeDlvrYu8IlieaZH7clwoUjhFFlK/0gY3Pf+X2aaURMCntqDjFxo
         RBnMeNf8XhQ00CZXptYcIoDzmFGDgNnQsvBOpzNsIzhFZ435nfq5VtlaFsoCzy01gjQs
         rMpNOxNWIBGup03FMIjXsxQMnZBu0JP1qDqevFFMFB4ENQya/j5k8w3VuRDcfwQqNNRa
         P1EnbwASMaXq2qQBZbJ8jvifEaeoxflbk6cs26CTPWHCWNfdwe0w1SHwz09BI1D/LMVe
         k7CA==
X-Forwarded-Encrypted: i=1; AJvYcCWUrkA+FJBKSgEXvaVem0iER4vGN5fuiN1lmL4GyX03CPPDZHzNqt74iUSVXWVdU9zQd3jfpNu0ixx2HwH2QA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2vPsgqNGRmbcaJWwntTNq/Vbp6PvRM1lVg2oLfwJP4xZ+zWgz
	ToHSQg3gTZjIGMFfOnkjq2hGqEkTYshXaSn/8t8+o/+GqmoG8clBeS5BtEojbBc=
X-Google-Smtp-Source: AGHT+IE9ppracdAv81Pivu6h9pYjNfT03Szj3V/OWKCxV2uZxK94QYzAMcFCesft7Qb0HDUBmenfyw==
X-Received: by 2002:a05:6402:430a:b0:5bf:a2c:4f35 with SMTP id 4fb4d7f45d1cf-5c0891663fbmr945656a12.10.1724401344444;
        Fri, 23 Aug 2024 01:22:24 -0700 (PDT)
Received: from [192.168.200.25] (83.25.211.12.ipv4.supernova.orange.pl. [83.25.211.12])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c04a3c9dd9sm1796897a12.26.2024.08.23.01.22.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Aug 2024 01:22:23 -0700 (PDT)
Message-ID: <6a39f1bc-7372-48bd-adb7-00b9db1419de@linaro.org>
Date: Fri, 23 Aug 2024 10:22:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/8] arm64: dts: rockchip: add IR-receiver to NanoPC-T6
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org>
 <20240822-friendlyelec-nanopc-t6-lts-v4-5-892aebcec0c6@linaro.org>
 <50d768c7-56f1-4a60-b6bd-e31fe7448f33@kwiboo.se>
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Content-Language: pl-PL, en-GB
Organization: Linaro
In-Reply-To: <50d768c7-56f1-4a60-b6bd-e31fe7448f33@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_012227_077103_658C360C 
X-CRM114-Status: GOOD (  12.69  )
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

On 22.08.2024 22:59, Jonas Karlman wrote:
> Hi Marcin,
> 
> On 2024-08-22 15:32, Marcin Juszkiewicz wrote:
>> FriendlyELEC NanoPC-T6 has IR receiver connected to PWM3_IR_M0 line
>> which ends as GPIO0_D4.
>>
>> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 14 +++++++++++++-
>>   1 file changed, 13 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>> index 292022a56332..fcea11ff2af2 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>> @@ -25,6 +25,11 @@ chosen {
>>   		stdout-path = "serial2:1500000n8";
>>   	};
>>   
>> +	ir-receiver {
>> +		compatible = "gpio-ir-receiver";
>> +		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_LOW>;
> 
> I would expect to see pinctrl here that configure pin for gpio func use.

Thanks. I based on rk3588-friendlyelec-cm3588-nas.dts which has 
ir-receiver done this way. Will copy from rk3588-orangepi-5-plus.dts 
which is more like you describe.

Have to find a way to test it too.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
