Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3CF7CD54B5
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Sep 2023 11:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/q7+gRJ5BGNlnEDu6vA34Cu5TWVI8aaUKJpxrzGaqF0=; b=G5nPWxY0Fu7ucD
	RnencuZXaaoLXN+o5wSVou9mT2kMrKxX3BtfIxqkI8kmcT+djTe1BPfcK+Tktzh8H58UaAQZfgTij
	TJQdn9GsD6IHYhokpqxAN2xpEVveUK09KSgWupY8FMoWKqAWp+Egqa0+UH+592Qo3+FjZHs4Drjz3
	BOYFcvePQENXjFOFo0oYC2rVAYmK9ougRCyDNdT5152p1RyI91CBGi5uYFsd6sj6kjYhZHRdVJlSZ
	P3EyMYIgBsQGjkkBCRWRS5lXZd0p5No8Sgq1JHxq6IROF3+OsgplB0kCang9h6AAfpMhlxRar4Z3A
	82JfqZpE6+W9NrumUpJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiYmz-000H14-1a;
	Tue, 19 Sep 2023 11:21:09 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiYmw-000GzV-1I;
	Tue, 19 Sep 2023 11:21:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id B85E4CE12FA;
	Tue, 19 Sep 2023 11:21:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98BAAC433C8;
	Tue, 19 Sep 2023 11:20:59 +0000 (UTC)
Message-ID: <b7b98f37-f9f0-46ef-8ee2-610e2990dfef@xs4all.nl>
Date: Tue, 19 Sep 2023 13:20:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 07/49] media: sti: hva: Use vb2_get_buffer() instead of
 directly access to buffers array
Content-Language: en-US, nl
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20230914133323.198857-1-benjamin.gaignard@collabora.com>
 <20230914133323.198857-8-benjamin.gaignard@collabora.com>
 <93e9b143-664c-4fbb-8722-0beabd5b2c0c@xs4all.nl>
 <ecfd1641-3cce-dfa4-b88c-3619fb12d710@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <ecfd1641-3cce-dfa4-b88c-3619fb12d710@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230919_042106_604264_ED68A124 
X-CRM114-Status: GOOD (  15.67  )
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

T24gMTkvMDkvMjAyMyAxMjoyNiwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gCj4gTGUgMTkv
MDkvMjAyMyDDoCAxMTozMSwgSGFucyBWZXJrdWlsIGEgw6ljcml0wqA6Cj4+IE9uIDE0LzA5LzIw
MjMgMTU6MzIsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+Pj4gVXNlIHZiMl9nZXRfYnVmZmVy
KCkgaW5zdGVhZCBvZiBkaXJlY3RseSBhY2Nlc3MgdG8gdmIyX2J1ZmZlciBidWZmZXIgYXJyYXku
Cj4+PiBUaGlzIGNvdWxkIGFsbG93IHRvIGNoYW5nZSB0aGUgdHlwZSBidWZzW10gZmllbGQgb2Yg
dmIyX2J1ZmZlciBzdHJ1Y3R1cmUgaWYKPj4+IG5lZWRlZC4KPj4+IEFmdGVyIGVhY2ggY2FsbCB0
byB2YjJfZ2V0X2J1ZmZlcigpIHdlIG5lZWQgdG8gYmUgc3VyZSB0aGF0IHdlIGdldAo+Pj4gYSB2
YWxpZCBwb2ludGVyIHNvIGNoZWNrIHRoZSByZXR1cm4gdmFsdWUgb2YgYWxsIG9mIHRoZW0uCj4+
Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJk
QGNvbGxhYm9yYS5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3Qv
c3RpL2h2YS9odmEtdjRsMi5jIHwgNCArKysrCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3Qv
c3RpL2h2YS9odmEtdjRsMi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdC9zdGkvaHZhL2h2
YS12NGwyLmMKPj4+IGluZGV4IDNhODQ4Y2EzMmEwZS4uMzI2YmUwOWJkYjU1IDEwMDY0NAo+Pj4g
LS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdC9zdGkvaHZhL2h2YS12NGwyLmMKPj4+ICsr
KyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3Qvc3RpL2h2YS9odmEtdjRsMi5jCj4+PiBAQCAt
NTc3LDYgKzU3NywxMCBAQCBzdGF0aWMgaW50IGh2YV9xYnVmKHN0cnVjdCBmaWxlICpmaWxlLCB2
b2lkICpwcml2LCBzdHJ1Y3QgdjRsMl9idWZmZXIgKmJ1ZikKPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oCB9Cj4+IEFib3ZlIHRoaXMgbGluZSB0aGVyZSBpcyBhIGJ1Zi0+aW5kZXggY2hlY2suLi4KPj4K
Pj4+IMKgIMKgwqDCoMKgwqDCoMKgwqDCoCB2YjJfYnVmID0gdmIyX2dldF9idWZmZXIodnEsIGJ1
Zi0+aW5kZXgpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmICghdmIyX2J1Zikgewo+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgZGV2X2RiZyhkZXYsICIlcyBidWZmZXIgaW5kZXggJWQgbm90IGZv
dW5kXG4iLCBjdHgtPm5hbWUsIGJ1Zi0+aW5kZXgpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIC1FSU5WQUw7Cj4+PiArwqDCoMKgwqDCoMKgwqAgfQo+PiAuLi5JIHRoaW5rIHRo
YXQgY2hlY2sgY2FuIGJlIGRyb3BwZWQgc2luY2UgdmIyX2dldF9idWZmZXIgY2hlY2tzIHRoYXQg
YWxyZWFkeS4KPiAKPiBObyBiZWNhdXNlIGluICJtZWRpYTogc3RpOiBodmE6IFN0b3AgZGlyZWN0
IGNhbGxzIHRvIHF1ZXVlIG51bV9idWZmZXJzIGZpZWxkIiBwYXRjaAo+IEkgcmVtb3ZlIHRoZSBh
Ym92ZSBjaGVjayBzaW5jZSBpdCB1c2UgcXVldWUgbnVtX2J1ZmZlcnMgZmllbGQuCgpXaHkgbm90
IGRvIHRoYXQgaGVyZT8gQW5kIGRyb3AgdGhhdCBsYXRlciBwYXRjaD8gSXQgZG9lc24ndCBtYWtl
IHNlbnNlIHRvCnNwbGl0IGl0IHVwLCBhbmQgYWxzbyB0aGUgY29tbWl0IGxvZyBvZiBwYXRjaCAz
My80OSBkb2Vzbid0IG1hdGNoIHRoYXQgcGF0Y2guCgpSZWdhcmRzLAoKCUhhbnMKCj4gCj4gUmVn
YXJkcywKPiBCZW5qYW1pbgo+IAo+Pgo+PiBSZWdhcmRzLAo+Pgo+PiDCoMKgwqDCoEhhbnMKPj4K
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJlYW0gPSB0b19odmFfc3RyZWFtKHRvX3ZiMl92NGwy
X2J1ZmZlcih2YjJfYnVmKSk7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgc3RyZWFtLT5ieXRlc3Vz
ZWQgPSBidWYtPmJ5dGVzdXNlZDsKPj4+IMKgwqDCoMKgwqAgfQo+PgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
