Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0501C2D0E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 19:45:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6EA452065D
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 19:45:43 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="KVUKH/c8";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8H1E695"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6EA452065D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DmXxiSsjiAM15CludTvHczRvK+Gv36YG1pABA7zo2/s=; b=KVUKH/c8zdnUFwsE7G2hX7XO7
	un9i/PUMAeSgma6O07VyvkWCWENeRMtk9//5s7AWRLnxDJcXISooA8QxghmctmhAoLoOWboC9SNA3
	jK4j6qT+POUU3vHFXPUaivcNX3SVpaHzw2FQHstmUKzZgqbsd2GzJKoLATC+TVKLk4QooGaHPu3E5
	jZ2aUlL/gw/rcUPYEmA3LIWIzyDdKboDQHFJLKw2xnP+3R6XVI1NeFDYE8l9GgwRso40LaNtmPANX
	FBuCZ0Lvm1NMzo0fgd9rjqYNhjj92tuxi5bIpp0Swt/Vfz4tASUBEakzrevM+22X794D6R0lm1j2k
	Ac5Z60s4w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKoEL-0005S0-1h; Tue, 22 Sep 2020 19:45:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKoDv-0005Ib-B0; Tue, 22 Sep 2020 19:45:12 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 99BE5238A1;
 Tue, 22 Sep 2020 19:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600803910;
 bh=tA8MmDdsznvvUpaNUlFhuy1kR5m9EsbeClJ1SsYWScE=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=d8H1E695Gu/6np9d7kKWOPnK7Y+psySwubSEINTKXUvlljyh6CnmFSzY/ArkW2xPH
 k4yn7N9P8d9OItRJNEvoR13HOXURJeH7XO7KS3I868o4jCIgs5NbzOMWNKX1Ma1DBs
 tJ1+uYCldJfZgd1jRepZwlOGXpaIfi1gA/ncGrno=
MIME-Version: 1.0
In-Reply-To: <20200916161740.14173-4-krzk@kernel.org>
References: <20200916161740.14173-1-krzk@kernel.org>
 <20200916161740.14173-4-krzk@kernel.org>
Subject: Re: [PATCH 4/6] clk: mmp: pxa1928: drop unused 'clk' variable
From: Stephen Boyd <sboyd@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 David Lechner <david@lechnology.com>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Date: Tue, 22 Sep 2020 12:45:09 -0700
Message-ID: <160080390943.310579.10285589771843324355@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_154511_758761_91B4CA71 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

UXVvdGluZyBLcnp5c3p0b2YgS296bG93c2tpICgyMDIwLTA5LTE2IDA5OjE3OjM4KQo+ICdjbGsn
IGlzIGFzc2lnbmVkIGJ1dCBuZXZlciByZWFkOgo+IAo+ICAgZHJpdmVycy9jbGsvbW1wL2Nsay1v
Zi1weGExOTI4LmM6IEluIGZ1bmN0aW9uIOKAmHB4YTE5MjhfcGxsX2luaXTigJk6Cj4gICBkcml2
ZXJzL2Nsay9tbXAvY2xrLW9mLXB4YTE5MjguYzo3MToxNDogd2FybmluZzogdmFyaWFibGUg4oCY
Y2xr4oCZIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCj4gCj4g
U2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgo+IC0t
LQoKQXBwbGllZCB0byBjbGstbmV4dAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
