Return-Path: <SRS0=rUAS=GR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A439C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jan 2021 15:29:16 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E9C2D23A5F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jan 2021 15:29:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E9C2D23A5F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=simonsouth.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:Date:References:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lzmS/BjMLhkvK+joKCIFZQJVPoBpm1gawAtY24acDLo=; b=tzal9OgmSl7N4XjRNIwq79X6J
	3gW90jJ1tK20lOIrUFVe/L/c+UhRzlpXoMIt8kKJu+kTm9Tx6P88WAfDpo2HiH4rWgxMUsUYW2Fbo
	Un9n4WKHTXfShihG+oSpse4fMtMDE0KMSES+99H9AfMHwXFMLqYyHJnEzVdtIkxUaoTQgBCPGitA8
	POLYVzXY1Jb+PVtXpey6nPZyUqQKz13nqZMDPvn3Xy5YbjWiXk1vfARintiAKbLZuQKm8m1XqLIDl
	dZLurzygJOtY3DNqogawVwzUXLTPqGQxIz7fAMoZoAWSC5KrGd+h+VTZnv7TRja5g/fLIOYilq1qh
	vValTvkCw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l04Yh-0001cq-Ah; Thu, 14 Jan 2021 15:29:11 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l04Yc-0001ao-Gj; Thu, 14 Jan 2021 15:29:07 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id 2F62C22DFA;
 Thu, 14 Jan 2021 15:29:03 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo06-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo06-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uL_p0CVqCAxw; Thu, 14 Jan 2021 15:29:03 +0000 (UTC)
Received: from laptop (unknown [108.162.141.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailout.easymail.ca (Postfix) with ESMTPSA id CEB1C20F76;
 Thu, 14 Jan 2021 15:28:49 +0000 (UTC)
From: Simon South <simon@simonsouth.net>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v3 6/7] pwm: rockchip: Enable PWM clock of probed device
 only if running
References: <cover.1608735481.git.simon@simonsouth.net>
 <cb5a28d5fde04c09e9aace6ce619e445f895e0a8.1608735481.git.simon@simonsouth.net>
 <20210113075005.jftwu4ohrfyqwxyq@pengutronix.de>
Date: Thu, 14 Jan 2021 10:22:34 -0500
In-Reply-To: <20210113075005.jftwu4ohrfyqwxyq@pengutronix.de> ("Uwe
 \=\?utf-8\?Q\?Kleine-K\=C3\=B6nig\=22's\?\= message of "Wed,
 13 Jan 2021 08:50:05 +0100")
Message-ID: <875z3ztuf9.fsf@simonsouth.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210114_102906_579251_6CD51DAB 
X-CRM114-Status: GOOD (  10.49  )
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
Cc: linux-pwm@vger.kernel.org, heiko@sntech.de, bbrezillon@kernel.org,
 lee.jones@linaro.org, linux-rockchip@lists.infradead.org,
 thierry.reding@gmail.com, tpiepho@gmail.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVz
Ogo+IEkgZG9uJ3Qgc2VlIHRoZSBhZHZhbnRhZ2Ugb2YgdGhpcyBwYXRjaC4gSW4gbXkgZXllcyB0
aGUgY29kZQo+IGNvbXBsaWNhdGlvbiBkb2Vzbid0IGp1c3RpZnkgdGhlIGdhaW4gKGkuZS4gcHJl
dmVudCB0aGUgUFdNIGNsb2NrCj4gYmVpbmcgZW5hYmxlZCBmb3IgYSBmZXcgaW5zdHJ1Y3Rpb25z
KS4KCkkgd2FzIHN0YXJ0aW5nIHRvIGZlZWwgdGhlIHNhbWUgd2F5IGFmdGVyIEkgc2VudCBvdXQg
dGhpcyBzZXJpZXMsIHNvCmxldCdzIGp1c3QgZHJvcCB0aGlzIGNoYW5nZS4KClRoYW5rcyBmb3Ig
dGhlIGZlZWRiYWNrLCBVd2UuIEknbGwgZ2V0IGEgdjQgb3V0IHNob3J0bHkuCgotLSAKU2ltb24g
U291dGgKc2ltb25Ac2ltb25zb3V0aC5uZXQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
