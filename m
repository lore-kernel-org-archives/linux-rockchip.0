Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B860ACD5BD1
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 May 2026 05:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=93NvApxi9jyhQGenO9K50MycJmIxy84sssINzlagiLI=; b=mhjVc98+i1dYwR
	Ik3GjGSkJ6fVR3bFMhBTAgaEXHr/9GhExBpsHO+eTYeOerbUJ9Vhi+N7pzfjA5p+Ax0jbOZERwg5e
	kpFtiHuNCm8L09WTqwlahr4aVQoNCX8CJgEpKwFJOEvqqDCwNbYoAWf4oNtQ6LX2QJcmW6U+OQqB9
	A0KrMb+y1MUOselhdRVxcF7wwNMqyGqg1FTZqq1RqlpdAwch+pcxV2908wJnJajc8oduq4pS3qFy1
	C6JGIGQ5Pku/kRrL9in5hauz0YlYKPOj/OLO8DTe5emiKcn/UHdg541HUOlI7NImmI0OwnUyf01jX
	yEwQz8Ra/r7zZIDIiBQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSTkr-00000005Av4-1qW9;
	Thu, 28 May 2026 05:58:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSTkp-00000005Au8-1bLb;
	Thu, 28 May 2026 05:58:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Fd80mj/3IKoqWLM74yrIKUbYLZKNJTRnbWUqqZcHbKs=; b=QlVv0Qrk0PyeAuUmNgfjl8R7/Z
	NeoTZdlSlxqRCcZHYA3bn1vb/T2z1+qwkDd5Tuk/9oOQn/Ssn+BK2wkx+yWy4wCPL6GKPzoNoXN1t
	idv4b5jx5aE37qz6gYEnEYQgrnXv0qLTZZtqdffUdf51mQ4D3D2n3P3Dpy7pTE90V3CEplSN+dWDG
	/NgcjdBvzy7d+ekKG67XLwOPF7FUhyGgmhPSyhd817TSXP3RklXa5YZT2d4IPLE4ueTld9QojvTkJ
	FMbVbPwc9PncJ4ocnWF03PXJK7njzwB2Mn0Qg+x306NgieTKIfOo0StcAtoTb6uGAVD6Xm9sTzAkG
	tX3oGzrg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: jonas@kwiboo.se, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH v2 2/5] arm64: dts: rockchip: Enable USB 2.0 ports on Radxa E20C
Date: Thu, 28 May 2026 07:57:45 +0200
Message-ID: <3879225.zToM8qfIzz@phil>
In-Reply-To: <20260525065005.1056845-1-amadeus@jmu.edu.cn>
References: <20260505171208.3267387-3-heiko@sntech.de>
 <20260525065005.1056845-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_225803_601033_1B01E650 
X-CRM114-Status: GOOD (  11.84  )
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

SGksCgpBbSBNb250YWcsIDI1LiBNYWkgMjAyNiwgMDg6NTA6MDUgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBDaHVrdW4gUGFuOgo+ID4gKyZ1c2JfaG9zdDBfeGhjaSB7Cj4g
PiArCWV4dGNvbiA9IDwmdXNiMnBoeT47Cj4gPiArCW1heGltdW0tc3BlZWQgPSAiaGlnaC1zcGVl
ZCI7Cj4gPiArCXBoeXMgPSA8JnVzYjJwaHlfb3RnPjsKPiA+ICsJcGh5LW5hbWVzID0gInVzYjIt
cGh5IjsKPiAKPiBJIHJlY2VpdmVkIHRoaXMgd2FybmluZyBmb3IgdGhpcyBvdGcgcG9ydDoKPiBb
ICAgIDAuMTYzMzA3XSBkd2MzIGZlNTAwMDAwLnVzYjogQ29uZmlndXJhdGlvbiBtaXNtYXRjaC4g
ZHJfbW9kZSBmb3JjZWQgdG8gaG9zdAoKSW50ZXJlc3RpbmcsIGJlY2F1c2UgaWYgSSByZWFkIHRo
ZSBzY2hlbWF0aWNzIGNvcnJlY3RseSwgdGhpcyBpcyB0aGUKY29udHJvbGxlciBsYWJlbGVkICJ1
c2IyLjAgb3RnMCIgLgpJdCBldmVuIGhhcyBhIHZidXMtZGV0ZWN0IGxpbmUuCgpJZiBJIHVuZGVy
c3RhbmQgdGhlIHNjaGVtYXRpY3MgYW5kIHByb2R1Y3QgcGFnZSBjb3JyZWN0bHksIHRoaXMKYWN0
dWFsbHkgaXMgYW4gb3V0d2FyZCBmYWNpbmcgdHlwZS1jLXBvcnQsIG1ha2luZyB0aGUgZGV2aWNl
IGEKcGVyaXBoZXJhbD8KCnVzYl9ob3N0MF94aGNpIC0+IHBvcnQxIG9mIEZFMS4xc19RRk4gKGRl
dmljZTEgY29ubmVjdGVkIHRvIHRoZSBodWIpCnVhcnQwIC0+IGNoMzQwIC0+IHBvcnQyIG9mIEZF
MS4xc19RRk4gKGRldmljZTIgY29ubmVjdGVkIHRvIHRoZSBodWIpCgpGRTEuMXNfUUZOIGhvc3Qg
ZG0rZHAgZ29pbmcgdG8gdGhlIHR5cGUtYyBwb3J0IG9mIHRoZSBib2FyZC4KClNvIGlmIGFueXRo
aW5nLCB0aGF0IGNvbnRyb2xsZXIgc2hvdWxkIHByb2JhYmx5IGhhdmUgZHJfbW9kZT1wZXJpcGhl
cmFsCkkgdGhpbms/CgoKPiAKPiA+ICsJc25wcyxkaXNfdTJfc3VzcGh5X3F1aXJrOwo+IAo+IFRo
aXMgcHJvcGVydHkgaXMgbWlzc2luZyBpbiB0aGUgc2lnZTEgcGF0Y2guIFNpbmNlIHRoaXMgcHJv
cGVydHkKPiBpcyByZWxhdGVkIHRvIHBoeSB2YnVzIGRldGVjdGlvbiwgY2FuIHdlIG1vdmUgaXQg
dG8gcmszNTI4LmR0c2k/Cgp5ZWFoLCB0aGF0IHNvdW5kcyBzZW5zaWJsZSAuLi4gbG9va2luZyBh
dCB0aGUgb3RoZXIgc29jcyB1c2luZyB0aGF0CnF1aXJrLCBpdCByZWFsbHkgc2VlbXMgdG8gYmUg
YSBwcm9wZXJ0eSBvZiB0aGUgY29udHJvbGxlci4KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
