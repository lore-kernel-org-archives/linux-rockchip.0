Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B79FF606A324
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 17:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XMUKGU+M;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=wfMt29t9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=dL44H3dpeUAj5p12GqpLu+uLdvW+r1eAO77Ap6zCh1Q=; b=XMUKGU+MEw163FH1Y7PoOs2H9u
	GM0QSXt/iSxNjyMT/VOuqoF7LhWuluCJ4FB8BVd4PjPPTVHGP4sIsD/uckoBjoPXQl0ppkJQD+x+0
	sZe2gRSBwSXlVgfLFpldmhpIkSzFZyBZMusS4qMmJI0GCYFK+usJWOQFkNzhLofwL/Q0znSXmDiHX
	m2bsURwjYo3FdE7pq6urYd7ep6PJjPxH2Q3wU1rPGBHWZ8/ehH6bP0PBvVcri0TGu1uUegfq7nTAS
	eA4s0RDRM4fy15egKx4HYT1PBg6uw/FPiETPCyuSmD1A8aOZRWv9bXUaUwCoRoM6NOFXduUVwUuW8
	cAbl2B8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNZmJ-0000000Ejea-2xEG;
	Sun, 01 Nov 2026 17:55:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNZmH-0000000Ejdz-01Fs;
	Sun, 01 Nov 2026 17:55:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=7SWnd7QbyWt5i8UF5eX0OMKAyqT339F4dwQJ7Y7Vi1k=; b=wfMt29t93sQga2fu+5B7V28bIv
	Rr1BIKJibXRNt7NHit6+r+xACmqtAk9tDyjKcFSW1XvxRzlj4iImsAB3HZkVrkcCP2ENfnJgzoDzv
	ajj7f4GoV5IyD+WDMA3NLfgXWhNlmgpXfr9fJ7XbHMF0Zi5yyy8dkbMUm0Z91pkO99+8zriU5L3Bi
	Bh8qYYTAhcjVv7jyU3Wa1Sti4yAjgCC9WcvOD1wxYtMIuT8v48huzb0Xp8+91nuw5dI4z42ihZsLX
	CVurrkT0N55QVTiH4a/91mAuiPF7Lt56z1F8AOO6vzKC44G1P0DDlFfcrrydGoETTrjIki1ihFj5s
	eRcPuN1g==;
From: Heiko Stuebner <heiko@sntech.de>
To: Yaozhong Li <yaozhonguwl@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: shawn.lin@rock-chips.com, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable SD UHS-I on Firefly-RK3399
Date: Sun, 01 Nov 2026 18:55:25 +0100
Message-ID: <2120863.kXSN5OTJKJ@phil>
In-Reply-To: <b8221ba4-dccb-42f5-ae77-a6c087fa1d05@rock-chips.com>
References: <20260922055011.14972-1-yaozhonguwl@gmail.com>
 <b8221ba4-dccb-42f5-ae77-a6c087fa1d05@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_095533_124850_1031E1B9 
X-CRM114-Status: GOOD (  23.84  )
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gU29ubnRhZywgMS4gTm92ZW1iZXIgMjAyNiwgMTc6MTA6MDQgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBTaGF3biBMaW46Cj4g5ZyoIDIwMjYvMDkvMjIg5pif5pyf5LqM
IDEzOjUwLCBZYW96aG9uZyBMaSDlhpnpgZM6Cj4gPiBUaGUgU0Qgc2xvdCBvbiB0aGlzIGJvYXJk
IHN0YXlzIGF0IDUwIE1IeiB3aXRoIDMuM1Ygc2lnbmFsbGluZy4gVGhlCj4gCj4gLi4uCj4gCj4g
PiAKPiA+IEkgaGF2ZSBubyBzY2hlbWF0aWMgZm9yIHRoaXMgYm9hcmQuIFRoZSBjbGFpbSBhYm91
dCB3aGF0IExETzQgZmVlZHMKPiA+IHJlc3RzIG9uIHRoZSB2ZW5kb3IgZmlybXdhcmUgZGV2aWNl
IHRyZWUgcGx1cyB0aGUgbWVhc3VyZW1lbnRzIGFib3ZlLgo+ID4gCj4gCj4gSXQncyBlYXN5IHRv
IGZpbmQgb25lOgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9hcm1iaWFuL2FybWJpYW4uZ2l0aHViLmlv
L2Jsb2IvbWFpbi9ib2FyZC1zY2hlbWF0aWNzL2ZpcmVmbHktcmszMzk5LnBkZgo+IAo+IFRvbyBi
YWQgaXQgd2FzIGRlc2lnbmVkIHRoaXMgd2F5ISBXaGF0IGlmIHNkaW8td2lmaSBpcyB3b3JraW5n
IG9uIFVIUwo+IG1vZGVidXQgcGVvcGxlIGluc2VydCBhIEhpZ2hTcGVlZCBvbmx5IHNkIGNhcmQ/
CgpIbW0sIHdoZW4gSSByZWFkIHRoZSBzY2hlbWF0aWNzIGNvcnJlY3RseSwgYWxsIHBhcnRzIG9m
IHRoZSBzZGlvICsgd2lmaQpzdXBwbGllZCBieSB2Y2NfMXY4IChib3RoIEFQSU8zX1ZERF8xVjgg
YW5kIGFsc28gdmRkaW8gb2YgdGhlIHdpZmkgbW9kdWxlCml0c2VsZiksIHdoaWxlIHZjY19zZGlv
IG9ubHkgc3VwcGxpZXMgU0RNTUMwX1ZERD8KCgpZYW96aG9uZyBMaTogcGxlYXNlIHRyaW0gdGhh
dCBjb21taXQgbWVzc2FnZSBkb3duIGEgbG90LCBpdCBkb2Vzbid0CmhhdmUgdG8gYmUgbm92ZWwg
c2l6ZSBwbGVhc2UuCgoKSGVpa28KCj4gCj4gPiBUaGUgYW5hbHlzaXMgYW5kIHRoZSBjb21taXQg
bWVzc2FnZSB3ZXJlIGRyYWZ0ZWQgd2l0aCB0aGUgaGVscCBvZiBhbgo+ID4gTExNLWJhc2VkIGFz
c2lzdGFudCAoQ2xhdWRlIENvZGUpLCBjcm9zcy1yZXZpZXdlZCB3aXRoIGEgc2Vjb25kIG9uZQo+
ID4gKE9wZW5BSSBDb2RleCkuIFRoZSBkZXZpY2UgdHJlZSBjaGFuZ2UsIHRoZSBtZWFzdXJlbWVu
dHMgYW5kIHRoZSBmaW5hbAo+ID4gd29yZGluZyBhcmUgbWluZS4KPiA+IAo+ID4gICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1maXJlZmx5LmR0cyB8IDMgKystCj4gPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWZpcmVmbHkuZHRz
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZmlyZWZseS5kdHMKPiA+IGlu
ZGV4IDA1NjhkZmEuLjdjYWJiYzEgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzM5OS1maXJlZmx5LmR0cwo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzOTktZmlyZWZseS5kdHMKPiA+IEBAIC03NzcsNyArNzc3LDYgQEAgJnNk
aW8wIHsKPiA+ICAgCj4gPiAgIAkvKiBQb3dlciBzdXBwbHkgKi8KPiA+ICAgCXZxbW1jLXN1cHBs
eSA9IDwmdmNjMXY4X3MzPjsJLyogSU8gbGluZSAqLwo+ID4gLQl2bW1jLXN1cHBseSA9IDwmdmNj
X3NkaW8+OwkvKiBjYXJkJ3MgcG93ZXIgKi8KPiA+ICAgCj4gPiAgIAkjYWRkcmVzcy1jZWxscyA9
IDwxPjsKPiA+ICAgCSNzaXplLWNlbGxzID0gPDA+Owo+ID4gQEAgLTgwNCw2ICs4MDMsOCBAQCAm
c2RtbWMgewo+ID4gICAJbWF4LWZyZXF1ZW5jeSA9IDwxNTAwMDAwMDA+Owo+ID4gICAJcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ICAgCXBpbmN0cmwtMCA9IDwmc2RtbWNfY2xrICZzZG1t
Y19jbWQgJnNkbW1jX2J1czQ+Owo+ID4gKwlzZC11aHMtc2RyMTA0Owo+ID4gKwl2cW1tYy1zdXBw
bHkgPSA8JnZjY19zZGlvPjsKPiA+ICAgCXN0YXR1cyA9ICJva2F5IjsKPiA+ICAgfTsKPiA+ICAg
Cj4gPiAKPiA+IGJhc2UtY29tbWl0OiA5NDBkZTU5MGI4MzlmNzFkNmRjODQ2MTYwNTM0YmYyMDI0
MDFiOGI3Cj4gCj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
