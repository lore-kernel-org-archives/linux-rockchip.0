Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3F65CDD0CB
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 18:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=45KrEFLNHrhyz3JkwBFVzfixblTVv1k91esAGMx9aaY=; b=0XDevWAh6iwFhF
	fuOQ2w8f3UbFO4UMQq/pu2U0EJ3mI326K/666l92Nv7rY5ZzPqBSRDD2WxfMrQfjiFm/FOAqQrTP1
	0B5wy/3wo4TvAnRhXJEIP5gCw5m6Q6e8Q8RuUr7DJ2vvdQC2Q0AHrg6SmOZPRagk8WG6Yd2dT0Xg7
	lCZOH04NRlnNMZ4mDYjuqx9GUDMfLG3TdFL1LMD38myPwh9ngSR8PbXoFEVenMW4cWLLSW19m4eUY
	/SuTkgf0Szd8d+kQa83HnsIJLpRc+FWrjh5mm0K71wyo8RVfoXIdqBWt52aWqXnu/4LkooyRlCm8I
	aiYUXRN4z8v0xb5XpZyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Jt7-0000000Bq6S-2l1b;
	Tue, 22 Oct 2024 18:45:49 +0000
Received: from smtp.forwardemail.net ([207.246.76.47])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Jrb-0000000Bpvn-32Kq
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Oct 2024 18:44:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1729622639;
 bh=y9CSSJn0ti9P2PomuGM1IpvY2dY35KS2ng6g8SPbTBs=;
 b=d7pOzWg0+Q3Kq5Whfwa4M7VV1ObjDnnaSHt5KjJ0yOehtub2K5RT2Rqe5f2a+yM3Ei1kHGCuQ
 mnBytlTMoUvqjtsI4w6bfY4uSrhFvOJ28opfUZ1nFczyIfbqgbKTryHtPcmJpYaV1ks7G4bWx5A
 L8fGjntoIBAWHTaojoqOZ3WtbnVFqZ6BCQVKAI4zTcxNKXr3I96SXXJ9ZTMVfaPe3IKMHQNhl9w
 nZb6z56DIe1Vh84MjztyhF8KHEo7xTROW+oICrIs184bzr/Hmpbaf3FIQWOYEKDUr0C0O4t8jaw
 k+MuYFHO6CgbbJUYbpxSf/txnxabQbLz0jpHhHf0w8FA==
Message-ID: <3669d2de-5324-4f48-a55c-942ce61d19bb@kwiboo.se>
Date: Tue, 22 Oct 2024 20:43:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add FriendlyARM NanoPi R3S
 board
To: Tianling Shen <cnsztl@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chris Morgan <macromorgan@hotmail.com>, Andy Yan <andyshrk@163.com>,
 Jagan Teki <jagan@edgeble.ai>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <c2a4e8a8-9466-41c4-83b3-57210fdf5a5c@kwiboo.se>
 <20241022181829.897547-1-cnsztl@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20241022181829.897547-1-cnsztl@gmail.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 6717f26eb5b2c22e6f61965d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_114416_013933_DB750B7B 
X-CRM114-Status: GOOD (  19.43  )
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

SGkgVGlhbmxpbmcsCgpPbiAyMDI0LTEwLTIyIDIwOjE4LCBUaWFubGluZyBTaGVuIHdyb3RlOgo+
IEhpIEpvbmFzLAo+IAo+IE9uIFdlZCwgT2N0IDIzLCAyMDI0IGF0IDE6NTbigK9BTSBKb25hcyBL
YXJsbWFuIDxqb25hc0Brd2lib28uc2U+IHdyb3RlOgo+Pgo+PiBIaSBUaWFubGluZywKPj4KPj4g
T24gMjAyNC0xMC0yMiAxOTozOCwgVGlhbmxpbmcgU2hlbiB3cm90ZToKPj4+IEhpIEpvbmFzLAo+
Pj4KPj4+IE9uIFdlZCwgT2N0IDIzLCAyMDI0IGF0IDEyOjQ5w6LigqzCr0FNIEpvbmFzIEthcmxt
YW4gPGpvbmFzQGt3aWJvby5zZT4gd3JvdGU6Cj4+Pj4KPj4+PiBIaSBUaWFubGluZywKPj4+Pgo+
Pj4+IE9uIDIwMjQtMTAtMjAgMTk6MzksIFRpYW5saW5nIFNoZW4gd3JvdGU6Cj4+Pj4+IFRoZSBO
YW5vUGkgUjNTKGFzICJSM1MiKSBpcyBhbiBvcGVuIHNvdXJjZSBwbGF0Zm9ybSB3aXRoIGR1YWwt
R2Jwcwo+Pj4+PiBFdGhlcm5ldCBwb3J0cyBkZXNpZ25lZCBhbmQgZGV2ZWxvcGVkIGJ5IEZyaWVu
ZGx5RWxlYyBmb3IgSW9UCj4+Pj4+IGFwcGxpY2F0aW9ucy4KPj4+Pj4KPj4+Pj4gU3BlY2lmaWNh
dGlvbjoKPj4+Pj4gLSBSb2NrY2hpcCBSSzM1NjYKPj4+Pj4gLSAyR0IgTFBERFI0WCBSQU0KPj4+
Pj4gLSBvcHRpb25hbCAzMkdCIGVNTUMgbW9kdWxlCj4+Pj4+IC0gU0QgY2FyZCBzbG90Cj4+Pj4+
IC0gMnggMTAwMCBCYXNlLVQKPj4+Pj4gLSAzeCBMRURzIChQT1dFUiwgTEFOLCBXQU4pCj4+Pj4+
IC0gMnggQnV0dG9ucyAoUmVzZXQsIE1hc2tST00pCj4+Pj4+IC0gMXggVVNCIDMuMCBQb3J0Cj4+
Pj4+IC0gVHlwZS1DIDVWIDJBIFBvd2VyCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFRpYW5s
aW5nIFNoZW4gPGNuc3p0bEBnbWFpbC5jb20+Cj4+Pj4+IC0tLQo+Pj4+PiDDgiBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlIMOCIMKgw4IgwqDDgiDCoMOCIMKgfCDDgiDCoDEg
Kwo+Pj4+PiDDgiAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LW5hbm9waS1yM3MuZHRzIMOC
IMKgfCA1NTQgKysrKysrKysrKysrKysrKysrCj4+Pj4+IMOCIDIgZmlsZXMgY2hhbmdlZCwgNTU1
IGluc2VydGlvbnMoKykKPj4+Pj4gw4IgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTY2LW5hbm9waS1yM3MuZHRzCj4+Pj4+Cj4+Pj4+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+Pj4+PiBpbmRleCA4ZTEwMjVjYjVkMjAuLmU2NDEw
MzNkMjNkMSAxMDA2NDQKPj4+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9N
YWtlZmlsZQo+Pj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxl
Cj4+Pj4+IEBAIC0xMDksNiArMTA5LDcgQEAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9
IHJrMzU2Ni1zb3F1YXJ0ei1tb2RlbC1hLmR0Ygo+Pj4+PiDDgiBkdGItJChDT05GSUdfQVJDSF9S
T0NLQ0hJUCkgKz0gcmszNTY2LWJveC1kZW1vLmR0Ygo+Pj4+PiDDgiBkdGItJChDT05GSUdfQVJD
SF9ST0NLQ0hJUCkgKz0gcmszNTY2LWxja2ZiLXRzcGkuZHRiCj4+Pj4+IMOCIGR0Yi0kKENPTkZJ
R19BUkNIX1JPQ0tDSElQKSArPSByazM1NjYtbHViYW5jYXQtMS5kdGIKPj4+Pj4gK2R0Yi0kKENP
TkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1NjYtbmFub3BpLXIzcy5kdGIKPj4+Pj4gw4IgZHRi
LSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU2OC1icGktcjItcHJvLmR0Ygo+Pj4+PiDD
giBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY4LWV2YjEtdjEwLmR0Ygo+Pj4+
PiDDgiBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY4LWZhc3RyaGluby1yNjZz
LmR0Ygo+Pj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
NjYtbmFub3BpLXIzcy5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1u
YW5vcGktcjNzLmR0cwo+Pj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+Pj4+PiBpbmRleCAwMDAw
MDAwMDAwMDAuLjk1MWRkOWJjYjRiMAo+Pj4+PiAtLS0gL2Rldi9udWxsCj4+Pj4+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LW5hbm9waS1yM3MuZHRzCj4+Pj4+IEBA
IC0wLDAgKzEsNTU0IEBACj4+Pj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MC1vci1sYXRlciBPUiBNSVQKPj4+Pj4gKy8qCj4+Pj4+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjAg
Um9ja2NoaXAgRWxlY3Ryb25pY3MgQ28uLCBMdGQuCj4+Pj4+ICsgKgo+Pj4+PiArICogQ29weXJp
Z2h0IChjKSAyMDI0IEZyaWVuZGx5RWxlYyBDb21wdXRlciBUZWNoLiBDby4sIEx0ZC4KPj4+Pj4g
KyAqIChodHRwOi8vd3d3LmZyaWVuZGx5YXJtLmNvbS8KPj4KPj4gVGhpcyBjb3VsZCBwcm9iYWJs
eSBiZSB1cGRhdGVkIHRvIHVzZSBodHRwczovL3d3dy5mcmllbmRseWVsZWMuY29tLwo+IAo+IFll
cyEKPiAKPj4KPj4+Pj4gKyAqCj4+Pj4+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjQgVGlhbmxpbmcg
U2hlbiA8Y25zenRsQGdtYWlsLmNvbT4KPj4+Pj4gKyAqLwo+Pj4+PiArCj4+Pj4+ICsvZHRzLXYx
LzsKPj4+Pj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KPj4+Pj4gKyNpbmNs
dWRlIDxkdC1iaW5kaW5ncy9pbnB1dC9pbnB1dC5oPgo+Pj4+PiArI2luY2x1ZGUgPGR0LWJpbmRp
bmdzL2xlZHMvY29tbW9uLmg+Cj4+Pj4+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcGluY3RybC9y
b2NrY2hpcC5oPgo+Pj4+PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3NvYy9yb2NrY2hpcCx2b3Ay
Lmg+Cj4+Pj4+ICsjaW5jbHVkZSAicmszNTY2LmR0c2kiCj4+Pj4+ICsKPj4+Pj4gKy8gewo+Pj4+
PiArIMOCIMKgw4IgwqBtb2RlbCA9ICJGcmllbmRseUFSTSBOYW5vUGkgUjNTIjsKPj4+Pgo+Pj4+
IFBsZWFzZSB1c2UgdGhlIG1hcmtldGluZyBuYW1lLCBhbmQgdGhlIG5hbWUgYWRkZWQgaW4gYmlu
ZGluZzoKPj4+Pgo+Pj4+IMOCIMKgw4IgRnJpZW5kbHlFbGVjIE5hbm9QaSBSM1MKPj4+Cj4+PiBT
b3JyeSBmb3IgdGhlIGNvcHkgJiBwYXN0ZSBlcnJvciwgd2lsbCBmaXggaXQgaW4gbmV3IHBhdGNo
Lgo+Pgo+PiBUaGUgY29tbWl0IHN1YmplY3QgY291bGQgcHJvYmFibHkgYWxzbyBiZSB1cGRhdGVk
IDotKQo+Pgo+Pj4KPj4+Pgo+Pj4+PiArIMOCIMKgw4IgwqBjb21wYXRpYmxlID0gImZyaWVuZGx5
YXJtLG5hbm9waS1yM3MiLCAicm9ja2NoaXAscmszNTY2IjsKPj4+Pj4gKwo+Pj4+PiArIMOCIMKg
w4IgwqBhbGlhc2VzIHsKPj4+Pj4gKyDDgiDCoMOCIMKgw4IgwqDDgiDCoMOCIMKgw4IgwqBldGhl
cm5ldDAgPSAmZ21hYzE7Cj4+Pj4+ICsgw4IgwqDDgiDCoMOCIMKgw4IgwqDDgiDCoMOCIMKgbW1j
MCA9ICZzZG1tYzA7Cj4+Pj4+ICsgw4IgwqDDgiDCoMOCIMKgw4IgwqDDgiDCoMOCIMKgbW1jMSA9
ICZzZGhjaTsKPj4+Pgo+Pj4+IFRoaXMgYm9hcmQgY29tZXMgd2l0aCBvbi1ib2FyZCBlTU1DIHRo
aXMgcGxlYXNlIHVzZSBtbWMwIGFzIGFsaWFzIGZvcgo+Pj4+ICZzZGhjaTsgYW5kIG1tYzEgZm9y
IHNkLWNhcmQuCj4+Pgo+Pj4gSXMgdXNpbmcgbW1jMCBmb3Igc2RoY2kgYSBjb21tb24gcHJhY3Rp
Y2UgZm9yIGVNTUMgYm9hcmRzPwo+Pj4gVGhlIGVNTUMgbW9kdWxlIG9uIFIzUyBpcyBvcHRpb25h
bCBhbmQgdXNlcnMgbWF5IGdldCBib2FyZHMgd2l0aG91dCBpdC4KPj4KPj4gVHlwaWNhbGx5IGFu
eSBub24tcmVtb3ZhYmxlIHN0b3JhZ2UgKGVtbWMpIGlzIGxpc3RlZCBiZWZvcmUgcmVtb3ZhYmxl
Cj4+IHN0b3JhZ2UgKHNkLWNhcmQpIG9wdGlvbnMuIEFsc28gVS1Cb290IHdpbGwgdHJ5IHRvIG92
ZXJyaWRlIGFuZCB1c2UKPj4gbW1jMD1zZGhjaSBhbmQgbW1jMT1zZG1tYzAgZm9yIGFsbCByazM1
NnggYm9hcmRzLCBzbyBmb3IgRUZJIGJvb2luZwo+PiB1c2luZyBjb250cm9sIEZEVCB0aGUgYWxp
YXMgbWF5IGJlIGRpZmZlcmVudC4KPj4KPiAKPiBUaGFuayB5b3UgZm9yIHRoZSBkZXRhaWxzISBN
YXkgSSBoYXZlIHlvdXIgU3VnZ2VzdGVkLWJ5IHRhZyBmb3IgYWxsCj4gb2YgdGhlc2UgZml4ZXM/
CgpTdXJlLAoKU3VnZ2VzdGVkLWJ5OiBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+CgpS
ZWdhcmRzLApKb25hcwoKPiAKPiBUaGFua3MsCj4gVGlhbmxpbmcuCj4gCj4+IFJlZ2FyZHMsCj4+
IEpvbmFzCj4+Cj4+IFtzbmlwXQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
