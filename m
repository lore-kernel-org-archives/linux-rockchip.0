Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5C09C4332F
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Oct 2022 10:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1OACBkKzUEj90fEDIgb3TiE5iFrktaH6QybshydIbXI=; b=X9PdPqHfCPlT26W3E1hMRrytUR
	rzRZklKwwtG6WWrigHX59uB2zQTBHQYioenBVDKAXdCcbOMuHMQ1BUMW//e8YMpMtGAKZpv+1G5/o
	0bswUcJdYKoxKfqifU5JFrwSus32VmfzpLgtsUxkeCK3b/AWaFjfJrxfT/yh94ytP2xC1nhbVcZHC
	1ELPGgcq4dVfAvgsou35LPBmY3lFVUAjL8Pe4kR8JplamESXoKInCrtaJ3iI4Y26FciauKUeMqcmN
	tZ9OCgSuPWUuANAx5JpjCO5TY7TuebcUo9d6vU8Bv0tvFv1oOYtA/LRPGbjuYExhJBtbDdMju8ASZ
	EAGVhVEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ok1DG-0015vs-P7; Sun, 16 Oct 2022 10:49:46 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ok1D4-0015tI-Sr; Sun, 16 Oct 2022 10:49:37 +0000
Message-ID: <701b9128-a15d-9e5c-e1a9-afe7c1426bec@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1665917371;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0Sv1qw59Ku0GY3oWMLShbeY9jAwijXXVk6qfdGGXaB8=;
	b=kmyOK4TXeXM1stc6mA19YEXHBzNvpnE+YiBR6WzMa7XOBVqy67Hqe9g9U94+LK0NTV+DQb
	dJ3vBA5kvXPkAe7XVVMe2uBhevyu9h0G/OOY4+OZ2cEUZCsXbLGPQMlGFZGitWESQRBZsg
	GxmEpdAXSxlnxohQbRx+xMrycSZR+fyjVMZ7h1fGDaKHLP2v2YtxAaeabKebULfCg1nEdE
	kE5jSS1WPqn33wDVAa8SCUbcUgvHWrh5Y8Tf/IwOFT/tMd1dVr/zwXvfHHeA2iZ+WOj9vk
	gxUVe6Qaga2OxAQ6XeOUv5idoKOd6m1PZsU7cDFSKc+6FUHHKm2iSP3EKsx2YA==
Date: Sun, 16 Oct 2022 12:49:29 +0200
MIME-Version: 1.0
Subject: Re: [PATCH v3 00/13] Add support for the Hardkernel ODROID-M1 board
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>, Dongjin Kim <tobetter@gmail.com>
References: <20220930051246.391614-1-aurelien@aurel32.net>
 <8e84786d-8ae9-0f51-3438-24fb340199c6@manjaro.org>
 <Y0GA92rYss1Wslgr@aurel32.net> <Y0sAXpecR7AVSOBI@aurel32.net>
Content-Language: da-DK
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <Y0sAXpecR7AVSOBI@aurel32.net>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221016_034935_565823_A6BF709F 
X-CRM114-Status: GOOD (  22.14  )
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


Den 15.10.2022 kl. 20.47 skrev Aurelien Jarno:
> On 2022-10-08 15:53, Aurelien Jarno wrote:
>> On 2022-10-08 14:11, Dan Johansen wrote:
>>> Den 30.09.2022 kl. 07.12 skrev Aurelien Jarno:
>>>> On the ODROID forum, Dongjin Kim said he is not planning to submit a new
>>>> version of the patchset adding support for the Hardkernel ODROID-M1
>>>> board. I therefore decided to address the issues reported during the
>>>> initial review, and I also did some small fixes either because some
>>>> things changed in the meantime on the kernel side or because I noticed
>>>> some warning or issues when using the hardware.
>>>>
>>>> I continued writing some additional patches to complete the ODROID M1
>>>> DTS to almost fully support the hardware, the drivers being already
>>>> present in the kernel.
>>>>
>>>> This new version includes feedback from the linux-rockchip mailing list
>>>> and from the Odroid forum.
>>>>
>>>> Changes since v2:
>>>> * Renamed "Rockchip RK3568 Hardkernel ODROID-M1" into "Hardkernel Odroid
>>>>     M1" and fix the sorting.
>>>> * Fix sorting of arch/arm64/boot/dts/rockchip/Makefile
>>>> * Collected Acked-by and Tested-by
>>> Even though I added my Tested-by to this series, it seems I didn't test it
>>> on eMMC.
>>>
>>> This fails to boot for me on eMMC, but works on SD card and NVMe.
>> Thanks for the feedback. I do not have an eMMC, so this the only part
>> from the patchset that I haven't been able to test.
>>
>> First of all, which version have you tested? The v2 includes fixes for
>> the eMMC, there was a conflict with the NOR flash. If the problem is
>> still there in the v2, could you please send the boot log or the error
>> message?
> Sorry I meant v3 above. Anyway in the meantime I have bought an eMMC,
> and I confirm that:
> - it does no work with the v2 due to a conflict with the NOR flash
>    driver
> - it does work with the v3
>
> Therefore can you please retry with the v3?

Just tried with v3 applied and can confirm, that eMMC does work in that. 
Thanks.

So we can re-add my:

Tested-by: Dan Johansen <strit@manjaro.org>

>
> Thanks
> Aurelien
>
-- 
Kind regards
*Dan Johansen*
Project lead of the *Manjaro ARM* project
Manjaro-ARM <https://manjaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
