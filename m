Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4924CC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 16:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0MmbAIaliVYEhclpLKGrBZkxOheAKoP1x6UYmmWLuOE=; b=YuiYpCy4Fx8r3v
	i5ZAtKml294GHuxBfOA66q36MNdYhSgkGBZxMNIyYo8VawGM6P5gMCz0wTZRrNGIWE4PimYxQlPVy
	DvkMVVgK59Df9YA407XG+zrjfojR5AXbtUMz3aQNhVZkeggTJvLQPs7ywnq8Lf8YcXid/3jCdHMwI
	K7enlRHagOgTjQcPk+TeXkNxFqpXz+BKp/6FpeTSMFJ4i+p4QncQVjjyQN0t5dq3/QhZEztAdrow3
	232vOMPZPUJPoATsklOpFLr0F4iKgBKWS+ctK4xQb7DRhQYQtFBUeHew+mnRKfXIobqCTfGVRwksu
	7IseeYZkFMMFRDrWMhew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8246-00H5Hn-1I; Wed, 21 Dec 2022 16:35:34 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p822o-00H4eb-N3; Wed, 21 Dec 2022 16:34:16 +0000
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net [192.222.136.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BE2DB6602CC7;
	Wed, 21 Dec 2022 16:34:02 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671640444;
	bh=de++j1P3f4DdBz0e3wcQHHBTm9Sh0a81SDLOULf9eDA=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=lDY7glmSygZPvPoifdftqUhARFQu3TJNdaGP8AentuXTYxeM12jpfLEnDIuga2BIb
	 P6PYeqoWw8fMJVqG9WbHOwuztg/ExxGH1et4OMHjCIT8TTk5M5EaovArgTu86L8Ynq
	 tbup4nDaRIVtWD1nLp88vzQInSoXFJx4hfSiQjiZ96o9Orpwb8vEq2WIuPNNm3sz8g
	 AVELc2x/qEjpn9SskC3BqLixfA/bmIlJjEqe6BbxUQLoResV1naERPF06/s6MnpxiX
	 LNkF8bfO7HODwaZ1k6qYM3j4qtoJ6MBY1AucYVZBlPPZbgtPlsWzH2dJVvmIobTH3K
	 UvWQdEvFIQXFw==
Message-ID: <06799f6b9f1c9422b8f2c7a5eb484f06fbd41fb6.camel@collabora.com>
Subject: Re: [PATCH v1 0/9] AV1 stateless decoder for RK3588
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Benjamin Gaignard
	 <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 daniel.almeida@collabora.com,  nicolas.dufresne@collabora.co.uk,
 linux-media@vger.kernel.org,  linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,  kernel@collabora.com
Date: Wed, 21 Dec 2022 11:33:53 -0500
In-Reply-To: <CAAEAJfBP_D65kjHbwYP+LWfWKfzFtHtWo+3bDcbdO8tPtBurUA@mail.gmail.com>
References: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
	 <CAAEAJfBP_D65kjHbwYP+LWfWKfzFtHtWo+3bDcbdO8tPtBurUA@mail.gmail.com>
User-Agent: Evolution 3.46.2 (3.46.2-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_083415_061723_F2422F3E 
X-CRM114-Status: GOOD (  20.28  )
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

TGUgbHVuZGkgMTkgZMOpY2VtYnJlIDIwMjIgw6AgMTg6MDcgLTAzMDAsIEV6ZXF1aWVsIEdhcmNp
YSBhIMOpY3JpdMKgOgo+IEhpIEJlbmphbWluLAo+IAo+IE9uIE1vbiwgRGVjIDE5LCAyMDIyIGF0
IDEyOjU2IFBNIEJlbmphbWluIEdhaWduYXJkCj4gPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9y
YS5jb20+IHdyb3RlOgo+ID4gCj4gPiBUaGlzIHNlcmllcyBpbXBsZW1lbnQgQVYxIHN0YXRlbGVz
cyBkZWNvZGVyIGZvciBSSzM1ODggU29DLgo+ID4gVGhlIGhhcndhcmUgc3VwcG9ydCA4IGFuZCAx
MCBiaXRzIGJpdHN0cmVhbXMgdXAgdG8gNzY4MHg0MzIwLgo+ID4gQVYxIGZlYXR1cmUgbGlrZSBm
aWxtIGdyYWluIG9yIHNjYWxpbmcgYXJlIGRvbmUgYnkgdGhlIHBvc3Rwcm9jZXNzb3IuCj4gPiBU
aGUgZHJpdmVyIGNhbiBwcm9kdWNlIE5WMTJfNEw0IGFuZCBOVjEyIHBpeGVsIGZvcm1hdHMuCj4g
PiBBIG5hdGl2ZSAxMGJpdHMgTlYxMl80TDQgZm9ybWF0IGlzIHBvc3NpYmxlIGJ1dCBuZWVkIG1v
cmUgaW52ZXN0aWdhdGlvbgo+ID4gdG8gYmUgY29tcGxldGx5IGRvY3VtZW50ZWQgYW5kIGVuYWJs
ZWQuCj4gPiAKPiA+IEl0IGlzIGJhc2VkIG9uIERhbmllbCdzICJbUkZDLHYzXSBtZWRpYTogQWRk
IEFWMSB1QVBJIiBbMV0gcGF0Y2hlcyBhbmQKPiA+IFNlYmFzdGlhbidzIGRldmljZS10cmVlIHBh
dGNoZXMgZm9yIFJLMzU4OC4KPiA+IAo+IAo+IEkgdGhvdWdodCB0aGUgQVYxIGRlY29kZXIgaW4g
UkszNTg4IHdhcyByZWFsbHkgYSBzZXBhcmF0ZSBoYXJkd2FyZQo+IGZyb20gdGhlIEhhbnRybyBH
MS9HMi4KPiAKPiBTaG91bGRuJ3QgdGhpcyBuZWVkIGEgbmV3IGRyaXZlciBmb3IgdGhpcyBuZXcg
aGFyZHdhcmU/CgpBcyBkaXNjdXNzZWQgb24gSVJDLCB3aGVuZXZlciB3ZSBlbmFibGUgSC4yNjQg
YW5kIEhFVkMgb24gVkM5MDAwIGNvcmVzLCB3ZSB3aWxsCmJlbmVmaXQgZnJvbSBzaGFyaW5nIHNv
bWUgdmVyeSBzcGVjaWZpYyBjb2RlIHdpdGggdGhlIEcxIGFuZCBHMiAocmVzcGVjdGl2ZWx5KS4K
VGhvdWdoIGZvciBub3csIHRoZXJlIGlzIG5vIG92ZXJsYXAgYXMgdGhlIHNpbmdsZSBjb3JlIG9u
IFJLMzU4OCBoYXZlIGFsbCBvdGhlcgpjb2RlY3MgZGlzYWJsZWQgYnkgZnVzZS4KCj4gCj4gVGhh
bmtzIQo+IEV6ZXF1aWVsCj4gCj4gPiBUaGUgZnVsbCBicmFuY2ggY2FuIGJlIGZvdW5kIGhlcmU6
Cj4gPiBodHRwczovL2dpdGxhYi5jb2xsYWJvcmEuY29tL2xpbnV4L2Zvci11cHN0cmVhbS8tL2Nv
bW1pdHMvcmszNTg4X2F2MV9kZWNvZGVyX3YxCj4gPiAKPiA+IEZsdXN0ZXIgc2NvcmUgaXM6IDE1
MS8yMzkgd2hpbGUgdGVzdGluZyBBVjEtVEVTVC1WRUNUT1JTIHdpdGggR1N0cmVhbWVyLUFWMS1W
NEwyU0wtR3N0MS4wLgo+ID4gVGhlIGZhaWxpbmcgdGVzdHMgYXJlOgo+ID4gLSAxMGJpdHMgYml0
c3RyZWFtIGJlY2F1c2UgMTBiaXRzIG91dHB1dCBmb3JtYXRzIGFyZW4ndCB5ZXQgaW1wbGVtZW50
ZWQuCj4gPiAtIHRoZSAyIHRlc3RzIHdpdGggMiBzcGF0aWFsIGxheWVyczogZmV3IGVycm9ycyBp
biBsdW1hL2Nocm9tYSB2YWx1ZXMKPiA+IC0gdGVzdHMgd2l0aCByZXNvbHV0aW9uIDwgaGFyZHdh
cmUgbGltaXQgKDY0eDY0KQo+ID4gCj4gPiBCZW5qYW1pbgo+ID4gCj4gPiBCZW5qYW1pbiBHYWln
bmFyZCAoOSk6Cj4gPiAgIGR0LWJpbmRpbmdzOiBtZWRpYTogcm9ja2NoaXAtdnB1OiBBZGQgcmsz
NTg4IHZwdSBjb21wYXRpYmxlCj4gPiAgIG1lZGlhOiB2ZXJpc2lsaWNvbjogQWRkIEFWMSBkZWNv
ZGVyIG1vZGUgYW5kIGNvbnRyb2xzCj4gPiAgIG1lZGlhOiB2ZXJpc2lsaWNvbjogU2F2ZSBiaXQg
ZGVwdGggZm9yIEFWMSBkZWNvZGVyCj4gPiAgIG1lZGlhOiB2ZXJpc2lsaWNvbjogQ2hlY2sgQVYx
IGJpdHN0cmVhbXMgYml0IGRlcHRoCj4gPiAgIG1lZGlhOiB2ZXJpc2lsaWNvbjogQ29tcHV0ZSBt
b3Rpb24gdmVjdG9ycyBzaXplIGZvciBBVjEgZnJhbWVzCj4gPiAgIG1lZGlhOiB2ZXJpc2lsaWNv
bjogQWRkIEFWMSBlbnRyb3B5IGhlbHBlcnMKPiA+ICAgbWVkaWE6IHZlcmlzaWxpY29uOiBBZGQg
Um9ja2NoaXAgQVYxIGRlY29kZXIKPiA+ICAgbWVkaWE6IHZlcmlzaWxpY29uOiBBZGQgZmlsbSBn
cmFpbiBmZWF0dXJlIHRvIEFWMSBkcml2ZXIKPiA+ICAgbWVkaWE6IHZlcmlzaWxpY29uOiBFbmFi
bGUgQVYxIGRlY29kZXIgb24gcmszNTg4Cj4gPiAKPiA+ICAuLi4vYmluZGluZ3MvbWVkaWEvcm9j
a2NoaXAtdnB1LnlhbWwgICAgICAgICAgfCAgICAxICsKPiA+ICBkcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL01ha2VmaWxlICAgfCAgICAzICsKPiA+ICBkcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyby5oICAgfCAgICA1ICsKPiA+ICAuLi4vbWVkaWEvcGxh
dGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jICAgfCAgIDU0ICsKPiA+ICAuLi4vbWVkaWEv
cGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2h3LmggICAgfCAgMTAyICsKPiA+ICAuLi4vcGxh
dGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Bvc3Rwcm9jLmMgICAgfCAgICAzICsKPiA+ICAuLi4v
bWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYyAgfCAgICA1ICsKPiA+ICAu
Li4vdmVyaXNpbGljb24vcm9ja2NoaXBfYXYxX2VudHJvcHltb2RlLmMgICAgfCA0NTM2ICsrKysr
KysrKysrKysrKysrCj4gPiAgLi4uL3ZlcmlzaWxpY29uL3JvY2tjaGlwX2F2MV9lbnRyb3B5bW9k
ZS5oICAgIHwgIDI3MiArCj4gPiAgLi4uL3ZlcmlzaWxpY29uL3JvY2tjaGlwX2F2MV9maWxtZ3Jh
aW4uYyAgICAgIHwgIDQwMSArKwo+ID4gIC4uLi92ZXJpc2lsaWNvbi9yb2NrY2hpcF9hdjFfZmls
bWdyYWluLmggICAgICB8ICAgMzYgKwo+ID4gIC4uLi92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHU5
ODFfaHdfYXYxX2RlYy5jICB8IDIyODAgKysrKysrKysrCj4gPiAgLi4uL3ZlcmlzaWxpY29uL3Jv
Y2tjaGlwX3ZwdTk4MV9yZWdzLmggICAgICAgIHwgIDQ3NyArKwo+ID4gIC4uLi9wbGF0Zm9ybS92
ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHVfaHcuYyAgICB8ICAxMTYgKwo+ID4gIDE0IGZpbGVzIGNo
YW5nZWQsIDgyOTEgaW5zZXJ0aW9ucygrKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX2F2MV9lbnRyb3B5bW9kZS5jCj4g
PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24v
cm9ja2NoaXBfYXYxX2VudHJvcHltb2RlLmgKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF9hdjFfZmlsbWdyYWluLmMKPiA+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9y
b2NrY2hpcF9hdjFfZmlsbWdyYWluLmgKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHU5ODFfaHdfYXYxX2RlYy5jCj4g
PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24v
cm9ja2NoaXBfdnB1OTgxX3JlZ3MuaAo+ID4gCj4gPiAtLQo+ID4gMi4zNC4xCj4gPiAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
