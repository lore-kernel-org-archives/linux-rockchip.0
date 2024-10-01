Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0454CCEB2DB
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 02:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mqh8eKeLJ0VIDuWIFekO7FFMurrpOjBPgedOmzQyZbE=; b=3wi9J1pYI9xkMR1FwO9tQYwyBT
	n7f2F67Poi4Pxujy2aa/4Tm5uawUds4JfFixsPe0rUzzWkE6EWgW5bWbF94pEWNgoOjLew7zh63r1
	NZL6JRfEAYcCm5gpTQ5O/qYiQUI7Xutcg9qvImnw8YLbnRSlHV9jc/Ca7p6R49jCzttLAg6wPOhFd
	qO/glzfs51OKlnmuU1jGfhMlHyL+q9U8JWU2gjuRDayY12l0BgKLN0VuwhdVA259ZNDxuFi8XuCiX
	/2dT8m8UPdR6xiPLdLBT6vY4yAQfqdcXlwDWEjLzAXHo2I1Q/vmyRKo5FEunOf3mavV+SXEE+1haD
	DQZil9Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svSfr-00000001LqW-0WTN;
	Tue, 01 Oct 2024 02:31:39 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svSec-00000001LiS-1yle;
	Tue, 01 Oct 2024 02:30:24 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727749817;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pvkn9unYKg5jrQqXLz3IKj4eW4g7FS1Yw0ALAhtHSGI=;
	b=qndyLrujoJpXhrA3PsDJWmA2Mn5Jupk9HKInMqWbJFm7SNH2FUWsZbsKtwAdnm7X+gv9xN
	irTXR+w+OXHKApotKB0mrNBM/KhtMxzuApUBe72+kJjTP77c/t+Zn339vsSkq0xYGCxWWx
	x8PbXOuTw/JJ4h23ml5IQP4Jd8s3+LGKFDs32Exgsq/1DqHMUhsvntCoe84sZziW+5/y0f
	KL+62oseiCSsWqkM8oijpjjt5OXyKjFBEB8nrf2diRU194PJbAz4eiV9/k7YIsL79tNed7
	dXgzlVWrLE00DFt6Wq69Xp5Tam8neqR9Mz6WS8r/bV+nFV2GbAZQGiYkUbP4Tg==
Date: Tue, 01 Oct 2024 04:30:17 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Mark Brown <broonie@kernel.org>, linux-spi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, heiko@sntech.de, oss@helene.moe,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 0/5] Improve error handling in Rockchip SPI
 drivers
In-Reply-To: <D4K14E2EOSC6.1VYBGSQKSIRW1@cknow.org>
References: <cover.1727337732.git.dsimic@manjaro.org>
 <172774028424.2264837.4595727034314147956.b4-ty@kernel.org>
 <D4K14E2EOSC6.1VYBGSQKSIRW1@cknow.org>
Message-ID: <c69fef216b1a2474bbab1a146ec63450@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_193023_011088_8FA3385F 
X-CRM114-Status: GOOD (  16.83  )
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

Hello Diederik and Mark,

On 2024-10-01 02:05, Diederik de Haas wrote:
> On Tue Oct 1, 2024 at 1:51 AM CEST, Mark Brown wrote:
>> On Thu, 26 Sep 2024 10:38:11 +0200, Dragan Simic wrote:
>> > This is a small series that improves error handling in the probe path
>> > of the Rockchip SPI drivers, by using dev_err_probe() properly in multiple
>> > places.  It also removes one unnecessary check of a function return value,
>> > and performs a bunch of small, rather trivial code cleanups, to make the
>> > code neater and a bit easier to read.
>> >
>> > Dragan Simic (5):
>> >   spi: rockchip: Perform trivial code cleanups
>> >   spi: rockchip-sfc: Perform trivial code cleanups
>> >   spi: rockchip: Don't check for failed get_fifo_len()
>> >   spi: rockchip: Use dev_err_probe() in the probe path
>> >   spi: rockchip-sfc: Use dev_err_probe() in the probe path
>> >
>> > [...]
>> 
>> Applied to
>> 
>>    https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git 
>> for-next

Thanks for applying a subset of the patches!

>> [1/5] spi: rockchip: Perform trivial code cleanups
>>       commit: d87ec94e48dd2da27fbe948f2dc6c8fedc98fff4
>> [2/5] spi: rockchip-sfc: Perform trivial code cleanups
>>       commit: 6c510eac1528d8939bad8b6df72c7b23ffec8c25
>> [5/5] spi: rockchip-sfc: Use dev_err_probe() in the probe path
>>       commit: 1482c40b440fa58f956bc3e1ef3426e0cdbc09e0
> 
> It looks like you applied some patches from v1 of this series while the
> current version is v3.
> 
> https://lore.kernel.org/linux-rockchip/cover.1727601608.git.dsimic@manjaro.org/

Just checked this by hand, and the three patches that were applied
are the same as the respective patches from the v3 of the series,
albeit being picked from the v1 of the series.  It's just that the
patch 5/5 from the v1 became patch 3/5 in the v3, which pushed the
patches with no dependencies earlier within the series.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
