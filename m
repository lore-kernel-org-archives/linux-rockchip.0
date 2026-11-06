Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E82606A330
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Nov 2026 08:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KZVQAFJd;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=nyKGNyB1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=00rQ/BIII73Ou6mD7ksYSMqfhzWD3B19YWhHQv8ACMY=; b=KZVQAFJd54PVqXHWpzNEeBSJTq
	PBn99z2iOSfomAzBasyovbFJ22ShUAzTBizZcZTzOrLVpbmr3hoUYmOI9BEpSPLRlNc2XzVqJc+kG
	JLXKReLSiWQw8ihEzAOM5w0rtvvME2WbAZSID0yxK/jP/oV8tiKMkKPt+FSQBTJpVTeKYhId/I4Dt
	o4+/llS4mQGov9PP/lb+Y4QA5dGaBfXagjtS7oBUkkHo7lSQen5oeEAFaZcUQBRGoCfWM974xBrjp
	vzmBeZYuhH2Q4ZEtAO0p+HWkNfTmFCmrl/Jow55Hc4iX2C6y4mpcqKjRX67kkUo0rzsQZv8y8V4iQ
	gkYR2YUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPF12-0000000BWhJ-42i9;
	Fri, 06 Nov 2026 08:09:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPF10-0000000BWfw-0CNe;
	Fri, 06 Nov 2026 08:09:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=CHrI1kjHp/5iGoHZkZHTx8sVaxFMZq6Cnqe7sXoFPl4=; b=nyKGNyB1GN6bxn4Vmwjn3rF3UC
	+S8e/L/utkMkZDWQB31Si0I9y2MoS9aqjmU0uqp4avOKj855x9tM96oti7qTMCttyqW2YCf3oNTTQ
	XtOiVdPRnJUSuPtzt3+81bNXLLSfJYw2oM69FTSKx1A1Mu2MK/Qud1sdG97DC7e+8dzaB7hKYSHQA
	ZtK85bgLt0fQ46ldrAbI4dWVGfomHEYciJPMfriFCLE2SkMkuEZ3PJh+712CrwsWCKQsbnSH7Q2uz
	IWQHV8KK4ncTo3QbYNe2guilYO+4veWMqUbly7fXO5B3W+rLAu7PvrBYp4xwqc4P5BbI4PMH8G63s
	FFUKU4Qg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Yaozhong Li <yaozhonguwl@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Yaozhong Li <yaozhonguwl@gmail.com>
Subject: Re: [PATCH v3] arm64: dts: rockchip: enable SD UHS-I on Firefly-RK3399
Date: Fri, 06 Nov 2026 09:09:30 +0100
Message-ID: <6900453.LvFx2qVVIh@diego>
In-Reply-To: <20261106061835.1316-1-yaozhonguwl@gmail.com>
References: <20261106061835.1316-1-yaozhonguwl@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_000938_109344_8D4F1A8C 
X-CRM114-Status: GOOD (  23.00  )
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGksCgpBbSBGcmVpdGFnLCA2LiBOb3ZlbWJlciAyMDI2LCAwNzoxODozNSBNaXR0ZWxldXJvcMOk
aXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIFlhb3pob25nIExpOgpbLi4uXQo+IC0gRGVzY3JpYmUg
dGhlIHNsb3QncyBvd24gc3VwcGx5LCB2Y2Nfc2QsIGFuZCB1c2UgaXQgYXMgdGhlIHNkbW1jCj4g
ICB2bW1jLXN1cHBseSAoSGVpa28pLiBJdCBpcyBmZWQgZnJvbSB2Y2MzdjNfc3lzLCBhbmQgR1BJ
TzRfRDYgY29udHJvbHMKPiAgIHRoZSBzbG90IHBvd2VyIHN3aXRjaDogaG9sZGluZyB0aGUgcGlu
IGxvdyBsZWF2ZXMgdGhlIGNhcmQgdW5wb3dlcmVkLgo+ICAgVGhpcyBpcyB0aGUgc2FtZSBhcnJh
bmdlbWVudCBhcyB2Y2MzdjBfc2Qgb24gdGhlIFJPQy1QQy4gVGhlIGV4aXN0aW5nLAo+ICAgdW5y
ZWZlcmVuY2VkIGxjZF9wYW5lbF9yZXNldCBwaW5jdHJsIGVudHJ5IGFsc28gbmFtZXMgR1BJTzRf
RDY7IHRoZQo+ICAgdmVuZG9yIHRyZWUgdXNlcyB0aGUgcGluIG9ubHkgZm9yIHZjY19zZC4KCkkg
eW91J3JlIHJlYWRpbmcgdGhlIHNjaGVtYXRpY3MsIHRoaXMgaXMgd3JvbmcuCgpJbiB0aGUgc2No
ZW1hdGljcyBmaWxlIFNoYXduIGxpbmtlZCB0byBlYXJsaWVyIChhbmQgYWxzbyB0aGUgb25lIEkg
aGF2ZSksCkdQSU80X0Q2IGlzIGNvbm5lY3RlZCB0byB0aGUgcmVzZXQtcGluIG9mIGFuIEFUMTgu
CgpXaGlsZSB0aGUgdmNjM3YwX3NkIGlzIGFuIGFsd2F5cyBvbiByZWd1bGF0b3IgY29taW5nIGZy
b20gdmNjM3YzX3N5cy4KQXMgc3RhdGVkIGluIHYyLCBzZWUgcGFnZSAyMCBvZiB5b3VyIHNjaGVt
YXRpY3MuCgpTbyB5b3UgZXNzZW50aWFsbHkganVzdCBzZXQgdm1tYy1zdXBwbHkgdG8gdmNjM3Yz
X3N5cy4gQXMgSSBzYWlkIHRoYXQgaXMKbWVyZWx5IGRlc2NyaXB0aXZlLgoKCkhlaWtvCgo+IC0g
TGluayB0byB2MjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYxMTA1MTAyNTU2LjEz
NjUtMS15YW96aG9uZ3V3bEBnbWFpbC5jb20vCj4gCj4gQ2hhbmdlcyBpbiB2MjoKPiAtIFBvaW50
IHRoZSBzZGlvMCB2bW1jLXN1cHBseSBhdCB2Y2MzdjNfc3lzLCB0aGUgV2lGaSBtb2R1bGUncyBW
QkFUIGlucHV0LAo+ICAgaW5zdGVhZCBvZiBkcm9wcGluZyBpdCAoSGVpa28pCj4gLSBSZXdyaXRl
IHRoZSBjb21taXQgbWVzc2FnZSAoSGVpa28pCj4gLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvMjAyNjA5MjIwNTUwMTEuMTQ5NzItMS15YW96aG9uZ3V3bEBnbWFpbC5j
b20vCj4gCj4gT24gdGhlIGJvb3QtdGltZSBpc3N1ZSBkZXNjcmliZWQgaW4gdjI6IHdpdGggdGhl
IHZtbWMtc3VwcGx5IGluIHBsYWNlCj4gdGhlIHNkbW1jIGNvbnRyb2xsZXIgbm93IHByb2JlcyBh
ZnRlciB0aGUgR1JGIGlvLWRvbWFpbiBoZXJlLCBhbmQgYSBjYXJkCj4gcHJlc2VudCBhdCBib290
IGNhbWUgdXAgaW4gU0RSMTA0IGluIDUgb2YgNSB3YXJtIGJvb3RzLCBhZ2FpbnN0IDAgb2YgOAo+
IGJlZm9yZS4gVGhhdCBpcyBhIGNoYW5nZSBpbiBwcm9iZSBvcmRlciByYXRoZXIgdGhhbiBhIGZp
eCBmb3IgdGhlCj4gb3JkZXJpbmcgcHJvYmxlbSBpdHNlbGYuCj4gCj4gIC4uLi9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTktZmlyZWZseS5kdHMgICAgICB8IDI0ICsrKysrKysrKysrKysrKysrKy0K
PiAgMSBmaWxlIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZmlyZWZseS5k
dHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1maXJlZmx5LmR0cwo+IGlu
ZGV4IDA1NjhkZmEuLjAzODU4YTQgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTktZmlyZWZseS5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS1maXJlZmx5LmR0cwo+IEBAIC0yMzMsNiArMjMzLDE5IEBAIHZjYzV2MF90
eXBlYzogcmVndWxhdG9yLXZjYzV2MC10eXBlYyB7Cj4gIAkJdmluLXN1cHBseSA9IDwmdmNjX3N5
cz47Cj4gIAl9Owo+ICAKPiArCXZjY19zZDogcmVndWxhdG9yLXZjYy1zZCB7Cj4gKwkJY29tcGF0
aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ICsJCWVuYWJsZS1hY3RpdmUtaGlnaDsKPiArCQln
cGlvID0gPCZncGlvNCBSS19QRDYgR1BJT19BQ1RJVkVfSElHSD47Cj4gKwkJcGluY3RybC1uYW1l
cyA9ICJkZWZhdWx0IjsKPiArCQlwaW5jdHJsLTAgPSA8JnZjY19zZF9lbj47Cj4gKwkJcmVndWxh
dG9yLW5hbWUgPSAidmNjX3NkIjsKPiArCQlyZWd1bGF0b3ItYm9vdC1vbjsKPiArCQlyZWd1bGF0
b3ItbWluLW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiArCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9s
dCA9IDwzMzAwMDAwPjsKPiArCQl2aW4tc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKPiArCX07Cj4g
Kwo+ICAJdmNjX3N5czogcmVndWxhdG9yLXZjYy1zeXMgewo+ICAJCWNvbXBhdGlibGUgPSAicmVn
dWxhdG9yLWZpeGVkIjsKPiAgCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2Nfc3lzIjsKPiBAQCAtNzMx
LDYgKzc0NCwxMiBAQCB3aWZpX2VuYWJsZV9oOiB3aWZpLWVuYWJsZS1oIHsKPiAgCQl9Owo+ICAJ
fTsKPiAgCj4gKwlzZG1tYyB7Cj4gKwkJdmNjX3NkX2VuOiB2Y2Mtc2QtZW4gewo+ICsJCQlyb2Nr
Y2hpcCxwaW5zID0gPDQgUktfUEQ2IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+ICsJ
CX07Cj4gKwl9Owo+ICsKPiAgCXVzYi10eXBlYyB7Cj4gIAkJdmNjNXYwX3R5cGVjX2VuOiB2Y2M1
djBfdHlwZWNfZW4gewo+ICAJCQlyb2NrY2hpcCxwaW5zID0gPDEgUktfUEEzIFJLX0ZVTkNfR1BJ
TyAmcGNmZ19wdWxsX3VwPjsKPiBAQCAtNzc3LDcgKzc5Niw3IEBAICZzZGlvMCB7Cj4gIAo+ICAJ
LyogUG93ZXIgc3VwcGx5ICovCj4gIAl2cW1tYy1zdXBwbHkgPSA8JnZjYzF2OF9zMz47CS8qIElP
IGxpbmUgKi8KPiAtCXZtbWMtc3VwcGx5ID0gPCZ2Y2Nfc2Rpbz47CS8qIGNhcmQncyBwb3dlciAq
Lwo+ICsJdm1tYy1zdXBwbHkgPSA8JnZjYzN2M19zeXM+OwkvKiBjYXJkJ3MgcG93ZXIgKi8KPiAg
Cj4gIAkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiAgCSNzaXplLWNlbGxzID0gPDA+Owo+IEBAIC04
MDQsNiArODIzLDkgQEAgJnNkbW1jIHsKPiAgCW1heC1mcmVxdWVuY3kgPSA8MTUwMDAwMDAwPjsK
PiAgCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gIAlwaW5jdHJsLTAgPSA8JnNkbW1jX2Ns
ayAmc2RtbWNfY21kICZzZG1tY19idXM0PjsKPiArCXNkLXVocy1zZHIxMDQ7Cj4gKwl2bW1jLXN1
cHBseSA9IDwmdmNjX3NkPjsKPiArCXZxbW1jLXN1cHBseSA9IDwmdmNjX3NkaW8+Owo+ICAJc3Rh
dHVzID0gIm9rYXkiOwo+ICB9Owo+ICAKPiAKPiBiYXNlLWNvbW1pdDogOTQwZGU1OTBiODM5Zjcx
ZDZkYzg0NjE2MDUzNGJmMjAyNDAxYjhiNwo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
