Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60386C7619A
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Mar 2023 09:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qd5irRdoYn2UkjDruV36gIorRACgan5bMnl/aCSRky4=; b=NHenNo+0ion64H
	DjieqUAAHSSjMHTq+/HICKdplohUjgB+YMkUIvbbqVrB8DsMe8o7M8VpZbRUL3iONg3eE76wRKEWq
	DMalR9DIFk2pDePlkwfM0jtMTLREaye0FNSLUuPZm9qHo4WR/F7yEEx1SI3dnFjtQShWi5rvFi8wW
	qYg4bV5ikfzqpqtg89ICDXPdtJw+vKbLB07pKfM0TF7Jf+lwJVepKxjzVO9zre5P48mw2tFOZGDgi
	wdX3kMhtXuaJ8MBw+UO60TmjOqOseasvOh5DAkCYPJz+fglGxG0WbS9ynW1zrX5IRZ3fFOw2yAn99
	+p8EGLSi6jjTGTfmfo8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgit5-00AQSv-1b;
	Mon, 27 Mar 2023 09:11:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgit2-00AQRs-1S;
	Mon, 27 Mar 2023 09:11:33 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pgisq-0003FS-Jd; Mon, 27 Mar 2023 11:11:20 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Javier Martinez Canillas <javierm@redhat.com>,
 linux-kernel@vger.kernel.org, Jarrah <kernel@undef.tools>
Cc: Robert Mader <robert.mader@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Peter Robinson <pbrobinson@gmail.com>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Ondrej Jirman <megi@xff.cz>,
 Martijn Braam <martijn@brixit.nl>,
 Kamil =?utf-8?B?VHJ6Y2nFhHNraQ==?= <ayufan@ayufan.eu>,
 Caleb Connolly <kc@postmarketos.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject:  Re: [PATCH v2] arm64: dts: rk3399-pinephone-pro: Add internal display support
Date: Mon, 27 Mar 2023 11:11:19 +0200
Message-ID: <8197476.T7Z3S40VBb@diego>
In-Reply-To: <e4f82c1e-621e-7e94-497d-8c579264f996@undef.tools>
References:  <20230327074136.1459212-1-javierm@redhat.com>
 <e4f82c1e-621e-7e94-497d-8c579264f996@undef.tools>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_021132_487169_4897356E 
X-CRM114-Status: GOOD (  14.81  )
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

QW0gTW9udGFnLCAyNy4gTcOkcnogMjAyMywgMDk6NTU6MTUgQ0VTVCBzY2hyaWViIEphcnJhaDoK
PiBIaSBKYXZpZXIsCj4gCj4gT24gMy8yNy8yMyAxODo0MSwgSmF2aWVyIE1hcnRpbmV6IENhbmls
bGFzIHdyb3RlOgo+ID4gRnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4gPgo+ID4g
VGhlIHBob25lJ3MgZGlzcGxheSBpcyB1c2luZyBhIEhhbm5zdGFyIExDRCBwYW5lbC4gU3VwcG9y
dCBpdCBieSBhZGRpbmcgYQo+ID4gcGFuZWwgRFQgbm9kZSBhbmQgYWxsIG5lZWRlZCBub2RlcyAo
YmFja2xpZ2h0LCBNSVBJIERTSSwgcmVndWxhdG9ycywgZXRjKS4KPiA+Cj4gPiBTaWduZWQtb2Zm
LWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPiA+IENvLWRldmVsb3BlZC1ieTogTWFy
dGlqbiBCcmFhbSA8bWFydGlqbkBicml4aXQubmw+Cj4gPiBDby1kZXZlbG9wZWQtYnk6IEthbWls
IFRyemNpxYRza2kgPGF5dWZhbkBheXVmYW4uZXU+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKYXZpZXIg
TWFydGluZXogQ2FuaWxsYXMgPGphdmllcm1AcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4KPiA+IENo
YW5nZXMgaW4gdjI6Cj4gPiAtIERyb3AgdG91Y2hzY3JlZW4gbm9kZSBiZWNhdXNlIHVzZWQgdGhl
IHdyb25nIGNvbXBhdGlibGUgKE9uZHJlaiBKaXJtYW4pLgo+IAo+IAo+IEFueSByZWFzb24gbm90
IHRvIGluY2x1ZGUgdGhpcyB3aXRoIHRoZSBjb3JyZWN0IGNvbXBhdGlibGUgc3RyaW5nPyBJdCdz
IAo+IGJlZW4gYXZhaWxhYmxlIHNpbmNlIAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8y
MDIyMDgxMzA0MzgyMS45OTgxLTEta2VybmVsQHVuZGVmLnRvb2xzLy4gCj4gU3dhcHBpbmcgb3V0
IGd0OTE3cyBmb3IgZ3QxMTU4IGluIHRoZSBub2RlIGZyb20geW91ciBwcmV2aW91cyBwYXRjaCAK
PiBzaG91bGQgYmUgZW5vdWdoLgoKSnVzdCB3b25kZXJpbmcgaWYgSSdtIGJsaW5kLCBKYXZpZXIn
cyBwYXRjaCBkb2Vzbid0IGNvbnRhaW4gYW55IHRvdWNoc2NyZWVuCmNvbnRyb2xsZXIgKGhhdmVu
J3QgZm91bmQgbmVpdGhlciBndDkqIG9yIGd0MTEqIG1lbnRpb25lZCB0aGVyZSksIHNvCkknbSBp
bmNsaW5lZCB0byBnbyB3aXRoIHRoZSAidG91Y2hzY3JlZW4gY2FuIGJlIGFkZGVkIGxhdGVyIiB0
aGluZy4KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
