Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E9F2C282EC
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 13:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/XrhxrzkyQZXJfvMWSUH1AqsqEsdJ0k+ihu3RUjd+Y=; b=d0sDyamAHyjoF9
	tUVJI/sEASFCFgdiWb1rmvwk1V59Zs9ktNlK8Y4HOs3/Fok4Z3kRmvz7ujxyC7T40I9ivFKUMX+KY
	xQfXxvICArSbTze6iLZTOGiQCaP5+M+X8qSqNbfr2yXSvKiAg0rTLPlQFAvyYwn/i6fLB8bevFtN8
	bpW3zHHzoyjD/DvEIiDShXcMfu3vR8FKJ0tQAP+rVGNejnARVs9gPN8MhnGWpcjxc7d98c4ipbHAj
	HfKLadT8A5G5XNZDJF513NnPCH1lbmuNmtir+8MATklZRzeJxiAS+reb2Ordy2TSgy59sZqAitk8F
	zkfGsFOwcCjprrgnoZSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBC1-0000000B2db-3pXi;
	Thu, 06 Mar 2025 13:23:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqAwE-0000000B07P-2Yjv
	for linux-rockchip@bombadil.infradead.org;
	Thu, 06 Mar 2025 13:06:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=mfBuDbSuVwW4tPY5y3ejNrFbP51Lhqr440UyYLTygs4=; b=Hp0hvMl18ufnFZv6o8VqW08eLQ
	fVF28vrCef/FK3ctlGLUdy1RFQ3b5tjZYCNdd53EEgFYLCCx4ANsmCGdSc6qwDerA0L1Ybrlyz+Nm
	xs/S3fXG6Y3H3dwVc4zzDu0le4sD0f/uAg7LMJc73vedxmdZ5fI/p9+xc4RVEKph7a8KMX1syOUIP
	gG0tt4dbEae5VlEaEhGxkFniviLNUIKMiXrwFg/nZJlhiVTSWn2vcnsKuJthKgc5Qn3F5F0YJS/oj
	ty6+lxBwX+6t7O+vufrZ8TFDWDhgbMj8zIn7eSt5rfq6Kutw5wYxTihHbwJSqek0rjYuonhQo82d6
	9cX9lHUA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqAwB-000000015MW-3UVD
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 13:06:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=mfBuDbSuVwW4tPY5y3ejNrFbP51Lhqr440UyYLTygs4=; b=HW4ePAFdm0EXJK81MA9j0l1Ngf
	N3QPXF+BbJlJPc0SOGcLA1ibPPtby/R5nL4YwQC/BR0BgoiuSNlTA2Wnl5QT20X/yqs0ydptuWQms
	/FB8hhqJhXACRIer/jCk/qeyBtlsjzCB3R7/2OoH1WkR+Ctpp1sOFoFx/8dcCuY2+0v27H+LN6wqA
	VSqBTpJ3Noa58ge6W0gtqOyW39+UNE6CG19l1hASFfHGtOlwrWYfKGobuQIfyFU1GuAa1jjLIC4/l
	MjxDgwLGbSjM+hKtV9Pn+8TYKHGLC4AEjZF2EKiX7nqK5mQbgm1k20cfFD3QdcGmKinmPOe+WLv+R
	6XWmSdHQ==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tqAvx-00039x-W9; Thu, 06 Mar 2025 14:06:42 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Shreeya Patel <shreeya.patel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 jose.abreu@synopsys.com, nelson.costa@synopsys.com, shawn.wen@rock-chips.com,
 nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH v14 1/3] arm64: dts: rockchip: Add device tree support for HDMI RX
 Controller
Date: Thu, 06 Mar 2025 14:06:40 +0100
Message-ID: <9489391.T7Z3S40VBb@diego>
In-Reply-To: <20250306072842.287142-2-dmitry.osipenko@collabora.com>
References: <20250306072842.287142-1-dmitry.osipenko@collabora.com>
 <20250306072842.287142-2-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_130656_086887_02533F8B 
X-CRM114-Status: GOOD (  15.85  )
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

SGkgRG1pdHJ5LAoKQW0gRG9ubmVyc3RhZywgNi4gTcOkcnogMjAyNSwgMDg6Mjg6NDAgTUVaIHNj
aHJpZWIgRG1pdHJ5IE9zaXBlbmtvOgo+IEZyb206IFNocmVleWEgUGF0ZWwgPHNocmVleWEucGF0
ZWxAY29sbGFib3JhLmNvbT4KPiAKPiBBZGQgZGV2aWNlIHRyZWUgc3VwcG9ydCBmb3IgU3lub3Bz
eXMgRGVzaWduV2FyZSBIRE1JIFJYCj4gQ29udHJvbGxlci4KPiAKPiBSZXZpZXdlZC1ieTogRG1p
dHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4KPiBUZXN0ZWQtYnk6
IERtaXRyeSBPc2lwZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+Cj4gQ28tZGV2
ZWxvcGVkLWJ5OiBEaW5neGlhbiBXZW4gPHNoYXduLndlbkByb2NrLWNoaXBzLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBEaW5neGlhbiBXZW4gPHNoYXduLndlbkByb2NrLWNoaXBzLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBTaHJlZXlhIFBhdGVsIDxzaHJlZXlhLnBhdGVsQGNvbGxhYm9yYS5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3Jh
LmNvbT4KPiAtLS0KPiAgLi4uL2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS1waW5jdHJsLmR0c2kg
ICAgIHwgMTQgKysrKysKPiAgLi4uL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1leHRy
YS5kdHNpIHwgNTcgKysrKysrKysrKysrKysrKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDcxIGlu
c2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODgtYmFzZS1waW5jdHJsLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OC1iYXNlLXBpbmN0cmwuZHRzaQo+IGluZGV4IDdmODc0Yzc3NDEwYy4uMmQ0Yjk5ODZh
MTc3IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJh
c2UtcGluY3RybC5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODgtYmFzZS1waW5jdHJsLmR0c2kKPiBAQCAtNTk0LDYgKzU5NCwyMCBAQCBoZG1pbTBfdHgxX2hw
ZDogaGRtaW0wLXR4MS1ocGQgewo+ICAJCQkJLyogaGRtaW0wX3R4MV9ocGQgKi8KPiAgCQkJCTwx
IFJLX1BBNiA1ICZwY2ZnX3B1bGxfbm9uZT47Cj4gIAkJfTsKPiArCj4gKwkJL29taXQtaWYtbm8t
cmVmLwo+ICsJCWhkbWltMV9yeDogaGRtaW0xLXJ4IHsKPiArCQkJcm9ja2NoaXAscGlucyA9Cj4g
KwkJCQkvKiBoZG1pbTFfcnhfY2VjICovCj4gKwkJCQk8MyBSS19QRDEgNSAmcGNmZ19wdWxsX25v
bmU+LAo+ICsJCQkJLyogaGRtaW0xX3J4X3NjbCAqLwo+ICsJCQkJPDMgUktfUEQyIDUgJnBjZmdf
cHVsbF9ub25lX3NtdD4sCj4gKwkJCQkvKiBoZG1pbTFfcnhfc2RhICovCj4gKwkJCQk8MyBSS19Q
RDMgNSAmcGNmZ19wdWxsX25vbmVfc210PiwKPiArCQkJCS8qIGhkbWltMV9yeF9ocGRpbiAqLwo+
ICsJCQkJPDMgUktfUEQ0IDUgJnBjZmdfcHVsbF9ub25lPjsKPiArCQl9Owo+ICsKCndoYXQncyB0
aGUgcmVhc29uIGZvciBkdXBsaWNhdGluZyB0aGVzZSBwaW5jdHJsIGVudHJpZXM/CgpUaGUgYmFz
ZS1waW5jdHJsIGFscmVhZHkgY29udGFpbnMgYSBzZXBhcmF0ZSBzZXQgb2YgcGlucyAoYW5kIGFs
c28gYQp2YXJpYW50IGZvciB0aGUgbTAgc2V0IG9mIHBpbnMpLCBzbyB3aHkgbm90IGNoZWNrIGFu
ZCB1c2UgdGhlIGFscmVhZHkKZXhpc3Rpbmcgb25lczoKCiAgICAgICAgICAgICAgICBoZG1pbTFf
cnhfY2VjOiBoZG1pbTEtcngtY2VjIHsKICAgICAgICAgICAgICAgICAgICAgICAgcm9ja2NoaXAs
cGlucyA9CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogaGRtaW0xX3J4X2NlYyAq
LwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwzIFJLX1BEMSA1ICZwY2ZnX3B1bGxf
bm9uZT47CiAgICAgICAgICAgICAgICB9OwoKICAgICAgICAgICAgICAgIGhkbWltMV9yeF9ocGRp
bjogaGRtaW0xLXJ4LWhwZGluIHsKICAgICAgICAgICAgICAgICAgICAgICAgcm9ja2NoaXAscGlu
cyA9CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogaGRtaW0xX3J4X2hwZGluICov
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPDMgUktfUEQ0IDUgJnBjZmdfcHVsbF9u
b25lPjsKICAgICAgICAgICAgICAgIH07CgogICAgICAgICAgICAgICAgaGRtaW0xX3J4X3NjbDog
aGRtaW0xLXJ4LXNjbCB7CiAgICAgICAgICAgICAgICAgICAgICAgIHJvY2tjaGlwLHBpbnMgPQog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8qIGhkbWltMV9yeF9zY2wgKi8KICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICA8MyBSS19QRDIgNSAmcGNmZ19wdWxsX25vbmU+Owog
ICAgICAgICAgICAgICAgfTsKCiAgICAgICAgICAgICAgICBoZG1pbTFfcnhfc2RhOiBoZG1pbTEt
cngtc2RhIHsKICAgICAgICAgICAgICAgICAgICAgICAgcm9ja2NoaXAscGlucyA9CiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgLyogaGRtaW0xX3J4X3NkYSAqLwogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDwzIFJLX1BEMyA1ICZwY2ZnX3B1bGxfbm9uZT47CiAgICAgICAg
ICAgICAgICB9OwoKCkhhdmluZyBtdWx0aXBsZSBzZXRzIChldmVuIHdpdGggZGlmZmVyZWluZyBz
ZXR0aW5ncykgd2lsbCBjYXVzZSBjb25mdXNpb24KbGF0ZXIgb24uCgoKPiAgCQkvb21pdC1pZi1u
by1yZWYvCj4gIAkJaGRtaW0xX3J4X2NlYzogaGRtaW0xLXJ4LWNlYyB7Cj4gIAkJCXJvY2tjaGlw
LHBpbnMgPQo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OC1leHRyYS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZXh0cmEu
ZHRzaQo+IGluZGV4IDRhOTUwOTA3ZWE2Zi4uYjdkMDZmOTNjOGNlIDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV4dHJhLmR0c2kKPiArKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1leHRyYS5kdHNpCj4gQEAgLTEzNSw2ICsx
NTksMzkgQEAgaTJzMTBfOGNoOiBpMnNAZmRlMDAwMDAgewo+ICAJCXN0YXR1cyA9ICJkaXNhYmxl
ZCI7Cj4gIAl9Owo+ICAKPiArCWhkbWlfcmVjZWl2ZXI6IGhkbWlfcmVjZWl2ZXJAZmRlZTAwMDAg
ewo+ICsJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4LWhkbWlyeC1jdHJsZXIiLCAic25w
cyxkdy1oZG1pLXJ4IjsKPiArCQlyZWcgPSA8MHgwIDB4ZmRlZTAwMDAgMHgwIDB4NjAwMD47Cj4g
KwkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTg4X1BEX1ZPMT47Cj4gKwkJcm9ja2NoaXAs
Z3JmID0gPCZzeXNfZ3JmPjsKPiArCQlyb2NrY2hpcCx2bzEtZ3JmID0gPCZ2bzFfZ3JmPjsKPiAr
CQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTc3IElSUV9UWVBFX0xFVkVMX0hJR0ggMD4sCj4gKwkJ
CSAgICAgPEdJQ19TUEkgMTc4IElSUV9UWVBFX0xFVkVMX0hJR0ggMD4sCj4gKwkJCSAgICAgPEdJ
Q19TUEkgMTc5IElSUV9UWVBFX0xFVkVMX0hJR0ggMD47Cj4gKwkJaW50ZXJydXB0LW5hbWVzID0g
ImNlYyIsICJoZG1pIiwgImRtYSI7Cj4gKwkJY2xvY2tzID0gPCZjcnUgQUNMS19IRE1JUlg+LAo+
ICsJCQkgPCZjcnUgQ0xLX0hETUlSWF9BVUQ+LAo+ICsJCQkgPCZjcnUgQ0xLX0NSX1BBUkE+LAo+
ICsJCQkgPCZjcnUgUENMS19IRE1JUlg+LAo+ICsJCQkgPCZjcnUgQ0xLX0hETUlSWF9SRUY+LAo+
ICsJCQkgPCZjcnUgUENMS19TX0hETUlSWD4sCj4gKwkJCSA8JmNydSBIQ0xLX1ZPMT47Cj4gKwkJ
Y2xvY2stbmFtZXMgPSAiYWNsayIsCj4gKwkJCSAgICAgICJhdWRpbyIsCj4gKwkJCSAgICAgICJj
cl9wYXJhIiwKPiArCQkJICAgICAgInBjbGsiLAo+ICsJCQkgICAgICAicmVmIiwKPiArCQkJICAg
ICAgImhjbGtfc19oZG1pcngiLAo+ICsJCQkgICAgICAiaGNsa192bzEiOwo+ICsJCXJlc2V0cyA9
IDwmY3J1IFNSU1RfQV9IRE1JUlg+LCA8JmNydSBTUlNUX1BfSERNSVJYPiwKPiArCQkJIDwmY3J1
IFNSU1RfSERNSVJYX1JFRj4sIDwmY3J1IFNSU1RfQV9IRE1JUlhfQklVPjsKPiArCQlyZXNldC1u
YW1lcyA9ICJheGkiLCAiYXBiIiwgInJlZiIsICJiaXUiOwo+ICsJCW1lbW9yeS1yZWdpb24gPSA8
JmhkbWlfcmVjZWl2ZXJfY21hPjsKPiArCQlwaW5jdHJsLTAgPSA8JmhkbWltMV9yeD47Cj4gKwkJ
cGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKCmhtbSwgdGhpcyBtaWdodCBiZSBiZXR0ZXIgbGl2
aW5nIGluIHRoZSBib2FyZCBkdHM/CgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
