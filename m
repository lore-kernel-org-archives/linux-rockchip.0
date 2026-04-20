Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FD6DF588E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Apr 2026 15:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mPqPs+TmxfbrfSw+x0+hG4/nDuXgIwO3VYGyqk6WtpE=; b=fw+0sb8CdSzkUd
	MIoOeuyQiLsL2atqORCxRzboHju3WF9ie68gl1K1uw1dKKeAcQFXkfa+ghNL06+REQnidzTy27ZjK
	pDAhye8FWpxu/IaehqRSJ6qRTgRYOgVHr4RlzHHf3p91WStajGNq2N8hgMUWbmQuW0k5tyEXQICAO
	k32PdzWTN4aniMG1FdlOI+jFCfjY+I+zweIVCB3wi6U7yle2W4XF+VLs2xf8LPyyvpRBybbYizr1u
	3UwYvvPa+yfcfFy+DSVlJ8mka5miXKaIidfb8GtQVREK5+QqB3NfR5s2PXZa4ahVLXCouC7ljWTq4
	meGvW8UxKT59C1ZMGtww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEqEq-00000007Dsr-0TLM;
	Mon, 20 Apr 2026 15:08:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEqEm-00000007DsA-32Xd;
	Mon, 20 Apr 2026 15:08:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=GRPriQZt7VyS6kWuPERur2gAon2Iu5ktl6SXcUzdsKM=; b=EcmtL1ko2hxqdMPGOJSmH0gJqF
	eOk7UIZkvYbg6xm5hhyKFDcKMB5Ol4VdiX1sdFj8JeDpFC2d1q8A9aDcNCNCwFWKLf/K1C7i/J1Vf
	Zd+VD726MK8NbBhPoyjBqHH/y31NPQLrzsBaZ4oZfmHeJR4TMENXJSyb1eKCK02H+By+M61+jGCSf
	TFuE1xikDrSziT8gf9Ti+dsFl6uL9bN4JS0mwAFwS4/LOfQ8ydMKPFX3p19RJhSy5wIXuX+mypfgV
	Kkgv1IbgnFCpDavyRoOIP+Hrijao8TF1S67rwX8r7gGYKHWw+hBGWOhD/2LKYngwfraXASsozlwQT
	yhGdd50Q==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/40] arm64: dts: rockchip: Wire up frl-enable-gpios for
 RK3576/RK3588 boards
Date: Mon, 20 Apr 2026 17:08:26 +0200
Message-ID: <2744059.tIAgqjz4sF@phil>
In-Reply-To: <66f9574c-8dff-4de2-bf54-20f1c1e64c24@collabora.com>
References: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
 <2435759.n0HT0TaD9V@phil>
 <66f9574c-8dff-4de2-bf54-20f1c1e64c24@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_080836_780912_714CAAD1 
X-CRM114-Status: GOOD (  20.20  )
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

SGkgQ3Jpc3RpYW4sCgpBbSBNb250YWcsIDIwLiBBcHJpbCAyMDI2LCAxMzoxMDoyNyBNaXR0ZWxl
dXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIENyaXN0aWFuIENpb2NhbHRlYToKPiBPbiA0
LzE4LzI2IDI6MTggQU0sIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+ID4gQW0gRnJlaXRhZywgMTcu
IEFwcmlsIDIwMjYsIDE5OjU1OjE3IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJp
ZWIgQ3Jpc3RpYW4gQ2lvY2FsdGVhOgo+ID4+IE9uIDQvMTcvMjYgMjozNCBQTSwgSGVpa28gU3R1
ZWJuZXIgd3JvdGU6Cj4gPj4+IEFtIEZyZWl0YWcsIDE3LiBBcHJpbCAyMDI2LCAxMToyNDozNCBN
aXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIENyaXN0aWFuIENpb2NhbHRlYToK
PiA+Pj4KPiA+Pj4gWy4uLl0KPiA+Pj4KPiA+Pj4+IENyaXN0aWFuIENpb2NhbHRlYSAoNDApOgo+
ID4+Pj4gICAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBmcmwtZW5hYmxlLWdwaW9zIHRv
IHJrMzU3Ni0xMDBhc2stZHNoYW5waS1hMQo+ID4+Pj4gICAgICAgYXJtNjQ6IGR0czogcm9ja2No
aXA6IEFkZCBmcmwtZW5hYmxlLWdwaW9zIHRvIHJrMzU3Ni1hcm1zb20tc2lnZTUKPiA+Pj4+ICAg
ICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgZnJsLWVuYWJsZS1ncGlvcyB0byByazM1NzYt
ZXZiMS12MTAKPiA+Pj4+ICAgICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgZnJsLWVuYWJs
ZS1ncGlvcyB0byByazM1NzYtZXZiMi12MTAKPiA+Pj4+ICAgICAgIGFybTY0OiBkdHM6IHJvY2tj
aGlwOiBBZGQgZnJsLWVuYWJsZS1ncGlvcyB0byByazM1NzYtbHVja2ZveC1jb3JlMzU3Ngo+ID4+
Pj4gICAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBmcmwtZW5hYmxlLWdwaW9zIHRvIHJr
MzU3Ni1uYW5vcGktbTUKPiA+Pj4+ICAgICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgZnJs
LWVuYWJsZS1ncGlvcyB0byByazM1NzYtbmFub3BpLXI3NnMKPiA+Pj4+ICAgICAgIGFybTY0OiBk
dHM6IHJvY2tjaGlwOiBBZGQgZnJsLWVuYWJsZS1ncGlvcyB0byByazM1NzYtcm9jLXBjCj4gPj4+
PiAgICAgICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIGZybC1lbmFibGUtZ3Bpb3MgdG8gcmsz
NTc2LXJvY2stNGQKPiA+Pj4KPiA+Pj4gSSBkbyB0aGluayBvbmUgcGF0Y2ggcGVyIFNvQyAocmsz
NTc2LCByazM1ODgsIHJrMzU4OHMpIHdvdWxkIG1ha2UgbW9yZQo+ID4+PiBzZW5zZSwgYmVjYXVz
ZSB0aGVzZSBwYXRjaGVzIHJlYWxseSBhcmUgbW9zdGx5IGlkZW50aWNhbCA6LSkKPiA+Pgo+ID4+
IFllYWgsIGFwb2xvZ2llcyBmb3IgdGhlIGxhcmdlIG51bWJlciBvZiBwYXRjaGVzLCBJIHdlbnQg
dGhpcyB3YXkgdG8gYWxsb3cKPiA+PiBwZXItYm9hcmQgcmV2aWV3cy4gIEFzIHByZXZpb3VzbHkg
bm90ZWQsIEkgdHJpZWQgdG8gaWRlbnRpZnkgdGhlIEdQSU8gcGlucyBmcm9tCj4gPj4gbXVsdGlw
bGUgc291cmNlcywgc28gSSdtIG5vdCBlbnRpcmVseSBzdXJlIGFib3V0IHRoZSBhY2N1cmFjeSBp
biBldmVyeSBjYXNlLgo+ID4+Cj4gPj4gV291bGQgaXQgYmUgcHJlZmVyYWJsZSB0byBzcXVhc2gg
dGhlIHBhdGNoZXMgcGVyIFNvQyBhbmQgYm9hcmQgdmVuZG9yLCBpbnN0ZWFkPwo+ID4gCj4gPiBJ
IHJlYWxseSB3b3VsZCBqdXN0IGRvIGl0IHBlciBzb2MgLi4gc28gMyBwYXRjaGVzLiBUaGF0IGlz
IGEgc2l6ZSB0aGF0IGlzCj4gPiBzdGlsbCByZXZpZXdhYmxlIGZvciBwZW9wbGUsIHdobyBjYW4g
dGhlbiBjaGVjayBmb3IgdGhlaXIgYm9hcmQuCj4gPiAKPiA+IElmIHRoZSBwYXRjaCBpcyBsYWJl
bGVkICJBZGQgZnJsLWVuYWJsZS1ncGlvcyBmb3IgYWxsIFJLMzU4OHMgYm9hcmRzIiwgSQo+ID4g
ZG8gZXhwZWN0IHBlb3BsZSB0byBub3RpY2UgaXQgdGhlIHNhbWUgYXMgIm9oIF9teV8gYm9hcmQg
Z2V0cyBjaGFuZ2VkIi4KPiA+ICgiYWxsIiBjb3VsZCBhbHNvIGJlICJtb3N0IiA6LSkgKS4KPiAK
PiBBY2suICAKPiAKPiBJIHdvdWxkIHN0aWxsIGtlZXAgdGhlIG1vcmUgaW52YXNpdmUgY2hhbmdl
cyDigJQgc3VjaCBhcyB0aG9zZSB0b3VjaGluZwo+IHRoZSByZWd1bGF0b3IgaGFja3Mg4oCUIGlu
IHNlcGFyYXRlIHBhdGNoZXMsIHRob3VnaC4KCnN1cmUsIHRoYXQgc291bmRzIHBlcmZlY3RseSBy
ZWFzb25hYmxlIDotKSAuCgpIZWlrbwoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
