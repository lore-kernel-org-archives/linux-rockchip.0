Return-Path: <SRS0=eRos=EL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90299C4742C
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 14:54:32 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1EFC720719
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 14:54:32 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="pPWQbwG+"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1EFC720719
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wrx3t+gw33i3hV6odXpQSvhQwO7jFFpVZmZmkmaITnU=; b=pPWQbwG+4YefGu6zYlRA6hwFY
	J08+eBD5g2aFnekcrh1L3ziR0ac+DxEfwDnh8qTvkjf166KGnpjUYA2o+OVM5S0DhsmGbIduD5Cwx
	LLjarm0EjEtvtdoEU4luNR76G+z9o5PQSDKWjcDf+SEtOWdKeJS8lUg3Ar6YzvP0KpVDEYZCu6+zt
	uUN7UxAGHbs2hCouzatWn1dGtc0uIxpPlb2Y7DCG19LygCeUjiaWBTrXuwY6EQEu5zXujX8vTFTRe
	NyVazOAQRC3Xk61rs7rXs+VlnrQqItJTZXpYdqk06/QlqJh8elAjR0l5+WfNeMQPjNcBZ2snlTa80
	RjtYju5tQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kagef-0001iC-OQ; Thu, 05 Nov 2020 14:54:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaged-0001gu-JP
 for linux-rockchip@lists.infradead.org; Thu, 05 Nov 2020 14:54:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D7C8B14BF;
 Thu,  5 Nov 2020 06:54:22 -0800 (PST)
Received: from [10.57.54.223] (unknown [10.57.54.223])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AFD583F718;
 Thu,  5 Nov 2020 06:54:21 -0800 (PST)
Subject: Re: [PATCH] pinctrl: Remove hole in pinctrl_gpio_range
To: Linus Walleij <linus.walleij@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
References: <20201028145117.1731876-1-geert+renesas@glider.be>
 <CACRpkdayhrcfyXEB4P+apjOyF=8DZgmu=_H8+aQEr4XEbB0NeQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <77bc14cd-7e47-6972-ee0b-fa72bb9e9fad@arm.com>
Date: Thu, 5 Nov 2020 14:54:21 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <CACRpkdayhrcfyXEB4P+apjOyF=8DZgmu=_H8+aQEr4XEbB0NeQ@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201105_095423_721984_BC85828B 
X-CRM114-Status: GOOD (  15.81  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2020-11-05 13:57, Linus Walleij wrote:
> On Wed, Oct 28, 2020 at 3:51 PM Geert Uytterhoeven
> <geert+renesas@glider.be> wrote:
> 
>> On 64-bit platforms, pointer size and alignment are 64-bit, hence two
>> 4-byte holes are present before the pins and gc members of the
>> pinctrl_gpio_range structure.  Get rid of these holes by moving the
>> pins pointer.
>>
>> This reduces kernel size of an arm64 Rockchip kernel by ca. 512 bytes.
>>
>> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>> ---
>> Compile-tested only (arm/multi_v7_defconfig and arm64/defconfig).
> 
> Patch applied.
> 
> Do you think it'd be worth it to add a check to checkpatch to suggest
> to move pointers toward the end of any struct?

For a general rule, I thought that ordering struct members largest-first 
was the conventional wisdom, since that way no sensible compiler would 
add padding between any members, only at the end?

That said, the trouble with any checkpatch rule is that people will 
inevitably try to apply it indiscriminately. With structure layout, that 
could often end up hurting readability and/or performance (via cache 
effects), while in many cases making no actual difference to the overall 
size anyway.

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
