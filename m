Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F00B1C61DA4
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Mar 2023 10:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VSPsisWES/FzVIOY1nU8wIXcPYXKUSwdq6ICSUENxBA=; b=ZYCA3AJPPgRpTD
	7Yh3c2HrAHEKBRcQOiTjWqZzOaXPti2FwcPOCKry9pZvXhsoeB55waeidYKNyjnpq7jobV2jnBdRC
	+YtP1t3Y2/efsWtykS4Cq66QcJqcYvpSocPoBYO3dAPgDR7EjChEsMaLwUaLOhK/PPOq5XBvjvhof
	1xKDKVl9/mcxQFJFKN/XZ353q/vjgQA7GG/6ChVPUyfk02H8cK35SqUcprPGY78DDGE8frVRXw3CB
	l7P22Ma7sL/ZgS2fhks2lxjFPleJO0eoW5OHz8XEr7N8MR4VIcsSx71WhAvpH+9y6zubaO6wPy0Dl
	4F+LHmZWFAMunTLAzEPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYlE6-00A47X-TG; Sun, 05 Mar 2023 10:04:22 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYlE3-00A45l-12
	for linux-rockchip@lists.infradead.org; Sun, 05 Mar 2023 10:04:21 +0000
Message-ID: <6bb744c3-a5f6-cb1b-2d0d-1bfb63127439@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1678010653;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tttlDtdagS98L3eWYv8TYPfVASIZ/pxTczL7vpVUrgc=;
	b=Ke/7GE9N9qv53eNcBLIzorNDPLKggCP20L9hfOIuMmNMNzZfbWmZQHrMidNpgHADOJxxso
	DDLlT2oRCX6mZbvVDCpuP2NND04vcj2tSBdDdvSaOYU9GR066W6lwWrhRJcpFKj4LrHRic
	FGha1rB9HHMKSSLLEm87BALpDCum25iM+EJHIhHY5V0O04PwnCskJaBEkuAK6pwgT+KYp8
	JrHFqui6dlrHbnZl+qgxDa1N5rYgUW8YsCLVscivpwpM4B2vZla0RlyH7z9j/7v8IonRbB
	9HWtyf1FumClXSLakAkLe9Kn/tMO7LtgXjIzmfpqPTRPMukmc4vey5DrpHWDeQ==
Date: Sun, 5 Mar 2023 11:04:12 +0100
MIME-Version: 1.0
Subject: Re: [PATCH] arm64: dts: rockchip: Lower SD card speed on Pinebook Pro
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Dragan Simic <dragan.simic@gmail.com>, JR Gonzalez <jrg@scientiam.org>
References: <20230304172838.38059-1-strit@manjaro.org>
 <30017cc2-12cb-37dd-cd0a-f2e91fc6c252@linaro.org>
Content-Language: en-US
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <30017cc2-12cb-37dd-cd0a-f2e91fc6c252@linaro.org>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230305_020419_449305_C753EB9B 
X-CRM114-Status: GOOD (  11.99  )
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


Den 05.03.2023 kl. 10.52 skrev Krzysztof Kozlowski:
> On 04/03/2023 18:28, Dan Johansen wrote:
>> MicroSD card slot in the Pinebook Pro is located on a separate
>> daughterboard that's connected to the mainboard using a rather
>> long flat cable.  The resulting signal degradation causes many
>> perfectly fine microSD cards not to work in the Pinebook Pro,
>> which is a common source of frustration among the owners.
>>
>> Changing the mode and lowering the speed reportedly fixes this
>> issue and makes many microSD cards work as expected.
>>
>> Co-authored-by: Dragan Simic <dragan.simic@gmail.com>
> That's not a valid tag. Run checkpatch.
>
> Missing SoB, which would be pointed out by checkpatch with correct tag.

Thank you. I ran checkpatch and it just said it was not valid, didn't 
give alternatives.

Would Co-developed-by acceptable instead?

And then ofcourse with the added SoB for the co-developer.

>
>
>
> Best regards,
> Krzysztof
>
>
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
