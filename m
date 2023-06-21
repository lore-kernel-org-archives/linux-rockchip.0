Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F748EB64D7
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 07:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9FLnhnXKiQ9zIuf5M/tUv6+H95YdFKhcpDhdW7kEJKE=; b=Nfyv8EYiLVaddV
	TqaoFwVXqRriF4YwZqKU3eVyB3ne0v1dhBlzr24kGKKSX7iQsx+7j8do6+4DeSaSfyzIFM6MkNDee
	OPaG8pSrhqywXAXn2u0ecbxPW3NFdp/ESofL4YSyzhnouLLhVlC+O0EvE8q/OYOyz7FaYrzMN8wJn
	5NCDzhMn7enfPafpMa4IJxvz3icCfIIxtYYhOqeLEYw9NOjlUw4S6uCPbNi9/fdz+10imQRPFUvGr
	DqfB4zF5wY3BJCRW0/+d7u5rxxHqY8kwE5PbbY0IwC3VAYw/4aC31XMCLgk9Rqo5XboX9LjkF0i1t
	xvfio53TSR6xZ+uBz1/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBrxv-00DVz1-37;
	Wed, 21 Jun 2023 07:09:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBrxr-00DVvi-23
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jun 2023 07:09:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBrxk-0000E9-HR; Wed, 21 Jun 2023 09:09:08 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBrxh-0002GJ-3o; Wed, 21 Jun 2023 09:09:05 +0200
Date: Wed, 21 Jun 2023 09:09:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Vincent Legoll <vincent.legoll@gmail.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v6 00/26] Add perf support to the rockchip-dfi driver
Message-ID: <20230621070905.GM18491@pengutronix.de>
References: <20230616062101.601837-1-s.hauer@pengutronix.de>
 <CAEwRq=qze2NV5emMdohTPKK_UfSVMa2wmPNS2c2zzNqFVdmK+w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEwRq=qze2NV5emMdohTPKK_UfSVMa2wmPNS2c2zzNqFVdmK+w@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_000915_689029_5A2912DB 
X-CRM114-Status: GOOD (  19.97  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgVmluY2VudCwKCk9uIEZyaSwgSnVuIDE2LCAyMDIzIGF0IDAxOjUwOjQyUE0gKzAwMDAsIFZp
bmNlbnQgTGVnb2xsIHdyb3RlOgo+IEhlbGxvIFNhc2NoYSwKPiAKPiBPbiBGcmksIEp1biAxNiwg
MjAyMyBhdCA2OjIy4oCvQU0gU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPiB3
cm90ZToKPiA+IC0gQWRkIG1vcmUgcmV2aWV3ZWQtYnkgdGFncwo+IAo+IENhbiB5b3UgZXhwbGFp
biBob3cgdGhlIFRlc3RlZC1CeXMgYXJlIGhhbmRsZWQsIEkgZG9uJ3Qgc2VlIGFueSBwYXRjaAo+
IHdpdGggdGhvc2UgdGFncywgbm90IFNlYmFzdGlhbnMsIG5vciBtaW5lLiBJcyB0aGUgdGVzdGlu
ZyB1c2VmdWwgPyBTaG91bGQgSQo+IHJldGVzdCB0aGUgbmV3IHBhdGNoc2V0ID8KCkkgcmVhbGx5
IGFwcHJlY2lhdGUgdGhhdCB5b3UgYXJlIHRlc3RpbmcgdGhpcyBzZXJpZXMuIEhvd2V2ZXIsIGNo
YW5nZXMKdG8gdGhlIHNlcmllcyBvZnRlbiBpbnZsaWRhdGUgdGhlIHRlc3RpbmcsIHRoYXQncyB3
aHkgSSBoYXZlbid0IGFkZGVkCnlvdXIgdGVzdGVkLWJ5IHRhZ3Mgd2hlbiBzZW5kaW5nIGEgbmV3
IHNlcmllcy4gVGhlIHRlc3RlZC1ieSB0YWdzIHdvdWxkCmhhdmUgdG8gYmUgY29sbGVjdGVkIGZy
b20gdGhlIHBlcnNvbiBmaW5hbGx5IGFwcGx5aW5nIHRoZSBzZXJpZXMuCgpSZWdhcmRzLAogIFNh
c2NoYQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAg
ICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CjMxMTM3IEhpbGRl
c2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTct
MCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDog
ICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
