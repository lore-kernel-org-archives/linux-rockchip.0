Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29D3DC282D0
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 21:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cNRJCJu+0wAwwKVJz8ACRz9Tj8FHDCPjXmEU8K+vqVI=; b=mTIShLXjcjPgfu
	prg44hlcfSB/IL42se2qvkazbGhxLwFlQSDD5Su6UL2ZaOOBXOkJllIvniagVRhBXzEMzRkyzxmV1
	s7hIpUEMLANXTyl30GBkO81KU8rer4RtjWo2yWae3Jh4PZe4L2hEX1XdEkLmO4dZ4f4Vu6e4CbwSC
	CNAOFLaHKEdmk1HjXrhw0CqNkW+8LgZif7FQUWhqe5bMekStGepsQbJOLuzIGQy+ieGrc6rXifjne
	6w1Tq72IVRmTFsFui1ZHS0hVMteCp3/m9gqI1JXqqtF0RzStBFc/8wffCRKoknbKz06GLUF9BMqsT
	TY409DpGIuPYv3bWY47Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpa8F-00000006Ki4-0Jow;
	Tue, 04 Mar 2025 21:48:55 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpa6g-00000006KZX-1X7H;
	Tue, 04 Mar 2025 21:47:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=67iaMe7dRzqdmdTZ5v9Y4GVdBIwy//hSn3Sql8CF+no=; b=vg0Z//jE1WGL7of1Q5aJ3A/0FU
	Hr9f3WsWyxNDZjpXya07ncB0gXc1w968ujfeeP1knpiF1RddY+gM54MqMLIGdrqjS1uu2nB4vOlk5
	Qj/6htp7QEHspTf8d1BKwSm5MW7HV2NWaET6JyKGaBu11oUCSVn2c7Zlkxyp12OvAu2lglHii2HCE
	9gQgzhz5CyQnFHNh5M1Lwt417y534ClWLzqqsQOGww9A6x6ubDcoVRm+MO0XeAd458ZjOg9/oCvBb
	9syDFHjxYXLkR/Wt9LN+ijmSCi5yj2crpi+m7KdmAgabdBNvyOc2V+MGQcEoG3q+7/pu3gdPWY62W
	wzRLa3qA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpa6d-000000049T3-1xHl;
	Tue, 04 Mar 2025 21:47:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=67iaMe7dRzqdmdTZ5v9Y4GVdBIwy//hSn3Sql8CF+no=; b=LwuGfFrDvpwUU2B/5O/ULqbrDV
	oEVLnfpfhFu69Ah2JLQbY0xkmgJLtF02XMOjjT+j6hUtQIjF1n2zEuxMw03K//2AjsxukLhZmm8/s
	0G47epspd1m/oEAqwB74vAgVd3OX5Zx1Xalh6MS2jAD+6NsQn0v+nMPM6rEKT9YW/U+mFI6b+UIsW
	CVqjoYsJn1RnQwgi6WfPvIX4FjYoavZEyP+Ep5Q82IpxQY6Aq2IJUCN6mypnZKaXbZ1riCOfg+3T0
	G7qnvSdnpDszk21aAuNc4yp9TebRb9TxEl9Oo92/0IN5T4vCu8I9lOXD0j2YXWa5GuC+MhNaT0phF
	pcsq8BkA==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tpZXr-0006Cf-7O; Tue, 04 Mar 2025 22:11:19 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>
Cc: andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, quentin.schulz@cherry.de,
 Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v3 1/3] drm/rockchip: lvds: move pclk preparation in with clk_get
Date: Tue, 04 Mar 2025 22:11:18 +0100
Message-ID: <3048640.Lt9SDvczpP@diego>
In-Reply-To: <041c5f0e2371817a27577bd0989b9dca@manjaro.org>
References: <20250304124418.111061-1-heiko@sntech.de>
 <20250304124418.111061-2-heiko@sntech.de>
 <041c5f0e2371817a27577bd0989b9dca@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_214715_529098_4A90EEE0 
X-CRM114-Status: GOOD (  14.27  )
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

QW0gRGllbnN0YWcsIDQuIE3DpHJ6IDIwMjUsIDIxOjMwOjIyIE1FWiBzY2hyaWViIERyYWdhbiBT
aW1pYzoKPiBIZWxsbyBIZWlrbywKPiAKPiBPbiAyMDI1LTAzLTA0IDEzOjQ0LCBIZWlrbyBTdHVl
Ym5lciB3cm90ZToKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfbHZkcy5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9sdmRz
LmMKPiA+IGluZGV4IDM4NWNmNjg4MTUwNC4uZWNmYWU4ZDVkYTg5IDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2x2ZHMuYwo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2x2ZHMuYwo+ID4gQEAgLTQ0OCwxNSArNDQ4LDEz
IEBAIHN0cnVjdCBkcm1fZW5jb2Rlcl9oZWxwZXJfZnVuY3MKPiA+IHB4MzBfbHZkc19lbmNvZGVy
X2hlbHBlcl9mdW5jcyA9IHsKPiA+ICBzdGF0aWMgaW50IHJrMzI4OF9sdmRzX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsCj4gPiAgCQkJICAgICBzdHJ1Y3Qgcm9ja2NoaXBfbHZk
cyAqbHZkcykKPiA+ICB7Cj4gPiAtCWludCByZXQ7Cj4gPiAtCj4gPiAgCWx2ZHMtPnJlZ3MgPSBk
ZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2UocGRldiwgMCk7Cj4gPiAgCWlmIChJU19FUlIo
bHZkcy0+cmVncykpCj4gPiAgCQlyZXR1cm4gUFRSX0VSUihsdmRzLT5yZWdzKTsKPiA+IAo+ID4g
LQlsdmRzLT5wY2xrID0gZGV2bV9jbGtfZ2V0KGx2ZHMtPmRldiwgInBjbGtfbHZkcyIpOwo+ID4g
KwlsdmRzLT5wY2xrID0gZGV2bV9jbGtfZ2V0X3ByZXBhcmVkKGx2ZHMtPmRldiwgInBjbGtfbHZk
cyIpOwo+ID4gIAlpZiAoSVNfRVJSKGx2ZHMtPnBjbGspKSB7Cj4gPiAtCQlEUk1fREVWX0VSUk9S
KGx2ZHMtPmRldiwgImNvdWxkIG5vdCBnZXQgcGNsa19sdmRzXG4iKTsKPiA+ICsJCURSTV9ERVZf
RVJST1IobHZkcy0+ZGV2LCAiY291bGQgbm90IGdldCBvciBwcmVwYXJlIHBjbGtfbHZkc1xuIik7
Cj4gCj4gSSdtIHdvbmRlcmluZyB3aHkgdGhpcyBwYXRjaCBpc24ndCByZXBsYWNpbmcgZGVwcmVj
YXRlZCBEUk0KPiBsb2dnaW5nIG1hY3JvcyB3aXRoIHRoZWlyIHByZWZlcnJlZCBzdWNjZXNzb3Jz
IGluIGEgY291cGxlIG9mCj4gcGxhY2VzLCBqdXN0IGxpa2Ugd2hhdCB0aGUgcGF0Y2ggMi8zIGZy
b20gdGhpcyBzZXJpZXMgZG9lcz8KCmJlY2F1c2UgdGhpcyBwYXRjaCBpcyBhYm91dCByZW9yZ2Fu
aXppbmcgdGhlIGNsb2NrIGhhbmRsaW5nIDotKQoKQ2hhbmdpbmcgdGhlIGxvZ2dpbmcgZnVuY3Rp
b25zIGlzIGEgZGlmZmVyZW50IHRvcGljIGFuZCBzbyBoYXMgbm8gcGxhY2UKaW4gX3RoaXNfIHBh
dGNoLgoKQW5kIG9mIGNvdXJzZSBkcm0tbG9nZ2luZyBpcyBhIHNlcGFyYXRlIGJlYXN0IHRvIHRh
bWUgYWx0b2dldGhlci4KZHJtX2VyciB2cy4gZGV2X2VycjsgbHZkcy0+ZGV2IHZzLiBkcm1fZGV2
ICh0aGVyZSB3YXMgYW4gYXJndW1lbnQgb3Zlcgp3aGF0IGJlbG9uZ3Mgd2hlcmUgcmVjZW50bHkp
IC4KCkFuZCBJIGhhZCBuZWl0aGVyIHRoZSBjYXBhY2l0eSBub3IgdGltZSB0byBkZWx2ZSBpbnRv
IGFsbCB0aGF0LCBzbyBsaW1pdGVkCm15c2VsZiB0byBzdHVmZiBJIHVuZGVyc3Rvb2QgOi0pCgpI
ZWlrbwoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
