Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D47B6D19513
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jan 2026 18:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AzCjoFuWYVcxyHwSZlbRbvRGPIzDJ/exU9oDsYZT/BA=; b=gZKXg6Eso9d1SC
	I116Jz8+fsw9LLcEg2UeaS2l5u+Wz6X0O9vf9NSn4jqRpGfK08vLYkN72QAcvQHz4MB9Ghq3DtakK
	Z4zJ5t6j9OMEN9jPz5Xfmzl/3WIxF4E+BvG4WwtsOagXRNjxEvzrO9tNcEqfRiNCyOxjIfEmfhwyB
	XOEeg+emnQA2gHD2y+P+c7qRF3e80d3bfFxETBIGF0zPm3e8yksXDq+Cvo2Tf3VPStfR28na9J/K0
	Grkvi5QPHBF05sIbleCkZHeVb0vP/1WC1urwHpBnI6UVXVr8BjQ9YORuW6lYvrj1+xwhX2utHDNmn
	2+E7CWrnjHheYZukSUgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkRMA-0000000D55Z-3wN3;
	Mon, 26 Jan 2026 18:30:34 +0000
Received: from sender4-op-o10.zoho.com ([136.143.188.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkRM7-0000000D54a-15pG;
	Mon, 26 Jan 2026 18:30:32 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1769452215; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=nTShMgbUt3DXdgrTr8iXm4Y4DAOwXbPQU9MUY2TK0SxsMMgXv3PdAbEPwsbQUapdCyaXm4N4+HLA+ZlYOzC0m2k2tedIIeK7lwLTM0QFXB0OKm0Vgoj1JIyU4m0nMgxF1FAH+3/VicisnpIxq0Q1cwXg/XplCYn6iWCxZ07v28I=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1769452215; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=hVd6diwc3mTM+TJy/I3dVmE0Ngl9ll/ws0dV8fch0dw=; 
	b=lcTAcL1SKd8QSh1VmvxeHjesbMxCMrLMnNxOfHdmbXzx1HET4G9agqSleiWQVeX9V8BFNt4t45qvf9GKrkyuIApz9Uu6S6151GXZ6CrtUNfQ3tWJAvIh+QiMkWOvbKBQQvshFaiTGn44rra7RJQiOREcsAyP7CYBBMokqkO+DCk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nfraprado@collabora.com;
	dmarc=pass header.from=<nfraprado@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1769452215;
	s=zohomail; d=collabora.com; i=nfraprado@collabora.com;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=hVd6diwc3mTM+TJy/I3dVmE0Ngl9ll/ws0dV8fch0dw=;
	b=AcaowKzpQTCzeaB33CnHLyfNtNEUQwRSJaQc72i/QVBSZhd4ZuO11PF1wE3OY3EC
	LfAEjmuT+Pk43Ht3wyJKPX6B72EWLGqjUeaj8SoOxT+JUfDpnEus+IUIC0Vc335TQ5C
	Nwb8YuSs/OLWlMHMaIkQSXEyoD6kytPui3Gm0A08=
Received: by mx.zohomail.com with SMTPS id 1769452213766652.6163551638421;
	Mon, 26 Jan 2026 10:30:13 -0800 (PST)
Message-ID: <d85cf4b299e929770a1b7f5be7ae61d76306e7d1.camel@collabora.com>
Subject: Re: [PATCH v4 4/4] drm/rockchip: vop2: Support setting custom
 background color
From: =?ISO-8859-1?Q?N=EDcolas?= "F. R. A. Prado" <nfraprado@collabora.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Maarten Lankhorst
	 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sandy Huang	 <hjc@rock-chips.com>, Heiko
 =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,  Andy Yan
 <andy.yan@rock-chips.com>, Louis Chauvet <louis.chauvet@bootlin.com>,
 Haneen Mohammed	 <hamohammed.sa@gmail.com>, Melissa Wen
 <melissa.srw@gmail.com>
Cc: Robert Mader <robert.mader@collabora.com>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Date: Mon, 26 Jan 2026 15:30:07 -0300
In-Reply-To: <20251219-rk3588-bgcolor-v4-4-2ff1127ea757@collabora.com>
References: <20251219-rk3588-bgcolor-v4-0-2ff1127ea757@collabora.com>
	 <20251219-rk3588-bgcolor-v4-4-2ff1127ea757@collabora.com>
User-Agent: Evolution 3.56.2-8 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_103031_349945_A9F33B35 
X-CRM114-Status: GOOD (  16.18  )
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

T24gRnJpLCAyMDI1LTEyLTE5IGF0IDIzOjQ3ICswMjAwLCBDcmlzdGlhbiBDaW9jYWx0ZWEgd3Jv
dGU6Cj4gVGhlIFJvY2tjaGlwIFZPUDIgZGlzcGxheSBjb250cm9sbGVyIGFsbG93cyBjb25maWd1
cmluZyB0aGUKPiBiYWNrZ3JvdW5kCj4gY29sb3Igb2YgZWFjaCB2aWRlbyBvdXRwdXQgcG9ydC4K
PiAKPiBTaW5jZSBhIHByZXZpb3VzIHBhdGNoIGludHJvZHVjZWQgdGhlIEJBQ0tHUk9VTkRfQ09M
T1IgQ1JUQyBwcm9wZXJ0eSwKPiB3aGljaCBkZWZhdWx0cyB0byBzb2xpZCBibGFjaywgbWFrZSB1
c2Ugb2YgaXQgd2hlbiBwcm9ncmFtbWluZyB0aGUKPiBoYXJkd2FyZS4KPiAKPiBOb3RlIHRoZSBt
YXhpbXVtIHByZWNpc2lvbiBhbGxvd2VkIGJ5IHRoZSBkaXNwbGF5IGNvbnRyb2xsZXIgaXMKPiAx
MGJwYywKPiB3aGlsZSB0aGUgYWxwaGEgY29tcG9uZW50IGlzIG5vdCBzdXBwb3J0ZWQsIGhlbmNl
IGlnbm9yZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlh
bi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jIHwgMTMgKysrKysrKysrKysrLQo+IMKgZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmggfMKgIDQgKysrKwo+IMKgMiBmaWxl
cyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4gYi9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+IGluZGV4IDQ5OGRmMGNl
NDY4MC4uM2EyMzJkMGQ0YWNiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX2RybV92b3AyLmMKPiBAQCAtMTU1NCw2ICsxNTU0LDcgQEAgc3RhdGljIHZvaWQgdm9w
Ml9wb3N0X2NvbmZpZyhzdHJ1Y3QgZHJtX2NydGMKPiAqY3J0YykKPiDCoAlzdHJ1Y3Qgdm9wMl92
aWRlb19wb3J0ICp2cCA9IHRvX3ZvcDJfdmlkZW9fcG9ydChjcnRjKTsKPiDCoAlzdHJ1Y3Qgdm9w
MiAqdm9wMiA9IHZwLT52b3AyOwo+IMKgCXN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlID0g
JmNydGMtPnN0YXRlLT5hZGp1c3RlZF9tb2RlOwo+ICsJdTY0IGJnY29sb3IgPSBjcnRjLT5zdGF0
ZS0+YmFja2dyb3VuZF9jb2xvcjsKPiDCoAl1MTYgdnRvdGFsID0gbW9kZS0+Y3J0Y192dG90YWw7
Cj4gwqAJdTE2IGhkaXNwbGF5ID0gbW9kZS0+Y3J0Y19oZGlzcGxheTsKPiDCoAl1MTYgaGFjdF9z
dCA9IG1vZGUtPmNydGNfaHRvdGFsIC0gbW9kZS0+Y3J0Y19oc3luY19zdGFydDsKPiBAQCAtMTU5
OSw3ICsxNjAwLDExIEBAIHN0YXRpYyB2b2lkIHZvcDJfcG9zdF9jb25maWcoc3RydWN0IGRybV9j
cnRjCj4gKmNydGMpCj4gwqAJCXZvcDJfdnBfd3JpdGUodnAsIFJLMzU2OF9WUF9QT1NUX0RTUF9W
QUNUX0lORk9fRjEsCj4gdmFsKTsKPiDCoAl9Cj4gwqAKPiAtCXZvcDJfdnBfd3JpdGUodnAsIFJL
MzU2OF9WUF9EU1BfQkcsIDApOwo+ICsJLyogQmFja2dyb3VuZCBjb2xvciBpcyBwcm9ncmFtbWVk
IHdpdGggMTAgYml0cyBvZiBwcmVjaXNpb24KPiAqLwo+ICsJdmFsID0gRklFTERfUFJFUChSSzM1
NjhfVlBfRFNQX0JHX19EU1BfQkdfUkVELAo+IERSTV9BUkdCNjRfR0VUUihiZ2NvbG9yKSA+PiA2
KTsKPiArCXZhbCB8PSBGSUVMRF9QUkVQKFJLMzU2OF9WUF9EU1BfQkdfX0RTUF9CR19HUkVFTiwK
PiBEUk1fQVJHQjY0X0dFVEcoYmdjb2xvcikgPj4gNik7Cj4gKwl2YWwgfD0gRklFTERfUFJFUChS
SzM1NjhfVlBfRFNQX0JHX19EU1BfQkdfQkxVRSwKPiBEUk1fQVJHQjY0X0dFVEIoYmdjb2xvcikg
Pj4gNik7CgpXaHkgYXJlbid0IHRoZSBEUk1fQVJHQjY0X0dFVCpfQlBDKCkgaGVscGVycyB1c2Vk
IGhlcmUgdG8gZ2V0IHRoZQp2YWx1ZXMgd2l0aCBhIGN1c3RvbSBwcmVjaXNpb24/CgotLSAKVGhh
bmtzLAoKTsOtY29sYXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
