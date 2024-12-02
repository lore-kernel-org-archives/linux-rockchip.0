Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F838D49795
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Dec 2024 03:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N3F3nUyjz2IY7qgHvlmg/8sPnrJtMzZlIkgULrWcSY4=; b=YZgSNWx+Nm/BDq1iSyEmhb1GaF
	Yo+A9udFrxS9ipLdThRQxsH5Q940wXjI3h5Ua+b0eNUb/yNrQSplqpYT77vwfEy53JXa14eULRwMG
	lUPI+Ff+EScxge+zKKlO4QJqRCW/4bq/zc/UL/fION3RnuMECfBM7mF4DwfySXML50aX194D3ssZN
	C8aPgD3WtDV9E7MbJ7hptU/Jb1fOQVR9dq2ZBFSM3f+ekxQ0AFdyFVf0SKXXZ35DRjc46ghYM6ByM
	t5nlfuLCQx+KMqf69Q51+gLed7wm5vWLg/jm3yvurET3SFQT01OpO3Nlz6YbZlZAKDz1PHJRXAGH9
	evq4w9tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHwpm-00000004tUK-0O7R;
	Mon, 02 Dec 2024 03:10:50 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHwlq-00000004spz-32sy
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Dec 2024 03:06:48 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733108802;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oCiJSkyUdzdNJTsrh7tGzNo4KPKV/WbkvH64T/ZZLNg=;
	b=bGpF3LHTyOIau/oQk/2ABSF6dC3ofAYnZYNABVO3NN9FA7XNwGWoGlNG9ZAEppon63aZ4Z
	z6BJ+tVkvThLs96SjDbPiRWgvuGaTLKvKSK/pNwFVPY3YfYUC2vq8HOf3twUqBDK2OS1gz
	P78bd7D14c27dDaTzULbbrUpRnH6a7jAJcLmBudqlXAWkhX8Ji+Pmon8XMU6EpSi0j7J/k
	djKOIKOtYV6LyJIX5nSK6F1Am5TUWjnLjhqQQib/uf/ruf1boDvTnRXozGF6f12xmRX+v9
	skzaiDp/jf1eIMTSECeSjl9oaWp7Ag0Or4bUGWC5A89KmNajHOUgnREKpy/wfg==
Date: Mon, 02 Dec 2024 04:06:42 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org,
 inindev@gmail.com, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org,
 alchark@gmail.com, krzk+dt@kernel.org
Subject: Re: [PATCH v2 0/4] arm64: dts: rockchip: cosmetic changes for Radxa
 ROCK 5B
In-Reply-To: <20241202023227.2671-1-naoki@radxa.com>
References: <20241202023227.2671-1-naoki@radxa.com>
Message-ID: <e981c540fe086313ad6ef6fcba62eeaf@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241201_190647_055465_AAFD47B0 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
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

Hello Fukaumi,

On 2024-12-02 03:32, FUKAUMI Naoki wrote:
> this patch series sort nodes and properties, remove redundant
> properties, and minor cosmetic changes.
> 
> no functional change is intended.
> 
> this patch series depend on following patch series:
>  "arm64: dts: rockchip: sync dts with schematic for Radxa ROCK 5B"
> 
> https://patchwork.kernel.org/project/linux-rockchip/cover/20241130004057.7432-1-naoki@radxa.com/
> 
> FUKAUMI Naoki (4):
>   arm64: dts: rockchip: sort nodes in .dts for Radxa ROCK 5B
>   arm64: dts: rockchip: sort nodes in root node for Radxa ROCK 5B
>   arm64: dts: rockchip: sort properties in .dts for Radxa ROCK 5B
>   arm64: dts: rockchip: cosmetic changes for Radxa ROCK 5B
> 
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 184 ++++++++----------
>  1 file changed, 86 insertions(+), 98 deletions(-)

I'd suggest that you expand the descriptions of all four patches
in this series.  The way they're currently written leaves a lot of
room for improvement, such as turning them into proper sentences
and expanding the wording to describe the intent and nature of the
introduced changes better.

The cover letter surely provides an additional explanation for
the entire series, but please note that only the patch descriptions
can find their way into the repository, so each patch description
needs to be self-contained and independent of the cover letter and
the descriptions of other patches in the series.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
