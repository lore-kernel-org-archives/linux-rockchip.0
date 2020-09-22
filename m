Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6BEC2D0E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 19:45:56 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 168FB206DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 19:45:56 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Zp2QfngG";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hc0Hocff"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 168FB206DC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9d0f5OcGT831wpbxjd2RpfmD5qMZWB3azGtFtdXU7cw=; b=Zp2QfngGa7Zu9MbfoBC1MbnHp
	nWwi1IhjAMju4Px1ki4RZCygu6/9CrEr+HrZque9te7us01IcY90mRrsQ7bq+TXprEgYphZFO3DVo
	imAJ7kM+z6jPRwgqeYavHeqaOOx/EAesvn1y65vY6vJpKw2Xv2fqNigClxez4ATZdZhRIw9BXL8AK
	nQuTAnu2LNZFklOyBeX8Evjhu6MCsWHzNjx2fdCIccZ2ZSsizf1fGc3Xouu6cPKtS0wVLgGNTSkfQ
	kkVNF/dniMTAy4UwB2ak3ke6trw38mv5Nsb9ttl9FJzYEkzFecPOUWR5/9QpM/AFyGKoyZnsO0G7F
	z/M+sz+xA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKoEa-0005XH-3G; Tue, 22 Sep 2020 19:45:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKoE2-0005LP-I8; Tue, 22 Sep 2020 19:45:19 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE7892388B;
 Tue, 22 Sep 2020 19:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600803917;
 bh=smD2MG6rYBVA2ltBaZSXAPGB6fl0emwyxpPbDSkm+iE=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=Hc0HocffpZ4wcZpsf6IDMWNHDZtUl9filj/ZFa3dbv1yUsnW1NYZdRSc2rhkNwXwR
 YYyiR7UytWe+PCdEc4s3HjMr+Ag8US0XPZYXkeSCbY7zXfii9yYSOS0V+BVKf0Vejn
 l0WoEjH+Ilwsh4jVkHOPbowYqSDXimdf2I1nO9v0=
MIME-Version: 1.0
In-Reply-To: <20200916161740.14173-5-krzk@kernel.org>
References: <20200916161740.14173-1-krzk@kernel.org>
 <20200916161740.14173-5-krzk@kernel.org>
Subject: Re: [PATCH 5/6] clk: si5341: drop unused 'err' variable
From: Stephen Boyd <sboyd@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 David Lechner <david@lechnology.com>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Date: Tue, 22 Sep 2020 12:45:16 -0700
Message-ID: <160080391652.310579.3763272722855831158@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_154518_701155_3B1C88B4 
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

UXVvdGluZyBLcnp5c3p0b2YgS296bG93c2tpICgyMDIwLTA5LTE2IDA5OjE3OjM5KQo+ICdlcnIn
IGlzIGFzc2lnbmVkIGJ1dCBuZXZlciByZWFkOgo+IAo+ICAgL2RyaXZlcnMvY2xrL2Nsay1zaTUz
NDEuYzogSW4gZnVuY3Rpb24g4oCYc2k1MzQxX291dHB1dF9nZXRfcGFyZW504oCZOgo+ICAgZHJp
dmVycy9jbGsvY2xrLXNpNTM0MS5jOjg4Njo2OiB3YXJuaW5nOiB2YXJpYWJsZSDigJhlcnLigJkg
c2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+Cj4gLS0tCgpBcHBs
aWVkIHRvIGNsay1uZXh0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
