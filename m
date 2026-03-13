Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2405B107BCE1
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 19:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kc8U402GvGH1n3WVKPDKTwZ93IvFCcC28DfOyxHORT8=; b=MKOekK2o21wIrL
	tpn1XSzHyeonZZWw6d7BUxFC5X7D6RyztF7lBeQ5YAbgTc5FkPPcDk/w4OQPlCNdDAQR6GqJ4kINv
	trKnAh5PwcArHfxwbepQMR3U/GMeUGv5eAsUprOCeInbtSHRFYo6jBGhHK6noI0jQT7+WFeK7FMt9
	RP1weNfsJVid6xli5wJ5odBCTNArYkuHSr4k2Qypsv8gjJWEMK1A1Bxd3Nz2RTF4bF9HVyOVBm8iC
	EM9Ny8VojpsYR6xmfeheOzTLU4v45o+if2wS73dyMLyoI7nASZHnZzrZkWNGQpMmdDspgLz3oBgZK
	eNsUQEpWQvLd1J5onMAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w18G3-000000014b9-3Wor;
	Fri, 13 Mar 2026 19:33:15 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w18G0-000000014Zv-302f;
	Fri, 13 Mar 2026 19:33:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773430388;
	bh=ojwFUsM/iT2lF91PBJe00tHmWNmES2FQ7zwsljgOW0c=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=fJTnOia1iWfEb5R5IrGx6ImRr+cbw44K2coEHIRJfQJVVCEG/9dTLaulsPB3ySHrd
	 OaqAye+2edYmHwHzbrsk2DtjHYriPjSPliLolsWEwMqwDWeKGoUg0szX2NacwxZ6mQ
	 qshwzzUipEZ+T8itCDjAwcw8d13z/EseNbsMaUV0NlyW8o2m8ds3la5Bu4RavQygCq
	 1VTj1Ey/RqBnfZAVcDDfpRSLBOFHbCTywurcZX1giroewPM6FlW3987mLvKdVgeLl/
	 C4HluG8U5XizyTTgX2G9arOACRTrP89M037pn2hPY0RH6BIop7SXhiM7iaqyeFtUPY
	 18LBNEYlawiFQ==
Received: from [10.40.0.100] (185-67-175-126.lampert.tv [185.67.175.126])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: mriesch)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1E40217E0222;
	Fri, 13 Mar 2026 20:33:08 +0100 (CET)
Message-ID: <1f9942a5-e63b-4f44-87b6-5153f7ed72b7@collabora.com>
Date: Fri, 13 Mar 2026 20:33:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: enable vicap dvp on wolfvision pf5
 io expander
To: Heiko Stuebner <heiko@sntech.de>,
 Gerald Loacker <gerald.loacker@wolfvision.net>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20260313-wv-io-expander-vicap-v1-1-11001fb3b744@collabora.com>
 <6246776.lOV4Wx5bFT@phil>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <6246776.lOV4Wx5bFT@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_123312_928046_1622A646 
X-CRM114-Status: GOOD (  12.50  )
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

SGkgSGVpa28sCgpPbiAzLzEzLzI2IDE5OjE5LCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBBbSBG
cmVpdGFnLCAxMy4gTcOkcnogMjAyNiwgMTY6NTM6MjkgTWl0dGVsZXVyb3DDpGlzY2hlIE5vcm1h
bHplaXQgc2NocmllYiBNaWNoYWVsIFJpZXNjaCB2aWEgQjQgUmVsYXk6Cj4+IEZyb206IE1pY2hh
ZWwgUmllc2NoIDxtaWNoYWVsLnJpZXNjaEBjb2xsYWJvcmEuY29tPgo+Pgo+PiBUaGUgRGlnaXRh
bCBWaWRlbyBQb3J0IChEVlAsIHRoZSAxNi1iaXQgdmFyaWFudCkgb2YgdGhlIFJLMzU2OCBWSUNB
UAo+PiBpcyBicm9rZW4gb3V0IHRvIHRoZSBQRjUgbWFpbmJvYXJkIGV4cGFuc2lvbiBoZWFkZXIu
Cj4+IEVuYWJsZSBpdCBpbiB0aGUgZGV2aWNlIHRyZWUgb3ZlcmxheSBmb3IgdGhlIFdvbGZWaXNp
b24gUEY1IElPCj4+IEV4cGFuZGVyIGJvYXJkLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWVs
IFJpZXNjaCA8bWljaGFlbC5yaWVzY2hAd29sZnZpc2lvbi5uZXQ+Cj4gCj4gVGhlIEZyb20gc2hv
dWxkIG1hdGNoIHRoZSBmaXJzdCBTaWduZWQtb2ZmLWJ5IGxpbmUuCgpIbW0uLi4gRmlyc3Qgb2Yg
YWxsLCB0aGUgU2lnbmVkLW9mZi1ieSBsaW5lIGlzIGNvcnJlY3QsIHRoaXMgcGF0Y2ggc3RlbXMK
ZnJvbSBteSBXb2xmVmlzaW9uIGVyYS4gQnV0IHRoZW4gd2l0aCB0aGUgLm1haWxtYXAgZW50cnkg
SSBjcmVhdGVkIHdoZW4KdGhlIGVyYSBlbmRlZCwgSSBjYW5ub3Qgc2V0IHRoZSBwYXRjaCBhdXRo
b3IgKGFuZCB0aHVzIHRoZSBGcm9tIGxpbmUpCmNvcnJlY3RseS4KCkxldCBtZSB0cnkgYWdhaW4g
d2l0aG91dCB0aGlzIGVudHJ5Li4uCgo+IAo+IEFsbCBsYXRlciBTaWduZWQtb2ZmLWJ5cyBhcmUg
ZnJvbSAib3RoZXIiIHBlb3BsZSBoYW5kbGluZyB0aGUgcGF0Y2gsCj4gaS5lLiB0aGF0IG90aGVy
IE1pY2hhZWwgUmllc2NoIDstKQoKWWVhaCB0aGF0IGd1eSdzIHByZXR0eSB3ZWlyZCEKCj4gCj4+
IFJldmlld2VkLWJ5OiBHZXJhbGQgTG9hY2tlciA8Z2VyYWxkLmxvYWNrZXJAd29sZnZpc2lvbi5u
ZXQ+Cj4+IFRlc3RlZC1ieTogR2VyYWxkIExvYWNrZXIgPGdlcmFsZC5sb2Fja2VyQHdvbGZ2aXNp
b24ubmV0Pgo+PiBSZXZpZXdlZC1ieTogQnJ5YW4gTydEb25vZ2h1ZSA8YnJ5YW4ub2Rvbm9naHVl
QGxpbmFyby5vcmc+Cj4+IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgUmllc2NoIDxtaWNoYWVsLnJp
ZXNjaEBjb2xsYWJvcmEuY29tPgo+IAo+IAo+IEhlaWtvCj4gCj4gCgpCZXN0IHJlZ2FyZHMsCk1p
Y2hhZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
