Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9CD4C61DA4
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Mar 2023 10:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMSnmQmCwUO/DCMtCWvqjbtOdkNhlylBv6eSkp6d8X4=; b=wcEoXZ9AimX29Z
	ldRSByXRmB3qY7KOeETnqL7Tfe+Khc9HyV0klhWGez4gO4oz6veJUK+nPcvGvqlfc7CxXDKN8POcu
	FTdw8Oa+eu/klFvQ/nBe2uisXxQJH9Hh6BcxSufwgQ2Gf+MT1SgN3vlDyTM/ksJiEh3a+mQNHsSoj
	PsVvtsSHcVRooYgJbAIgSzkbxLnJY+CMkcECmAPDNxCWhQBiMS7tuoUeQ3iZ0jdPXrrkavZALpYnR
	1DfpTI9r3lUFBNizek/hPuoaSCX3OVAqpnNVwEZponXeSH0/7LSvrwoa5ERmQv8I4lXmDMYuZIban
	2BhOMpyG7ah4SINt2PBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYlrb-00A70R-OC; Sun, 05 Mar 2023 10:45:11 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYlrZ-00A6zt-F4
	for linux-rockchip@lists.infradead.org; Sun, 05 Mar 2023 10:45:11 +0000
Message-ID: <327f970d-3b8d-9679-e3ae-67a2a6253917@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1678013106;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hGINCQuAV01Iz0q/DSwI8KNqHRTfGKX74TaLcgvylmY=;
	b=lHuKYsUyo/0zecf4tsSjiVQQ03dS/nKMCPLkzg7g7VwyfsDzkwBqlFoVYomv7ahF/h5x3f
	LzUfx2pWmwXvUgi6nqtIMoDXTLKJTfWnsAguqpd0lTDGsJGivjzX0mTD4+MicSybdoZhz/
	QHaD/Ot2TEkiClCWRtRUiWhXxv25vcIot+oYycA9ao5wU1tUDEcgYhkpnsJk1pqOL6ZfIg
	w1+G01OkpM/OepDxfml289iy7aeztQP6oItsfai41tkeRJE+xns1LcdUE6gPEeqkdHZOYK
	LEMMmMtU5aXObUe9Zj2L4+6j22iw7q/e2KFWImkITR+NCaf/pp43wts4TOa4zg==
Date: Sun, 5 Mar 2023 11:45:06 +0100
MIME-Version: 1.0
Subject: Re: [PATCH] arm64: dts: rockchip: Lower SD card speed on Pinebook Pro
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Dragan Simic <dragan.simic@gmail.com>, JR Gonzalez <jrg@scientiam.org>
References: <20230304172838.38059-1-strit@manjaro.org>
 <30017cc2-12cb-37dd-cd0a-f2e91fc6c252@linaro.org>
 <6bb744c3-a5f6-cb1b-2d0d-1bfb63127439@manjaro.org>
 <d0a98b17-9bc9-5842-5245-5c7aea2b4d26@linaro.org>
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <d0a98b17-9bc9-5842-5245-5c7aea2b4d26@linaro.org>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230305_024509_716372_113BEA20 
X-CRM114-Status: GOOD (  11.05  )
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


Den 05.03.2023 kl. 11.43 skrev Krzysztof Kozlowski:
> On 05/03/2023 11:04, Dan Johansen wrote:
>> Den 05.03.2023 kl. 10.52 skrev Krzysztof Kozlowski:
>>> On 04/03/2023 18:28, Dan Johansen wrote:
>>>> MicroSD card slot in the Pinebook Pro is located on a separate
>>>> daughterboard that's connected to the mainboard using a rather
>>>> long flat cable.  The resulting signal degradation causes many
>>>> perfectly fine microSD cards not to work in the Pinebook Pro,
>>>> which is a common source of frustration among the owners.
>>>>
>>>> Changing the mode and lowering the speed reportedly fixes this
>>>> issue and makes many microSD cards work as expected.
>>>>
>>>> Co-authored-by: Dragan Simic <dragan.simic@gmail.com>
>>> That's not a valid tag. Run checkpatch.
>>>
>>> Missing SoB, which would be pointed out by checkpatch with correct tag.
>> Thank you. I ran checkpatch and it just said it was not valid, didn't
>> give alternatives.
>>
>> Would Co-developed-by acceptable instead?
> Yes, looks good. If checkpatch does not complain, use it.
Thank you. It says there are no obvious issues, so will re-submit with 
that changed.
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
