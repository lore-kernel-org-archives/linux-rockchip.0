Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07BFDC28B30
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Mar 2025 22:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BaLwW5syzvCk0uAm9SQVk/nuWPS+shhPsjQy92m8b8E=; b=BHy+nVUPALIIU/
	Zl4vfwVmvKuH4kyCTZcMvdT19Fvg1rC6aWVgveHpkQygdP1jg0BahEvSbdc5VJC8UZ1alRSXSzIXY
	gsAqXcGX3i2aDmu1T/tyHfZ/RacL6+RQU5iWUvcJVeOTQqcnTCzi8GTq9Az9MJ+FCySwN1YyTRGRn
	PKEoZ2Up/1V/gVZy2v/927DhQLB5dkP3SvrSRVwdMGqJdYsTyJuo6DDmzE3GFuqKRn+nHYsSzkHFH
	Y0aUfrKPVk8XBJy3XMgIqRgK0ql425STadVVGEW2TF/GwouDm3g58AstZ+cd+/yKFEiGxORbYDn62
	k9I2T4nKFPf0SwqtcyBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twTQE-00000001mmd-03Rg;
	Sun, 23 Mar 2025 22:03:58 +0000
Received: from smtp.forwardemail.net ([121.127.44.59])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twTQA-00000001mly-1qhv
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Mar 2025 22:03:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: References: Cc:
 To: From: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1742767433;
 bh=XY3BA1Vv02oLfVKMD+vhtMt4wqV14ktZSaEZlGUTwv8=;
 b=jbqF4OpMJbfYya2OvlaUKDGR2wW1oCtuVa+C6f2lraNb7zuCZrG+k5X02stoDhHaTUtx88EEa
 ldl3x2oJlqD9+Nzr684FEuFNzg6j2pFT9JAz8CDr6uJp7+6XFPYwcH1VgnOR+xv3zo7mZZreWIO
 gnKElRI4odGtfNF1Vs3EsJfhHsZMhg92WXNtJGa9E+r7yp4UuK55Xu2QxLEXdXgTRAK/ewUps3S
 p3CBjtxNUaIluZRXGbI6K35pk5JnRQfu28Qb3aRdrbXKSfSpY9ltSzE3kSIRnZH1/obFXVd5ieh
 Yq4G70nDn7aym2wxR8xkmMat+HKCvTSCZHnwtviVDWpQ==
X-Forward-Email-ID: 67e08547bd529871d5f812bb
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.59
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <364bed4f-4ae1-48d5-ae6e-369668456d8e@kwiboo.se>
Date: Sun, 23 Mar 2025 23:03:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: rockchip: Add pwm nodes for RK3528
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Chukun Pan <amadeus@jmu.edu.cn>
Cc: Yao Zi <ziyao@disroot.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250318120003.2340652-1-amadeus@jmu.edu.cn>
 <20250318120003.2340652-2-amadeus@jmu.edu.cn>
 <0d638134-0c0d-4918-af47-e23d2ead3bf3@kwiboo.se> <2499436.jE0xQCEvom@phil>
 <0f0a35ba-d85d-49eb-92dd-7bc17358aeaf@kwiboo.se>
Content-Language: en-US
In-Reply-To: <0f0a35ba-d85d-49eb-92dd-7bc17358aeaf@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250323_150354_651075_46153626 
X-CRM114-Status: GOOD (  26.21  )
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

T24gMjAyNS0wMy0yMCAwODowMiwgSm9uYXMgS2FybG1hbiB3cm90ZToKPiBPbiAyMDI1LTAzLTIw
IDAwOjQ3LCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPj4gQW0gRG9ubmVyc3RhZywgMjAuIE3DpHJ6
IDIwMjUsIDAwOjI2OjE0IE1FWiBzY2hyaWViIEpvbmFzIEthcmxtYW46Cj4+PiBIaSBDaHVrdW4s
Cj4+Pgo+Pj4gT24gMjAyNS0wMy0xOCAxMzowMCwgQ2h1a3VuIFBhbiB3cm90ZToKPj4+PiBBZGQg
cHdtIG5vZGVzIGZvciBSSzM1MjguIFRoZSBQV00gY29yZSBvbiBSSzM1MjggaXMgdGhlIHNhbWUg
YXMKPj4+PiBSSzMzMjgsIGJ1dCB0aGUgZHJpdmVyIGRvZXMgbm90IHN1cHBvcnQgaW50ZXJydXB0
cyB5ZXQuCj4+Pgo+Pj4gVGhlIGRldmljZSB0cmVlIHNob3VsZCBkZXNjcmliZSB0aGUgaGFyZHdh
cmUsIG5vdCB3aGF0IHRoZSBkcml2ZXIKPj4+IHN1cHBvcnQsIHNvIGludGVycnVwdHMgc2hvdWxk
IHByb2JhYmx5IGJlIGluY2x1ZGVkLgo+Pj4KPj4+IEhvd2V2ZXIsIGxvb2tpbmcgY2xvc2VyIGF0
IFRSTSBmb3IgaS5lLiBSSzMzMjgsIFJLMzU2OCBhbmQgUkszNTg4IGl0Cj4+PiBsb29rIGxpa2Ug
dGhlIGZvbGxvd2luZyBkZXNjcmlwdGlvbiBpcyBub3QgYSB0cnVlIGRlc2NyaXB0aW9uIG9mIHRo
ZQo+Pj4gaGFyZHdhcmUuCj4+Pgo+Pj4gRWFjaCBQV00gY29udHJvbGxlciBzZWVtIHRvIHN1cHBv
cnQgNCBjaGFubmVscywgaGVyZSAoYW5kIGZvciBvbGRlciBSSwo+Pj4gU29Dcykgd2UgaW5zdGVh
ZCBkZXNjcmliZSBlYWNoIGNoYW5uZWwgYW5kIG5vdCB0aGUgY29udHJvbGxlci4KPj4KPj4gWWVw
LCB0aGF0IGlzIHNvbWV0aGluZyB0aGF0IGRpZCBnbyB3cm9uZyBpbiB0aGUgdmVyeSBlYXJseSBk
YXlzLgo+PiBBbmQgYWxsIG90aGVyIFJvY2tjaGlwIHNvY3MgYWxzbyBoYXZlIHRoZSBzYW1lIGlz
c3VlIC0gZXZlbiBiYWNrCj4+IHRvIHRoZSByazMwNjYuCj4gCj4gSSBzZWUsIGxvb2sgbGlrZSB0
aGUgUFdNIGhhcyBldm9sdmVkIHNvbWV0aGluZyBsaWtlIGZvbGxvd2luZzoKPiAKPiAtIFRoZSBj
b250cm9sbGVyIGhhcyBhbHdheXMgYmVlbiAxIGNvbnRyb2xsZXIgZm9yIDQgY2hhbm5lbHMKPiAt
IEluaXRpYWwgdmVyc2lvbnMgb25seSBoYWQgMiByZWdzIGZvciBpbnRlcnJ1cHQgb3V0c2lkZSBv
ZiB0aGUgNHgKPiAgIDB4MTAgcmVnIHNwYWNlLCBvbmUgZm9yIGVhY2ggY2hhbm5lbAo+IC0gRklG
TyB3YXMgaW50cm9kdWNlZCBmb3IgY2hhbm5lbCAzCj4gLSBJbnRlcnJ1cHRzIGZvciBGSUZPIHdh
cyBpbnRyb2R1Y2VkIChpbiBSSzMzOTkgb3IgZWFybGllcikKPiAtIEFkZGl0aW9uYWwgZmVhdHVy
ZXMvcmVncyB3YXMgaW50cm9kdWNlZCAoaW4gUFgzMCBvciBlYXJsaWVyKQo+IC0gUFdNX1ZFUlNJ
T05fSUQgPSAweDAyMTIwYjM0IGlzIHVzZWQgKGluIFJLMzMwOCBhbmQgbGF0ZXIpCj4gCj4+Cj4+
IFNvIHllcywgYXQgc29tZSBwb2ludCB3ZSBzaG91bGQgb3ZlcmhhdWwgdGhlIHRoaW5nLgo+Pgo+
PiBCdXQgSSB0aGluayB0aGlzIGlzIG1vcmUgaW52b2x2ZWQsIGFzIHJpZ2h0IG5vdyBldmVyeXRo
aW5nIGlzIGFpbWVkCj4+IGF0IHRoZSBjdXJyZW50IHNpbmdsZS1jaGFubmVsIHN0YXR1cyBxdW8u
Cj4gCj4gSSBkaWQgYSBxdWljayBhbmQgZGlydHkgY2hhbmdlIGluIGRyaXZlciB0byB1c2UgbnB3
bXMgPSA0LCBhbmQgdGhhdCB3YXMKPiBhIHJhdGhlciB0cml2aWFsIGNoYW5nZSwgc2VlIHRvcCBj
b21taXQgYXQgWzFdLiBNaW5pbXVtIHJlcXVpcmVkIGNoYW5nZQo+IGluIFUtQm9vdCBhbHNvIGxv
b2sgdG8gYmUgdmVyeSB0cml2aWFsLgoKSSBkaWQgYSBxdWljayB0ZXN0IG9uIFUtQm9vdCBhbmQg
YXJlIHByZXBhcmluZyBhIHNlcmllcyB0byBhZGQgc3VwcG9ydApmb3IgbXVsdGlwbGUgY2hhbm5l
bHMgaW4gVS1Cb290LCBzZWUgWzJdIGZvciBhbiBlYXJseSB2ZXJzaW9uIHRoYXQKc2hvdWxkIGhp
dCBVLUJvb3QgTUwgaW4gYSBkYXkgb3IgdHdvLgoKRm91bmQgc29tZSBvdGhlciBvdGhlciBpc3N1
ZXMgd2hlbiBkaWdnaW5nIGluIHRoZSBVLUJvb3QgcHdtLXJlZ3VsYXRvcgpjb2RlIHNvIGVuZGVk
IHVwIHdpdGggYSBiaWdnZXIgc2VyaWVzIHRoYW4gYW50aWNpcGF0ZWQsIG9ubHkgdGhlIGxhc3QK
cGF0Y2ggaXMgcmVsYXRlZCB0byBwcmVwYXJhdGlvbiBmb3IgbXVsdGlwbGUgY2hhbm5lbHMgaW4g
cmstcHdtIGRyaXZlci4KClsyXSBodHRwczovL3NvdXJjZS5kZW54LmRlL3UtYm9vdC9jb250cmli
dXRvcnMva3dpYm9vL3UtYm9vdC8tL2NvbW1pdHMvcHdtLXJlZ3VsYXRvcgoKUmVnYXJkcywKSm9u
YXMKCj4gCj4gICBjYXQgL3N5cy9rZXJuZWwvZGVidWcvcHdtCj4gICAwOiBwbGF0Zm9ybS9mZmE5
MDAwMC5wd20sIDQgUFdNIGRldmljZXMKPiAgICBwd20tMCAgICgobnVsbCkgICAgICAgICAgICAg
ICk6IHBlcmlvZDogMCBucyBkdXR5OiAwIG5zIHBvbGFyaXR5OiBub3JtYWwKPiAgICBwd20tMSAg
IChyZWd1bGF0b3ItdmRkLWFybSAgICk6IHJlcXVlc3RlZCBlbmFibGVkIHBlcmlvZDogNTAwMCBu
cyBkdXR5OiAyMjUwIG5zIHBvbGFyaXR5OiBpbnZlcnNlCj4gICAgcHdtLTIgICAocmVndWxhdG9y
LXZkZC1sb2dpYyApOiByZXF1ZXN0ZWQgZW5hYmxlZCBwZXJpb2Q6IDUwMDAgbnMgZHV0eTogMjgw
MCBucyBwb2xhcml0eTogaW52ZXJzZQo+ICAgIHB3bS0zICAgKChudWxsKSAgICAgICAgICAgICAg
KTogcGVyaW9kOiAwIG5zIGR1dHk6IDAgbnMgcG9sYXJpdHk6IG5vcm1hbAo+IAo+IE5vdCByZWFs
bHkgc2VlaW5nIGFueSByZWFzb24gbm90IHRvIGRlc2NyaWJlIHRoZXNlIFBXTSBjb250cm9sbGVy
cyBtb3JlCj4gY29ycmVjdGx5LCB3ZSBuZWVkIHRvIHN0YXJ0IHNvbWV3aGVyZS4KPiAKPiBIb3dl
dmVyLCBJIGhhdmUgbm8gaWRlYSBvbiBob3cgdG8gZGVhbCB3aXRoIGhpc3RvcmljIGFuZCB3cm9u
ZyBiaW5kaW5ncy4KPiBEcml2ZXIgY291bGQgcG9zc2libGUgY2hlY2sgaWYgcmVzb3VyY2Ugc3Bh
Y2UgaXMgYWJvdmUgMHgxMCBzaXplIGFuZCBzdGF0ZQo+IG9mIFBXTV9WRVJTSU9OX0lELgo+IAo+
ICAgUFdNX1ZFUlNJT05fSUQgIDB4MDA1YyAgVyAgMHgwMjEyMGIzNCAgUFdNIFZlcnNpb24gSUQg
UmVnaXN0ZXIgIAo+IAo+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vS3dpYm9vL2xpbnV4LXJvY2tj
aGlwL2NvbW1pdHMvbmV4dC0yMDI1MDMxOS1yazM1MjgvCj4gCj4gUmVnYXJkcywKPiBKb25hcwo+
IAo+Pgo+Pgo+PiBIZWlrbwo+Pgo+Pgo+Pj4gTWF5YmUgc29tZXRoaW5nIGxpa2UgZm9sbG93aW5n
IHdvdWxkIGJldHRlciByZXByZXNlbnQgdGhlIGhhcmR3YXJlOgo+Pj4KPj4+IAlwd20wOiBwd21A
ZmZhOTAwMDAgewo+Pj4gCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzUyOC1wd20iOwo+Pj4g
CQlyZWcgPSA8MHgwIDB4ZmZhOTAwMDAgMHgwIDB4MTAwMDA+Owo+Pj4gCQljbG9ja3MgPSA8JmNy
dSBDTEtfUFdNMD4sIDwmY3J1IFBDTEtfUFdNMD47Cj4+PiAJCWNsb2NrLW5hbWVzID0gInB3bSIs
ICJwY2xrIjsKPj4+IAkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDUzIElSUV9UWVBFX0xFVkVMX0hJ
R0g+LAo+Pj4gCQkJICAgICA8R0lDX1NQSSA1NCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4+IAl9
Owo+Pj4KPj4+IAlwd20xOiBwd21AZmZhOTgwMDAgewo+Pj4gCQljb21wYXRpYmxlID0gInJvY2tj
aGlwLHJrMzUyOC1wd20iOwo+Pj4gCQlyZWcgPSA8MHgwIDB4ZmZhOTgwMDAgMHgwIDB4MTAwMDA+
Owo+Pj4gCQljbG9ja3MgPSA8JmNydSBDTEtfUFdNMT4sIDwmY3J1IFBDTEtfUFdNMT47Cj4+PiAJ
CWNsb2NrLW5hbWVzID0gInB3bSIsICJwY2xrIjsKPj4+IAkJaW50ZXJydXB0cyA9IDxHSUNfU1BJ
IDU1IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+Pj4gCQkJICAgICA8R0lDX1NQSSA1NiBJUlFfVFlQ
RV9MRVZFTF9ISUdIPjsKPj4+IAl9Owo+Pj4KPj4+IFJlZ2FyZHMsCj4+PiBKb25hcwo+Pj4KPj4+
Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IENodWt1biBQYW4gPGFtYWRldXNAam11LmVkdS5jbj4KPj4+
PiAtLS0KPj4+PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjguZHRzaSB8IDgw
ICsrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgODAgaW5zZXJ0
aW9ucygrKQo+Pj4+Cgpbc25pcF0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
