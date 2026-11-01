Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F715606A32E
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 20:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=OoS7HKXX;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=20rNYJKo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=xEsAInC8FhPuwnF/AOASc54OazYNTUCxmlMSjiSDEh8=; b=OoS7HKXXRX4WqH3GDiQB5brEKR
	ZQjuJhf9wPnCr80aYMR9unGhr2LzF2kDrQsp8mZsYNozFPqPeWvCY3J+N1DxVr8GYwFMDsELBaSvs
	baQSRillL0Qg9FicylEt9K5cMozC/Zu5Ar3jgRADJGUKhfFU6WXlqtiRAkUkWyp42QkF2v1rF5rlK
	IPrxKWAp1eG3hWInA7OhJLEqMEGDwmcOwFta5hGiAoZP3z0GIeM7O+QnD/hQjJDGHUBhHNV8UfbSE
	WRTSirGkX0MJPDoPJGkqjbpSFS7yNaxghRaOL3eo5ZhaohCYIGcoih+RdIQU0A3lu2mpbsAYQSPEX
	bmXX115A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNc1o-0000000Es7f-3tug;
	Sun, 01 Nov 2026 20:19:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNc1m-0000000Es7C-2iNP;
	Sun, 01 Nov 2026 20:19:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=nbWzpEen76KfcL+CtXPbSjVeFwZsdAxBkZAu3PHXVRY=; b=20rNYJKowS8QgUWQ4jODdI+Rso
	vpy8xoxE5/YhQST3EwqyZxQNmAV03Y5o751usgC31Yc/McSk1TOqOl3zTIEtG/Tj6ZNluFes8ihJp
	+X13l9D3X4pnJOeyY2ekAMmWEDtrZSMUZ8LP3lJzUj7Lu1F6xYTU5pAYBiiJK0jUrI9hRxttmqeV0
	Upd10k0OsFPkI6kQGZjcz3bMChwkDKqtnvkeXN0sYn6goMIBQDkrUfV9dFr7bcLRDR225P4brDNnU
	UZhNWMWPmvq/HDXj1olPKXAI2ZcmO3wnp6wRkxfXQpLJhBxOxhPTB95rlPaSeerNlr2/rBXJMkQDh
	+jFRBS9Q==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Coia Prant <coiaprant@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 David Heidelberg <david@ixit.cz>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v12 1/3] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock
 nodes
Date: Sun, 01 Nov 2026 21:19:33 +0100
Message-ID: <23607754.hxa6pUQ8Du@diego>
In-Reply-To: <CALj3r0g5twZNEiO5b1hHpxy3kAVBxLZNt55E2dxSSeZ5GgXisA@mail.gmail.com>
References: <20261023053548.1595033-1-coiaprant@gmail.com> <2977688.AiC22s8V5E@phil>
 <CALj3r0g5twZNEiO5b1hHpxy3kAVBxLZNt55E2dxSSeZ5GgXisA@mail.gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_121942_769607_7441D1EF 
X-CRM114-Status: GOOD (  30.83  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gU29ubnRhZywgMS4gTm92ZW1iZXIgMjAyNiwgMjE6MTE6NTYgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBDb2lhIFByYW50Ogo+IEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IOS6jjIwMjblubQxMeaciDHml6Xlkajml6UgMjI6MDblhpnpgZPvvJoKPiA+Cj4g
PiBIaSwKPiA+Cj4gPiBBbSBGcmVpdGFnLCAyMy4gT2t0b2JlciAyMDI2LCAwNzozNTo0NiBNaXR0
ZWxldXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIENvaWEgUHJhbnQ6Cj4gPiA+IFRoZSBS
SzM1NjggU29DIGludGVncmF0ZXMgYSBTeW5vcHN5cyBEZXNpZ25XYXJlIFhQQ1MgdGhhdCBwcm92
aWRlcwo+ID4gPiB0aGUgUGh5c2ljYWwgQ29kaW5nIFN1YmxheWVyIGZvciAxMDAwQkFTRS1YLCBT
R01JSSwgYW5kIFFTR01JSQo+ID4gPiBpbnRlcmZhY2VzIHZpYSBpdHMgZm91ciBNSUkgcG9ydHMu
ICBBZGQgdGhlIFhQQ1MgZGV2aWNlIG5vZGUgdG8gdGhlCj4gPiA+IFNvQyBkZXZpY2UgdHJlZS4K
PiA+ID4KPiA+ID4gVGhlIFhQQ1MgZGV2aWNlIGlzIGFjY2Vzc2VkIHZpYSB0aGUgQVBCMyBidXMg
YXQgMHhmZGEwMDAwMCBhbmQKPiA+ID4gcmVxdWlyZXMgdGhlIENTUiBjbG9jayAoUENMS19YUENT
KSBmb3IgcmVnaXN0ZXIgYWNjZXNzIGFuZCB0aGUgRUVFCj4gPiA+IGNsb2NrIChDTEtfWFBDU19F
RUUpIGZvciBFbmVyZ3kgRWZmaWNpZW50IEV0aGVybmV0IG9wZXJhdGlvbi4gIFRoZQo+ID4gPiBQ
RF9QSVBFIHBvd2VyIGRvbWFpbiBtdXN0IGJlIGVuYWJsZWQgYmVmb3JlIGFueSByZWdpc3RlciBh
Y2Nlc3MuCj4gPiA+Cj4gPiA+IEFsc28gYWRkIHR3byBmaXhlZC1jbG9jayBub2RlcyAoY2xvY2st
eHBjcy1nbWFjMCBhbmQgY2xvY2steHBjcy1nbWFjMSwKPiA+ID4gbGFiZWxsZWQgY2xrX2dtYWMw
X3hwY3NfbWlpIGFuZCBjbGtfZ21hYzFfeHBjc19taWkpIHByb3ZpZGluZyB0aGUKPiA+ID4gMTI1
IE1IeiByZWZlcmVuY2UgY2xvY2sgZm9yIHRoZSBHTUFDcyB3aGVuIG9wZXJhdGluZyB3aXRoIFhQ
Q1MuICBUaGVpcgo+ID4gPiBjbG9jay1vdXRwdXQtbmFtZXMgbWF0Y2ggdGhlIENSVSBtdXggcGFy
ZW50IG5hbWVzIGluIGNsay1yazM1NjguYywgc28KPiA+ID4gYm9hcmRzIGNhbiByZXBhcmVudCBT
Q0xLX0dNQUMwX1JYX1RYIC8gU0NMS19HTUFDMV9SWF9UWCB0aHJvdWdoCj4gPiA+IGFzc2lnbmVk
LWNsb2NrLXBhcmVudHMuCj4gPiA+Cj4gPiA+IFRoZSBYUENTIG5vZGUgaXMgZGlzYWJsZWQgYnkg
ZGVmYXVsdCBhbmQgbXVzdCBiZSBlbmFibGVkIGF0IHRoZSBib2FyZAo+ID4gPiBsZXZlbCB3aGVu
IDEwMDBCQVNFLVgvU0dNSUkvUVNHTUlJIGlzIGluIHVzZS4gIFRoZSBmaXhlZC1jbG9jayBub2Rl
cwo+ID4gPiBhcmUgYWx3YXlzIHByZXNlbnQgYW5kIGRvIG5vdCBoYXZlIGEgc3RhdHVzIHByb3Bl
cnR5LCBhcyB0aGV5IGFyZQo+ID4gPiBzdGF0aWMgY2xvY2sgc291cmNlcy4KPiA+ID4KPiA+ID4g
VGhlIFhQQ1Mgbm9kZSByZXF1aXJlcyBhIHJlZmVyZW5jZSB0byB0aGUgYXBwcm9wcmlhdGUgTmFu
ZW5nIENvbWJvIFBIWQo+ID4gPiB2aWEgdGhlIHBoeXMgcHJvcGVydHkuICBkdGJzX2NoZWNrIG9u
bHkgdmFsaWRhdGVzIHJlcXVpcmVkIHByb3BlcnRpZXMKPiA+ID4gZm9yIGVuYWJsZWQgbm9kZXMs
IHNvIHRoZSBTb0MgZHRzaSBkb2VzIG5vdCBwcm92aWRlIHBoeXM6IGJvYXJkcyB0aGF0Cj4gPiA+
IGVuYWJsZSB0aGUgWFBDUyBtdXN0IHN1cHBseSBpdCwgc2luY2UgdGhlIFNlckRlcyBsaW5rIGlz
IGEgYm9hcmQtbGV2ZWwKPiA+ID4gZGVzaWduIGNob2ljZSAoY29tYnBoeTEgb24gc29tZSBib2Fy
ZHMsIGNvbWJwaHkyIG9uIG90aGVycykuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IENvaWEg
UHJhbnQgPGNvaWFwcmFudEBnbWFpbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaSB8IDIzICsrKysrKysrKysrKysrKysrKysrKysr
Cj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKQo+ID4gPgo+ID4gPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaSBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKPiA+ID4gaW5kZXggM2JjNjUzZjAy
N2YxZi4uMjBhNzI3ODVhZGJjMiAxMDA2NDQKPiA+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU2OC5kdHNpCj4gPiA+IEBAIC04LDYgKzgsMjAgQEAKPiA+ID4gIC8gewo+ID4g
PiAgICAgICBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OCI7Cj4gPiA+Cj4gPiA+ICsgICAg
IGNsa19nbWFjMF94cGNzX21paTogY2xvY2steHBjcy1nbWFjMCB7Cj4gPiA+ICsgICAgICAgICAg
ICAgY29tcGF0aWJsZSA9ICJmaXhlZC1jbG9jayI7Cj4gPiA+ICsgICAgICAgICAgICAgY2xvY2st
ZnJlcXVlbmN5ID0gPDEyNTAwMDAwMD47Cj4gPiA+ICsgICAgICAgICAgICAgY2xvY2stb3V0cHV0
LW5hbWVzID0gImNsa19nbWFjMF94cGNzX21paSI7Cj4gPiA+ICsgICAgICAgICAgICAgI2Nsb2Nr
LWNlbGxzID0gPDA+Owo+ID4gPiArICAgICB9Owo+ID4gPiArCj4gPiA+ICsgICAgIGNsa19nbWFj
MV94cGNzX21paTogY2xvY2steHBjcy1nbWFjMSB7Cj4gPiA+ICsgICAgICAgICAgICAgY29tcGF0
aWJsZSA9ICJmaXhlZC1jbG9jayI7Cj4gPiA+ICsgICAgICAgICAgICAgY2xvY2stZnJlcXVlbmN5
ID0gPDEyNTAwMDAwMD47Cj4gPiA+ICsgICAgICAgICAgICAgY2xvY2stb3V0cHV0LW5hbWVzID0g
ImNsa19nbWFjMV94cGNzX21paSI7Cj4gPiA+ICsgICAgICAgICAgICAgI2Nsb2NrLWNlbGxzID0g
PDA+Owo+ID4gPiArICAgICB9Owo+ID4gPiArCj4gPgo+ID4gdGhlc2UgY2xvY2tzIGRvbid0IGJl
bG9uZyBoZXJlLgo+ID4KPiA+IFdoZW4geW91IHBsYWNlIHRoZXNlIG5vZGVzIGluIHRoZSBtYWlu
LCB0aGV5IHNlZW0gdG8gY29tZSBvdXQgb2YKPiA+IHRoaW4gYWlyLCB3aGlsZSB0aGF0IG1pZ2h0
IGJlIHRydWUgZm9yIHNvbWUgYm9hcmRzLCB0aGF0IHRoZXkKPiA+IGhhdmUgZGVkaWNhdGVkIG9z
Y2lsbGF0b3JzIGZvciB0aGF0LCB0aGlzIHdpbGwgbGlrZWx5IG5vdCBiZSB0cnVlCj4gPiBmb3Ig
YWxsLgo+ID4KPiA+IFNvIHRoZXNlIHNob3VsZCBiZSBkZWZpbmVkIGluIHRoZSBib2FyZCBkdHMs
IHRvIG1hdGNoIHRoZSBhY3R1YWwKPiA+IGhhcmR3YXJlLgo+ID4KPiA+Cj4gPiBIZWlrbwo+ID4K
PiAKPiBIaSBIZWlrbywKPiAKPiBPa2F5LCB0aGVzZSBhcmUgYm9hcmQtbGV2ZWwgY2xvY2sgc291
cmNlcywgbm90IHNvbWV0aGluZyB0aGUgU29DCj4gcHJvdmlkZXMuIE1vdmluZyBib3RoIGZpeGVk
LWNsb2NrIG5vZGVzIHRvIHRoZSBQaG90b25pY2F0IERUUyBhbmQKPiBsZWF2aW5nIG9ubHkgdGhl
IHhwY3Mgbm9kZSBpbiByazM1NjguZHRzaS4KPiAKPiBJJ2xsIHJlc3Bpbi4KCnBsZWFzZSBhbHNv
IGF0IGxlYXN0IGRlc2NyaWJlIGluIHRoZSBjb21taXQgbWVzc2FnZSwgd2hlcmUgdGhlCmJvYXJk
IGdlbmVyYXRlcyB0aGVzZSBjbG9ja3MuCgpUaGFua3MKSGVpa28KCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
