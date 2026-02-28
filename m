Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FCE2FEE4C9
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Feb 2026 11:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j4jGxjZbK788ec9RT7iYGBHWs2BB14oElqWbmFDAy3M=; b=H5QfXoo/2NSLae
	09HZ/xH1MWmU0jAIJG99egfnVLHCk4rOlx5tIIorEHw+rACRv7bVvj/+k8G7e8RQoIvPv1Xj4lzEZ
	5lCr1qJ/wAhR9r14Fqbp8Px+iE7oSmMtxquzRTTW+k4bjmDlIPM3Mo3Z3Yb+pHfHAdSaCn3XUBh4W
	Iq537wbfmcW6DNZCUyIVcVwcu716+JKW0muhUO1hMuWcsN4dQxuN5BltgQJPiTA1vBGIWquNLTZoy
	m7L7nmtsrNm3Tsy6wEnv4BgB/wkdtyXqIiZAuB09jj/cdKt0g+MOAdZ1fpf5yGyjCVqawj54aW+V1
	ZJfkEbzdhQUb3QBq0n0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwIgg-00000009ndi-0wLn;
	Sat, 28 Feb 2026 11:40:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwIgc-00000009ndF-3TLJ;
	Sat, 28 Feb 2026 11:40:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=UTE9c1BHJn1ZjTSBIvzmfFexOwAmFAsdMAjNupz4+Oo=; b=bs/sXo+VvGB98Gvl510BWT5k1j
	FvkeFhe5euRSGn/P77K9Pl7DhCM0iUDUxjlo6ix77WjWZirFv2mCtgiXECRjgt5Et5O05dRVrRndm
	okDku3G2feFdUL31Wqk9SlBhSl7WOLOxKor3h4CAKgOfL9CUWxmSAO5+865EydyU7Bd73GF6msuPR
	jYh3GGxUH/memvqDatrno/74P87IkL5yTSyCgqXS8Simn0y4vg+Lq0Gv+h7+UhaIowIpAFl0hXv6D
	M84y7rtVz5C6TTKuEdBUlv3S4tbOXfeCHrQfyW8dmkJCNw0VsPd7KmK1XolFcbI5sFKUZ0Keweo3a
	h3EEauJw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: rk3036: Move PHY reset to ethernet-phy
 node
Date: Sat, 28 Feb 2026 12:40:36 +0100
Message-ID: <2819870.mvXUDI8C0e@phil>
In-Reply-To: <20260228013257.256973-1-festevam@gmail.com>
References: <20260228013257.256973-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260228_034043_031499_A36507AB 
X-CRM114-Status: GOOD (  17.29  )
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

SGkgRmFiaW8sCgpBbSBTYW1zdGFnLCAyOC4gRmVicnVhciAyMDI2LCAwMjozMjo1NiBNaXR0ZWxl
dXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIEZhYmlvIEVzdGV2YW06Cj4gQWNjb3JkaW5n
IHRvIHJvY2tjaGlwLGVtYWMueWFtbCwgJ3BoeS1yZXNldC1kdXJhdGlvbicgYW5kICdwaHktcmVz
ZXQtZ3Bpb3MnCj4gYXJlIG5vdCB2YWxpZCBwcm9wZXJ0aWVzLgo+IAo+IFVzZSB0aGUgdmFsaWQg
J3Jlc2V0LWdwaW9zJyBhbmQgJ3Jlc2V0LWFzc2VydC11cycgcHJvcGVydGllcyB1bmRlcgo+IHRo
ZSBldGhlcm5lLXBoeSBub2RlLgo+IAo+IFRoaXMgZml4ZXMgdGhlIGZvbGxvd2luZyBkdC1zY2hl
bWEgd2FybmluZzoKPiAKPiBVbmV2YWx1YXRlZCBwcm9wZXJ0aWVzIGFyZSBub3QgYWxsb3dlZCAo
J3BoeS1yZXNldC1kdXJhdGlvbicsCj4gJ3BoeS1yZXNldC1ncGlvcycgd2VyZSB1bmV4cGVjdGVk
KQo+IAo+IFNpZ25lZC1vZmYtYnk6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4K
CgpwbGVhc2UgZG9uJ3Qgc2VuZCBwYXRjaGVzIHRoYXQgInNpbXBseSIgZml4IGRldmljZXRyZWUg
d2FybmluZ3MuCgpBcyB5b3UgY2FuIHNlZSBpbiBbMF0gdGhlIGRyaXZlciB1c2VzIHRoZXNlIHBy
b3BlcnRpZXMgY3VycmVudGx5LgpTbyB3aGlsZSB0aGlzIGZpeGVzIHNjaGVtYSB3YXJuaW5ncywg
aXQgd2lsbCBicmVhayB0aGUgYWN0dWFsIGJvYXJkcy4KClNvIGZpcnN0IG9mIGFsbCB5b3UnbGwg
bmVlZCB0byBhZGFwdCB0aGUgZHJpdmVyIHRvIGhhbmRsZSB0aGUgIm9mZmljaWFsIgpwcm9wZXJ0
aWVzIGFuZCBhbHNvIHByb3ZpZGUgYSBmYWxsYmFjayBpbiB0aGUgZHJpdmVyIGZvciBvbGQgZGV2
aWNldHJlZXMuCgpPbmx5IHRoZW4gY2FuIHdlIHRoaW5rIGFib3V0IG1vZGlmeWluZyB0aGUgYWN0
dWFsIGRldmljZXRyZWVzIGZvcgp0aGUgZnV0dXJlLgoKClRoYW5rcwpIZWlrbwoKWzBdIGh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4
LmdpdC90cmVlL2RyaXZlcnMvbmV0L2V0aGVybmV0L2FyYy9lbWFjX21kaW8uYyNuMTUzCgoKPiAt
LS0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMDM2LWV2Yi5kdHMgICB8IDQgKyst
LQo+ICBhcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9yazMwMzYta3lsaW4uZHRzIHwgNCArKy0t
Cj4gIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9yazMwMzYtZXZiLmR0cyBi
L2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzAzNi1ldmIuZHRzCj4gaW5kZXggYmVjZGMw
YjY2NGJmLi5jODEwMGRjNGM3Y2UgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcm9j
a2NoaXAvcmszMDM2LWV2Yi5kdHMKPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9y
azMwMzYtZXZiLmR0cwo+IEBAIC0xNiw4ICsxNiw2IEBAIG1lbW9yeUA2MDAwMDAwMCB7Cj4gIAo+
ICAmZW1hYyB7Cj4gIAlwaHkgPSA8JnBoeTA+Owo+IC0JcGh5LXJlc2V0LWR1cmF0aW9uID0gPDEw
PjsgLyogbWlsbGlzZWNvbmQgKi8KPiAtCXBoeS1yZXNldC1ncGlvcyA9IDwmZ3BpbzIgUktfUEM2
IEdQSU9fQUNUSVZFX0xPVz47IC8qIFBIWV9SU1QgKi8KPiAgCXBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7Cj4gIAlwaW5jdHJsLTAgPSA8JmVtYWNfeGZlcj4sIDwmZW1hY19tZGlvPjsKPiAgCXN0
YXR1cyA9ICJva2F5IjsKPiBAQCAtMjgsNiArMjYsOCBAQCBtZGlvIHsKPiAgCj4gIAkJcGh5MDog
ZXRoZXJuZXQtcGh5QDAgewo+ICAJCQlyZWcgPSA8MD47Cj4gKwkJCXJlc2V0LWdwaW9zID0gPCZn
cGlvMiBSS19QQzYgR1BJT19BQ1RJVkVfTE9XPjsKPiArCQkJcmVzZXQtYXNzZXJ0LXVzID0gPDEw
MDAwPjsKPiAgCQl9Owo+ICAJfTsKPiAgfTsKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9k
dHMvcm9ja2NoaXAvcmszMDM2LWt5bGluLmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzAzNi1reWxpbi5kdHMKPiBpbmRleCBhZTJmODRhNGU5MjIuLmJjNmU2NDY4ZmNjNCAxMDA2
NDQKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9yazMwMzYta3lsaW4uZHRzCj4g
KysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMDM2LWt5bGluLmR0cwo+IEBAIC0x
MDIsOCArMTAyLDYgQEAgJmFjb2RlYyB7Cj4gIAo+ICAmZW1hYyB7Cj4gIAlwaHkgPSA8JnBoeTA+
Owo+IC0JcGh5LXJlc2V0LWR1cmF0aW9uID0gPDEwPjsgLyogbWlsbGlzZWNvbmQgKi8KPiAtCXBo
eS1yZXNldC1ncGlvcyA9IDwmZ3BpbzIgUktfUEM2IEdQSU9fQUNUSVZFX0xPVz47IC8qIFBIWV9S
U1QgKi8KPiAgCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gIAlwaW5jdHJsLTAgPSA8JmVt
YWNfeGZlcj4sIDwmZW1hY19tZGlvPjsKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiBAQCAtMTE0LDYg
KzExMiw4IEBAIG1kaW8gewo+ICAKPiAgCQlwaHkwOiBldGhlcm5ldC1waHlAMCB7Cj4gIAkJCXJl
ZyA9IDwwPjsKPiArCQkJcmVzZXQtZ3Bpb3MgPSA8JmdwaW8yIFJLX1BDNiBHUElPX0FDVElWRV9M
T1c+Owo+ICsJCQlyZXNldC1hc3NlcnQtdXMgPSA8MTAwMDA+Owo+ICAJCX07Cj4gIAl9Owo+ICB9
Owo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
