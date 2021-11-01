Return-Path: <SRS0=5X13=PU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12852C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Nov 2021 20:59:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B6E766054E
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Nov 2021 20:59:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B6E766054E
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UVtVP9a9VUa/sYgA4iuIP5OvxZMa46ad1zvhCXUtcpc=; b=OrIT/tPI6hwXwv
	cDeCtwUdmkITied72p2pTuxFwIX2wQ/ffyWchW7kS5JAKVHHFWJufMRH2WrqeBmDrBMswu0Sdn5Tq
	akJbGWVkqoqcdmDS2JM+iADuJDN2wLGgf+RjjuXn3UkbT9THSO4Ndk1s1/HuZxDj0LgwuO+D5QvuA
	lVV93U8LxwITb918NxciJpWPhnQadrdvVzVnWCLF81O4bRWgq7t1J1mRqtaSJaS4W0tpo1/XB3m4m
	nEQ2vnFkW1KR/Qv+YgO5RMoXITDL0gHRMWi53BY/p6vT3OWsIQJC52LkMih4oxC2T5aZsgB/e2smF
	MOILqq+kONiRNlGiaRfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mheOX-00HJEQ-9I; Mon, 01 Nov 2021 20:59:05 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mheOK-00HJCW-1l; Mon, 01 Nov 2021 20:58:53 +0000
Received: by mail-ed1-x535.google.com with SMTP id g14so6547487edz.2;
 Mon, 01 Nov 2021 13:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EGrnx62pvPj+VVQAfPPd1GnNOPN1pj0iHtDg0nowNo8=;
 b=q3GESUarDqCYNc90NbDWg2y3hKsM5xAcvaH0+c/nTpxXi9xX+vtNSAq5QXtOW9vINj
 k8QeuJm365Op4btcuXlNR710bSaEFrxcG2vc3hzH0XZarwPYaJ4it1MoqWZf7PbxMkQk
 Rmb0UQbtexTZKK+qQ+uKn7ThW7Adnw7NwrCVHf7VyL2riX9QA701emD586D9DYQ087hC
 dbSyI55CSWvmr60sEzVHTKNixvrvxtl7vExMUYMytF3X3mjkefnYbpmgwO2pY8ZJ6kDJ
 X1uhVsYnfNc8JfFMDbESC1HvedCHBReLuKM/OFhMsnN5NAhjEFd0ISNGugMifGXS/tKE
 PL9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EGrnx62pvPj+VVQAfPPd1GnNOPN1pj0iHtDg0nowNo8=;
 b=jQ8glk+hOoGycCxicP7DAbocHTy96fIHybvMWD93cGht/mXxu+thYQQF5HECRGaNRo
 jML9FcS8/jUdSOYU7wfrGCIu8Sxsv9srSjQ+Mi1txtu8nZnFRYSnsSyDG74XrNL1nd1+
 QqpjtZsN9bbMU+3ArH83szuYqDK/FdsRMM8drU43SZLzWC9aUT5AHNyw1+eg5e7s27ES
 TCqsGIBu/8+L25YYSKcEHBU8sNizneiSuok3xid3X0dYJkUUhT2bVvN9rpHQ5zWT9FCL
 eLOqWPAEqnHygMmuMBn9LOab8fnTCuZ1bdM07GLKg+jYPf01pYWA8MRvyWvAemHpkSxC
 i8rw==
X-Gm-Message-State: AOAM533zi1eDIb645gj1zT1As689o5mbum8TMUssLiQMqId6ITC3p3ZU
 aySpWMMr5UHfl46UCxsG99QejzVV7gscLL1Q/44=
X-Google-Smtp-Source: ABdhPJwwoLB13ORBh1xxEUOZTPzBdJGO+FhxArWjC/UixC1ei6acQGnNpe+SrjyIb2lUB86fM1ikB5zdayO5Nt/NP3A=
X-Received: by 2002:a05:6402:2815:: with SMTP id
 h21mr45121875ede.45.1635800329724; 
 Mon, 01 Nov 2021 13:58:49 -0700 (PDT)
MIME-Version: 1.0
References: <163425193558.1688384.15520943968787313145@swboyd.mtv.corp.google.com>
 <20211015120559.3515645-1-martin.blumenstingl@googlemail.com>
 <04a58d50-634b-fa20-95b4-eb6831f77e85@collabora.com>
In-Reply-To: <04a58d50-634b-fa20-95b4-eb6831f77e85@collabora.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 1 Nov 2021 21:58:38 +0100
Message-ID: <CAFBinCAEt9_EfLYWZEzTBK6iN97+Wacho7pNd2LYDPX3+goMzg@mail.gmail.com>
Subject: Re: [PATCH] clk: composite: Also consider .determine_rate for rate +
 mux composites
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: sboyd@kernel.org, heiko@sntech.de, knaerzche@gmail.com, 
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 "kernelci@groups.io" <kernelci@groups.io>,
 Collabora Kernel ML <kernel@collabora.com>, Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_135852_138275_4DAE4488 
X-CRM114-Status: GOOD (  22.05  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Guillaume,

On Mon, Nov 1, 2021 at 9:19 PM Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
>
> Hi Martin,
>
> Please see the bisection report below about a boot failure on
> rk3328-rock64.
>
> Reports aren't automatically sent to the public while we're
> trialing new bisection features on kernelci.org but this one
> looks valid.
>
> Some more details can be found here:
>
>   https://linux.kernelci.org/test/case/id/617f11f5c157b666fb3358e6/
>
> Here's what appears to be the cause of the problem:
>
> [    0.033465] CPU: CPUs started in inconsistent modes
> [    0.033557] Unexpected kernel BRK exception at EL1
> [    0.034432] Internal error: BRK handler: f2000800 [#1] PREEMPT SMP
>
> There doesn't appear to be any other platform in KernelCI showing
> the same issue.
That's a strange error for the changes from my patch.
At first glance I don't see any relation to clk-composite code:
- the call trace doesn't have any references to CCF or rockchip clock drivers
- clk-rk3328.c uses drivers/clk/rockchip/clk-cpu.c to register the CPU
clock which does not use clk-composite

Chen-Yu has tested this patch (plus [0]) on RK3399 and didn't observe
any problems.
So maybe this is a RK3328 specific issue?
Anyways, I am interested in fixing this issue because reverting is
becoming more and more complex (since I think we're at eight commits
which would need to be reverted in total).

> Please let us know if you need help debugging the issue or if you
> have a fix to try.
Could you please try [0] which is the second patch in the series which
finally made it upstream.
This second patch is not in 5.15 because I believed that it's only
something to make the code in clk-composite.c more future-proof. It's
not a condition that I am aware of.

I don't have any Rockchip boards myself.
So I am thankful for any help I can get.


Best regards,
Martin


[0] https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git/commit/?h=clk-next&id=6594988fd625ff0d9a8f90f1788e16185358a3e6

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
