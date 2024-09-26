Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9AA5CCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 10:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G6QSrdI2UJYpG7CwKJMK7GPf8l63Iudf7HVfv6Qxmh0=; b=kOOsKDrsWS4WS3JJsB5xfZi5aY
	s9LcvFHwJx+ftY/JdACq303py6AzQd/RumiPNzNpxkYIEAwQEXkw0P7keQbD24EKd2maA4qXSoFbU
	tzMbheCyLif2Oi1Icx/UoL1XKs0LwmNAPigJEr6SJqsbZHvJQBcDBYegAkhA0SJFF+HAHhxOh9l3j
	9g8bQVYW/0UwxO1+5mc4ZYDWWRzJlKeE6YAPlZKXJ0Eyd7hkChZdmCA6vIiBIsqzhIsCqyo8pJrai
	kdoPg1NkmnmaQ/IoW3TgeFyUagDO85NTlWhIfRBdokxhn01+XLQRP03pnWcNG83YA8sQoC9eeTKG7
	OmER+lgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stlXc-000000081VF-03R0;
	Thu, 26 Sep 2024 10:16:08 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stlWM-000000081Dh-0Kj4;
	Thu, 26 Sep 2024 10:14:51 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727345688;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wS665X+guWUxjV3EiTZ06q5mRi1Mtf5MqZtjy3COO8E=;
	b=HXrrveUW3XFAOFVeKTPflURf5fOTiN16H6NZ0C5PspX8myut3HFRuWc8WczyVqILMWDFXA
	D3n6/11crhP6NZEora/R6801VldyAkpB0dsynkN/ksKTZTt+GoGQF+LaO7CZL7+Cn72jh4
	QEJYQ9tC5mBqxzeHjc/N4f6nggwB258aPbm3wCdRKwEuT4JaRl13sBs9pBijUjjafZ/80C
	OvkRn1V4a+DpHI1Dc8UJ3zLeUgB7NsiSdfvwMmxFDqtv06W2Dc9CpjZzyXBRYftfJPr09k
	+JgIOV0EtRtkKfYtFrZFCV98/rh3W/hA43k9Dxdc1PHq4miMFtNg9f+ihz4U3Q==
Date: Thu, 26 Sep 2024 12:14:48 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Mark Brown <broonie@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-spi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, oss@helene.moe,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/5] spi: rockchip: Don't check for failed get_fifo_len()
In-Reply-To: <ZvUmk48R4hZYlO71@finisterre.sirena.org.uk>
References: <cover.1727337732.git.dsimic@manjaro.org>
 <ce2e7f90e62b15adc2bed1f53122ad39c3a9b5ac.1727337732.git.dsimic@manjaro.org>
 <2382990.BjyWNHgNrj@phil> <ZvUmk48R4hZYlO71@finisterre.sirena.org.uk>
Message-ID: <cec7e3f531d936ab34486d52bd16daee@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_031450_484581_714B1B14 
X-CRM114-Status: GOOD (  11.45  )
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

Hello Mark,

On 2024-09-26 11:17, Mark Brown wrote:
> On Thu, Sep 26, 2024 at 10:55:01AM +0200, Heiko Stuebner wrote:
>> Am Donnerstag, 26. September 2024, 10:38:14 CEST schrieb Dragan Simic:
>> > Since commit 13a96935e6f6 ("spi: rockchip: Support 64-location deep FIFOs"),
>> > function get_fifo_len() can no longer return zero, so delete the redundant
>> > check for zero in function rockchip_spi_probe().
> 
>> Didn't this topic come up in another recent patch too?
> 
>> Anyway, having looked up the what the current get_fifo_len does,
>> the 0 case should never happen, as you describe, so
> 
> One of the people doing random cleanups posted the same patch which I
> pushed back on since probe() isn't a hot path and it means if
> get_fifo_len() changes again it could silently break things.

Thanks for the clarification, it makes sense to keep the check for
future proofing.  I'll drop this patch in the v2 of this series.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
