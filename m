Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 711A8C25B47
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Oct 2023 17:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pBT3MTWwocThDTKJOmO6N6sio+GLkGsmyZ/4jazEHkY=; b=rqzJ2aj6bdwhwx
	45ZE2/UOGrApVt62x+FH5YIPQTfi+CzTYowKwdPT0hvKoSDI0dFqQdsnzyqnXR+IMax4qYjLXVbAN
	6CanjYU4T4iWLY18ag0GaKzxXbWEOEpMJu/tJeWgNsV5IjhxOBQfeUd+LOjIF7dLbunk7zlbFrO/o
	fgWLb3AseMPDpqhSv9kMMDLvdWRSK8JEnOJY/gWldmwojB9L306gO716aSHi9nb1zur5NsyjIs290
	yMr1yBRqtrvtKdRtReNx1dpGLwKdBHpAPEEFl/MyaFje35w1kxgjUTOpKqBnEi97hNim4C0LmDkng
	1acZvQfLlfs+erLs5lgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qwQJC-00GoMU-25;
	Fri, 27 Oct 2023 17:07:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qwQJA-00GoLj-1F;
	Fri, 27 Oct 2023 17:07:41 +0000
Received: from i53875a19.versanet.de ([83.135.90.25] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qwQIX-0001eX-MH; Fri, 27 Oct 2023 19:07:01 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Niklas Cassel <Niklas.Cassel@wdc.com>
Cc: Niklas Cassel <nks@flawful.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?utf-8?B?V2lsY3p5xYRza2k=?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Simon Xue <xxm@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Serge Semin <fancer.lancer@gmail.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v3 1/6] dt-bindings: PCI: dwc: rockchip: Add mandatory atu reg
Date: Fri, 27 Oct 2023 19:07:00 +0200
Message-ID: <3040634.xgJ6IN8ObU@diego>
In-Reply-To: <ZTvh51PGCBhSjURY@x1-carbon>
References: <20231027145422.40265-1-nks@flawful.org>
 <CAL_JsqJh6aJb7_qsVnVNEABBg2utf0FPN+qYyOfsF2dAfZpd0w@mail.gmail.com>
 <ZTvh51PGCBhSjURY@x1-carbon>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231027_100740_445742_34DC227E 
X-CRM114-Status: GOOD (  18.54  )
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

SGkgTmlrbGFzLAoKQW0gRnJlaXRhZywgMjcuIE9rdG9iZXIgMjAyMywgMTg6MTQ6MzIgQ0VTVCBz
Y2hyaWViIE5pa2xhcyBDYXNzZWw6Cj4gT24gRnJpLCBPY3QgMjcsIDIwMjMgYXQgMTA6NTg6MjhB
TSAtMDUwMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gPiBPbiBGcmksIE9jdCAyNywgMjAyMyBhdCA5
OjU24oCvQU0gTmlrbGFzIENhc3NlbCA8bmtzQGZsYXdmdWwub3JnPiB3cm90ZToKPiA+ID4KPiA+
ID4gRnJvbTogTmlrbGFzIENhc3NlbCA8bmlrbGFzLmNhc3NlbEB3ZGMuY29tPgo+ID4gPgo+ID4g
PiBFdmVuIHRob3VnaCByb2NrY2hpcC1kdy1wY2llLnlhbWwgaW5oZXJpdHMgc25wcyxkdy1wY2ll
LnlhbWwKPiA+ID4gdXNpbmc6Cj4gPiA+Cj4gPiA+IGFsbE9mOgo+ID4gPiAgIC0gJHJlZjogL3Nj
aGVtYXMvcGNpL3NucHMsZHctcGNpZS55YW1sIwo+ID4gPgo+ID4gPiBhbmQgc25wcyxkdy1wY2ll
LnlhbWwgZG9lcyBoYXZlIHRoZSBhdHUgcmVnIGRlZmluZWQsIGluIG9yZGVyIHRvIGJlCj4gPiA+
IGFibGUgdG8gdXNlIHRoaXMgcmVnLCB3aGlsZSBzdGlsbCBtYWtpbmcgc3VyZSAnbWFrZSBDSEVD
S19EVEJTPXknCj4gPiA+IHBhc3MsIHdlIG5lZWQgdG8gYWRkIHRoaXMgcmVnIHRvIHJvY2tjaGlw
LWR3LXBjaWUueWFtbC4KPiA+ID4KPiA+ID4gQWxsIGNvbXBhdGlibGUgc3RyaW5ncyAocm9ja2No
aXAscmszNTY4LXBjaWUgYW5kIHJvY2tjaGlwLHJrMzU4OC1wY2llKQo+ID4gPiBzaG91bGQgaGF2
ZSB0aGlzIHJlZy4KPiA+ID4KPiA+ID4gVGhlIHJlZ3MgaW4gdGhlIGV4YW1wbGUgYXJlIHVwZGF0
ZWQgdG8gYWN0dWFsbHkgbWF0Y2ggcGNpZTN4MiBvbiByazM1NjguCj4gPiAKPiA+IEJyZWFraW5n
IGNvbXBhdGliaWxpdHkgb24gdGhlc2UgcGxhdGZvcm1zIGlzIG9rYXkgYmVjYXVzZSAuLi4/Cj4g
Cj4gSSBkb24ndCBmb2xsb3csIGNvdWxkIHlvdSBwbGVhc2UgZWxhYm9yYXRlPwoKeW91J3JlIGFk
ZGluZyB0aGUgYXR1IHJlZyB1bmNvbmRpdGlvbmFsbHkgYXMgcmVxdWlyZWQgZWxlbWVudC4KCk5l
d2VyIGtlcm5lbCB2ZXJzaW9ucyAoc3Ryb25nbHkpIF9zaG91bGRfIHdvcmsgd2l0aCBvbGRlciBk
ZXZpY2V0cmVlcy4KU28gYSBrZXJuZWwgd2l0aCB0aGF0IGNoYW5nZSBzaG91bGQgYWxzbyB3b3Jr
IHdpdGggYSBkdGIgYnVpbGQgZnJvbSB0aGUKb2xkIHN0eWxlLgoKRFRCcyBhcmUgZXNzZW50aWFs
bHkgcGFydCBvZiB0aGUgZGV2aWNlIGZpcm13YXJlLCBzbyB3aGlsZSBzb21lIGRldmljZXMKY2Fu
IHVwZGF0ZSB0aGVpcnMgZWFzaWx5LCB5b3UgY2FuJ3QgcmVhbGx5IHJlcXVpcmUgYSBkdGIgdXBk
YXRlLgoKSSBndWVzcyB5b3UgY291bGQgc29tZXRoaW5nIGxpa2U6CgogICByZWctbmFtZXM6CiAg
ICAgb25lT2Y6CiAgICAgICAtIGRlcHJlY2F0ZWQ6IHRydWUKICAgICAgICAgaXRlbXM6CiAgICAg
ICAgIC0gY29uc3Q6IGRiaQogICAgICAgICAtIGNvbnN0OiBhcGIKICAgICAgICAgLSBjb25zdDog
Y29uZmlnCiAgICAgICAtIGl0ZW1zOgogICAgICAgICAtIGNvbnN0OiBkYmkKICAgICAgICAgLSBj
b25zdDogYXBiCiAgICAgICAgIC0gY29uc3Q6IGNvbmZpZwogICAgICAgICAtIGNvbnN0OiBhdHUK
IAoobWF5IG5vdCBiZSBhY2N1cmF0ZSBhbmQgdG8gc3BlYyB5ZXQpCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
