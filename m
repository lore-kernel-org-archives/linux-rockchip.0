Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C058CCF9E5
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 20:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d1dKM/A9idC9cGQmOaQ7ixzxIJfKmHTGHxgphREJdNo=; b=AOKYjf09aYB+8S
	WjthJUqlXrktLee9iRFfCYJ7WUBcU1W3Wx9acFx3bnWuEeYOwHCcVFdhCAgco0GWWSxb79gSoK58B
	dIVGSw44eWCA5gQgVjI7nlgFEZzGPPyx5yRtg6mhu6jRiP07FYLrFn15rDjl0K0WzGMwlZEsE/EK1
	ekhf+vV6vsnh7VS0ZNcrAnHZ+TQI+QKddoAgtT4bBQZo5bqCikoUi8VKqiToT62dqUwrsNu85kE3j
	bloqEpNWjoViqPFwizN9WIXRaqqlfHMsnBpPIGGv9bkeI4Y6jjL1+yeC7UYksNoUI/QWdeOiSbIpF
	JYFDfmhDNhtwsLi7K2Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDTQM-0000000EhZB-3S6W;
	Mon, 27 Oct 2025 20:02:38 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDTQJ-0000000EhYe-0Gjz;
	Mon, 27 Oct 2025 20:02:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1B47740467;
	Mon, 27 Oct 2025 21:02:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1761595351; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Wlz4c6idBHgoakGdogx07IHOxQ08Zrz28QTnBsOB96g=;
	b=s+Er8bD00Vh0zoFn1jyeFeDozj4hRXhzbJySMH1fBS4fpcF+R/hRSjBYDDQ8A418n6f5d7
	UAbllmRWq1YZfRBjDizPOfTxF0c2uzyacC/4PRUSFDWoEoiDPmOxE9ygOBGyxPobAx4EPS
	M0vaQFwmPcvidS6cWLk6Q4oejdCPxbepVGNkEVfgJfLDbFeejOP6lnPVV/w9B/M7xxFqfV
	Tbq1Qt0++TTEniW4WEj5A8ZtFnVJvdhhYO8yLaqLQZ8X8MztfasawpW6h8a9bGp4tCrvoe
	EMdi9kYJZVQ7CMhGn8LuGGANIr1yaiokCBht15DHYQRrkaaRRd8aV0xxNXCM3w==
From: Dragan Simic <dsimic@manjaro.org>
To: sigmaris@gmail.com
Cc: alchark@gmail.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: pwm-fan overlay for NanoPC-T6
Date: Mon, 27 Oct 2025 21:02:13 +0100
Message-Id: <20251027200213.1821809-1-dsimic@manjaro.org>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <d583ee43-38c4-40fb-b33b-ce3153c9723b@gmail.com>
References: <d583ee43-38c4-40fb-b33b-ce3153c9723b@gmail.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_130235_329557_4A6CB23B 
X-CRM114-Status: GOOD (  28.39  )
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

SGVsbG8gSHVnaCBhbmQgQWxleGV5LAoKT24gTW9uLCBPY3QgMjcsIDIwMjUgYXQgNzowOOKAr1BN
IEh1Z2ggQ29sZS1CYWtlciA8c2lnbWFyaXNAZ21haWwuY29tPiB3cm90ZToKPiBPbiAyNy8xMC8y
MDI1IDA5OjE0LCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPgo+PiBJcyB0aGVyZSBhbnkgZG93bnNp
ZGUgdG8gZW5hYmxpbmcgdGhpcyB1bmNvbmRpdGlvbmFsbHkgaW4gdGhlIGJvYXJkCj4+IC5kdHM/
Cj4KPiBPbmx5IHRoYXQgaXQgZ29lcyBhZ2FpbnN0IHRoZSBwcmluY2lwbGUgdGhhdCB0aGUgRFQg
c2hvdWxkIGRlc2NyaWJlIHRoZQo+IGhhcmR3YXJlOyB0aGUgYm9hcmQgLmR0cyB3b3VsZCBkZXNj
cmliZSBhIGNvb2xpbmcgZGV2aWNlIHRoYXQgZG9lc24ndAo+IGFjdHVhbGx5IGV4aXN0IG9uIHRo
ZSBiYXNlIGJvYXJkLgoKSGF2aW5nIGEgc2VwYXJhdGUgRFQgb3ZlcmxheSBpcyBwZXJmZWN0bHkg
ZmluZSBpZiB3ZSB3YW50IHRvCmRlc2NyaWJlIGEgYm9hcmQgYWJzb2x1dGVseSBjb3JyZWN0bHk6
IGlmIHRoZSBmYW4gYWN0dWFsbHkgaXNuJ3QKcHJlc2VudCwgdGhlIG9wZXJhdGluZyBzeXN0ZW0g
c2hvdWxkbid0IGJlIG1hZGUgdG8gdGhpbmsgaXQgaXMKdGhlcmUsIGVzcGVjaWFsbHkgaWYgdGhl
cmUncyBubyBmYW4gUlBNIGZlZWRiYWNrLCB3aGljaCBpcyB0aGUKY2FzZSBvbiBhbG1vc3QgYWxs
IFJvY2tjaGlwIGJvYXJkcyB0aGF0IHN1cHBvcnQgYSBmYW4uCgpQcmV2ZW50aW5nIHRoZSBrZXJu
ZWwgZnJvbSBtYW5hZ2luZyBhIG5vbi1leGlzdGVudCBmYW4gbWlnaHQgZXZlbgpzYXZlIHNvbWUg
Q1BVIGN5Y2xlcywgZW5kaW5nIHVwIHByb2R1Y2luZyBhIGJpdCBsZXNzIGhlYXQsIHdoaWNoCmNh
biBvbmx5IGhlbHAgaW4gcGFzc2l2ZWx5IGNvb2xlZCBzZXR1cHMuCgpIb3dldmVyLCB0aGUgcHJh
Y3RpY2Ugc28gZmFyIGhhcyBiZWVuIHRvIGRlc2NyaWJlIHRoZSBmYW5zIGluIHRoZQptYWluIGJv
YXJkIGR0cyBmaWxlcywgaWYgdGhlIGJvYXJkIHByb3ZpZGVzIGZhbiBzdXBwb3J0LCByZWdhcmRs
ZXNzCm9mIHRoZSBmYW4gYmVpbmcgcHJlc2VudCBpbiBhIHBhcnRpY3VsYXIgYm9hcmQgc2V0dXAg
b3Igbm90LgoKPiBJIGd1ZXNzIHRoZW4gaW4gdGhlb3J5LCBhbiBPUyBtaWdodCBhbGxvdyB0aGUg
U29DIHRvIHJlYWNoIHVuZGVzaXJhYmx5IGhpZ2gKPiB0ZW1wZXJhdHVyZXMgaWYgaXQncyByZWx5
aW5nIG9uIHRoZSBub25leGlzdGVudCBmYW4gdG8gY29vbCBpdCBkb3duLiBCdXQgSQo+IGRvbid0
IHRoaW5rIHRoaXMgd291bGQgYmUgYW4gaXNzdWUgb24gTGludXgsIGF0IGxlYXN0LCBpbiBwcmFj
dGljZS4KCldlJ3JlIHNhZmUsIGEgdGhlcm1hbCBydW5hd2F5IGlzbid0IGdvaW5nIHRvIGhhcHBl
biB3aGVuIHRoZSBmYW4gaXMKZGVmaW5lZCBpbiBhIGJvYXJkIERUIGJ1dCBhY3R1YWxseSBpc24n
dCBwcmVzZW50LiAgVGhlcm1hbCBDUFUgYW5kCkdQVSB0aHJvdHRsaW5nIHdpbGwgcHJldmVudCB0
aGUgb3ZlcmhlYXRpbmcgZnJvbSBoYXBwZW5pbmcuCgo+PiBPdmVybGF5cyByZXF1aXJlIG1vcmUg
dXNlciBjb25maWd1cmF0aW9uLCBhbmQgbm90IGFsbAo+PiBib290bG9hZGVycyBzdXBwb3J0IHRo
ZW0gZGlyZWN0bHkgKGUuZy4gc3lzdGVtZC1ib290IHVzZXJzIHdvdWxkCj4+IHN0cnVnZ2xlKS4g
Q29tcGlsaW5nIHdpdGggb3ZlcmxheXMgZW5hYmxlZCBhbHNvIG1ha2VzIC5kdGIncyBhIGxvdAo+
PiBsYXJnZXIgZHVlIHRvIGFkZGVkIHN5bWJvbHMgaW5mb3JtYXRpb24uCj4KPiBOb3dhZGF5cyAo
b24gRGViaWFuIGF0IGxlYXN0KSB1c2luZyBvdmVybGF5cyBpcyBwcmV0dHkgZWFzeSwgSSdtIHVz
aW5nIHRoZQo+IHUtYm9vdC1tZW51IHBhY2thZ2UgaW4gRGViaWFuLCBJIGp1c3QgY29weSB0aGUg
b3ZlcmxheShzKSB0byAvYm9vdC9kdGJvLyBhbmQKPiBpdCBkZXRlY3RzIHRoZW0gYXV0b21hdGlj
YWxseSBhbmQgYWRkcyB0aGVtIHRvIGV4dGxpbnV4LmNvbmYgZm9yIHUtYm9vdCB0bwo+IGFwcGx5
Lgo+Cj4gQ291bGRuJ3Qgc3lzdGVtZC1ib290IHVzZXJzIGp1c3QgdXNlIHJrMzU4OC1uYW5vcGMt
dDYtKGx0cy0pd2l0aC1mYW4uZHRiIGFzCj4gdGhlaXIgc2luZ2xlIERUIHRvIGxvYWQsIGlmIGl0
IGRvZXNuJ3Qgc3VwcG9ydCBhcHBseWluZyBvdmVybGF5cyBhbmQgdGhleQo+IHdhbnQgdG8gdXNl
IHRoZSBmYW4gYWRkb24/CgpZZXMsIHRoYXQncyBhbiBvcHRpb24uICBIb3dldmVyLCB0aGF0IGlu
IGdlbmVyYWwgZG9lc24ndCByZXNvbHZlCnRoZSBpc3N1ZXMgYXJpc2luZyBmcm9tIHN5c3RlbWQt
Ym9vdCB1c2VycyB3YW50aW5nIHRvIGFwcGx5IG1vcmUKdGhhbiBhIHNpbmdsZSBEVCBvdmVybGF5
LgoKPiBGV0lXLCBJIGhhdmVuJ3Qgbm90aWNlZCBhbnkgcHJvYmxlbXMgd2l0aCBoYXZpbmcgYSBs
YXJnZXIgLmR0YiAodXNpbmcgbWFpbmxpbmUKPiBVLUJvb3QgdG8gbG9hZCBpdCkgYW5kIHNldmVy
YWwgb3RoZXIgUkszNTg4IGJvYXJkcyBhcmUgYWxzbyBjb21waWxlZCB3aXRoCj4gc3ltYm9scyBl
bmFibGVkIGFscmVhZHksIGFuZCBJIGhhdmVuJ3Qgc2VlbiBhbnkgaXNzdWVzIHJlcG9ydGVkIHdp
dGggdGhlbS4KCkFmdGVyIHRoaW5raW5nIGEgYml0IGFib3V0IGl0LCBJJ2Qgc3VwcG9ydCB0aGUg
ZXh0cmFjdGlvbiBvZiBmYW4KZGVmaW5pdGlvbnMgaW50byBzZXBhcmF0ZSBEVCBvdmVybGF5cy4g
IEFzIEkgd3JvdGUgYWJvdmUgYWxyZWFkeSwKbm90IG1hbmFnaW5nIHRoZSBub24tZXhpc3RlbnQg
ZmFuIG1pZ2h0IGFjdHVhbGx5IGhlbHAgYSBiaXQgd2l0aApwYXNzaXZlbHkgY29vbGVkIGJvYXJk
IHNldHVwcywgd2hpY2ggaXMgYSBnb29kIGVub3VnaCByZWFzb24gZm9yCm1lIHRvIHN1cHBvcnQg
c2VwYXJhdGUgRFQgb3ZlcmxheXMuCgpJZiB3ZSBlbmQgdXAgYWdyZWVpbmcgdG8gYWNjZXB0IHRo
aXMgRFQgb3ZlcmxheSwgSSdsbCBoYXZlIHNvbWUKY29tbWVudHMgb24gdGhlIHdheSBjb29saW5n
IG1hcHMgYXJlIGRlZmluZWQuICBJIHRoaW5rIHRoZXJlJ3MKcXVpdGUgYSBiaXQgb2YgcmVkdW5k
YW5jeSB0aGVyZS4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
