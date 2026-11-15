Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1C0606A323
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 20:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rBiXmZ/v;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=lUJj666O
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pFksHHRbpyKkOwDDTMz0ZUX3yrdg1ppYJ6oooH5atUs=; b=rBiXmZ/vupSsYO9V5NZ6NziyNG
	GGc/kWMPvp7+4IxfHfWJDgedE+otvcg8ZLDY7/hdFDL9UE/fHUyiGWzZlSLi43fXmKMlZI0bJqEfV
	nLsaYY5thQvBzey7hJMQdmCvrKvlA5IkaisS/z/oJPPP9+GMuJO7BCy+J8Cy/sni/hq2vqE8inZH7
	NicViHyXcXhv3fsqz13LvymNd+2YAl7+f4ueTDzKla9qpOt+WwtJGUMfW1HtsDnS7FzyiDl3wskKW
	i0GqUKNgAoqqioOvVR/iOSSlKg3stv+6h4GKwzc+ifDZMtaJXCrluEqQIiuRoOB7QGzqrhkUsSnPk
	EolF9Y0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xShF7-00000000SzF-0AbO;
	Sun, 15 Nov 2026 20:54:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xShF4-00000000Syq-13fN
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Nov 2026 20:54:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=mQITPQGWRMPapYV4KJxOKGOcD1pJ1nJ8SAJpVhFH3iw=; b=lUJj666O6C1QpnJsRkOFuouIKx
	rOO0gPDjJOU9aPVvU/cWwm9mgrFljEDlbTLBxFnak3S6mb16fxKZvwOLynBpW9hlXt+9BsfxSk3Hn
	idOrHpjJnNLv0sIePB+p11P0IBDA785Ettc6LjFTuZOmQz5pVmbPVuUo/SZsO6YL9IY6ZJv7SObaE
	mkc15mGsca2SS9aN4MhSrMX8bHb+PDl5xJMlNyLKl2+mjmFxnvEm0DSQLbpB8p2/ouXVBi+awL552
	e0VXUlCbyfhyrpfIV/vLbLSaIwwCgqaRPbUlrtyLQ1allaPYbO0GUmxOvOaGkZuvuadLjjeWZZCRd
	yby4Usyw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
 Igor Paunovic <royalnet026@gmail.com>
Cc: Oded Gabbay <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Guangshuo Li <lgs201920130244@gmail.com>, Jiaxing Hu <gahing@gahingwoo.com>,
 Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v2 1/2] accel/rocket: release the shared device's devres on
 teardown
Date: Sun, 15 Nov 2026 21:54:18 +0100
Message-ID: <noBimnyXRY-OqqHLl_N-BA@sntech.de>
In-Reply-To: <20260731064933.12548-2-royalnet026@gmail.com>
References: <20260731064933.12548-1-royalnet026@gmail.com>
 <20260731064933.12548-2-royalnet026@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_125426_290894_10C788C3 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRnJlaXRhZywgMzEuIEp1bGkgMjAyNiwgMDg6NDk6MzIgTWl0dGVsZXVyb3DDpGlzY2hlIE5v
cm1hbHplaXQgc2NocmllYiBJZ29yIFBhdW5vdmljOgo+IHJvY2tldF9kZXZpY2VfaW5pdCgpIGF0
dGFjaGVzIGl0cyBhbGxvY2F0aW9ucyB0byB0aGUgc2hhcmVkICJya25uIgo+IHBsYXRmb3JtIGRl
dmljZSB2aWEgZGV2cmVzOiBkZXZtX2RybV9kZXZfYWxsb2MoKSwgZGV2bV9rY2FsbG9jKCkgZm9y
Cj4gdGhlIGNvcmVzIGFycmF5IGFuZCBkZXZtX211dGV4X2luaXQoKS4gVGhhdCBkZXZpY2UgaXMg
cmVnaXN0ZXJlZCBhdAo+IG1vZHVsZSBpbml0LCBuZXZlciBiaW5kcyB0byBhIGRyaXZlciwgYW5k
IGlzIG9ubHkgdW5yZWdpc3RlcmVkIGF0Cj4gbW9kdWxlIGV4aXQgLSBzbyBpdHMgZGV2cmVzIGxp
c3QgaXMgbm90IHJlbGVhc2VkIGZvciBhcyBsb25nIGFzIHRoZQo+IG1vZHVsZSBpcyBsb2FkZWQu
Cj4gCj4gcm9ja2V0X2RldmljZV9maW5pKCkgb25seSBjYWxscyBkcm1fZGV2X3VucmVnaXN0ZXIo
KTogaXQgZG9lcyBub3QgcnVuCj4gdGhlIGRybV9kZXZfcHV0KCkgZGV2cmVzIGFjdGlvbiBvciBm
cmVlIGFueSBvZiB0aGUgb3RoZXIgZW50cmllcy4KPiBFdmVyeSBmaW5pL3JlLWluaXQgY3ljbGUg
dGhlcmVmb3JlIGxlYWtzIHRoZSBwcmV2aW91cyByb2NrZXRfZGV2aWNlCj4gKHdpdGggaXRzIGVt
YmVkZGVkIGRybV9kZXZpY2UgYW5kIGFsbCBkcm1tIHN0YXRlLCBpbmNsdWRpbmcgdGhlIGFjY2Vs
Cj4gbWlub3IgbnVtYmVyKSwgdGhlIGNvcmVzIGFycmF5IGFuZCB0aGUgbXV0ZXggZGV2cmVzIG5v
ZGUuIFRoZSBjeWNsZSBpcwo+IGVhc3kgdG8gdHJpZ2dlcjogdW5iaW5kIHRoZSBsYXN0IGJvdW5k
IGNvcmUgYW5kIGJpbmQgb25lIGFnYWluLCBvcgo+IGZhaWwgdGhlIGZpcnN0IGNvcmUncyBwcm9i
ZSAoLUVQUk9CRV9ERUZFUiByZXRyaWVzIGluY2x1ZGVkKS4KPiAKPiBPYnNlcnZhYmxlIHN5bXB0
b20sIFJLMzU4OCAoT3JhbmdlIFBpIDUgUGx1cyk6IGVhY2ggdW5iaW5kL3JlYmluZAo+IGN5Y2xl
IG9mIGFsbCB0aHJlZSBjb3JlcyBtb3ZlcyB0aGUgYWNjZWwgbm9kZSBmb3J3YXJkIC0KPiAvZGV2
L2FjY2VsL2FjY2VsMCBjb21lcyBiYWNrIGFzIGFjY2VsMSwgdGhlbiBhY2NlbDIgLSBiZWNhdXNl
IGV2ZXJ5Cj4gbGVha2VkIGRybV9kZXZpY2Uga2VlcHMgaXRzIG1pbm9yIHBpbm5lZC4KPiAKPiBX
cmFwIHRoZSBpbml0aWFsaXphdGlvbiBpbiBhIGRldnJlcyBncm91cCBhbmQgcmVsZWFzZSBleGFj
dGx5IHRoYXQKPiBncm91cCB3aGVyZXZlciB0aGUgZGV2aWNlIGlzIHRvcm4gZG93bjogb24gdGhl
IHJvY2tldF9kZXZpY2VfaW5pdCgpCj4gZXJyb3IgcGF0aCwgd2hlbiB0aGUgZmlyc3QgY29yZSdz
IHJvY2tldF9jb3JlX2luaXQoKSBmYWlscywgYW5kIHdoZW4KPiB0aGUgbGFzdCBjb3JlIGlzIHJl
bW92ZWQuIEVhY2ggZmluaSBub3cgZnJlZXMgd2hhdCB0aGUgbWF0Y2hpbmcgaW5pdAo+IGFsbG9j
YXRlZCwgYW5kIHRoZSBhY2NlbCBtaW5vciBpcyByZXVzYWJsZSBhZ2Fpbi4KPiAKPiBGaXhlczog
ZWQ5ODI2MWI0MTY4ICgiYWNjZWwvcm9ja2V0OiBBZGQgYSBuZXcgZHJpdmVyIGZvciBSb2NrY2hp
cCdzIE5QVSIpCj4gU2lnbmVkLW9mZi1ieTogSWdvciBQYXVub3ZpYyA8cm95YWxuZXQwMjZAZ21h
aWwuY29tPgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
