Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83DDDC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 15:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lRyTPjgN4Vc0hhLOUqlFfVewD0Tfzti3aJIpZTm2esY=; b=fQWrN8O3NigaAt
	IlGyWWv0hpJLyV50TDNrKoY3B9J0ZS3BM8VXz609V8ij0CITN3Xavp5EONFzHzw7HYMIiD1Mp8Rze
	U7DVj3P70RItWU1BhLNZG+zrxMoAFwf3VLOrGdJCgNqBIflEoaNNPiB8tUKz2DL0E18DRfwtKD+gA
	I3GMYha/4gvjgFGBCfjdQwK8gpjxARaWYazjgCzY/lTOTKlx0krN1tS2VHC0O0FdpY1nUtYTJm5N/
	HiTELuA48IIILR/K8VnwXcwl7pbSY4NycjqdRNqEmGuptI0X9MuCkLNQppVy9XMgIYHUPFACdppx5
	F1QvcGqQEIqbIoWgan0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r16Vq-006XC5-2u;
	Thu, 09 Nov 2023 15:00:06 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r16Vl-006XAV-0g;
	Thu, 09 Nov 2023 15:00:02 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 876C1660741E;
	Thu,  9 Nov 2023 14:59:57 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699541998;
	bh=QqR7WPB+/Ya2aRUzfOvGGvpjOokjJ1EE8CvZQdCtRc8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Nh7d1LMKIeIN1PuXQGQ0zMOWkQn0ovCI0hogX7dRL0hIodAnUpsBVN068K/luitTD
	 5H9d8brps2q1xdXfEGl7S8VcSBc45k0BHueDkVNJDRpBdbl2eZgvp0hmzzhmSdcGAz
	 DPtxawusYLeJDCZEanUhfwqrjCRgmEiHqjOTXP1gAlm/GREWwA1qQ+dU5Srf6UvAmS
	 iwkQy7LIMPt2Jn3gbH6KDB+siDm4PB+BL/vkoSVRUtUUn/LolBkw62glgPUF+kwMo2
	 8cjG97dQ2noCfAnzdYa/GfQ0EHRNek+/IaQ2RA/NcaaDSAiJAOxg5+YdKoxZ4aR9ek
	 39GOh/3WAnlCw==
Message-ID: <9af3cedd-1722-4bdf-a95c-15853cafb247@collabora.com>
Date: Thu, 9 Nov 2023 15:59:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 50/56] media: verisilicon: vp9: Allow to change
 resolution while streaming
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-51-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-51-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_070001_408845_8500599C 
X-CRM114-Status: GOOD (  18.80  )
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

VyBkbml1IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWluIEdhaWduYXJkIHBpc3plOgo+IFJl
bW92ZSBhbGwgY2hlY2tzIHRoYXQgcHJvaGliaXQgdG8gc2V0IGEgbmV3IGZvcm1hdCB3aGlsZSBz
dHJlYW1pbmcuCj4gVGhpcyBhbGxvdyB0byBjaGFuZ2UgZHluYW1pY2FsbHkgdGhlIHJlc29sdXRp
b24gaWYgdGhlIHBpeGVsIGZvcm1hdAo+IHJlbWFpbnMgdGhlIHNhbWUuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+
CgpSZXZpZXdlZC1ieTogQW5kcnplaiBQaWV0cmFzaWV3aWN6IDxhbmRyemVqLnBAY29sbGFib3Jh
LmNvbT4KCj4gQ0M6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAdmFuZ3VhcmRpYXN1ci5jb20u
YXI+Cj4gQ0M6IFBoaWxpcHAgWmFiZWwgPHAuemFiZWxAcGVuZ3V0cm9uaXguZGU+Cj4gLS0tCj4g
ICAuLi4vbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYyAgfCAyNCArKyst
LS0tLS0tLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyMSBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJp
c2lsaWNvbi9oYW50cm9fdjRsMi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNv
bi9oYW50cm9fdjRsMi5jCj4gaW5kZXggZjBkOGIxNjVhYmNkLi4yN2ExZTc3Y2NhMzggMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5j
Cj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5j
Cj4gQEAgLTUxNCwyNSArNTE0LDE0IEBAIHN0YXRpYyBpbnQgaGFudHJvX3NldF9mbXRfb3V0KHN0
cnVjdCBoYW50cm9fY3R4ICpjdHgsCj4gICAJCXJldHVybiByZXQ7Cj4gICAKPiAgIAlpZiAoIWN0
eC0+aXNfZW5jb2Rlcikgewo+IC0JCXN0cnVjdCB2YjJfcXVldWUgKnBlZXJfdnE7Cj4gLQo+ICAg
CQkvKgo+ICAgCQkgKiBJbiBvcmRlciB0byBzdXBwb3J0IGR5bmFtaWMgcmVzb2x1dGlvbiBjaGFu
Z2UsCj4gICAJCSAqIHRoZSBkZWNvZGVyIGFkbWl0cyBhIHJlc29sdXRpb24gY2hhbmdlLCBhcyBs
b25nCj4gLQkJICogYXMgdGhlIHBpeGVsZm9ybWF0IHJlbWFpbnMuIENhbid0IGJlIGRvbmUgaWYg
c3RyZWFtaW5nLgo+IC0JCSAqLwo+IC0JCWlmICh2YjJfaXNfc3RyZWFtaW5nKHZxKSB8fCAodmIy
X2lzX2J1c3kodnEpICYmCj4gLQkJICAgIHBpeF9tcC0+cGl4ZWxmb3JtYXQgIT0gY3R4LT5zcmNf
Zm10LnBpeGVsZm9ybWF0KSkKPiAtCQkJcmV0dXJuIC1FQlVTWTsKPiAtCQkvKgo+IC0JCSAqIFNp
bmNlIGZvcm1hdCBjaGFuZ2Ugb24gdGhlIE9VVFBVVCBxdWV1ZSB3aWxsIHJlc2V0Cj4gLQkJICog
dGhlIENBUFRVUkUgcXVldWUsIHdlIGNhbid0IGFsbG93IGRvaW5nIHNvCj4gLQkJICogd2hlbiB0
aGUgQ0FQVFVSRSBxdWV1ZSBoYXMgYnVmZmVycyBhbGxvY2F0ZWQuCj4gKwkJICogYXMgdGhlIHBp
eGVsZm9ybWF0IHJlbWFpbnMuCj4gICAJCSAqLwo+IC0JCXBlZXJfdnEgPSB2NGwyX20ybV9nZXRf
dnEoY3R4LT5maC5tMm1fY3R4LAo+IC0JCQkJCSAgVjRMMl9CVUZfVFlQRV9WSURFT19DQVBUVVJF
X01QTEFORSk7Cj4gLQkJaWYgKHZiMl9pc19idXN5KHBlZXJfdnEpKQo+ICsJCWlmICh2YjJfaXNf
c3RyZWFtaW5nKHZxKSAmJiBwaXhfbXAtPnBpeGVsZm9ybWF0ICE9IGN0eC0+c3JjX2ZtdC5waXhl
bGZvcm1hdCkgewo+ICAgCQkJcmV0dXJuIC1FQlVTWTsKPiArCQl9Cj4gICAJfSBlbHNlIHsKPiAg
IAkJLyoKPiAgIAkJICogVGhlIGVuY29kZXIgZG9lc24ndCBhZG1pdCBhIGZvcm1hdCBjaGFuZ2Ug
aWYKPiBAQCAtNTc3LDE1ICs1NjYsOCBAQCBzdGF0aWMgaW50IGhhbnRyb19zZXRfZm10X291dChz
dHJ1Y3QgaGFudHJvX2N0eCAqY3R4LAo+ICAgc3RhdGljIGludCBoYW50cm9fc2V0X2ZtdF9jYXAo
c3RydWN0IGhhbnRyb19jdHggKmN0eCwKPiAgIAkJCSAgICAgIHN0cnVjdCB2NGwyX3BpeF9mb3Jt
YXRfbXBsYW5lICpwaXhfbXApCj4gICB7Cj4gLQlzdHJ1Y3QgdmIyX3F1ZXVlICp2cTsKPiAgIAlp
bnQgcmV0Owo+ICAgCj4gLQkvKiBDaGFuZ2Ugbm90IGFsbG93ZWQgaWYgcXVldWUgaXMgYnVzeS4g
Ki8KPiAtCXZxID0gdjRsMl9tMm1fZ2V0X3ZxKGN0eC0+ZmgubTJtX2N0eCwKPiAtCQkJICAgICBW
NEwyX0JVRl9UWVBFX1ZJREVPX0NBUFRVUkVfTVBMQU5FKTsKPiAtCWlmICh2YjJfaXNfYnVzeSh2
cSkpCj4gLQkJcmV0dXJuIC1FQlVTWTsKPiAtCj4gICAJaWYgKGN0eC0+aXNfZW5jb2Rlcikgewo+
ICAgCQlzdHJ1Y3QgdmIyX3F1ZXVlICpwZWVyX3ZxOwo+ICAgCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
