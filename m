Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A4E9C7115D
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 20:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W86mUv4tNkWJVJGio0+bRBcDIdRuUTptKe848bKevEU=; b=OUVBAlBibYz6W0
	S50Zt0S12A3EzDzGk2A15NcynShiy1+tyD7n+Q1sDE/MlmbnDiju+bQwJJ6tnxiirTblabcc2LMcY
	esFqtJOg/Ky1Cg4stXFk3KHgrxYXV0LnPKRdz8jfUMq2PPorJOoxERj+AUh2QFyIcS2/QrYd3FPig
	RjSc8sUBCu49C2lXi5xD/UjhmI80FaLNQuSbfxv+l/hjqP4cbN4/488KZDWdMhXTQ0vWph9sfhFr9
	B4iAfYidWk1ya9ztTr+KxRn4KuEDQXhoqImkRKQayJXhXSyMTqX6gM9qyv63gPelRZqPCkEoMefn7
	3BWRDB1NdCZ6XYHjvcKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSMC3-0000000EFZa-3bIk;
	Thu, 19 Jun 2025 20:49:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSLc5-0000000EBVB-3SNW;
	Thu, 19 Jun 2025 20:11:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=lKt8A6+QjYnjFL3np6K20XlH4x7ehiuuzMqxVDQaqE0=; b=0nF/Qs58MprQxQpPF81gdBhcaM
	ZiPwdbLNIv9i7HdS7fcXKCxdpfc1ap8teHa7zc20uFIgBjGOkJ8YWr5BSc+n1ae3FATDOrzK7wPBM
	fg/gJjxdhtGgMywi3Sbz9+IRBBR8mTOndTBfiE9Vd1ephKjaeN6ThPY8UK226SvDhHu37wBWAzcuh
	3O9+SlEoKGaBsw5DuMCjcEeX1ny6eb8odrrp2e3cbUUbiJFVf+UH30FPG+9Lussjfa9DJ8kh0xvUu
	FWVolb6GLAWqFAs4zg8hvWQAPfMX/RXldvaxaCzwP4gxN4Z4Z9Rg+ut3x+Cl6CfyhM56P5+uNVMDm
	HytK+xPQ==;
Received: from 85-207-219-154.static.bluetone.cz ([85.207.219.154] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uSLby-0006tx-Lj; Thu, 19 Jun 2025 22:11:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Michael Riesch <michael.riesch@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/5] dt-bindings: phy: rockchip-inno-csi-dphy: add rk3588 variant
Date: Thu, 19 Jun 2025 22:11:49 +0200
Message-ID: <17533727.geO5KgaWL5@phil>
In-Reply-To: <8ba2f458-4a66-44f6-8528-4654cfe379ff@collabora.com>
References: <20250616-rk3588-csi-dphy-v1-0-84eb3b2a736c@collabora.com>
 <0f2b8934-9b3d-4913-b734-b4fe7f0c7d0a@linaro.org>
 <8ba2f458-4a66-44f6-8528-4654cfe379ff@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_131157_864975_B71BAC86 
X-CRM114-Status: GOOD (  22.15  )
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

QW0gTWl0dHdvY2gsIDE4LiBKdW5pIDIwMjUsIDA4OjMyOjI1IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTWljaGFlbCBSaWVzY2g6Cj4gSGkgTmVpbCwKPiAKPiBUaGFua3Mg
Zm9yIHlvdXIgY29tbWVudHMhCj4gCj4gT24gNi8xNy8yNSAxMTozMSwgbmVpbC5hcm1zdHJvbmdA
bGluYXJvLm9yZyB3cm90ZToKPiA+IE9uIDE3LzA2LzIwMjUgMTA6NTQsIE1pY2hhZWwgUmllc2No
IHZpYSBCNCBSZWxheSB3cm90ZToKPiA+PiBGcm9tOiBNaWNoYWVsIFJpZXNjaCA8bWljaGFlbC5y
aWVzY2hAY29sbGFib3JhLmNvbT4KPiA+Pgo+ID4+IFRoZSBSb2NrY2hpcCBSSzM1ODggdmFyaWFu
dCBvZiB0aGUgQ1NJLTIgRFBIWSBmZWF0dXJlcyB0d28gcmVzZXQgbGluZXMuCj4gPj4gQWRkIHRo
ZSB2YXJpYW50IGFuZCBhbGxvdyBmb3IgdGhlIGFkZGl0aW9uYWwgcmVzZXQuCj4gPiAKPiA+IE5v
IG5hbWVzIGZvciB0aGUgbmV3IHJlc2V0cyBvbiB0aGUgUkszNTg4ID8KPiAKPiBJIGxlZnQgdGhl
IG5hbWVzIGF3YXkgYmVjYXVzZSBUQkggSSBkb24ndCBzZWUgdGhlIHZhbHVlIGluIHRoZW0gKGlu
IHRoYXQKPiBjYXNlKS4KPiAKPiBEb3duc3RyZWFtIHVzZXMgcmVzZXQtbmFtZXMgPSAic3JzdF9j
c2lwaHkwIiwgInNyc3RfcF9jc2lwaHkwIjsgYW5kCj4gdGhlcmUgaXMgbm8gYmV0dGVyIGRlc2Ny
aXB0aW9uLiBPbmUgY291bGQgZ3Vlc3MgdGhhdCB0aGUgc2Vjb25kIHJlc2V0Cj4gY29ycmVzcG9u
ZHMgdG8gImFwYiIgYnV0IHRoaXMgaXMganVzdCBndWVzc2luZyBhbmQgd2Ugd291bGQgc3RpbGwg
aGF2ZQo+IHRvIGd1ZXNzL2ZpbmQgYSBwcm9wZXIgbmFtZSBmb3IgdGhlIGZpcnN0IHJlc2V0Lgo+
IAo+IEFtYXppbmdseSB0aGUgbWFpbmxpbmUgZHJpdmVyIGRvZXMgbm90IHNlZW0gdG8gZG8gYW55
dGhpbmcgd2l0aCB0aGUKPiByZXNldHMgKHVubGVzcyBJIG92ZXJsb29rZWQgc29tZSBpbXBsaWNp
dCBtYWdpYykuIERvd25zdHJlYW0gZG9lcyBhCj4gc2ltcGxlIHJlc2V0X2NvbnRyb2xfe2Fzc2Vy
dCxkZWFzc2VydH0gYmVmb3JlIGNvbmZpZ3VyaW5nIHRoZSBQSFkuIE5vdwo+IGlmIHRoZSBkaWZm
ZXJlbnQgcmVzZXRzIGFyZSBoYW5kbGVkIGluIGJ1bGsgbW9kZSwgZG9lcyBpdCByZWFsbHkgbWFr
ZQo+IHNlbnNlIHRvIGFkZHJlc3MgZWFjaCByZXNldCBpbmRpdmlkdWFsbHk/CgppdCBtaWdodCBu
b3QgbWFrZSBzZW5zZSBub3csIGJ1dCBwb3NzaWJseSBpbiB0aGUgZnV0dXJlPwoKQSBiaW5kaW5n
IGFuZCB0aGUgYXR0YWNoZWQgZGV2aWNldHJlZXMgYXJlIG1lYW50IHRvIGJlICJmb3JldmVyIiwg
aS5lLiBhCm5ldyBrZXJuZWwgX3Nob3VsZF8gc3VwcG9ydCBhbGwgdGhvc2Ugb2xkIGRldmljZXRy
ZWVzIHlvdSB0aHJvdyBhdCBpdCAtIAppZiB0aGV5IGNvbmZvcm0gdG8gKGF0IHNvbWUgdGltZSkg
ZXN0YWJsaXNoZWQgYmluZGluZ3MuCgpTbyB3aGlsZSBhbGwgZHJpdmVycyBtaWdodCBub3QgbmVl
ZCB0aGUgc3BlY2lmaWMgcmVzZXRzIG5vdywgeW91IGRvbid0Cmtub3cgd2hhdCBxdWlya3MgeW91
J2xsIGhhdmUgZGlzY292ZXJlZCBpbiB0d28geWVhcnMgOy0pCgpBbmQgaW5zdGVhZCBvZiB0cnlp
bmcgdG8gdXBkYXRlIHRoZSBiaW5kaW5nIGFuZCB0aGVuIGNhcnJ5aW5nIGJvdGggdGhlCm5ldyBh
bmQgdGhlIGZhbGxiYWNrIGNvZGUgZm9yIHRoZSBvbGQgYmluZGluZyBhcm91bmQsIHdoeSBub3Qg
ZG8gaXQgbm93LgoKVGhlbiB3aGVuIHlvdSBmaW5kIGEgbmVlZCBmb3IgYSBzcGVjaWZpYyByZXNl
dCwgdGhpbmdzIG1hZ2ljYWxseSBqdXN0IHdvcmsuCgoKSGVpa28KCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
