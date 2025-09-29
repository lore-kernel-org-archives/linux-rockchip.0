Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E0E1CAC5B5
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Sep 2025 15:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNHhJQriEycAuLYvd8wIjwoP2sM6W1XERK1j2S4AZ78=; b=hdpe6AA8iH4A82
	WwXUkCKFhKrO+W5rO+mmFjU995XbRDKTrfBXM6aYR5dMlrraRm0fE37RLBYrjUmorxBgL5ANExsp6
	+A8oZnaWSR3phJJNcbMZAQBORVofQnfPfg/OQmdkoUUJV90/UNrdLefwwCR1z4N6qcShhAtFXE//L
	pPswtbuL/WKtK+m3sAmh9imgOwqig/2ckcBb1Unn4XGi7naRFUT43pI5uwNG0LuT1jYmjNUPhXrvH
	mhK7LdFA2A50zHNdim/FxnZKqCW/5N0Jr0gvKA9algBFzTwAma+Y27SJ38k1q5MutrDcfA/D+JieG
	Zs0JY6VvhYVLaVChAkNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3FyT-00000002o0I-0GN6;
	Mon, 29 Sep 2025 15:39:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3FyQ-00000002nzm-2QTQ;
	Mon, 29 Sep 2025 15:39:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=IsJOyWxYTnSzM823W7VRWdUdPLOKig+uzT39p4FJXVw=; b=VWWA0KnMv1KRO+v0x0Pgoe4jJL
	Q0z7nv9BmMZQC1tgtRC6yObi66xEw8xnvKEcur2X2k4CCkq5ddT2YHB2bqniNnmHTHb92waqUnD0X
	ZH2S4QACc2L/mpeYv3zV1Tf3GKSwX47He0qRIg2ZNLdjgGvrjOFAtPBmeo+j3OpR14Z92J+QvRO++
	4nRsM2gQk0iicjDOGB62XT63NlY/gpGSsULrPsfGHMPMP38qOQVA6IMzFHtKrDz/BjxyZRBhp3MGV
	aAhCSEFUjMULfwPBTeUiglSdd9BAItwct2FipqTda3/9Bf3VAkeBY6hptTSGRglGPORmfQFFRgC8b
	7+NHyJ1Q==;
Received: from e227-076.eduroam.tuwien.ac.at ([128.130.227.76] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1v3FyJ-0008A3-Fe; Mon, 29 Sep 2025 17:39:27 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: guptarud@gmail.com, Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Ondrej Jirman <megi@xff.cz>,
 Martijn Braam <martijn@brixit.nl>,
 Kamil =?UTF-8?B?VHJ6Y2nFhHNraQ==?= <ayufan@ayufan.eu>,
 "Leonardo G. Trombetta" <lgtrombetta@gmx.com>
Subject: Re: [PATCH v4 0/4] Upstreaming Pinephone Pro Patches
Date: Mon, 29 Sep 2025 17:39:26 +0200
Message-ID: <8606261.29KlJPOoH8@phil>
In-Reply-To: <49dafe9afc5962d8fec10e6135c9b84d@manjaro.org>
References: <20250929-ppp_light_accel_mag_vol-down-v4-0-6598f22d3451@gmail.com>
 <49dafe9afc5962d8fec10e6135c9b84d@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_083934_636874_E15BD477 
X-CRM114-Status: GOOD (  15.57  )
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

QW0gTW9udGFnLCAyOS4gU2VwdGVtYmVyIDIwMjUsIDEwOjMyOjU5IE1pdHRlbGV1cm9ww6Rpc2No
ZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRHJhZ2FuIFNpbWljOgo+IEhlbGxvIFJ1ZHJha3NoYSwKPiAK
PiBPbiAyMDI1LTA5LTI5IDA5OjM1LCBSdWRyYWtzaGEgR3VwdGEgdmlhIEI0IFJlbGF5IHdyb3Rl
Ogo+ID4gICAgICAgYXJtNjQ6IGR0czogcmszMzk5LXBpbmVwaG9uZS1wcm86IEFkZCBsaWdodC9w
cm94aW1pdHkgc2Vuc29yIAo+ID4gc3VwcG9ydAo+ID4gICAgICAgYXJtNjQ6IGR0czogcmszMzk5
LXBpbmVwaG9uZS1wcm86IEFkZCBhY2NlbGVyb21ldGVyIHNlbnNvciAKPiA+IHN1cHBvcnQKPiA+
ICAgICAgIGFybTY0OiBkdHM6IHJrMzM5OS1waW5lcGhvbmUtcHJvOiBBZGQgbWFnbmV0b21ldGVy
IHNlbnNvciBzdXBwb3J0Cj4gPiAgICAgICBhcm02NDogZHRzOiByazMzOTktcGluZXBob25lLXBy
bzogRml4IHZvbHRhZ2UgdGhyZXNob2xkIGZvciAKPiA+IHZvbHVtZSBrZXlzCj4gCj4gUGxlYXNl
IG5vdGUgdGhhdCB0aGUgcGF0Y2ggc3VtbWFyaWVzL3N1YmplY3RzIGFyZSBzdGlsbCBhIGJpdAo+
IHdyb25nIGluIHRoZSB2NCBvZiB0aGlzIHNlcmllcywgYmVjYXVzZSB0aGVyZSBzaG91bGQgYmUg
bm8KPiAicmszMzk5LXBpbmVwaG9uZS1wcm86IiBwcmVmaXhlcyBpbiB0aGVtLgo+IAo+IFlvdSBj
YW4gYWx3YXlzIGNoZWNrIHRoZSBjb21taXQgaGlzdG9yeSBmb3IgdGhlIGZpbGUgeW91J3JlCj4g
ZWRpdGluZywgdG8gc2VlIHdoYXQncyB0aGUgZXhwZWN0ZWQgZm9ybWF0IG9mIHRoZSBwYXRjaCBz
dW1tYXJ5Lgo+IEl0IGRpZmZlcnMgYSBiaXQgYmV0d2VlbiB0aGUgc3Vic3lzdGVtcyBhbmQgYXJj
aGl0ZWN0dXJlcywgc28KPiBpdCBzaG91bGQgYWx3YXlzIGJlIGNoZWNrZWQuCgpmb3IgcmVmZXJl
bmNlIGZvciBSb2NrY2hpcCBkdHMgZmlsZXMsIHRoZSBwcmVmZXJyZWQgZm9ybWF0IGlzOgphcm02
NDogZHRzOiByb2NrY2hpcDogRG8gc29tZXRoaW5nIG9uIGJvYXJkbmFtZQoKYWthICJhcm02NDog
ZHRzOiByb2NrY2hpcDogIiBhbmQgdGhlIHJlc3QgaXMgZnJlZSBmb3JtIGJ1dCBzaG91bGQKbWVu
dGlvbiB0aGUgYm9hcmQuCgpCdXQgSSdsbCBnZW5lcmFsbHkgZml4IHRob3NlIHVwIG15c2VsZiBp
ZiBuZWVkZWQsIHNvIHJpZ2h0IG5vdwp0aGVyZSBpcyBubyBuZWVkIHRvIHJlc2VuZCBqdXN0IGZv
ciB0aGF0IGNoYW5nZS4KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
