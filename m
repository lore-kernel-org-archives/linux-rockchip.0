Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39E55C28B2E
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 19:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1xYSl2QD1x3mBIVziuoprd1/tavIrNMkATgjXCVFm4=; b=uF1JKjnC7XFWbt
	gB9mzRB1m1pUtuqY+Z5UkrGMnfvp0clCrS5B7cYIJYF74tqvEmA/K9dmSV+sor/B2tfZb2MG4u/dB
	iWcBWHHUAp6HAmVqlqsNQCT/ZKUg9tooTrMKQEkuSRdwWukqP9pCpjVBGyJgzIwKfYSxavkqcYl/i
	nwFwA/9SnHPUAMFZHbXehvJMY1zc2UxViaHiVfYTipF4DSgn3iam9aEbyDS8tnmiBH/f7GLQXLdQY
	A21IjA/Lj3K4wjznOrtzJ3jg/uMmdhPdmS28ZTGVeGuWpUWBeJA7dxyYfjWVJrv7T22QVe8g4YDS9
	46pZ7IOOmhs4dgwyFckA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsRwL-00000009LuF-1jf0;
	Wed, 12 Mar 2025 19:40:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsRua-00000009Lal-45DS;
	Wed, 12 Mar 2025 19:38:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=9G2KX65Ab+9QthP7hU+dGSKLgGHDZbANHAkXoqK6ZJ8=; b=0w6DVHcP8Ff1NsM8gB7G2O7rSU
	nQacEOXrojn9wRema8yOaO0egRFn0zuygBNIDCIswibMncUt/Ng/CbZMssdRIr0SUNRuaCzpzM29q
	XeddB38hzG7sGIPAS8eRvmEe2nFPKCSKh+CZkRnxyCfEeyUnQGDdWBevdPv5EEQiJhvEIWMxqpWRN
	E4mna9N2wg8wb9UFCaFND4cWatp12Cb8WBQYbPile+C6rOoG+m3IbpoQ7FZBxXIe97x0zpGZhUNnk
	UrxT6va3aKF91llsyjHRTr6XNcOtEqmJH4spBOnz37Z2PfTSzzp38OZPb5XHW+9pUfJf7BRcCdlZj
	eXLPSZVg==;
Received: from p3ee2c254.dip0.t-ipconnect.de ([62.226.194.84] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tsRuS-0001ql-MV; Wed, 12 Mar 2025 20:38:32 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>, Jonas Karlman <jonas@kwiboo.se>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Add pwm nodes for RK3528
Date: Wed, 12 Mar 2025 20:38:31 +0100
Message-ID: <7779050.EvYhyI6sBW@phil>
In-Reply-To: <b7d8d385-81ee-4947-ab8f-1da43843464b@kwiboo.se>
References: <a5ec9062-ca57-4748-8c0f-fb5b9c75fa28@kwiboo.se>
 <20250312143515.1225171-1-amadeus@jmu.edu.cn>
 <b7d8d385-81ee-4947-ab8f-1da43843464b@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_123841_031799_15EB0827 
X-CRM114-Status: GOOD (  27.07  )
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

QW0gTWl0dHdvY2gsIDEyLiBNw6RyeiAyMDI1LCAxNjowMDowMCBNRVogc2NocmllYiBKb25hcyBL
YXJsbWFuOgo+IEhpIENodWt1biwKPiAKPiBPbiAyMDI1LTAzLTEyIDE1OjM1LCBDaHVrdW4gUGFu
IHdyb3RlOgo+ID4gSGksCj4gPiAKPiA+PiBUaGUgcGluY3RybC1uYW1lcyBzaG91bGQgYmUgY2hh
bmdlZCB0byAiZGVmYXVsdCIgYW5kIG5vdCAiYWN0aXZlIiwKPiA+PiBzb21ldGhpbmcgeW91IGNh
biBmaXh1cCBvciBkbyB5b3Ugd2FudCBhIHBhdGNoPwoKc28geWVzIG9mIGNvdXJzZSB0aGUgcGlu
Y3RybCBuZWVkcyB0byBiZSBkZWZhdWx0IC0gc2ltcGx5IGJlY2F1c2UKdGhhdCdzIHRoZSBvbmx5
IHBpbmN0cmwgc3RhdGUgbWFpbmxpbmUgc3VwcG9ydHMuCgpCdXQganVkZ2luZyBieSB0aGUgZmFj
dCB0aGF0IHlvdSdyZSBkaXNjdXNzaW5nIHdvcmtpbmcgdnMuIG5vbi13b3JraW5nCmJlbG93LCBj
YW4geW91IHBsZWFzZSBjaGVjayBpZiB3ZSBzaG91bGQgZHJvcCB0aGUgcGF0Y2ggZm9yIDYuMTUg
dGlsbAp0aGF0IGlzIHNvbHZlZD8KClRoYW5rcyBhIGxvdApIZWlrbwoKPiA+IFNvcnJ5IEkndmUg
YmVlbiBhIGJpdCBidXN5IHRoaXMgd2VlayBhbmQgZm9yZ290IHRvIHNlbmQgdGhlIHYyIHBhdGNo
Lgo+ID4gSW4gcmszNTI4LmR0c2ksIHRoZSB1YXJ0IGFuZCB1cGNvbWluZyBpMmMgbm9kZXMgZG8g
bm90IGhhdmUgcGluY3RybCwKPiA+IHNvIEkgcHJlZmVyIHRvIHJlbW92ZSB0aGVtLgo+ID4gCj4g
Pj4+IFVubGlrZSBvdGhlciBTb0NzLCBwaW5jdHJsLW5hbWVzIG5lZWQgdG8gYmUgaW4gImFjdGl2
ZSIgc3RhdGUsCj4gPj4+IEknbSBub3Qgc3VyZSBhYm91dCB0aGlzLCBidXQgb3RoZXJ3aXNlIHRo
ZSBwd20tcmVndWxhdG9yIHdpbGwKPiA+Pj4gbm90IHdvcmsgcHJvcGVybHkuCj4gPiAKPiA+IEJU
Vywgc2V0dGluZyB0aGUgcGluY3RybCBvZiBwd20gY29ycmVzcG9uZGluZyB0byBwd20tcmVndWxh
dG9yCj4gPiB0byAiZGVmYXVsdCIgd2lsbCBjYXVzZSBrZXJuZWwgYm9vdCBzdXNwZW5kZWQuCj4g
PiBTb3JyeSBidXQgZG8geW91IGtub3cgd2h5Pwo+IAo+IE5vdCBhbiBpc3N1ZSBJIGhhdmUgc2Vl
biwgZG8geW91IGhhdmUgYW55IG1vcmUgbG9ncyBvciBkZXRhaWxzPyBFLmcuCj4gd2hhdCBib2Fy
ZCB5b3UgdXNlLCBmdWxsIHJlZ3VsYXRvciBub2RlLCBkbyB5b3UgaGF2ZSBvcGVyYXRpbmcgcG9p
bnRzCj4gZGVmaW5lZCBldGMuCj4gCj4gSSBoYXZlIHJ1bnRpbWUgdGVzdGVkIGEgYnJhbmNoIGF0
IFsxXSwgdGhhdCB1c2UgcGluY3RybC1uYW1lcyA9IGRlZmF1bHQsCj4gaGF2ZSB2ZGRfYXJtIGFu
ZCB2ZGRfbG9naWMgZGVmaW5lZCwgYWxzbyBhbiBvcHAgdGFibGUgZm9yIGNwdSBhbmQgZ3B1Lgo+
IAo+IEZvciBFMjBDIHRoZXJlIGlzIGEgY29tbWl0IHRvIGVuYWJsZSB0aGUgdmRkX2xvZ2ljLCBo
b3dldmVyIHdpdGhvdXQgZ3B1Cj4gZW5hYmxlZCBhbmQgYSBtYWxpLXN1cHBseSB0aGUgcHdtLXJl
Z3VsYXRvciBpcyBpbml0aWFsaXplZCB0bwo+IG1heC1taWNyb3ZvbHQgYnkgTGludXguIEhhdmUg
aW5zdGVhZCB1cGRhdGVkIFUtQm9vdCB0byBpbml0aWFsaXplIHRoZQo+IHB3bS1yZWd1bGF0b3In
czoKPiAKPiBgYGAKPiAmdmRkX2FybSB7Cj4gCXJlZ3VsYXRvci1pbml0LW1pY3Jvdm9sdCA9IDw5
NTMwMDA+Owo+IH07Cj4gCj4gJnZkZF9sb2dpYyB7Cj4gCXJlZ3VsYXRvci1pbml0LW1pY3Jvdm9s
dCA9IDw5MDAwMDA+Owo+IH07Cj4gYGBgCj4gCj4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9Ld2li
b28vbGludXgtcm9ja2NoaXAvY29tbWl0cy9uZXh0LTIwMjUwMzExLXJrMzUyOC8KPiAKPiBSZWdh
cmRzLAo+IEpvbmFzCj4gCj4gPiAKPiA+IGUuZy4KPiA+IGBgYAo+ID4gdmRkX2FybTogcmVndWxh
dG9yLXZkZC1hcm0gewo+ID4gCWNvbXBhdGlibGUgPSAicHdtLXJlZ3VsYXRvciI7Cj4gPiAJcHdt
cyA9IDwmcHdtMSAwIDUwMDAgMT47Cj4gPiAJLi4uCj4gPiB9Owo+ID4gCj4gPiAmcHdtMSB7Cj4g
PiAJcGluY3RybC0wID0gPCZwd20xbTBfcGlucz47Cj4gPiAJcGluY3RybC1uYW1lcyA9ICJkZWZh
dWx0IjsKPiA+IAlzdGF0dXMgPSAib2theSI7Cj4gPiB9Owo+ID4gYGBgCj4gPiAKPiA+IFRoYW5r
cywKPiA+IENodWt1bgo+ID4gCj4gPiAtLQo+ID4gMi4yNS4xCj4gPiAKPiAKPiAKCgoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
