Return-Path: <SRS0=wP8P=PD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C096FC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 19:14:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 87A2D60F11
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 19:14:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 87A2D60F11
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mjg3u70b+5utMpRxmpkxn9sB6HpxDmgX88iuAjIlvrw=; b=oELqxR/CJfDhHnMT06IsJjroaP
	A3YbTsIScogxGyh1bz9YJrEkzU8D4eid2w3jsg+9ns5wiZ5NSb5ccuplnNOvFxmXyoJtYmVhlTMn5
	huUmB3IHaiEog8Hlm81vqoCknld+imRh6BWMpQIS4dprnIny95AtiYUhn5bhZWzElc+l1CRflVSlD
	lRO3AcuAcXOZ1peakZaXDf5eJ5NRyXqsRTANB9Cg0Gy/93T1jLwdzDdOgbhQxn5wED1F3OA7d573l
	xpdB7IXDbH8Q8gmFAvQfjirOslmNhH7W9NHQYrtrI1b30BS11dr0blB85K7QXY2nkoKTY/kxUWLA+
	ljih1OPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbSfK-008ay4-OV; Fri, 15 Oct 2021 19:14:50 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbSfH-008ax2-GA; Fri, 15 Oct 2021 19:14:48 +0000
Received: by mail-wr1-x42f.google.com with SMTP id r18so28159029wrg.6;
 Fri, 15 Oct 2021 12:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Ipq9+EXyzEcuYpTRY9Y+kbIGH9VBg09BZhdAzkrItDs=;
 b=BaMsZ0P8JjX8c/KxJ4EEt776Nycim34n7F/GGvMD4m/eFCMqRR9Dmh8m14t4LfOCpT
 2QH3cv3BIXptAbJCDpKNwxqCL1dc/Qctd9kU8fI2OL8jONdzFOBOOauUCq/t+ELn11Y0
 DHNB1bTA2KgImdvTNZBjh8e/kUETMexHz8MjF2hAUuPNgfNgeRLHjzRC4hRbzqHjFekp
 NOfjm+4WYJtqylL4fPUHLdusRx87sbkOvJhDoHsT6eRr6CO5XHGF2OTScSaxiRWEICCu
 Yj3Cx8b1NotgDAyQFcMvYqAX+YQ9jN0u7hKtRlat3JpxqgnZYdXTaQ0RmpVtWK3BQcXF
 0aSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Ipq9+EXyzEcuYpTRY9Y+kbIGH9VBg09BZhdAzkrItDs=;
 b=4nSmTjrtubXOOMNXxy2HvrNE5mWbjXG8BUPjpkbdwPFKYvCEtJoHhUoWfJuSylhLM7
 +7/wkePduNgmK92jkXFaXJU/lfx4gqXW8OsQMFk5s8uARrDp52d+DUsrYNdRtUmI717Y
 xx8o1hQHnmfqQTbC+hpBvCetJ/9GxfIPgeE7DxhLxNyy7UUMIW4WINKNhaJ6/IUGdmm6
 8i1XjpZ/frbquIXiYvuFm9mps6UiyYMropWuqPwWl51ciGew5SEsYkEZC9YJsTvLpBGn
 Fr0WLN71mt2JZuIwxThu1vqAGp1DFclHxu3UKiUcsrffGAfyd/urRcEOSDYmAn1YIcbp
 x2rg==
X-Gm-Message-State: AOAM533ngLmtGCExRY+T28dcLtWR2jahFOZYagZPgRo5fIJkTIMk6RJn
 lt9kmzulZwKsVrFoLMj3YB4ymOfYCaOf
X-Google-Smtp-Source: ABdhPJzlSx3ML0KPYsDAoukcZigA6bbc8nXm4srhmSlX/Q2c7HlWx2kZykU6xA2UUQiOP5CXvcJ3Jg==
X-Received: by 2002:a5d:598a:: with SMTP id n10mr16579781wri.81.1634325286039; 
 Fri, 15 Oct 2021 12:14:46 -0700 (PDT)
Received: from [192.168.200.23] (ip5b435a69.dynamic.kabel-deutschland.de.
 [91.67.90.105])
 by smtp.gmail.com with ESMTPSA id b19sm11512430wmj.9.2021.10.15.12.14.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 Oct 2021 12:14:45 -0700 (PDT)
Subject: Re: [PATCH v1 1/6] clk: divider: Implement and wire up
 .determine_rate by default
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-clk@vger.kernel.org, sboyd@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
References: <20210702225145.2643303-1-martin.blumenstingl@googlemail.com>
 <20210702225145.2643303-2-martin.blumenstingl@googlemail.com>
 <4eb964ac-4fff-b59d-2660-2f84d8af5901@gmail.com>
 <CAFBinCAVtd8gmcuvGU79-85CqhSU8a3mBCa_jweeZBd59u+amQ@mail.gmail.com>
 <CAFBinCAT-FxcHpt=NCt4g-OfzEUhvxh8TNRcY2hb5kdxna0Uyw@mail.gmail.com>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <67995168-e0fc-0916-7c34-3efedf4bad00@gmail.com>
Date: Fri, 15 Oct 2021 21:14:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAFBinCAT-FxcHpt=NCt4g-OfzEUhvxh8TNRcY2hb5kdxna0Uyw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_121447_577333_0CAA4B97 
X-CRM114-Status: GOOD (  30.21  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Am 14.10.21 um 23:34 schrieb Martin Blumenstingl:
> On Thu, Oct 14, 2021 at 2:11 PM Martin Blumenstingl
> <martin.blumenstingl@googlemail.com> wrote:
> [...]
>>> Reverting this commit makes it work again: Unless there is a quick and
>>> obvious fix for that, I guess this should be done for 5.15 - even if the
>>> real issue is somewhere else.
>> Reverting this patch is fine from the Amlogic SoC point of view.
>> The main goal was to clean up / improve the CCF code.
>> Nothing (that I am aware of) is going to break in Amlogic land if we
>> revert this.
> Unfortunately only now I realized that reverting this patch would also
> require reverting the other five patches in this series (since they
> depend on this one).
Indeed, that whole series would need have to reverted, which is clear 
(to me) when looking at the patches.
> For this reason I propose changing the order of the checks in
> clk-composite.c - see the attached patch (which I can send as a proper
> one once agreed that this is the way to go forward)

Yes, your patch papers over the actual issue (no best parent-selection 
in case determine_rate is used) and fixes it for now - as expected.

But it is not a long-term solution, as we will be at the same point, as 
soon as round_rate gets removed from clk-divider. For me, who is 
semi-knowledged in clock-framework, it was relatively hard to figure out 
what was going on. "I'll do this later" has often been heard here.

Though, I don't fully follow why moving the priority of determine_rate 
lower would have been necessary anyways: from what I understand 
determine_rate is expected to be the future-replacement of round_rate 
everywhere and should be preferred.

I guess it's up to the maintainers on how to proceed.

Alex

> Off-list Alex also suggested that I should use rate_ops.determine_rate
> if available.
> While I agree that this makes sense in general my plan is to do this
> in a follow-up patch.
> Changing the order of the conditions is needed anyways and it *should*
> fix the issue reported here (but I have no way of testing that
> unfortunately).
>
> Alex, it would be great if you (or someone with Rockchip boards) could
> test the attached patch and let me know if it fixes the reported
> problem.
>
>
> Best regards,
> Martin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
