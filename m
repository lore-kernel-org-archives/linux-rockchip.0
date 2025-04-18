Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B294DC369AB
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Apr 2025 15:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DuNyEV23bxKb7C3DAbwVTaKj89oR9wmsG/mGU4KYoTU=; b=4U30k1N0QJBd2f
	fyLosUed+m0e7Hc9+NQZUSDV7PIgklftzjur5IuLck7vs9fophYB4PR5eqnzgbwVlew7u4hK822vI
	jLKAnC7/EUH1mucWW2BbZ+VKgkhVCADEvmWrkXEsb+RlOsMA1C3krzQNHXOoFjUFeL+/CfnyRpnB7
	DbwjBpPK1UgpvKlFV0k0g2Lz1Vnb+HwbynLU+eYyFwz/Z0qPJqZHU2v1vQgBk1uotsG8fNiNxYmUf
	xc3R/OrZAq6R39kCEaiHgU2sIStH+JnwenQDZ1xX2aS6AsGRj3qiSmOw8OEwMZHdFq30PI5GNz4XA
	RW//o4K2rhIWopO86Y6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5nRL-0000000GcUf-3MPt;
	Fri, 18 Apr 2025 15:15:39 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5nNx-0000000GbPj-2HK9
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Apr 2025 15:12:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1744989127;
 bh=gZ99nEDhjJPtKYQc2hoc52nGqWB8ytY2CleaomSYJWE=;
 b=FJ6BkAZKhw5HDl64y0/loSnvgt2uGFb4ogckuwXXLYpPoiBWGEcMvB8XlTGYqbnToM/hBwa1d
 CBAVZZXHa0QTbYodP9xo2Fa5QDa+8OJM8v7+yMmhCG4OHroROzOPT7b4Sis3OF8wMjPItm4Qs5O
 ska8G+8JWBFJxlnBHRQCAHFilrq5QmYk+RGaVOtaGbKN8k5sB2ZqStqo/x0pzK0yQdlp1AiRCsk
 dvLUisDndlaQObUs1CgfYNitAyxjmGbi+E2HHokxVLTAQCoqfIOWFLQM0xaiT+2AKjJ+Atygdp0
 OQ3/2ouKCqto/bN2oTs7JG9yeYXL95VsRLP4kQOwdfiQ==
X-Forward-Email-ID: 68026bbf750a8e94b92eccb3
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.0.2
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <4161ab9e-3be5-4738-9bbe-0dba636b838a@kwiboo.se>
Date: Fri, 18 Apr 2025 17:11:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/4] media: rkvdec: Add get_image_fmt ops
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20250417-b4-rkvdec_h264_high10_and_422_support-v9-0-0e8738ccb46b@collabora.com>
 <20250417-b4-rkvdec_h264_high10_and_422_support-v9-3-0e8738ccb46b@collabora.com>
 <8d1c3c82-dbdc-4064-8188-bab586996302@kwiboo.se>
 <4be400281b3fe53b724025ffa837ceed777d7699.camel@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <4be400281b3fe53b724025ffa837ceed777d7699.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250418_081209_984431_0534ADE4 
X-CRM114-Status: GOOD (  13.81  )
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

SGkgTmljb2xhcywKCk9uIDIwMjUtMDQtMTggMTQ6MjgsIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6
Cj4gTGUgdmVuZHJlZGkgMTggYXZyaWwgMjAyNSDDoCAwODoyMiArMDIwMCwgSm9uYXMgS2FybG1h
biBhIMOpY3JpdMKgOgo+PiBIaSBOaWNvbGFzLAo+Pgo+PiBPbiAyMDI1LTA0LTE3IDIzOjU4LCBO
aWNvbGFzIER1ZnJlc25lIHdyb3RlOgo+Pj4gRnJvbTogSm9uYXMgS2FybG1hbiA8am9uYXNAa3dp
Ym9vLnNlPgo+Pj4KPj4+IEFkZCBzdXBwb3J0IGZvciBhIGdldF9pbWFnZV9mbXQoKSBvcHMgdGhh
dCByZXR1cm5zIHRoZSByZXF1aXJlZCBpbWFnZQo+Pj4gZm9ybWF0Lgo+Pj4KPj4+IFRoZSBDQVBU
VVJFIGZvcm1hdCBpcyByZXNldCB3aGVuIHRoZSByZXF1aXJlZCBpbWFnZSBmb3JtYXQgY2hhbmdl
cyBhbmQKPj4+IHRoZSBidWZmZXIgcXVldWUgaXMgbm90IGJ1c3kuCj4+Pgo+Pj4gU2lnbmVkLW9m
Zi1ieTogSm9uYXMgS2FybG1hbiA8am9uYXNAa3dpYm9vLnNlPgo+Pj4gVGVzdGVkLWJ5OiBOaWNv
bGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+Cj4+PiBDby1kZXZl
bG9wZWQtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNv
bT4KPj4+IFNpZ25lZC1vZmYtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVA
Y29sbGFib3JhLmNvbT4KPj4+IC0tLQo+Pj4gwqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVj
L3JrdmRlYy5jIHwgMzUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4+IMKg
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuaCB8wqAgMiArKwo+Pj4gwqAyIGZp
bGVzIGNoYW5nZWQsIDM3IGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9y
a3ZkZWMvcmt2ZGVjLmMKPj4+IGluZGV4IDdiNzgwMzkyYmI2YTYzY2M5NTQ2NTVlZjk0MGU4NzE0
NmQyYjg1MmYuLjZjNmZlNDExZjQ4NzcyNDE5ZTE4MTBkODY5YWI0MGQxNjg4NDhlNjUgMTAwNjQ0
Cj4+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jCj4+PiArKysg
Yi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jCj4+PiBAQCAtNzIsNiArNzIs
MTUgQEAgc3RhdGljIGJvb2wgcmt2ZGVjX2lzX3ZhbGlkX2ZtdChzdHJ1Y3Qgcmt2ZGVjX2N0eCAq
Y3R4LCB1MzIgZm91cmNjLAo+Pj4gwqAJcmV0dXJuIGZhbHNlOwo+Pj4gwqB9Cj4+PiDCoAo+Pj4g
K3N0YXRpYyBib29sIHJrdmRlY19mbXRfY2hhbmdlZChzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4LAo+
Pj4gKwkJCcKgwqDCoMKgwqDCoCBlbnVtIHJrdmRlY19pbWFnZV9mbXQgaW1hZ2VfZm10KQo+Pgo+
PiBKdXN0IGEgc21hbGwgbml0cGljazoKPj4KPj4gTWF5YmUgdGhpcyBmdW5jdGlvbiBzaG91bGQg
YmUgY2FsbGVkIHJrdmRlY19pbWFnZV9mbXRfY2hhbmdlZCgpIGFuZAo+PiBjb3VsZCBiZSBtb3Zl
ZCBjbG9zZXIgdG8gcmt2ZGVjX2ltYWdlX2ZtdF9tYXRjaCgpIGFzIHRob3NlIHR3byBhcmUKPj4g
cmVsYXRlZCB0byBpbWFnZV9mbXQgYW5kIG5vdCB0aGUgcGl4Zm10L2ZvdXJjYy4KPiAKPiBBcHBs
aWVkIGxvY2FsbHkuIFdpdGggdGhpcyBjaGFuZ2UsIG1heSBJIGhhdmUgeW91ciBSYiA/CgpTdXJl
LCBhbmQgdGhhbmtzIGZvciBoZWxwaW5nIGdldHRpbmcgdGhpcyBvbGQgc2VyaWVzIHRvIGxhbmQg
Oi0pCgpSZXZpZXdlZC1ieTogSm9uYXMgS2FybG1hbiA8am9uYXNAa3dpYm9vLnNlPgoKUmVnYXJk
cywKSm9uYXMKCj4gCj4gdGhhbmtzLAo+IE5pY29sYXMKPiAKPj4KPj4gUmVnYXJkcywKPj4gSm9u
YXMKPj4KPj4+ICt7Cj4+PiArCWlmIChpbWFnZV9mbXQgPT0gUktWREVDX0lNR19GTVRfQU5ZKQo+
Pj4gKwkJcmV0dXJuIGZhbHNlOwo+Pj4gKwo+Pj4gKwlyZXR1cm4gY3R4LT5pbWFnZV9mbXQgIT0g
aW1hZ2VfZm10Owo+Pj4gK30KPj4+ICsKPj4+IMKgc3RhdGljIHZvaWQgcmt2ZGVjX2ZpbGxfZGVj
b2RlZF9waXhmbXQoc3RydWN0IHJrdmRlY19jdHggKmN0eCwKPj4+IMKgCQkJCcKgwqDCoMKgwqDC
oCBzdHJ1Y3QgdjRsMl9waXhfZm9ybWF0X21wbGFuZSAqcGl4X21wKQo+Pj4gwqB7Cj4+PiBAQCAt
MTE4LDggKzEyNywzNCBAQCBzdGF0aWMgaW50IHJrdmRlY190cnlfY3RybChzdHJ1Y3QgdjRsMl9j
dHJsICpjdHJsKQo+Pj4gwqAJcmV0dXJuIDA7Cj4+PiDCoH0KPj4+IMKgCj4+PiArc3RhdGljIGlu
dCBya3ZkZWNfc19jdHJsKHN0cnVjdCB2NGwyX2N0cmwgKmN0cmwpCj4+PiArewo+Pj4gKwlzdHJ1
Y3Qgcmt2ZGVjX2N0eCAqY3R4ID0gY29udGFpbmVyX29mKGN0cmwtPmhhbmRsZXIsIHN0cnVjdCBy
a3ZkZWNfY3R4LCBjdHJsX2hkbCk7Cj4+PiArCWNvbnN0IHN0cnVjdCBya3ZkZWNfY29kZWRfZm10
X2Rlc2MgKmRlc2MgPSBjdHgtPmNvZGVkX2ZtdF9kZXNjOwo+Pj4gKwllbnVtIHJrdmRlY19pbWFn
ZV9mbXQgaW1hZ2VfZm10Owo+Pj4gKwlzdHJ1Y3QgdmIyX3F1ZXVlICp2cTsKPj4+ICsKPj4+ICsJ
LyogQ2hlY2sgaWYgdGhpcyBjaGFuZ2UgcmVxdWlyZXMgYSBjYXB0dXJlIGZvcm1hdCByZXNldCAq
Lwo+Pj4gKwlpZiAoIWRlc2MtPm9wcy0+Z2V0X2ltYWdlX2ZtdCkKPj4+ICsJCXJldHVybiAwOwo+
Pj4gKwo+Pj4gKwlpbWFnZV9mbXQgPSBkZXNjLT5vcHMtPmdldF9pbWFnZV9mbXQoY3R4LCBjdHJs
KTsKPj4+ICsJaWYgKHJrdmRlY19mbXRfY2hhbmdlZChjdHgsIGltYWdlX2ZtdCkpIHsKPj4+ICsJ
CXZxID0gdjRsMl9tMm1fZ2V0X3ZxKGN0eC0+ZmgubTJtX2N0eCwKPj4+ICsJCQkJwqDCoMKgwqAg
VjRMMl9CVUZfVFlQRV9WSURFT19DQVBUVVJFX01QTEFORSk7Cj4+PiArCQlpZiAodmIyX2lzX2J1
c3kodnEpKQo+Pj4gKwkJCXJldHVybiAtRUJVU1k7Cj4+PiArCj4+PiArCQljdHgtPmltYWdlX2Zt
dCA9IGltYWdlX2ZtdDsKPj4+ICsJCXJrdmRlY19yZXNldF9kZWNvZGVkX2ZtdChjdHgpOwo+Pj4g
Kwl9Cj4+PiArCj4+PiArCXJldHVybiAwOwo+Pj4gK30KPj4+ICsKPj4+IMKgc3RhdGljIGNvbnN0
IHN0cnVjdCB2NGwyX2N0cmxfb3BzIHJrdmRlY19jdHJsX29wcyA9IHsKPj4+IMKgCS50cnlfY3Ry
bCA9IHJrdmRlY190cnlfY3RybCwKPj4+ICsJLnNfY3RybCA9IHJrdmRlY19zX2N0cmwsCj4+PiDC
oH07Cj4+PiDCoAo+Pj4gwqBzdGF0aWMgY29uc3Qgc3RydWN0IHJrdmRlY19jdHJsX2Rlc2Mgcmt2
ZGVjX2gyNjRfY3RybF9kZXNjc1tdID0gewo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmggYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3Jr
dmRlYy5oCj4+PiBpbmRleCA2ZjhjZjUwYzVkOTlhYWQyZjUyZTMyMWY1NGYzY2ExNzE2NmRkZjk4
Li5lNDY2YTI3NTNjY2ZjMTM3MzhlMGE2NzJiYzU3OGU1MjFhZjJjM2YyIDEwMDY0NAo+Pj4gLS0t
IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuaAo+Pj4gKysrIGIvZHJpdmVy
cy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuaAo+Pj4gQEAgLTczLDYgKzczLDggQEAgc3Ry
dWN0IHJrdmRlY19jb2RlZF9mbXRfb3BzIHsKPj4+IMKgCQnCoMKgwqDCoCBzdHJ1Y3QgdmIyX3Y0
bDJfYnVmZmVyICpkc3RfYnVmLAo+Pj4gwqAJCcKgwqDCoMKgIGVudW0gdmIyX2J1ZmZlcl9zdGF0
ZSByZXN1bHQpOwo+Pj4gwqAJaW50ICgqdHJ5X2N0cmwpKHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgs
IHN0cnVjdCB2NGwyX2N0cmwgKmN0cmwpOwo+Pj4gKwllbnVtIHJrdmRlY19pbWFnZV9mbXQgKCpn
ZXRfaW1hZ2VfZm10KShzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4LAo+Pj4gKwkJCQkJwqDCoMKgwqDC
oMKgIHN0cnVjdCB2NGwyX2N0cmwgKmN0cmwpOwo+Pj4gwqB9Owo+Pj4gwqAKPj4+IMKgZW51bSBy
a3ZkZWNfaW1hZ2VfZm10IHsKPj4+Cj4+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
