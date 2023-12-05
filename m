Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40705C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 18:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6GIXWSNyqv6FciQSj8214mWV3x8sawBCJF3d72stww=; b=eAd2s8lNnhzRG8
	xaJ5PjO1scfpXZquqggFxNpMDHY7c4iUErD7O0n253lxRB7zFa94K3tEm6vFf19P1A+3i7baNitG7
	WXNryhJrttPMVPTh430guc3Hj+z8oQ/LnxhS98y2ZbnTgSH5LcWiuKlDzdY65nwU8yXPdbodCqVFM
	Rgk9f7PXvdNoI9FEEdCBd7JLwH5OKUxKk/digLkkZZ7g7UNMjsRrHw6D7GDwbzpaMDHCdM+l/xIpw
	7WvZOu2GXBgyy1vgELJrZNqM/9on2CJTC7Zsoeh2vMSGjC5VzeNDzxc6ckke/3KMI3WYDjifGkDvP
	P/Ik+O7lBmKxpHl10a3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAZjA-0085fn-1h;
	Tue, 05 Dec 2023 18:01:00 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAZj7-0085eY-1f;
	Tue, 05 Dec 2023 18:00:59 +0000
Received: from [100.95.196.25] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: koike)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3F433660715D;
	Tue,  5 Dec 2023 18:00:51 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701799256;
	bh=RgkVHjxMEsdXllUes00vbSqVmLybs60goWYS6kaWos8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FksvE4Ga17Z+a4BzWvMY/16U6sbJxavWMiB1tuCqhvG2l/iOMPypzK0mWMcq0yjTQ
	 bhX/HsWwRYZHkW8QgV14rI4VOvDjYtTH01HaqZR0rqOwr3B35KNPl4Tgq0UaWn2/hQ
	 agqC7hEHzp7ekxcJX6CbAb0xtepUiCUkaUTm3zM7CaR1aF3teuzGmGtzaJV7eUUzB1
	 oAgJuZlvXBgdK3hIsLxIEjBFaWjsOg+GLAyutPNqQvZS29FMf6a/1DmN6etZfVfxlS
	 4RIsFTFctyCuX+dBSDMNrU4wTwAfIm1MbdFFv+209MYurr+5GIbWWHgpGKW/nq0low
	 DnpSecXjQGzTQ==
Message-ID: <03724cf8-e7c1-462a-80a4-587f5df202ef@collabora.com>
Date: Tue, 5 Dec 2023 15:00:50 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 08/10] drm: ci: uprev IGT
Content-Language: en-US
To: Vignesh Raman <vignesh.raman@collabora.com>, airlied@gmail.com,
 daniel@ffwll.ch
Cc: david.heidelberg@collabora.com, sergi.blanch.torne@collabora.com,
 guilherme.gallo@collabora.com, daniels@collabora.com,
 gustavo.padovan@collabora.com, emma@anholt.net, robdclark@gmail.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org,
 virtualization@lists.linux-foundation.org,
 linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org
References: <20231129121841.253223-1-vignesh.raman@collabora.com>
 <20231129121841.253223-9-vignesh.raman@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
In-Reply-To: <20231129121841.253223-9-vignesh.raman@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_100057_685647_62A276FE 
X-CRM114-Status: GOOD (  13.93  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpPbiAyOS8xMS8yMDIzIDA5OjE4LCBWaWduZXNoIFJhbWFuIHdyb3RlOgo+IHZpcnRpby1ncHUg
a2VybmVsIGRyaXZlciByZXBvcnRzIDE2IGZvciBjb3VudF9jcnRjcwo+IHdoaWNoIGV4Y2VlZHMg
SUdUX01BWF9QSVBFUyBzZXQgdG8gOCBpbiBpZ3QtZ3B1LXRvb2xzLgo+IFRoaXMgcmVzdWx0cyBp
biBiZWxvdyBtZW1vcnkgY29ycnVwdGlvbiwKPiAKPiAgwqBtYWxsb2MoKTogY29ycnVwdGVkIHRv
cCBzaXplCj4gIMKgUmVjZWl2ZWQgc2lnbmFsIFNJR0FCUlQuCj4gIMKgU3RhY2sgdHJhY2U6Cj4g
IMKgICMwIFtmYXRhbF9zaWdfaGFuZGxlcisweDE3Yl0KPiAgwqAgIzEgW19fc2lnYWN0aW9uKzB4
NDBdCj4gIMKgICMyIFtwdGhyZWFkX2tleV9kZWxldGUrMHgxNGNdCj4gIMKgICMzIFtnc2lnbmFs
KzB4MTJdCj4gIMKgICM0IFthYm9ydCsweGQzXQo+ICDCoCAjNSBbX19mc2V0bG9ja2luZysweDI5
MF0KPiAgwqAgIzYgW3RpbWVyX3NldHRpbWUrMHgzN2FdCj4gIMKgICM3IFtfX2RlZmF1bHRfbW9y
ZWNvcmUrMHgxZjFiXQo+ICDCoCAjOCBbX19saWJjX2NhbGxvYysweDE2MV0KPiAgwqAgIzkgW2Ry
bU1vZGVHZXRQbGFuZVJlc291cmNlcysweDQ0XQo+ICDCoCAjMTAgW2lndF9kaXNwbGF5X3JlcXVp
cmUrMHgxOTRdCj4gIMKgICMxMSBbX19pZ3RfdW5pcXVlX19fX3JlYWxfbWFpbjEzNTYrMHg5M2Nd
Cj4gIMKgICMxMiBbbWFpbisweDNmXQo+ICDCoCAjMTMgW19fbGliY19pbml0X2ZpcnN0KzB4OGFd
Cj4gIMKgICMxNCBbX19saWJjX3N0YXJ0X21haW4rMHg4NV0KPiAgwqAgIzE1IFtfc3RhcnQrMHgy
MV0KPiAgIAo+IFRoaXMgaXMgZml4ZWQgaW4gaWd0LWdwdS10b29scyBieSBpbmNyZWFzaW5nIElH
VF9NQVhfUElQRVMgdG8gMTYuCj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy8xMjYzMjcvCj4gICAKPiBVcHJldiBJR1QgdG8gaW5jbHVkZSB0aGUgcGF0Y2hlcyB3aGlj
aCBmaXhlcyB0aGlzIGlzc3VlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpZ25lc2ggUmFtYW4gPHZp
Z25lc2gucmFtYW5AY29sbGFib3JhLmNvbT4KCkFja2VkLWJ5OiBIZWxlbiBLb2lrZSA8aGVsZW4u
a29pa2VAY29sbGFib3JhLmNvbT4KClRoYW5rcwpIZWxlbgoKPiAtLS0KPiAKPiB2NjoKPiAgICAt
IEFkZGVkIGEgbmV3IHBhdGNoIGluIHRoZSBzZXJpZXMgdG8gdXByZXYgSUdUIHRvIGZpeCBtZW1v
cnkgY29ycnVwdGlvbgo+IAo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2NpL2dpdGxhYi1jaS55
bWwgfCAyICstCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2NpL2dpdGxhYi1jaS55bWwgYi9k
cml2ZXJzL2dwdS9kcm0vY2kvZ2l0bGFiLWNpLnltbAo+IGluZGV4IGFlYjliYWIxYjA2OS4uZGFj
OTJjYzI3NzdjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9jaS9naXRsYWItY2kueW1s
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2NpL2dpdGxhYi1jaS55bWwKPiBAQCAtNSw3ICs1LDcg
QEAgdmFyaWFibGVzOgo+ICAgICBVUFNUUkVBTV9SRVBPOiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNr
dG9wLm9yZy9kcm0vZHJtCj4gICAgIFRBUkdFVF9CUkFOQ0g6IGRybS1uZXh0Cj4gICAKPiAtICBJ
R1RfVkVSU0lPTjogZDFkYjczMzNkOWM1ZmJiYjA1ZTUwYjA4MDQxMjM5NTBkOWRjMWM0Ngo+ICsg
IElHVF9WRVJTSU9OOiBkMmFmMTNkOWY1YmU1Y2UyM2Q5OTZlNGFmZDNlNDU5OTBmNWFiOTc3Cj4g
ICAKPiAgICAgREVRUF9SVU5ORVJfR0lUX1VSTDogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL2FuaG9sdC9kZXFwLXJ1bm5lci5naXQKPiAgICAgREVRUF9SVU5ORVJfR0lUX1RBRzogdjAu
MTUuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
