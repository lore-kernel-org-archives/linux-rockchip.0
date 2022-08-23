Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92238C32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 12:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ynstvH8fBenlUTfhLOKyeMFbyiwlTqt0Lo2QxFT2XBc=; b=vcHtb4S4iPL5/K
	1U9lsJpiv+TJbGXDf7H5z0zl+52SwOK2Eq+0zZa5nsb7yDkr6TvHLSuswnnqxpdAXS/yfs5XZezfe
	//lIpRH8nLsAJkTIecSAMpQPb0qrOpsly/H8+Ea+9zuwHiXOpQeuaj+zEHbfMQq+qrVpAGaeZG9Eb
	FwuR8N1/iw8ydSqisoaFUsYA6OmF1jsG6E6edg2aDLJHPO3KjeH/JiNcyhh9N+kY33BJIZ6pRT/wb
	18X2QXn8CvhGlKESOo8hHKKBTrww6+kxZ7Rjb6RKHP+XLLdLPYKOIBNqN1qEQtu0TsAM33UhC1Joo
	pbyAxMSIp6qKjo2kGM2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQSpH-005lR1-7H; Tue, 23 Aug 2022 12:16:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQSpC-005lOm-Bm
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 12:16:09 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oQSpA-0004ZP-Go; Tue, 23 Aug 2022 14:16:04 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>, Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: devicetree <devicetree@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Peter Geis <pgwipeout@gmail.com>, Chris Healy <cphealy@gmail.com>, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Anbernic RG353P and RG503
Date: Tue, 23 Aug 2022 14:16:03 +0200
Message-ID: <45694752.fMDQidcC6G@diego>
In-Reply-To: <CAO_MupKkmbEjEqkrUQ2DtY=SA4ULv8CLVWPD92hxrMPuRYsS+w@mail.gmail.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com> <20220819222520.3069-4-macroalpha82@gmail.com> <CAO_MupKkmbEjEqkrUQ2DtY=SA4ULv8CLVWPD92hxrMPuRYsS+w@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_051606_430973_4312D18F 
X-CRM114-Status: GOOD (  24.06  )
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

QW0gU2Ftc3RhZywgMjAuIEF1Z3VzdCAyMDIyLCAxMDo0MDozNCBDRVNUIHNjaHJpZWIgTWF5YSBN
YXR1c3pjenlrOgo+IHNvYi4sIDIwIHNpZSAyMDIyIG8gMDA6MjYgQ2hyaXMgTW9yZ2FuIDxtYWNy
b2FscGhhODJAZ21haWwuY29tPiBuYXBpc2HFgihhKToKPiA+Cj4gPiBGcm9tOiBDaHJpcyBNb3Jn
YW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgoKWy4uLl0KCj4gPiArJmdwaW9fa2V5c19jb250
cm9sIHsKPiA+ICsgICAgICAgYnV0dG9uLTUgewo+ID4gKyAgICAgICAgICAgICAgIGdwaW9zID0g
PCZncGlvMyBSS19QQTUgR1BJT19BQ1RJVkVfTE9XPjsKPiA+ICsgICAgICAgICAgICAgICBsYWJl
bCA9ICJEUEFELUxFRlQiOwo+ID4gKyAgICAgICAgICAgICAgIGxpbnV4LGNvZGUgPSA8QlROX0RQ
QURfUklHSFQ+Owo+ID4gKyAgICAgICB9Owo+ID4gKwo+ID4gKyAgICAgICBidXR0b24tNiB7Cj4g
PiArICAgICAgICAgICAgICAgZ3Bpb3MgPSA8JmdwaW8zIFJLX1BBNiBHUElPX0FDVElWRV9MT1c+
Owo+ID4gKyAgICAgICAgICAgICAgIGxhYmVsID0gIkRQQUQtUklHSFQiOwo+ID4gKyAgICAgICAg
ICAgICAgIGxpbnV4LGNvZGUgPSA8QlROX0RQQURfTEVGVD47Cj4gPiArICAgICAgIH07Cj4gPiAr
Cj4gPiArICAgICAgIGJ1dHRvbi05IHsKPiA+ICsgICAgICAgICAgICAgICBncGlvcyA9IDwmZ3Bp
bzMgUktfUEIzIEdQSU9fQUNUSVZFX0xPVz47Cj4gPiArICAgICAgICAgICAgICAgbGFiZWwgPSAi
VFIiOwo+ID4gKyAgICAgICAgICAgICAgIGxpbnV4LGNvZGUgPSA8QlROX1RSMj47Cj4gPiArICAg
ICAgIH07Cj4gPiArCj4gPiArICAgICAgIGJ1dHRvbi0xMCB7Cj4gPiArICAgICAgICAgICAgICAg
Z3Bpb3MgPSA8JmdwaW8zIFJLX1BCNCBHUElPX0FDVElWRV9MT1c+Owo+ID4gKyAgICAgICAgICAg
ICAgIGxhYmVsID0gIlRSMiI7Cj4gPiArICAgICAgICAgICAgICAgbGludXgsY29kZSA9IDxCVE5f
VFI+Owo+ID4gKyAgICAgICB9Owo+ID4gKwo+ID4gKyAgICAgICBidXR0b24tMTQgewo+ID4gKyAg
ICAgICAgICAgICAgIGdwaW9zID0gPCZncGlvMyBSS19QQzEgR1BJT19BQ1RJVkVfTE9XPjsKPiA+
ICsgICAgICAgICAgICAgICBsYWJlbCA9ICJXRVNUIjsKPiA+ICsgICAgICAgICAgICAgICBsaW51
eCxjb2RlID0gPEJUTl9XRVNUPjsKPiA+ICsgICAgICAgfTsKPiA+ICsKPiA+ICsgICAgICAgYnV0
dG9uLTE1IHsKPiBJIGRvbid0IHRoaW5rIGp1c3QgaGF2aW5nIHRoZSBidXR0b25zIG51bWJlcmVk
IHNlcXVlbnRpYWxseQo+IGlzIHRoZSBiZXN0IGNvdXJzZSBvZiBhY3Rpb24sIGJ1dCB0aGlzIHBy
ZXNlcnZlcyB0aGUgR1BJTwo+IG9yZGVyaW5nIHdoaWxlIG90aGVyIG9wdGlvbnMgZG9uJ3QuLi4K
PiBJJ20gdGhpbmtpbmcgYWJvdXQgZWl0aGVyIGhhdmluZyB0aGVtIG5hbWVkIGFmdGVyCj4gdGhl
aXIgZnVuY3Rpb24sIG9yIG5hbWVkIGFmdGVyIHdoYXQgdGhleSdyZSBsYWJlbGVkCj4gb24gdGhl
IFBDQiBvZiB0aGUgZGV2aWNlLgo+IENhbiBhbnkgb2YgRFQgbWFpbnRhaW5lcnMgZ2l2ZSB0aGVp
ciBpbnB1dCBvbiB0aGlzPwoKUGVyc29uYWxseSwgSSdkIHByZWZlciBnb2luZyB3aXRoIHdoYXQg
aXMgb24gdGhlIFBDQgpvciBkZWZpbmVkIGluIHRoZSBzY2hlbWF0aWNzLgoKVGhpcyBtYWtlcyBp
dCB3YXkgZWFzaWVyIGZpbmRpbmcgZHQtZWxlbWVudHMgZWl0aGVyIGluCnNjaGVtYXRpY3Mgb3Ig
b24gdGhlIGJvYXJkIGl0c2VsZi4KClRoaXMgaXMgdHJ1ZSBmb3IgYWxsIG5hbWVzIDstKQoKT24g
dGhlIE9kcm9pZC1HbyBmb3IgZXhhbXBsZSBidXR0b25zIGFyZSByZWFsbHkgbmFtZWQKc3cxLCBz
dzIsIC4uLiBzbyB0aGUgZHQtbmFtZSBiZWNhbWUgYnV0dG9uLXN3MSBldGMuCgoKWy4uLl0KCj4g
PiArJnBpbmN0cmwgewo+ID4gKyAgICAgICBncGlvLWxjZCB7Cj4gPiArICAgICAgICAgICAgICAg
bGNkX3JzdDogbGNkLXJzdCB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICByb2NrY2hpcCxw
aW5zID0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPDQgUktfUEEwIFJLX0ZV
TkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+ID4gKyAgICAgICAgICAgICAgIH07Cj4gSXMgaXQg
dW51c2VkPyBJZiBpdCBpcyBJIHRoaW5rIGl0IHdvdWxkIGJlbG9uZyB0byBwYXRjaCB0aGF0IHdv
dWxkIGFkZAo+IHBhbmVsIHRvIHRoaXMgZGV2aWNlCgpJIHRlbmQgdG8gYWdyZWUgOi0pIC4KCj4g
PiArLyB7Cj4gPiArICAgICAgIGNob3NlbjogY2hvc2VuIHsKPiA+ICsgICAgICAgICAgICAgICBz
dGRvdXQtcGF0aCA9ICJzZXJpYWwyOjE1MDAwMDBuOCI7Cj4gSSdtIHdvbmRlcmluZyBpZiB0aGlz
IHNob3VsZCBiZSBjaGFuZ2VkIHRvIDExNTIwMCBiYXVkIHJhdGUKPiBzbyBpdCB3b3VsZCBlbmQg
dXAgdGhlIHNhbWUgYXMgb24gb3RoZXIgZGV2aWNlcywKPiBsaWtlIE9kcm9pZCBHbyBBZHZhbmNl
LgoKVGhhdCBoZWF2aWx5IGRlcGVuZHMgb24gdGhlIGJvb3Rsb2FkZXIuIEkuZS4gc3BlZWRzIHNo
b3VsZCBiZQpjb25zaXN0ZW50IGJldHdlZW4gdGhlbS4KCkEgbG90IG9mIGNoZWFwZXIgdXNiLXR0
bCBhZGFwdGVycyB0ZW5kIHRvIGhhdmUgZGlmZmljdWx0aWVzIHdpdGggdGhlCmZhc3RlciBzcGVl
ZHMsIHNvIDExNTIwMCBpcyBlYXNpZXIgZm9yIHRob3NlLCBidXQgeW91IG5lZWQgdS1ib290CnRv
IGFsc28gdXNlIHRoaXMgc3BlZWQuCgoKT24gdGhlIE9kcm9pZC1HbyBJIGRpZCBib3RoIHRoZSB1
LWJvb3QgYW5kIGtlcm5lbCBwYXJ0cywgc28gY291bGQKbWFrZSBzdXJlIHRob3NlIG1hdGNoZWQu
CgoKWy4uLl0KCj4gPiArICAgICAgIGFkY19rZXlzOiBhZGMta2V5cyB7Cj4gPiArICAgICAgICAg
ICAgICAgY29tcGF0aWJsZSA9ICJhZGMta2V5cyI7Cj4gPiArICAgICAgICAgICAgICAgaW8tY2hh
bm5lbHMgPSA8JnNhcmFkYyAwPjsKPiA+ICsgICAgICAgICAgICAgICBpby1jaGFubmVsLW5hbWVz
ID0gImJ1dHRvbnMiOwo+ID4gKyAgICAgICAgICAgICAgIGtleXVwLXRocmVzaG9sZC1taWNyb3Zv
bHQgPSA8MTgwMDAwMD47Cj4gPiArICAgICAgICAgICAgICAgcG9sbC1pbnRlcnZhbCA9IDw2MD47
Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgLyoKPiA+ICsgICAgICAgICAgICAgICAgKiBCdXR0
b24gaXMgbWFwcGVkIHRvIEYga2V5IGluIEJTUCBrZXJuZWwsIGJ1dAo+ID4gKyAgICAgICAgICAg
ICAgICAqIGFjY29yZGluZyB0byBpbnB1dCBndWlkZWxpbmVzIGl0IHNob3VsZCBiZSBtb2RlLgo+
ID4gKyAgICAgICAgICAgICAgICAqLwo+ID4gKyAgICAgICAgICAgICAgIGJ1dHRvbi1tb2RlIHsK
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGxhYmVsID0gIk1PREUiOwo+IFRoZSBwaHlzaWNh
bCBidXR0b24gaXMgbGFiZWxlZCAiRiIsIHNvIG1heWJlIHRoaXMgc2hvdWxkIGJlICJGIgo+IHRv
bz8KCnNhbWUgY29tbWVudCBhYm91dCBpZGVhbGx5IHVzaW5nIGJvYXJkL3NjaGVtYXRpY3MgbmFt
ZXMuCkJ1dCB0aGVuIGFnYWluLCBJIHdvbid0IG1ha2UgYSBmdXNzIGlmIGl0J3MgbmFtZWQgZGlm
ZmVyZW50bHkgOi0pCgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
