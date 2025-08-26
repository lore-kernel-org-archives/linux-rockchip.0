Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D05ACA0FED
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Aug 2025 10:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l68CqRnaD+wp9JM4zMdvJY2k09ZKErO8U/lAvFtcybo=; b=l6LsDGNRmk0mea
	tiZ5dhsf4mV/LQAXWBuGzD+1NOmVtDjXAG+cAmk+VYrppmllxDmuUxglypEOZZ+iQh5zRpcUuny2D
	lGXlqTgFYgs5aS32P4T4K3u3zTuh/qvvjPGDQjS82uXN7mrJd0dEeyRXnD5Jx+f0cRmxLoo0nxqSp
	09Fb582t9yuYdKcFXKXTOCR/iTfkXn34bWYMFdyYvFaJZsjR/jb/M1JUhpvO8PGFt0QdVTJcUcPaX
	9w3MjUPLrCWApDbaPW7yMYyUDaD+2byPflKSHzE9ujyB4DlEUJsKIdVKYKQFXU2PyUUXGLNKHXXkp
	MiB1IT8+ajIWQ+81GYNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqr8l-0000000Becg-1HM3;
	Tue, 26 Aug 2025 10:42:59 +0000
Received: from mail-m1973191.qiye.163.com ([220.197.31.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqooQ-0000000AyTa-3Ob0;
	Tue, 26 Aug 2025 08:13:52 +0000
Received: from [172.16.12.153] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 20a3254b0;
	Tue, 26 Aug 2025 16:08:42 +0800 (GMT+08:00)
Message-ID: <8240a3cc-aade-40d8-b2f4-09681f76be68@rock-chips.com>
Date: Tue, 26 Aug 2025 16:08:40 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3] net: ethernet: stmmac: dwmac-rk: Make the
 clk_phy could be used for external phy
To: "Russell King (Oracle)" <linux@armlinux.org.uk>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jonas Karlman <jonas@kwiboo.se>, David Wu <david.wu@rock-chips.com>,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20250815023515.114-1-kernel@airkyi.com>
 <CGME20250825072312eucas1p2d4751199c0ea069c7938218be60e5e93@eucas1p2.samsung.com>
 <a30a8c97-6b96-45ba-bad7-8a40401babc2@samsung.com>
 <d0fe6d16-181f-4b38-9457-1099fb6419d0@rock-chips.com>
 <809848c9-2ffa-4743-adda-b8b714b404de@samsung.com>
 <aKxnHFSrVeM7Be5A@shell.armlinux.org.uk>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <aKxnHFSrVeM7Be5A@shell.armlinux.org.uk>
X-HM-Tid: 0a98e56c163203abkunmeb456a22128a486
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhlJTFZJHRpIT0lNTh1KT0hWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=UusjxQNFmrhgPsBeO4BSS3vwfcXBVWMPRqRdZNCreD0Y3L9qO8EqBSlYU2i1ULdp+iyY6GbBaf/00QZeXLzGw3wjtT9ZJo4HN1rR7oYsMs2ha4d9dM+kLxiPLGjbAciiCssQvAVh1ppofzqZbMudcpH4MkQE7IH114QtmiGhntE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=59s5xl47iUIECmsf5jnpdKqma5NgiHbA2ceA9PEBxGI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_011351_293349_BF773768 
X-CRM114-Status: GOOD (  18.65  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgUnVzc2VsbCwKCk9uIDgvMjUvMjAyNSA5OjM3IFBNLCBSdXNzZWxsIEtpbmcgKE9yYWNsZSkg
d3JvdGU6Cj4gT24gTW9uLCBBdWcgMjUsIDIwMjUgYXQgMTI6NTM6MzdQTSArMDIwMCwgTWFyZWsg
U3p5cHJvd3NraSB3cm90ZToKPj4gT24gMjUuMDguMjAyNSAxMTo1NywgQ2hhb3lpIENoZW4gd3Jv
dGU6Cj4+PiBPbiA4LzI1LzIwMjUgMzoyMyBQTSwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToKPj4+
PiBPbiAxNS4wOC4yMDI1IDA0OjM1LCBDaGFveWkgQ2hlbiB3cm90ZToKPj4+Pj4gRnJvbTogQ2hh
b3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+Pj4+Pgo+Pj4+PiBGb3IgZXh0
ZXJuYWwgcGh5LCBjbGtfcGh5IHNob3VsZCBiZSBvcHRpb25hbCwgYW5kIHNvbWUgZXh0ZXJuYWwg
cGh5Cj4+Pj4+IG5lZWQgdGhlIGNsb2NrIGlucHV0IGZyb20gY2xrX3BoeS4gVGhpcyBwYXRjaCBh
ZGRzIHN1cHBvcnQgZm9yIHNldHRpbmcKPj4+Pj4gY2xrX3BoeSBmb3IgZXh0ZXJuYWwgcGh5Lgo+
Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBEYXZpZCBXdSA8ZGF2aWQud3VAcm9jay1jaGlwcy5j
b20+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNo
aXBzLmNvbT4KPj4+Pj4gLS0tCj4+Pj4+Cj4+Pj4+IENoYW5nZXMgaW4gdjM6Cj4+Pj4+IC0gTGlu
ayB0byBWMjoKPj4+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjUwODEyMDEy
MTI3LjE5Ny0xLWtlcm5lbEBhaXJreWkuY29tLwo+Pj4+PiAtIFJlYmFzZSB0byBuZXQtbmV4dC9t
YWluCj4+Pj4+Cj4+Pj4+IENoYW5nZXMgaW4gdjI6Cj4+Pj4+IC0gTGluayB0byBWMToKPj4+Pj4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjUwODA2MDExNDA1LjExNS0xLWtlcm5l
bEBhaXJreWkuY29tLwo+Pj4+PiAtIFJlbW92ZSBnZXQgY2xvY2sgZnJlcXVlbmN5IGZyb20gRFQg
cHJvcAo+Pj4+Pgo+Pj4+PiAgwqDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1h
Yy9kd21hYy1yay5jIHwgMTEgKysrKysrKy0tLS0KPj4+Pj4gIMKgwqAgMSBmaWxlIGNoYW5nZWQs
IDcgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJrLmMKPj4+Pj4gYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1yay5jCj4+Pj4+IGluZGV4
IGFjODI4ODMwMTk5NC4uNWQ5MjFlNjJjMmY1IDEwMDY0NAo+Pj4+PiAtLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1yay5jCj4+Pj4+ICsrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJrLmMKPj4+Pj4gQEAgLTE0MTIsMTIg
KzE0MTIsMTUgQEAgc3RhdGljIGludCBya19nbWFjX2Nsa19pbml0KHN0cnVjdAo+Pj4+PiBwbGF0
X3N0bW1hY2VuZXRfZGF0YSAqcGxhdCkKPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNsa19z
ZXRfcmF0ZShwbGF0LT5zdG1tYWNfY2xrLCA1MDAwMDAwMCk7Cj4+Pj4+ICDCoMKgwqDCoMKgwqAg
fQo+Pj4+PiAgwqDCoCAtwqDCoMKgIGlmIChwbGF0LT5waHlfbm9kZSAmJiBic3BfcHJpdi0+aW50
ZWdyYXRlZF9waHkpIHsKPj4+Pj4gK8KgwqDCoCBpZiAocGxhdC0+cGh5X25vZGUpIHsKPj4+Pj4g
IMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJzcF9wcml2LT5jbGtfcGh5ID0gb2ZfY2xrX2dldChwbGF0
LT5waHlfbm9kZSwgMCk7Cj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXQgPSBQVFJfRVJS
X09SX1pFUk8oYnNwX3ByaXYtPmNsa19waHkpOwo+Pj4+PiAtwqDCoMKgwqDCoMKgwqAgaWYgKHJl
dCkKPj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2
LCByZXQsICJDYW5ub3QgZ2V0IFBIWSBjbG9ja1xuIik7Cj4+Pj4+IC3CoMKgwqDCoMKgwqDCoCBj
bGtfc2V0X3JhdGUoYnNwX3ByaXYtPmNsa19waHksIDUwMDAwMDAwKTsKPj4+Pj4gK8KgwqDCoMKg
wqDCoMKgIC8qIElmIGl0IGlzIG5vdCBpbnRlZ3JhdGVkX3BoeSwgY2xrX3BoeSBpcyBvcHRpb25h
bCAqLwo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKGJzcF9wcml2LT5pbnRlZ3JhdGVkX3BoeSkg
ewo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAocmV0KQo+Pj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgcmV0LCAiQ2Fu
bm90IGdldCBQSFkKPj4+Pj4gY2xvY2tcbiIpOwo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBjbGtfc2V0X3JhdGUoYnNwX3ByaXYtPmNsa19waHksIDUwMDAwMDAwKTsKPj4+Pj4gK8KgwqDC
oMKgwqDCoMKgIH0KPj4+IEkgdGhpbmvCoCB3ZSBzaG91bGQgc2V0IGJzcF9wcml2LT5jbGtfcGh5
IHRvIE5VTEwgaGVyZSBpZiB3ZSBmYWlsZWQgdG8KPj4+IGdldCB0aGUgY2xvY2suCj4+Pgo+Pj4g
Q291bGQgeW91IHRyeSB0aGlzIG9uIHlvdXIgYm9hcmQ/IFRoYW5rIHlvdS4KPj4gUmlnaHQsIHRo
ZSBmb2xsb3dpbmcgY2hhbmdlIGFsc28gZml4ZXMgdGhpcyBpc3N1ZToKPj4KPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJrLmMKPj4gYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1yay5jCj4+IGluZGV4IDlm
YzQxMjA3Y2M0NS4uMmQxOWQ0OGJlMDFmIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1yay5jCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJrLmMKPj4gQEAgLTE0MTUsNiArMTQxNSw4IEBAIHN0
YXRpYyBpbnQgcmtfZ21hY19jbGtfaW5pdChzdHJ1Y3QKPj4gcGxhdF9zdG1tYWNlbmV0X2RhdGEg
KnBsYXQpCj4+ICAgwqDCoMKgwqDCoMKgwqAgaWYgKHBsYXQtPnBoeV9ub2RlKSB7Cj4+ICAgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJzcF9wcml2LT5jbGtfcGh5ID0gb2ZfY2xrX2dl
dChwbGF0LT5waHlfbm9kZSwgMCk7Cj4+ICAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJldCA9IFBUUl9FUlJfT1JfWkVSTyhic3BfcHJpdi0+Y2xrX3BoeSk7Cj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGlmIChyZXQpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBic3BfcHJpdi0+Y2xrX3BoeSA9IE5VTEw7Cj4gT3IganVzdDoK
Pgo+IAkJY2xrID0gb2ZfY2xrX2dldChwbGF0LT5waHlfbm9kZSwgMCk7Cj4gCQlpZiAoY2xrID09
IEVSUl9QVFIoLUVQUk9CRV9ERUZFUikpCgpEbyB3ZSBhY3R1YWxseSBuZWVkIHRoaXM/wqBNYXli
ZSBvdGhlciBkZXZtX2Nsa19nZXQoKSBiZWZvcmUgaXQgd291bGQgZmFpbCBpbiBhZHZhbmNlLgoK
Cj4gCQkJLi4uCj4gCQllbHNlIGlmICghSVNfRVJSKQo+IAkJCWJzcF9wcml2LT5jbGtfcGh5ID0g
Y2xrOwo+Cj4gSSBkb24ndCBoYXZlIGEgZnJlZSB0ZXJtaW5hbCB0byB3b3JrIG91dCB3aGF0ICIu
Li4iIHNob3VsZCBiZS4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
