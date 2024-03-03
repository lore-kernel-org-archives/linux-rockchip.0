Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB6E8C54E49
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Mar 2024 19:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hZuktYs0+y9rbtUC76gL91LUN12yKLBtRJKBx6ahHSo=; b=REbW55Fup7GOgbV3G+nxfD17Ur
	G9LbghghQas9mZNKWEse/fICLJTDMWdNPsy8Z2PoWqCZqutaZA9K1OWkgx306EEBFLB+C4frLB1m1
	uPIFX5XoY+pp7Z2p7hSO7OGGbLfo7N0G8TA4enloxDEK7xAO3kGPTEjuOYXF/Y7/GLwhvLbkrosvZ
	Qdaz3fgcHBvB/ez7rHBxxN+6AkiGUnRP8LXwrXnW7yaCd0ZqlQrXgYx1XkL6ls90AMdif9lD3Zico
	rhMZwMHhEJsG6suB+yx5d7BvebDiMIQeQUl2Lgt1IYlfbnQqn3noeykmO0RQvfcpfr2wzSL5G4e9i
	19ihDBdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rgrEi-00000006XMf-2jTx;
	Sun, 03 Mar 2024 19:11:00 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rgrEf-00000006XLP-180d;
	Sun, 03 Mar 2024 19:10:58 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709493055;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8hNRWVJno8AKrSg17qcfRn/w8+KSTZ6aFzgs/r3ObuA=;
	b=TOlJJ8VHpsOa61znsLHbSBW0mYcpkpgfqCfGjFUJ3KWEo/4o5Ln7vKaN3z0AuQnJv4quUo
	bOPmsjwXXleK2DsJg4h6jTUye86v/KTo+sB9qG9sJ+x99SAWOjEJ7Fczklii2CKp2U/eeV
	roRVSuZ2T+refguesiecIN8IgdMKO8X1qRPv7DRVl5BlN9XStc0H7Cv4Cy0hB53kjAL66b
	JicZ37BduwHUNvLAHicib9fx7N+rlQf8wHumw4femJMovgCZgbG9I+cusHcb//hzTi4IkD
	nO+roPN3a9uIH48a8NkP49gmG2vwUpgESBwp73ozjlW1ixbCPnGI/CZoPqGCKw==
Date: Sun, 03 Mar 2024 20:10:55 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] arm64: dts: rockchip: Add cache information to the
 Rockchip RK3566 and RK3568 SoC
In-Reply-To: <31ad86c4e2e3f8f46016227b0d204c8b@manjaro.org>
References: <20240226182310.4032-1-linux.amoon@gmail.com>
 <8ceea100f2ef7cce296943ce1397161a@manjaro.org>
 <CANAwSgQnoBx+th6s254sML+Zw+RZQC6WU9TjfMoWgHxmCqbDcw@mail.gmail.com>
 <4676da62ec0fc0fe89318baea0678e0c@manjaro.org>
 <8eb17d05ff857d154169e62b1f04413f@manjaro.org>
 <31ad86c4e2e3f8f46016227b0d204c8b@manjaro.org>
Message-ID: <e6951decd632141ab7f08bda6f5569be@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240303_111057_647195_FFC85000 
X-CRM114-Status: GOOD (  17.17  )
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

Hello Anand,

On 2024-02-28 18:50, Dragan Simic wrote:
> On 2024-02-28 11:42, Dragan Simic wrote:
>> On 2024-02-27 15:58, Dragan Simic wrote:
>>> On 2024-02-27 13:49, Anand Moon wrote:
>>>> On Tue, 27 Feb 2024 at 00:39, Dragan Simic <dsimic@manjaro.org> 
>>>> wrote:
>>>>> On 2024-02-26 19:23, Anand Moon wrote:
>>>>> > As per RK3568 Datasheet and TRM add missing cache information to
>>>>> > the Rockchip RK3566 and RK3568 SoC.
>>>>> >
>>>>> > - Each Cortex-A55 core has 32KB of L1 instruction cache available and
>>>>> >       32KB of L1 data cache available with ECC.
>>>>> > - Along with 512KB Unified L3 cache with ECC.
>>>>> >
>>>>> > With adding instruction cache and data cache and a write buffer to
>>>>> > reduce the effect of main memory bandwidth and latency on data
>>>>> > access performance.
>>>>> 
>>>>> I was about to send my own patch that adds the same missing cache
>>>>> information, so please allow me to describe the proposed way to 
>>>>> move
>>>>> forward.
>>>>> 
>>>>> The way I see it, your commit summary and description need a rather
>>>>> complete rewrite, to be more readable, more accurate, and to avoid
>>>>> including an irrelevant (and slightly misleading) description of 
>>>>> the
>>>>> general role of caches.
>>>>> 
>>>>> Also, the changes to the dtsi file would benefit from small 
>>>>> touch-ups
>>>>> here and there, for improved consistency, etc.
>>>>> 
>>>>> With all that in mind, I propose that you withdraw your patch and 
>>>>> let
>>>>> me send my patch that will addresses all these issues, of course 
>>>>> with
>>>>> a proper tag that lists you as a co-developer.  I think that would
>>>>> save us a fair amount of time going back and forth.
>>>>> 
>>>>> I hope you agree.
>>>> 
>>>> I have no issue with this,.If you have a better version plz share 
>>>> this.
>>> 
>>> Thank you, I'll send my patch within the next couple of days.
>> 
>> Here's a brief update...  Basically, not all of the cache-size values
>> found in your patch were correct, but I've got all of them calculated
>> again, double-checked, and cross-compared with the way values in my
>> earlier patch for the RK3399 SoC dtsi were calculated. [2]
>> 
>> It all checked out just fine.  It's all based on the RK3566 and RK3568
>> SoC datasheets and a couple of ARM specifications, which I'll describe
>> in detail in my patch description.  I'll send the patch after I test
>> it a bit, to make sure it all works as expected.
>> 
>> [1] 
>> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=b72633ba5cfa932405832de25d0f0a11716903b4
> 
> Pretty much the same patch for the RK3328 is also ready for testing.

Just sent the patches to the mailing list, please have a look. [2][3]

I've "downgraded" the previously proposed "Co-developed-by" tag in the
RK356x patch [3] to a "Helped-by" tag, just because the cache-size 
values
in your patch mostly weren't correct and, as a result, differed from the
cache-size values in my patch, making the "Co-developed-by" tag 
technically
not applicable.  For that tag to be applicable, the most important parts
of the patches need to be pretty much identical.

I hope you agree.

[2] 
https://lore.kernel.org/linux-rockchip/e61173d87f5f41af80e6f87f8820ce8d06f7c20c.1709491127.git.dsimic@manjaro.org/
[3] 
https://lore.kernel.org/linux-rockchip/2285ee41e165813011220f9469e28697923aa6e0.1709491108.git.dsimic@manjaro.org/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
