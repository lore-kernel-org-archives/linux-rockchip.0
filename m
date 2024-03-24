Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9F42C47DD9
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Mar 2024 12:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:
	Cc:To:Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3WOlivbc30uqYomL758qGQ+aX66QJ1ReMXCoZQ+DPIU=; b=kRr72efVimj2Uh
	c9/znemmspwFiotyhpiT7D/5AbyTCVK1FMc69n361preHF2I3uSuvEWzCtz31mcbdSfN3hmzLABmv
	SWrpwhk8l2BM9k1QZ8+suS5yrVWhjbnsPAkUEsoHQUs+Q3B22wRa5zaYKEzIZvDafvvEwSNYHTuRl
	AkTJxFY5Fej3+hRd8vpksTUbPoPR4I0GQsLgZCGBR9QrmrGJQfU7JNaagykUczpTgMs3UQT4ITb/P
	a+KJ4eoGjncgI6Y65hZ4rQR3RM9yEpwKrP+pxzItfrR2tiycbxMmleuMviOnF5BxvzQKj9oKPe3+0
	zuUjzD7iUTgRKHd/Ls4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roMkN-0000000CWEr-27FD;
	Sun, 24 Mar 2024 12:14:43 +0000
Received: from wp530.webpack.hosteurope.de ([80.237.130.52])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roMkI-0000000CWEH-3i9n;
	Sun, 24 Mar 2024 12:14:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=leemhuis.info; s=he214686; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:Reply-To:MIME-Version:Date:
	Message-ID:From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	In-Reply-To:References; bh=99BhkOHQKpF2cZrCyALqWCNt5635DoNr5WdsPCXMpW4=;
	t=1711282478; x=1711714478; b=ZMOEQj8V6QBd9yM0m7nrg9e7sH6SRWbeH7qABgZxGz+mNrE
	oA1meXVB38TeykbGbp3lrTBEkcrqNQ60oHi5OUIq9uqIRomICFBm4KelsJmhUI+Pe2PayIFU6ryZB
	kDNUr/Sd5KN54JE0ddh4irS4VLx7UtRGwU66rCYo2EZgQQrEj4U+xCy3whlXzmBAmkJwKikFmQTcI
	WLyMovMq8opiKiov8jTMjswaiIFrAckE64d4/jhwhO352jlqE0xk1TjW3KAqOVtIXGZLXjUCuV/gX
	yMuZY12f1HV73IQdRw9Cxxd6lGqo27dyplWV0O9i/rlRSvGbwJd3aOA0bi5SsXBw==;
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
	by wp530.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	id 1roMkC-0008Uw-Bx; Sun, 24 Mar 2024 13:14:32 +0100
Message-ID: <db6ae45b-ff34-433f-8a31-1547423768ce@leemhuis.info>
Date: Sun, 24 Mar 2024 13:14:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: disable analog audio for
 rock-5b
Content-Language: en-US, de-DE
To: Pratham Patel <prathampatel@thefossguy.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 heiko@sntech.de, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240324062816.145858-1-prathampatel@thefossguy.com>
 <0005257d-8022-4a66-a802-0c920d259ccd@linaro.org>
 <TbQeSy-AWAKVHo2Alb8hXUvplVNvohDJ2ztRM1x3Fo5PMmGLMsJxtHR-OIms9FlUshfUD9x45EghBCB9gVtcUPlxeMRUJQ_C95DVhu3AJrk=@thefossguy.com>
 <XJ_dGL-0X07dJ8GOKvrXbRD2FAHN1A7keAtohcSaU41DEF0FbeWwswLEqkrYiwwulyXDwJ6SZHfWukhHO3t3tOWX7ZGM7ya9lwXfn8Xh1nU=@thefossguy.com>
From: "Linux regression tracking (Thorsten Leemhuis)"
 <regressions@leemhuis.info>
In-Reply-To: <XJ_dGL-0X07dJ8GOKvrXbRD2FAHN1A7keAtohcSaU41DEF0FbeWwswLEqkrYiwwulyXDwJ6SZHfWukhHO3t3tOWX7ZGM7ya9lwXfn8Xh1nU=@thefossguy.com>
X-bounce-key: webpack.hosteurope.de;regressions@leemhuis.info;1711282478;e9185bf5;
X-HE-SMSGID: 1roMkC-0008Uw-Bx
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_051439_144659_C9E6A38D 
X-CRM114-Status: GOOD (  11.10  )
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
Reply-To: Linux regressions mailing list <regressions@lists.linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 24.03.24 12:43, Pratham Patel wrote:
> On Sunday, March 24th, 2024 at 16:51, Pratham Patel <prathampatel@thefossguy.com> wrote:
> 
>> On Sunday, March 24th, 2024 at 16:15, Krzysztof Kozlowski krzysztof.kozlowski@linaro.org wrote:
>>
>>>> + /*
>>>> + *analog-sound {
>>>> + * compatible = "audio-graph-card";
>>>> + * label = "rk3588-es8316";
>>>
>>> Do not comment out code. Instead disable the nodes and provide
>>> appropriate comment describing reason.
>>
>> I tried changing the status from okay to disabled. That didn't work. The SBC
>> still locked up during boot.
> 
> I think setting the status to fail should do the trick, instead of setting it to disabled.
> Will try that and be back with a v2.

Please CC the author of the change that broke things when submitting v2,
which you afaics failed to do in this thread.

Ciao, Thorsten

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
