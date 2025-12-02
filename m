Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E102D116F6
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Dec 2025 14:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11v9Rx4SHlXLiqIMBlj5uGycQcpTdhj58xcS37wa+Ew=; b=hjl+1A0ZE6h4jq
	6rTR+F52UomDDc5trjiVtSWzl2yPtsV5geMbr0CyYQWnQhmptDJtCOuLb3C1Yy1yXwNsIpGEE+AMR
	zftzPE9Ap4gix0UDajfEKqkTmk1r5eMVSm8yoQOwDkjY6cgr74YRoPYuFuFGu9AP9q33HxWZvRzKq
	j/F4O1q4SNCpVa7nQGVO9KwXagLleoLp4jqI6vj6H9/g9GSo8nDe7ZwAsiNoV1RGB6PPG7rPM6kDG
	cB6pctG5eqf4MSFYJpo5hyvoCPpIK8XZz5HxfPMMxbzSWwpOT56aw8vFBy2byBxegM8a80TCRfvog
	PnBzN9k+KbwdvmOiZ4hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQRUu-00000005Vhf-0Wng;
	Tue, 02 Dec 2025 14:36:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQRUr-00000005Vgm-1jci
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Dec 2025 14:36:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vQRUa-0004ex-Pi; Tue, 02 Dec 2025 15:36:36 +0100
Message-ID: <2dc6c675-9c69-40a1-b2ed-ff1d22157228@pengutronix.de>
Date: Tue, 2 Dec 2025 15:36:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/16] media: rockchip: rga: align stride to 16 bytes
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
References: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
 <20251007-spu-rga3-v1-3-36ad85570402@pengutronix.de>
 <db7030790063d0ebe6d254c7053e758184b9d7cc.camel@ndufresne.ca>
Content-Language: en-US
From: =?UTF-8?Q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
In-Reply-To: <db7030790063d0ebe6d254c7053e758184b9d7cc.camel@ndufresne.ca>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_063653_456868_9C47FF4B 
X-CRM114-Status: GOOD (  22.85  )
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

SGkgTmljb2xhcywKCk9uIDEwLzcvMjUgODoxOSBQTSwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToK
PiBIaSwKPgo+Cj4gTGUgbWFyZGkgMDcgb2N0b2JyZSAyMDI1IMOgIDEwOjMxICswMjAwLCBTdmVu
IFDDvHNjaGVsIGEgw6ljcml0wqA6Cj4+IEFsaWduIHRoZSBzdHJpZGUgdG8gYSBtdWx0aXBsZSBv
ZiAxNiBhY2NvcmRpbmcgdG8gdGhlIFJHQTMgcmVxdWlyZW1lbnRzCj4+IG1lbnRpb25lZCBpbiB0
aGUgZGF0YXNoZWV0LiBUaGlzIGFsc28gZW5zdXJlcyB0aGF0IHRoZSBzdHJpZGUgb2YgdGhlIFJH
QTIKPj4gaXMgYWxpZ25lZCB0byA0IGJ5dGVzLCBhcyBpdCBuZWVkcyB0byBkaXZpZGUgdGhlIHZh
bHVlIGJ5IDQgKG9uZSB3b3JkKQo+PiBiZWZvcmUgc3RvcmluZyBpdCBpbiB0aGUgcmVnaXN0ZXIu
Cj4+Cj4+IEluY3JlYXNpbmcgdGhlIHN0cmlkZSBmb3IgdGhlIGFsaWdubWVudCBhbHNvIHJlcXVp
cmVzIHRvIGluY3JlYXNlIHRoZQo+PiBzaXplaW1hZ2UgdmFsdWUuIFRoaXMgaXMgdXN1YWxseSBo
YW5kbGVkIGJ5IHY0bDJfZmlsbF9waXhmbXRfbXAsIGJ1dAo+PiBpdCBkb2Vzbid0IGFsbG93IHRv
IHNldCBhIHN0cmlkZSBhbGlnbm1lbnQuIFRoZXJlZm9yZSB1c2UgdGhlIGdlbmVyYXRlZAo+PiB2
YWx1ZXMgdG8gY2FsY3VsYXRlIHRoZSB0b3RhbCBudW1iZXIgb2YgbGluZXMgdG8gcHJvcGVybHkg
dXBkYXRlIHRoZQo+PiBzaXplaW1hZ2UgdmFsdWUgYWZ0ZXIgdGhlIGJ5dGVzcGVybGluZSBoYXMg
YmVlbiBhbGlnbmVkLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTdmVuIFDDvHNjaGVsIDxzLnB1ZXNj
aGVsQHBlbmd1dHJvbml4LmRlPgo+PiAtLS0KPj4gIMKgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhLmMgfCAyMSArKysrKysrKysrKysrKysrKysrKysKPj4gIMKgMSBmaWxl
IGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCj4+IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9yb2NrY2hpcC9yZ2EvcmdhLmMKPj4gaW5kZXgKPj4gNjQzODExOWE2YzdhZWZmMWU4OWU3YWE5
NWRjZDVkMjkyMWZlZmEwOC4uM2NiN2NlNDcwYzQ3ZTM5ZDY5NGU4MTc2ODc1YTc1ZmFkMjcxCj4+
IDdmOTYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdh
L3JnYS5jCj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5j
Cj4+IEBAIC00NTksNiArNDU5LDI1IEBAIHN0YXRpYyBpbnQgdmlkaW9jX2VudW1fZm10KHN0cnVj
dCBmaWxlICpmaWxlLCB2b2lkICpwcml2LAo+PiBzdHJ1Y3QgdjRsMl9mbXRkZXNjICpmCj4+ICDC
oAlyZXR1cm4gMDsKPj4gIMKgfQo+PiAgIAo+PiArc3RhdGljIHZvaWQgYWxpZ25fcGl4Zm10KHN0
cnVjdCB2NGwyX3BpeF9mb3JtYXRfbXBsYW5lICpwaXhfZm10KQo+PiArewo+PiArCWludCBsaW5l
czsKPj4gKwlzdHJ1Y3QgdjRsMl9wbGFuZV9waXhfZm9ybWF0ICpmbXQ7Cj4+ICsKPj4gKwkvKgo+
PiArCSAqIEFsaWduIHN0cmlkZSB0byAxNiBmb3IgdGhlIFJHQTMgKGJhc2VkIG9uIHRoZSBkYXRh
c2hlZXQpCj4+ICsJICogVG8gbm90IGRpc21pc3MgdGhlIHY0bDJfZmlsbF9waXhmbXRfbXAgaGVs
cGVyCj4+ICsJICogKGFuZCBtYW51YWxseSB3cml0ZSBpdCBhZ2FpbiksIHdlJ3JlIGFwcHJveGlt
YXRpbmcgdGhlIG5ldwo+PiBzaXplaW1hZ2UKPj4gKwkgKi8KPj4gKwlmb3IgKGZtdCA9IHBpeF9m
bXQtPnBsYW5lX2ZtdDsKPj4gKwnCoMKgwqDCoCBmbXQgPCBwaXhfZm10LT5wbGFuZV9mbXQgKyBw
aXhfZm10LT5udW1fcGxhbmVzOwo+PiArCcKgwqDCoMKgIGZtdCsrKSB7Cj4+ICsJCWxpbmVzID0g
RElWX1JPVU5EX1VQKGZtdC0+c2l6ZWltYWdlLCBmbXQtPmJ5dGVzcGVybGluZSk7Cj4+ICsJCWZt
dC0+Ynl0ZXNwZXJsaW5lID0gKGZtdC0+Ynl0ZXNwZXJsaW5lICsgMHhmKSAmIH4weGY7Cj4+ICsJ
CWZtdC0+c2l6ZWltYWdlID0gZm10LT5ieXRlc3BlcmxpbmUgKiBsaW5lczsKPiBJbnN0ZWFkIG9m
IG9wZW4gY29kaW5nIHRoaXMsIGRlc2NyaWJlIHRoaXMgd2l0aCBzdHJ1Y3QgdjRsMl9mcm1zaXpl
X3N0ZXB3aXNlIGFuZAo+IHRoZW4gdXNlIHY0bDJfYXBwbHlfZnJtc2l6ZV9jb25zdHJhaW50cygp
LgpMb29raW5nIGludG8gdjRsMl9mcm1zaXplX3N0ZXB3aXNlLCBpdCBvbmx5IGFwcGxpZXMgdG8g
dGhlIHdpZHRoL2hlaWdodCAKdmFsdWVzLCB3aGVyZWFzIEknbSBpbnRlcmVzdGVkIHRvIGNvbnRy
b2wgdGhlIHN0cmlkZSAKYnl0ZS1hbGlnbm1lbnQvc3RlcHBpbmcgKGFsbG93aW5nIGZyZWUgcmFu
Z2Ugd2lkdGhzL2hlaWdodHMpLgoKRG8geW91IGludGVudCB0aGF0IEkgKG1pcyl1c2UgaXQgbGlr
ZSB0aGlzOiAKdjRsMl9hcHBseV9mcm1zaXplX2NvbnN0cmFpbnRzKCZmbXQtPmJ5dGVzcGVybGlu
ZSwgJmxpbmVzLCAmY29uc3RyYWludHMpwqAgPwoKVGhpcyBvbmx5IHJlcGxhY2VzIG9uZSBvZiB0
aGUgdGhyZWUgbGluZXMgaW4gdGhlIGZvciBsb29wICh3aGVyZSBpIAptYW51YWxseSBkbyB0aGUg
YWxpZ25tZW50IHdpdGggJiB+MHhmKSBhbmQgd291bGQgYWxzbyBsb29rIG9kZCwgYXMgaSB1c2Ug
CmEgdmFsdWUgaW4gYnl0ZXMgYXMgYSB3aWR0aCBwYXJhbWV0ZXIgKGV4cGVjdGVkIHRvIGJlIGlu
IHBpeGVscykuCgpUZWNobmljYWxseSB0aGUgY29yZSBwcm9ibGVtIGlzIHRoYXQgdGhlIHY0bDJf
ZmlsbF9waXhmbXRfbXAgaGVscGVyIApkb2Vzbid0IGFsbG93IHRvIHNwZWNpZnkgYSBzdHJpZGUg
Ynl0ZSBhbGlnbm1lbnQgYW5kIGp1c3QgYWxpZ25zIHRoZSAKc3RyaWRlIGJhc2VkIG9uIHRoZSBm
b3JtYXQgcmVxdWlyZW1lbnRzLiBUaGVyZWZvcmUgSSB0aGluayB0aGF0IG1heWJlIApjcmVhdGlu
ZyBhIG5ldyB2NGwyX2ZpbGxfcGl4Zm10X21wX2FsaWduZWQgaGVscGVyIHdvdWxkIHByb2JhYmx5
IGJlIHRoZSAKYmV0dGVyIHNvbHV0aW9uIHRvIGdldCB0aGUgY29ycmVjdCBieXRlc3BlcmxpbmUg
dmFsdWUgcmlnaHQgZnJvbSB0aGUgCnN0YXJ0IGluc3RlYWQgb2YgYWRqdXN0aW5nIGl0IGFmdGVy
d2FyZHMuCgpTaW5jZXJlbHkKIMKgIMKgIFN2ZW4KPgo+IE5pY29sYXMKPgo+PiArCX0KPj4gK30K
Pj4gKwo+PiAgwqBzdGF0aWMgaW50IHZpZGlvY19nX2ZtdChzdHJ1Y3QgZmlsZSAqZmlsZSwgdm9p
ZCAqcHJpdiwgc3RydWN0IHY0bDJfZm9ybWF0ICpmKQo+PiAgwqB7Cj4+ICDCoAlzdHJ1Y3QgdjRs
Ml9waXhfZm9ybWF0X21wbGFuZSAqcGl4X2ZtdCA9ICZmLT5mbXQucGl4X21wOwo+PiBAQCAtNDc0
LDYgKzQ5Myw3IEBAIHN0YXRpYyBpbnQgdmlkaW9jX2dfZm10KHN0cnVjdCBmaWxlICpmaWxlLCB2
b2lkICpwcml2LAo+PiBzdHJ1Y3QgdjRsMl9mb3JtYXQgKmYpCj4+ICDCoAkJcmV0dXJuIFBUUl9F
UlIoZnJtKTsKPj4gICAKPj4gIMKgCXY0bDJfZmlsbF9waXhmbXRfbXAocGl4X2ZtdCwgZnJtLT5m
bXQtPmZvdXJjYywgZnJtLT53aWR0aCwgZnJtLQo+Pj4gaGVpZ2h0KTsKPj4gKwlhbGlnbl9waXhm
bXQocGl4X2ZtdCk7Cj4+ICAgCj4+ICDCoAlwaXhfZm10LT5maWVsZCA9IFY0TDJfRklFTERfTk9O
RTsKPj4gIMKgCXBpeF9mbXQtPmNvbG9yc3BhY2UgPSBmcm0tPmNvbG9yc3BhY2U7Cj4+IEBAIC00
OTYsNiArNTE2LDcgQEAgc3RhdGljIGludCB2aWRpb2NfdHJ5X2ZtdChzdHJ1Y3QgZmlsZSAqZmls
ZSwgdm9pZCAqcHJpdiwKPj4gc3RydWN0IHY0bDJfZm9ybWF0ICpmKQo+PiAgwqAJCQkJKHUzMilN
SU5fSEVJR0hULCAodTMyKU1BWF9IRUlHSFQpOwo+PiAgIAo+PiAgwqAJdjRsMl9maWxsX3BpeGZt
dF9tcChwaXhfZm10LCBmbXQtPmZvdXJjYywgcGl4X2ZtdC0+d2lkdGgsIHBpeF9mbXQtCj4+PiBo
ZWlnaHQpOwo+PiArCWFsaWduX3BpeGZtdChwaXhfZm10KTsKPj4gIMKgCXBpeF9mbXQtPmZpZWxk
ID0gVjRMMl9GSUVMRF9OT05FOwo+PiAgIAo+PiAgwqAJcmV0dXJuIDA7CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
