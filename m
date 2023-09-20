Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86FFECE79AE
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Sep 2023 07:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mvNZ9GvRhxQTf4jYcrGDR4nwJhXBXGe+Esc9OE80jPM=; b=xa2v77AWQ/f4gW
	J9h3FihxjAuSZQ3THsh+3o9cJRRymquYVwKJc2i5GQjPSawyoQTicLXJJj67pOvkx6UKzYhZrC+1k
	6otpS93IQ//idrlOcRdfSk6G4Lg9acKoAs4At+13gBoiTGCCweFZgxzlaJBNfbrYUHiDF9SHuPsAK
	OpLRAT2f4vk6/z3SsQQ1v96F4uUgO63Bk3Wd8cQcVAabnAsl/miKfyebjv15BQ+KBxYF+17ZeUYZM
	XT2pd2q+0e5ddEl2XBiyzlQSrNib9WfHMoXhjxA/DICFbzxQR0qKu+84eb3yGbLO2EUQDdSMKd9qU
	0Ho5Xxd4yOld7ZHSCMdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qirsc-002ANh-0F;
	Wed, 20 Sep 2023 07:44:14 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qirsY-002ALs-0z;
	Wed, 20 Sep 2023 07:44:11 +0000
Received: from [IPV6:2a01:e0a:120:3210:def9:8f6c:3807:7d89] (unknown [IPv6:2a01:e0a:120:3210:def9:8f6c:3807:7d89])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 47BA36602173;
	Wed, 20 Sep 2023 08:44:05 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695195845;
	bh=eSYDs+qZU32e2E7cB12pTV5zRWbHto0dzuV5YKjfLWo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Xalbv7WF546UBvMJ/uGdPNld1qXxWIZmEZBQNskDrTzN3Kc+mJm2K9bvp4I5jtKtk
	 xh/X+B7ucMdy42dseAz54rg4P7I9YJA/3FoQItb9vwQqHPyUNl7fc+dshVakekBHXb
	 QcP1y4mgDUSV5tY2k7TpkbMndUSxWS785NAY9lNPZHJ6xrOwqoVA0akSgEhrXfyBKv
	 Zwaxq58FH2PeIV5GsXJ0NbMHwbSwRC/aW/RyPQ+MIUv1c82tP51tb2XKxB3Y308Gqb
	 6NwPnaeD8HFNYScL6HU9hUz1inEGA8duZz+ac3Je4mIy3XMK6cx+laUynATVkjms8Q
	 FvmXdUFWloOmA==
Message-ID: <f6332d70-4392-3eee-edaa-0f7e4308fa67@collabora.com>
Date: Wed, 20 Sep 2023 09:44:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 16/49] media: verisilicon: postproc: Fix down scale
 test
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20230914133323.198857-1-benjamin.gaignard@collabora.com>
 <20230914133323.198857-17-benjamin.gaignard@collabora.com>
 <cbfef598-8faa-40e6-8dc2-a1efd03f9560@xs4all.nl>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <cbfef598-8faa-40e6-8dc2-a1efd03f9560@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_004410_505599_9505422A 
X-CRM114-Status: GOOD (  25.74  )
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

CkxlIDE5LzA5LzIwMjMgw6AgMTM6MTYsIEhhbnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+IE9uIDE0
LzA5LzIwMjMgMTU6MzIsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+PiBEbyBub3QgYWxsb3cg
ZG93biBzY2FsaW5nIGlmIHRoZSBzb3VyY2UgYnVmZmVyIHJlc29sdXRpb24gaXMKPj4gc21hbGxl
ciAgdGhhbiBkZXN0aW5hdGlvbiBvbmUuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdh
aWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+PiBGaXhlczogZmJiNmM4
NDhkZDg5ICgibWVkaWE6IGRlc3RhZ2UgSGFudHJvIFZQVSBkcml2ZXIiKQo+IElzIHRoaXMgcmVh
bGx5IGEgZml4PyBJIGdhdGhlciB0aGF0IHRoaXMgcmVsaWVzIG9uICJWUDkgcmVzb2x1dGlvbiBj
aGFuZ2Ugd2l0aG91dAo+IGRvaW5nIHN0cmVhbSBvZmYvb24iIHN1cHBvcnQsIGFuZCBzdXBwb3J0
IGZvciB0aGF0IGlzIGFkZGVkIGJ5IHRoZXNlIHBhdGNoZXMuCj4KPiBBZGRpbmcgdGhlIEZpeGVz
IHRhZyB3b3VsZCBjYXVzZSBzdGFibGUgbWFpbnRhaW5lcnMgdG8gcXVldWUgdGhpcyBwYXRjaCB1
cCBmb3IKPiBvbGRlciBrZXJuZWxzLCBidXQgSSBkb24ndCB0aGluayB0aGF0IGlzIG5lZWRlZCBo
ZXJlIGF0IGFsbC4KPgo+IEFuZCByZWxhdGVkIEkgYWxzbyB0aGluayB0aGF0IHRoaXMgcmVhbGx5
IGRvZXMgbm90IGJlbG9uZyB0byB0aGlzIHBhdGNoIHNlcmllcy4KPgo+IEFzIEkgdW5kZXJzdGFu
ZCBpdCwgcGF0Y2ggMTMvNDkgZXh0ZW5kcyB0aGUgdmVyaXNpbGljb24gZHJpdmVyIHRvIHN1cHBv
cnQgbW9yZQo+IHRoYW4gMzIgYnVmZmVycywgc28gdGhhdCBvbmUgbWFrZXMgc2Vuc2UgaW4gdGhl
IGNvbnRleHQgb2YgdGhpcyBzZXJpZXMuCj4KPiBCdXQgdGhlIG90aGVyIHZlcmlzaWxpY29uIHBh
dGNoZXMgYXBwZWFyIHRvIGJlIHVucmVsYXRlZCBhbmQgaW5zdGVhZCBhZGQgYSBuZXcKPiBmZWF0
dXJlLCBhbmQgSSBkb24ndCBiZWxpZXZlIGl0IHJlbGF0ZXMgdG8gdGhpcyBzZXJpZXMgYXQgYWxs
Lgo+Cj4gSWYgSSBhbSByaWdodCwgdGhlbiBwbGVhc2UgcG9zdCB0aGlzIGFzIGEgc2VwYXJhdGUg
c2VyaWVzLCBwb3NzaWJseSBtZW50aW9uaW5nCj4gdGhhdCBpdCBzaXRzIG9uIHRvcCBvZiB0aGlz
IHNlcmllcy4KCk1hcmVrIGhhcyBzZW5kIHRoZSBzYW1lIHBhdGNoIGFuZCBnb3QgaXQgbWVyZ2Vk
IGluIHN0YWdlIGJyYW5jaDoKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xp
bnV4LW1lZGlhL3BhdGNoLzIwMjMwODI0MDEzOTM1LjMwMzEzMi0xLW1hcmV4QGRlbnguZGUvCnNv
IEkgY2FuIHNraXAgaXQgbm93LgoKVGhlIG90aGVyIHBhdGNoZXMgYXJlIG5lZWRlZCB0byBlbmFi
bGUgVlA5IGR5bmFtaWMgcmVzb2x1dGlvbiBjaGFuZ2UsIHdoaWNoIGlzIHRoZSBmZWF0dXJlCkkg
dGFyZ2V0IHdpdGggdGhpcyBzZXJpZXMuCjIgcGF0Y2hlcyBmaXggY2hyb21hIC8gbW90aW9uIHZl
Y3RvciBvZmZzZXQgaXNzdWVzLgoxIGFsbG93IHRvIGNoYW5nZSB0aGUgcmVzb2x1dGlvbiB3aGls
ZSBzdHJlYW0uCgpSZWdhcmRzLApCZW5qYW1pbgoKPgo+IFJlZ2FyZHMsCj4KPiAJSGFucwo+Cj4+
IC0tLQo+PiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Bvc3Rw
cm9jLmMgfCAyICstCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxp
Y29uL2hhbnRyb19wb3N0cHJvYy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNv
bi9oYW50cm9fcG9zdHByb2MuYwo+PiBpbmRleCBlNjI0Y2Q5OGY0MWIuLjc3ZDhlY2ZiZTEyZiAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9f
cG9zdHByb2MuYwo+PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hh
bnRyb19wb3N0cHJvYy5jCj4+IEBAIC0xMDcsNyArMTA3LDcgQEAgc3RhdGljIHZvaWQgaGFudHJv
X3Bvc3Rwcm9jX2cxX2VuYWJsZShzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4KQo+PiAgIAo+PiAgIHN0
YXRpYyBpbnQgZG93bl9zY2FsZV9mYWN0b3Ioc3RydWN0IGhhbnRyb19jdHggKmN0eCkKPj4gICB7
Cj4+IC0JaWYgKGN0eC0+c3JjX2ZtdC53aWR0aCA9PSBjdHgtPmRzdF9mbXQud2lkdGgpCj4+ICsJ
aWYgKGN0eC0+c3JjX2ZtdC53aWR0aCA8PSBjdHgtPmRzdF9mbXQud2lkdGgpCj4+ICAgCQlyZXR1
cm4gMDsKPj4gICAKPj4gICAJcmV0dXJuIERJVl9ST1VORF9DTE9TRVNUKGN0eC0+c3JjX2ZtdC53
aWR0aCwgY3R4LT5kc3RfZm10LndpZHRoKTsKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
