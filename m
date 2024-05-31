Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 144CCC25B74
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 May 2024 02:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LSsIkBR+fGFBmYgS0AnNCbboBxmOJ+e0T0RwdrLYuwE=; b=wDrEi3UTfjNA24ygQ0sJKs5Jgq
	xq0rYKiyQy7+tdugO34vuPkg8kNxNsS7h+gRukC4KInpg+Dbjf2J53RDBuQQUoDFxatJtMb/DKQDj
	fmToRtfwpi1uWcEqwZg786t+dqRmWAEGi5Ps6TQrVyk7wbSqoz+IhjxxNrS6HlJaWvCgJby2XhlFt
	rMmyqbgLdv4JCYrBNGeegUwLOCkV/PvfW41mDy78DpJ9qkdOHTXwpLHPThDkkQOmXolSThQhfhgNG
	j+WEu0wKnNm5yHTBPuSw7+SIk5+GbR6QGDmxI2Cp3MXKdRHAzGq6IuQMK46AG+fp/y52Y0tDwX+6L
	HJmFKiJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCsGv-000000093J4-2KVv;
	Fri, 31 May 2024 02:45:37 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCsGr-000000093IU-32iO;
	Fri, 31 May 2024 02:45:35 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1717123530;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Q5Xxa+1pfjc83KgBzGxQW/9sLaAlfMtTgcdj5otYUxQ=;
	b=SNAYiZtNgZqRk9A1Opklu3S3DISvQzvdiQsIwR+hxLJwn3EvkM1U0oc4W5FDaYKz5KfM6c
	E/QhLW+EYIHy0+wN3Lk34YIaYl0fnzuTr+hGczp5TBmFjlsafAnBHmjeDmQ30NVFhL6DUa
	mTcPkotcL1rEazPuEg8KQ44s8AsVIdwQXZbiwZqJba9gbqT7RvVwROCJAVVi2fQ5Aa/1vs
	X0+mjKUw+xJyVBYMhvgDxVoihnSyX7qUMbEe57qOJ7dNHF/rNGV5pD74o8NdfuMXhGNH5m
	udPdca5v8xsOKerjRU+/jdYjE1W8zgyRmv2a9rqiXHxil18UeXtkJv4VvAGx4w==
Date: Fri, 31 May 2024 04:45:28 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Alexey Charkov <alchark@gmail.com>, linux-rockchip@lists.infradead.org,
 heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org, quentin.schulz@cherry.de,
 wens@kernel.org, daniel.lezcano@linaro.org,
 krzysztof.kozlowski+dt@linaro.org, viresh.kumar@linaro.org
Subject: Re: [RFC PATCH] arm64: dts: rockchip: Make preparations for
 per-RK3588-variant OPPs
In-Reply-To: <511137f077495007f467d5927f42f85d@manjaro.org>
References: <673dcf47596e7bc8ba065034e339bb1bbf9cdcb0.1716948159.git.dsimic@manjaro.org>
 <CABjd4YxD41DEkBCZfkznLboEY9ZVOfTCLcj4S_kkcsVswbANyQ@mail.gmail.com>
 <9996796.SDjBYy7pSV@bagend> <511137f077495007f467d5927f42f85d@manjaro.org>
Message-ID: <06452ce330f0a712e4d765475c6cbc8b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240530_194534_260686_40D10E5F 
X-CRM114-Status: GOOD (  10.53  )
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

On 2024-05-29 13:33, Dragan Simic wrote:
> On 2024-05-29 13:09, Diederik de Haas wrote:
>> On Wednesday, 29 May 2024 11:57:45 CEST Alexey Charkov wrote:

[...]

>>> >  arch/arm64/boot/dts/rockchip/rk3588.dtsi      |  414 +--
>>> >  arch/arm64/boot/dts/rockchip/rk3588j.dtsi     |    6 +-
>>> >  arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 2671 +----------------
>>> 
>>> Rename detection didn't do a particularly great job here - wonder if
>>> we can do anything about it to minimize the patch size and ensure 
>>> that
>>> the change history is preserved for git blame...
>> 
>> +1
>> The diff does look awfully big for a rename operation, which was 
>> supposed to
>> (also only) "modify ... a bit".
> 
> I also don't like the size of the patch.  I just tried playing with
> specifying different values for the --find-renames and --find-copies
> options, but with no good results.  I'll have a look into the Git
> source later, to see what's actually going on with those options.

Yay, --break-rewrites makes the diff extremely compact. :) [1]

[1] 
https://git-scm.com/docs/git-diff#Documentation/git-diff.txt--Bltngtltmgt

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
