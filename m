Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E64CED64072
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 17:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xNBMlptW7bsa712SBLPKD1ikpSct3Eio3nBYhZsTjTw=; b=wNEOMhskBeRXR8
	Ij3MZY/jYOGta5l98hvbbKfIBAeHQILJa70ksmxNClrzSvZo8ns62n1aWn8ya6u/AnKGWKMPoa5/W
	GrLgb65yPJQkOefj/kmL0c3tapwbdjwUli/oM2Ce5Mls0u5f4T/128vmOi05NMxe4pajsBtdlFg64
	qEcEEVKkhx8BfD2tABQ6iRQ7+aslCrKvj3icyruLriw31CaOrX1yHYPhAUSSLow6FnjZt48y+vP+K
	BmrdnGEaNAFgBeVU36RdtQwPtKNjBMsRQl9g4hmAzAl203xgiSemhf12vq3tVp84XIXczM47IDxHR
	8zC0Ps3kxz1WV85norwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9SVS-0000000BKoG-44ua;
	Fri, 08 Nov 2024 17:10:46 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9SFY-0000000BIvp-1K2J;
	Fri, 08 Nov 2024 16:54:22 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1731084832; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=UggnLDiT8L9h57CG1XTcCfDiHQTXq+nrtR8IlMCdsDbCjMC12O0QmOUG5DYJ9hlBoxKSVzHlmb7SE5o+L9nIqBIELrBg4dKAvSs3vWYGwMTGLY7IAVxrFKlXHc41oR21rkGMi2NN4BZjIeZdO6D8NVkJQyo3N90gDqXBDrVHPcs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1731084832; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=+Ud2Wm0N9rBWA5JqD8doezigwT2uqET+VTznhZjAgh0=; 
	b=EyN1Pjj0KhgVMYXN5flONkrptqDwA4lmKqBXQmxOzULXNfFsUry8W/i0OULXyaqTGRLHHZOdblapSY34PXuJAqbliQihEPtdTDk40MSynfLuwZHdRPnXbC0C6VjQNf74BOZFdggtg8GwZhZdBWvKL7XHIVWKfOMkh/HYUROY8/0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1731084832;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=+Ud2Wm0N9rBWA5JqD8doezigwT2uqET+VTznhZjAgh0=;
	b=EML1E7QNShCWastiTijne32mVrnn3qFFsmBIAi4841Os7zoO6t0f/jF16PUmmi+o
	2uLnjTKlfLxHBZ/9QWEw7YKcc3PFCo3mEIoHSiiv3cMGNTjXL/Msudldjy8cWnkF3Bn
	+cpN0tQ+AxU9Ye10reiLJRqJnMRMqfkpZQY5U51g=
Received: by mx.zohomail.com with SMTPS id 1731084830585742.5608083703597;
	Fri, 8 Nov 2024 08:53:50 -0800 (PST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Andy Yan <andyshrk@163.com>
Cc: linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko.stuebner@cherry.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>, Chris Morgan <macromorgan@hotmail.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v2 1/3] vop2: Add clock resets support
Date: Fri, 08 Nov 2024 11:53:47 -0500
Message-ID: <1901885.tdWV9SEqCh@trenzalore>
In-Reply-To: <4605629.LvFx2qVVIh@trenzalore>
References: <20240522185924.461742-1-detlev.casanova@collabora.com>
 <6a3d3fb1.3755.18fa893239e.Coremail.andyshrk@163.com>
 <4605629.LvFx2qVVIh@trenzalore>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_085420_604499_04C51F7B 
X-CRM114-Status: GOOD (  26.15  )
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

T24gRnJpZGF5LCA4IE5vdmVtYmVyIDIwMjQgMTE6Mzk6NTcgRVNUIERldGxldiBDYXNhbm92YSB3
cm90ZToKPiBPbiBUaHVyc2RheSwgMjMgTWF5IDIwMjQgMjM6MDk6MjYgRVNUIEFuZHkgWWFuIHdy
b3RlOgo+ID4gSGkgRGV0bGV277yMCj4gPiAKPiA+IEF0IDIwMjQtMDUtMjMgMDI6NTc6NDgsICJE
ZXRsZXYgQ2FzYW5vdmEiIDxkZXRsZXYuY2FzYW5vdmFAY29sbGFib3JhLmNvbT4KPiAKPiB3cm90
ZToKPiA+ID5BdCB0aGUgZW5kIG9mIGluaXRpYWxpemF0aW9uLCBlYWNoIFZQIGNsb2NrIG5lZWRz
IHRvIGJlIHJlc2V0IGJlZm9yZQo+ID4gPnRoZXkgY2FuIGJlIHVzZWQuCj4gPiA+Cj4gPiA+RmFp
bGluZyB0byBkbyBzbyBjYW4gcHV0IHRoZSBWT1AgaW4gYW4gdW5kZWZpbmVkIHN0YXRlIHdoZXJl
IHRoZQo+ID4gPmdlbmVyYXRlZCBIRE1JIHNpZ25hbCBpcyBlaXRoZXIgbG9zdCBvciBub3QgbWF0
Y2hpbmcgdGhlIHNlbGVjdGVkIG1vZGUuCj4gPiAKPiA+IFdvdWxkIHlvdSBwbGVhc2UgcHJvdmlk
ZSBhIGRldGFpbGVkIGRlc2NyaXB0aW9uIG9mIHlvdXIgdGVzdCBjYXNlPwo+IAo+IFRoZSB0ZXN0
IGNhc2Ugd2FzIHRvIHN3aXRjaCBtb2RlcyAodXNpbmcgbW9kZXRlc3QpIHVudGlsIHRoZSBIRE1J
IHNpZ25hbCB3YXMKPiBsb3N0IG9uIHRoZSBUViBzaWRlLiBJdCB3YXMgYWxzbyBwb3NzaWJsZSB0
byBkZXRlY3QgdGhlIGlzc3VlIGJ5IHRyYWNraW5nCj4gdGhlIEhETUkgVFggQ29udHJvbGxlcl9W
SURFT19NT05JVE9SX1NUQVRVU1sxLTZdIHJlZ2lzdGVycywgZXNwZWNpYWxseSBhdAo+IGFkZHJl
c3MgMHg4OTAsIHdoZXJlIHRoZSByZWdpc3RlciB3b3VsZCB0YWtlIHRoZSB2YWx1ZSBgMHgwMDAw
MDE4Y2AuCj4gCj4gQWZ0ZXIgYWRkaW5nIHRoZXNlIHJlc2V0cywgdGhlIGlzc3VlIGNhbm5vdCBi
ZSByZXByb2R1Y2VkLiBJIGNhbiBzaGFyZSBhCj4gc2NyaXB0IHRoYXQgcmVwcm9kdWNlZCB0aGlz
IGluIHRoZSBwYXN0IChidXQgdGhpcyBpcyBhbiBvbGQgcGF0Y2hzZXQgbm93LCBzbwo+IHRoaW5n
cyBjb3VsZCBoYXZlIGNoYW5nZWQpCj4gCj4gPiA+U2lnbmVkLW9mZi1ieTogRGV0bGV2IENhc2Fu
b3ZhIDxkZXRsZXYuY2FzYW5vdmFAY29sbGFib3JhLmNvbT4KPiA+ID4tLS0KPiA+ID4KPiA+ID4g
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMgfCAzMCArKysrKysr
KysrKysrKysrKysrKwo+ID4gPiAxIGZpbGUgY2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKQo+ID4g
Pgo+ID4gPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X3ZvcDIuYwo+ID4gPmIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3Ay
LmMgaW5kZXgKPiA+ID5mZGQ3NjhiYmQ0ODdjLi5lODFhNjcxNjFkMjlhIDEwMDY0NAo+ID4gPi0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4gPiA+Kysr
IGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPiA+ID5AQCAt
MTcsNiArMTcsNyBAQAo+ID4gPgo+ID4gPiAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNl
Lmg+Cj4gPiA+ICNpbmNsdWRlIDxsaW51eC9wbV9ydW50aW1lLmg+Cj4gPiA+ICNpbmNsdWRlIDxs
aW51eC9yZWdtYXAuaD4KPiA+ID4KPiA+ID4rI2luY2x1ZGUgPGxpbnV4L3Jlc2V0Lmg+Cj4gPiA+
Cj4gPiA+ICNpbmNsdWRlIDxsaW51eC9zd2FiLmg+Cj4gPiA+IAo+ID4gPiAjaW5jbHVkZSA8ZHJt
L2RybS5oPgo+ID4gPgo+ID4gPkBAIC0xNTcsNiArMTU4LDcgQEAgc3RydWN0IHZvcDJfd2luIHsK
PiA+ID4KPiA+ID4gc3RydWN0IHZvcDJfdmlkZW9fcG9ydCB7Cj4gPiA+IAo+ID4gPiAJc3RydWN0
IGRybV9jcnRjIGNydGM7Cj4gPiA+IAlzdHJ1Y3Qgdm9wMiAqdm9wMjsKPiA+ID4KPiA+ID4rCXN0
cnVjdCByZXNldF9jb250cm9sICpkY2xrX3JzdDsKPiA+ID4KPiA+ID4gCXN0cnVjdCBjbGsgKmRj
bGs7Cj4gPiA+IAl1bnNpZ25lZCBpbnQgaWQ7Cj4gPiA+IAljb25zdCBzdHJ1Y3Qgdm9wMl92aWRl
b19wb3J0X2RhdGEgKmRhdGE7Cj4gPiA+Cj4gPiA+QEAgLTE5MTUsNiArMTkxNywyNiBAQCBzdGF0
aWMgaW50IHVzX3RvX3ZlcnRpY2FsX2xpbmUoc3RydWN0Cj4gPiA+ZHJtX2Rpc3BsYXlfbW9kZSAq
bW9kZSwgaW50IHVzKT4KPiA+ID4KPiA+ID4gCXJldHVybiB1cyAqIG1vZGUtPmNsb2NrIC8gbW9k
ZS0+aHRvdGFsIC8gMTAwMDsKPiA+ID4gCj4gPiA+IH0KPiA+ID4KPiA+ID4rc3RhdGljIGludCB2
b3AyX2Nsa19yZXNldChzdHJ1Y3Qgdm9wMl92aWRlb19wb3J0ICp2cCkKPiA+ID4rewo+ID4gPisJ
c3RydWN0IHJlc2V0X2NvbnRyb2wgKnJzdGMgPSB2cC0+ZGNsa19yc3Q7Cj4gPiA+KwlzdHJ1Y3Qg
dm9wMiAqdm9wMiA9IHZwLT52b3AyOwo+ID4gPisJaW50IHJldDsKPiA+ID4rCj4gPiA+KwlpZiAo
IXJzdGMpCj4gPiA+KwkJcmV0dXJuIDA7Cj4gPiAKPiA+IEluIGZhY3QsIHRoaXMgY2hlY2sgaXMg
bm90IG5lY2Vzc2FyeSBoZXJlLiAgVGhlIGZvbGxvd2luZyByZXNldCBjb250cm9sCj4gPiBhcGkK
PiA+IHdpbGwgY2hlY2sgZm9yIE5VTEwgcG9pbnRlcgo+IAo+IEFncmVlZCwgSSdsbCBkbyBhIHJl
YmFzZWQgdjMgYW5kIHJlbW92ZSB0aGUgY2hlY2suCgpBY3R1YWxseSwgcmUtdGhpbmtpbmcgYWJv
dXQgaXQsIHRoZSBjaGVjayBpcyBkb25lIHRvIGF2b2lkIHRoZSB1ZGVsYXkoMTApOyBpZiAKdGhl
cmUgaXMgbm8gcmVzZXRzIGNvbmZpZ3VyZWQsIHNvIEknZCByYXRoZXIga2VlcCBpdCB0aGF0IHdh
eS4KCj4gPiA+Kwo+ID4gPisJcmV0ID0gcmVzZXRfY29udHJvbF9hc3NlcnQocnN0Yyk7Cj4gPiA+
KwlpZiAocmV0IDwgMCkKPiA+ID4rCQlkcm1fd2Fybih2b3AyLT5kcm0sICJmYWlsZWQgdG8gYXNz
ZXJ0IHJlc2V0XG4iKTsKPiA+ID4rCXVkZWxheSgxMCk7Cj4gPiA+KwlyZXQgPSByZXNldF9jb250
cm9sX2RlYXNzZXJ0KHJzdGMpOwo+ID4gPisJaWYgKHJldCA8IDApCj4gPiA+KwkJZHJtX3dhcm4o
dm9wMi0+ZHJtLCAiZmFpbGVkIHRvIGRlYXNzZXJ0IHJlc2V0XG4iKTsKPiA+ID4rCj4gPiA+Kwly
ZXR1cm4gcmV0Owo+ID4gPit9Cj4gPiA+Kwo+ID4gPgo+ID4gPiBzdGF0aWMgdm9pZCB2b3AyX2Ny
dGNfYXRvbWljX2VuYWJsZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCj4gPiA+IAo+ID4gPiAJCQkJ
ICAgIHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlCj4gCj4gKnN0YXRlKQo+IAo+ID4gPiB7Cj4gPiA+
Cj4gPiA+QEAgLTIwNTUsNiArMjA3Nyw4IEBAIHN0YXRpYyB2b2lkIHZvcDJfY3J0Y19hdG9taWNf
ZW5hYmxlKHN0cnVjdCBkcm1fY3J0Ywo+ID4gPipjcnRjLD4KPiA+ID4KPiA+ID4gCXZvcDJfdnBf
d3JpdGUodnAsIFJLMzU2OF9WUF9EU1BfQ1RSTCwgZHNwX2N0cmwpOwo+ID4gPgo+ID4gPisJdm9w
Ml9jbGtfcmVzZXQodnApOwo+ID4gPisKPiA+ID4KPiA+ID4gCWRybV9jcnRjX3ZibGFua19vbihj
cnRjKTsKPiA+ID4gCQo+ID4gPiAJdm9wMl91bmxvY2sodm9wMik7Cj4gPiA+Cj4gPiA+QEAgLTI3
MDYsNiArMjczMCwxMiBAQCBzdGF0aWMgaW50IHZvcDJfY3JlYXRlX2NydGNzKHN0cnVjdCB2b3Ay
ICp2b3AyKQo+ID4gPgo+ID4gPiAJCXZwLT5kYXRhID0gdnBfZGF0YTsKPiA+ID4gCQkKPiA+ID4g
CQlzbnByaW50ZihkY2xrX25hbWUsIHNpemVvZihkY2xrX25hbWUpLCAiZGNsa192cCVkIiwgdnAt
Cj4gPgo+ID5pZCk7Cj4gPgo+ID4gPisJCXZwLT5kY2xrX3JzdCA9IGRldm1fcmVzZXRfY29udHJv
bF9nZXRfb3B0aW9uYWwodm9wMi0KPiA+Cj4gPmRldiwgZGNsa19uYW1lKTsKPiA+Cj4gPiA+KwkJ
aWYgKElTX0VSUih2cC0+ZGNsa19yc3QpKSB7Cj4gPiA+KwkJICAgICAgICBkcm1fZXJyKHZvcDIt
PmRybSwgImZhaWxlZCB0byBnZXQgJXMgcmVzZXRcbiIsCj4gCj4gZGNsa19uYW1lKTsKPiAKPiA+
ID4rCQkgICAgICAgIHJldHVybiBQVFJfRVJSKHZwLT5kY2xrX3JzdCk7Cj4gPiA+KwkJfQo+ID4g
PisKPiA+ID4KPiA+ID4gCQl2cC0+ZGNsayA9IGRldm1fY2xrX2dldCh2b3AyLT5kZXYsIGRjbGtf
bmFtZSk7Cj4gPiA+IAkJaWYgKElTX0VSUih2cC0+ZGNsaykpIHsKPiA+ID4gCQkKPiA+ID4gCQkJ
ZHJtX2Vycih2b3AyLT5kcm0sICJmYWlsZWQgdG8gZ2V0ICVzXG4iLAo+IAo+IGRjbGtfbmFtZSk7
CgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
