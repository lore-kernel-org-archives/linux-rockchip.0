Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 693F3C4332F
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Oct 2022 09:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:To:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UeKAILodOHjnl5VPrhI1FtQkMUUytlWvOWRaJTGhNuc=; b=i267x9VWp+OZE9+WpWWXRXxriy
	m2FFrPuHNOk/sdXN78u8bX6jF9MNLlitp8PKhe0FBmMbJ8K7FIQzP1/w42LdYow0EUMchjekaLUMp
	65zTJhRRVkNLJyXwqg0L3+8nAsL8lOpyUdlMTDISmnqn95tefpIJwD7lplFCi9ep8eeTtL3xzf7kd
	gu3ebc3vrPXhrzOK/xRj+g394e2W+PZueAKYu8/b2ZWZckxISn7XIJuhPtAME886v0MSDC6fnSwsG
	7AkDetcNOftiPME1Hg0GOZolxCCj0DJNm+LcaOjvmLT9mJhruUb31fng46PoSaYQJadJmLFSCv/sD
	FnBnh9dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ok03w-000vSB-Qb; Sun, 16 Oct 2022 09:36:04 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ok03k-000vPz-0q; Sun, 16 Oct 2022 09:35:55 +0000
Message-ID: <b50af49c-7ef7-4377-7505-ef6163a12e4e@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1665912945;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hznDyQTGYxkoYJl9OjSws+TBlbjqWiZ+oT2KsO4G2lA=;
	b=NYV6jwsKXMcQxXT/diZMMRKnecrSoH4oikGXxNF5mnm0mYZIsj/Ic9QToSGuTlxCtVw4+V
	NFIKfMGVeZISKYr2jcvkv43TqFWWetZZClZyo03W5icdCdY5ARDki/e3ueBHAyiCYh9MJb
	4CppGENdAdbj0HddIreZaNvmgRFsGymMkdD+rgs+dZ4FsBmTv0W1qN4M7yWoZyTKw5CaOd
	2JkLG8/0uox4RQqvplqo8YU8BjM52Hxsf+huPb4tMHslcZMXanEVY19t14pA/qwGM8csB7
	FMo4Yk/PixQsQ7jvZVcasWaSvaetnCuCHlOZruM9LfyuG8/4vsG1kP1BYZf46w==
Date: Sun, 16 Oct 2022 11:35:44 +0200
MIME-Version: 1.0
Content-Language: da-DK
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
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
Subject: Re: [PATCH v3 00/13] Add support for the Hardkernel ODROID-M1 board
In-Reply-To: <Y0sAXpecR7AVSOBI@aurel32.net>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221016_023552_737365_B7ADB261 
X-CRM114-Status: GOOD (  24.05  )
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

Trying to apply the patchset, but patch 3 does not seem to apply on top 
of patch 2 for me.

We do patch in other rk3568 boards, which is messing up the Makefile 
patching, so I needed to redo patch 2 to fit.

So it might an error on my part.

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
