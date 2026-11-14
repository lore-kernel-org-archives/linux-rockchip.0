Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60FF4606A330
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HiSXxzPY;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=Aj7vrR+i
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8KtGlKsDy+AKlHduqMAUk/l5UAwwOkWAUq9wIOOSFNQ=; b=HiSXxzPY9V0H7ZGMdqJ8D0dqif
	MpKcfgUG5SKXvJo8XZux/1Zw5GMHFQ5dy2B2ZvtiIWCovCTdG+D5TiCKDgCT/E2k8athPAuvQZHKq
	sAgNKbY0MdJRMyMV/anp4O0hUbhchesx2jgRpSYqwoLKleTe5xUkKjcObQQmW9uJakbje0TCnrsNO
	S7hCG12QCtEtum3TLghv+Bo+ZdyyxGmUEhruBQu1/Xvm/E7nPBIpxIiv6s0W4MImqsVEykLrqlZP8
	AlGsIrb69kobp09K4Kwfoi92vzq+5f0HaMdrb4OcaCEL9zentPLTK40zQ+73yFqL2tmOVyJ2zkNcC
	I+PxyofQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS9lb-0000000FdB5-0ngA;
	Sat, 14 Nov 2026 09:09:47 +0000
Received: from mail-m6078.netease.com ([210.79.60.78])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS9kz-0000000Fcpk-3G0z
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Nov 2026 09:09:44 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 54aafad26;
	Sat, 14 Nov 2026 17:09:04 +0800 (GMT+08:00)
Message-ID: <33ca64d0-baa9-4184-a42d-85628478e443@rock-chips.com>
Date: Sat, 14 Nov 2026 17:09:02 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Heiko Stuebner <heiko@sntech.de>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] mmc: dw_mmc-rockchip: fix training on devices with
 internal phases
To: Alexis Bauvin <alexis@bauvin.com>
References: <20261110200050.2529828-1-alexis@bauvin.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261110200050.2529828-1-alexis@bauvin.com>
X-HM-Tid: 0aa1d951443203a4kunm5b72144c212488
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaSUpPVkJOHkIZGUtNShodGFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Aj7vrR+iamaYsRZGn0haJksNe4gKXPnf6OLD5+dMBXYCIim7GtLaRmKUP6oItXy8sXasETAu/qJWIhfYHfPbLFHD7ErW+2XfQVsE3/8sjZfKq+EtXes4lEAN3aywmMYdwLPSA1VSvGo/8ZsUDo2QZ8Hf8jo3o20tt4ietYkab/8=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=L1NX2m1LeF4LmQcrQf8AacTeSftK5GfbrH0AK5cN1zQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_010911_242844_8A500E36 
X-CRM114-Status: GOOD (  20.14  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkKCuWcqCAyMDI2LzExLzExIOaYn+acn+S4iSA0OjAwLCBBbGV4aXMgQmF1dmluIOWGmemBkzoK
PiBDb250cm9sbGVycyB3aXRoIGludGVybmFsIHBoYXNlcyBkb24ndCBuZWVkIHRoZSAiY2l1LWRy
aXZlIiBhbmQKPiAiY2l1LXNhbXBsZSIgY2xvY2tzLCBhbmQgcmVjZW50IHZlcnNpb25zIGRvbid0
IGhhdmUgdGhlbSBhdCBhbGwuIFR1bmluZwo+IGV4cGVjdHMgdGhvc2UgY2xvY2tzIHRvIGJlIGZp
bGxlZCB3aGVuIGl0IGlzIG5vdCBuZWNlc3NhcnksIGFuZCBmYWlscyBvbgo+IGRldmljZXMgd2hp
Y2ggZG9uJ3QgbmVlZCB0aGVtLgo+IAo+IEZpeGVzIGVNTUMgdHJhaW5pbmcgb24gc3VjaCBkZXZp
Y2UgYnkgbm90IHJlcXVpcmluZyB0aGUgY2xvY2tzIHdoZW4gdGhleQo+IGFyZSBpbnRlcm5hbCB0
byB0aGUgY29udHJvbGxlciwgYXMgdGhleSBhcmUgbm90IHBvcHVsYXRlZCBhbnltb3JlIG9uCj4g
ZGV2aWNlcyB1c2luZyB0aGUgUkszNTc2IGNvbXBhdGlibGUgc3RyaW5ncy4KPiAKPiBUaGlzIGhh
cyBiZWVuIHRlc3RlZCBvbiBhbiBSSzM1MDYgb24gdGhlIDYuMTIgYnJhbmNoIGZyb20KPiBsaW51
eC1yb2NrY2hpcC4KPiAKCkkgZG9uJ3Qga25vdyBmb3Igd2hpY2ggdHJlZSB0aGlzIHBhdGNoIHdp
bGwgYmUgYXBwbGllZD8gNi4xMiBzdGFibGU/CkZvciBub3csIHNhbXBsZV9jbGsgYW5kIGRydl9j
bGsgYXJlIE5VTEwgaW4gc3VjaCBjYXNlLCBzbyBJU19FUlIgY2hlY2sKZmFpbGVkLgoKPiBGaXhl
czogNzNhYmIxZjE2ZSAoIm1tYzogZHdfbW1jLXJvY2tjaGlwOiBBZGQgc3VwcG9ydCBmb3Igcmsz
NTc2IFNvQ3MiKQo+IFNpZ25lZC1vZmYtYnk6IEFsZXhpcyBCYXV2aW4gPGFsZXhpc0BiYXV2aW4u
Y29tPgo+IC0tLQo+ICAgZHJpdmVycy9tbWMvaG9zdC9kd19tbWMtcm9ja2NoaXAuYyB8IDIgKy0K
PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21tYy9ob3N0L2R3X21tYy1yb2NrY2hpcC5jIGIvZHJpdmVycy9t
bWMvaG9zdC9kd19tbWMtcm9ja2NoaXAuYwo+IGluZGV4IGExMzRiZTU5NjAxZC4uZDMxNThhYjA1
YWExIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMKPiAr
KysgYi9kcml2ZXJzL21tYy9ob3N0L2R3X21tYy1yb2NrY2hpcC5jCj4gQEAgLTM1NCw3ICszNTQs
NyBAQCBzdGF0aWMgaW50IGR3X21jaV9yazMyODhfZXhlY3V0ZV90dW5pbmcoc3RydWN0IGR3X21j
aV9zbG90ICpzbG90LCB1MzIgb3Bjb2RlKQo+ICAgCWludCBtaWRkbGVfcGhhc2U7Cj4gICAJaW50
IHBoYXNlOwo+ICAgCj4gLQlpZiAoSVNfRVJSKHByaXYtPnNhbXBsZV9jbGspKSB7Cj4gKwlpZiAo
SVNfRVJSKHByaXYtPnNhbXBsZV9jbGspICYmICFwcml2LT5pbnRlcm5hbF9waGFzZSkgewo+ICAg
CQlkZXZfZXJyKGhvc3QtPmRldiwgIlR1bmluZyBjbG9jayAoc2FtcGxlX2Nsaykgbm90IGRlZmlu
ZWQuXG4iKTsKPiAgIAkJcmV0dXJuIC1FSU87Cj4gICAJfQoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
