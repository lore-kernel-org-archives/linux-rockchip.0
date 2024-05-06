Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1E7DC25B4F
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 14:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqAQm9J0MMwp/qsADJ8HxNjtkGhbT1zQQHRLqPU2adE=; b=LkKbCqycejlBZm
	7sCYDLvJZXzd8jS2vVOnH9ZFd2SoSUEiDZW+auFTWGoC7QNRrH5w7i28AzfogtaMAXu3tLpXsNnHa
	fXmjMc9ieL5f9bXojin+7PnaEQ9cLXQKvEcKIzrkKgrutRcAriq7yA8ypetcfau6J+gRVJ1WrNI4n
	8aG4YDKJ+8m9GOkIItxNSjjOmadvccL/6OsQcIsod7gz2BDe4e0N7vafdKqlQLuqOjImCFn8rXwgy
	bMqMZwWNzKbHyuGMBbTAO43a1AVng0n9RMMUPuMoIHE/H/acthLONli9rVPPo+bykDhG78S1qr+Tz
	bAGTQbGvWYUd38NqWc5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3zUJ-00000007h81-2NjZ;
	Mon, 06 May 2024 14:38:43 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3zUF-00000007h6n-2xYw;
	Mon, 06 May 2024 14:38:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715006316;
	bh=KGPDfZwI4ubFEcvrrWnuUTNMJQCXV8Ilj2eLN3CMFYk=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=FLCl/YV3TJSICHUDZL5pxebArkcfqWznV0LA/FTCX5sNREJSSLO+gHG07AcCkfvdT
	 0gmBg4LSzEFFoKzCVkPbvoqQhCn0x4nwpYtW5jUET+ib7no9Lfb8ZBjosbe08r+Z9P
	 u2jBplgHw9tqT8Rv2O6HpGlmrrbRHqt/cYnnBlBtvqCgegZsH+JbqvYhW2icaAS+nh
	 bS3YheixnaWj3WY1SGzkuoR6ZN0VchuaBnY3VWEIXJtP1pCbyPUUWFjNFM37cZsLHl
	 szq8g7lx9zv3fJdwBjJsg7AUyEj9BhB/mWbaoi1r9QUUgcNvnX6FhZSwEszzRVjgpk
	 3Wa9VzavpqEVw==
Received: from [100.93.89.217] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id BC0FA3781107;
	Mon,  6 May 2024 14:38:35 +0000 (UTC)
Message-ID: <3dde932a-1b62-4824-a9e0-722f82faaaa6@collabora.com>
Date: Mon, 6 May 2024 16:38:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: verisilicon: Fix auxiliary buffers allocation size
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: Nicolas Dufresne <nicolas@ndufresne.ca>, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de, mchehab@kernel.org, heiko@sntech.de
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20240328093439.18712-1-benjamin.gaignard@collabora.com>
 <20240328093439.18712-2-benjamin.gaignard@collabora.com>
 <c8de69fc6cb6029e96f3e6b6c1eeb1de9304ccff.camel@ndufresne.ca>
 <2a3b897a-71f7-4a94-a13c-1aa8b2d96e78@collabora.com>
Content-Language: en-US
In-Reply-To: <2a3b897a-71f7-4a94-a13c-1aa8b2d96e78@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_073839_904349_221960A7 
X-CRM114-Status: GOOD (  11.96  )
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

CkxlIDA1LzA0LzIwMjQgw6AgMTA6MTMsIEJlbmphbWluIEdhaWduYXJkIGEgw6ljcml0wqA6Cj4K
PiBMZSAwNC8wNC8yMDI0IMOgIDIwOjAwLCBOaWNvbGFzIER1ZnJlc25lIGEgw6ljcml0wqA6Cj4+
IEhpLAo+Pgo+PiBMZSBqZXVkaSAyOCBtYXJzIDIwMjQgw6AgMTA6MzQgKzAxMDAsIEJlbmphbWlu
IEdhaWduYXJkIGEgw6ljcml0wqA6Cj4+PiBVc2UgdjRsMl9hdjFfdGlsZV9pbmZvLT50aWxlX2Nv
bHMgdG8ga25vdyB0aGUgbnVtYmVyIG9mIGNvbG9ucwo+Pj4gaW4gdGhlIGZyYW1lLiBUaGlzIG1h
ZGUgYXV4aWxpYXJ5IGJ1ZmZlcnMgbWVvcnkgc2l6ZSBjb21wdXRhdGlvbgo+Pj4gbW9yZSBhY2N1
cmF0ZS4KPj4gU2VlbXMgbGlrZSB0aGlzIGlzIHBvdGVudGlhbGx5IGdvaW5nIHRvIGltcGFjdCBz
b21lIGNvbmZvcm1hbmNlIAo+PiB0ZXN0cy4gQW55dGhpbmcKPj4gdG8gcmVwb3J0IGZyb20gZmx1
c3RlciByZXN1bHRzID8KPgo+IEZsdXN0ZXJzIEFWMSBzY29yZSBpcyB0aGUgc2FtZS4KPiBNYXli
ZSB3ZSBoYXZlIGJlZW4gbHVja3kgd2hlbiBhbGxvY2F0aW5nIG1lbW9yeSB1bnRpbCBub3cuCj4g
VGhhdCBzYWlkIHRoZSB0ZXN0IHN0cmVhbSBoYXZlIDggdGlsZSBjb2x1bW5zIHdoaWNoIGlzIHVu
dXN1YWwgYnV0IAo+IGFkbWl0dGVkIGJ5IEFWMSBzcGVjaWZpY2F0aW9ucy4KCkdlbnRsZSBwaW5n
LApSZWdhcmRzLApCZW5qYW1pbgoKPgo+IEJlbmphbWluCj4KPj4KPj4gTmljb2xhcwo+Pgo+Pj4g
U2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxh
Ym9yYS5jb20+Cj4+PiBGaXhlczogNzI3YTQwMDY4NmEyICgibWVkaWE6IHZlcmlzaWxpY29uOiBB
ZGQgUm9ja2NoaXAgQVYxIGRlY29kZXIiKQo+Pj4gLS0tCj4+PiAuLi4vbWVkaWEvcGxhdGZvcm0v
dmVyaXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYyB8IDMgKystCj4+PiDCoCAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Pgo+Pj4gZGlm
ZiAtLWdpdCAKPj4+IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hp
cF92cHU5ODFfaHdfYXYxX2RlYy5jIAo+Pj4gYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zlcmlz
aWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9od19hdjFfZGVjLmMKPj4+IGluZGV4IGNjNDQ4Mzg1NzQ4
OS4uNjVlOGYyZDA3NDAwIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92
ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHU5ODFfaHdfYXYxX2RlYy5jCj4+PiArKysgYi9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9od19hdjFfZGVjLmMK
Pj4+IEBAIC0yNTcsNyArMjU3LDggQEAgc3RhdGljIGludCAKPj4+IHJvY2tjaGlwX3ZwdTk4MV9h
djFfZGVjX3RpbGVzX3JlYWxsb2NhdGUoc3RydWN0IGhhbnRyb19jdHggKmN0eCkKPj4+IMKgwqDC
oMKgwqAgc3RydWN0IGhhbnRyb19kZXYgKnZwdSA9IGN0eC0+ZGV2Owo+Pj4gwqDCoMKgwqDCoCBz
dHJ1Y3QgaGFudHJvX2F2MV9kZWNfaHdfY3R4ICphdjFfZGVjID0gJmN0eC0+YXYxX2RlYzsKPj4+
IMKgwqDCoMKgwqAgc3RydWN0IGhhbnRyb19hdjFfZGVjX2N0cmxzICpjdHJscyA9ICZhdjFfZGVj
LT5jdHJsczsKPj4+IC3CoMKgwqAgdW5zaWduZWQgaW50IG51bV90aWxlX2NvbHMgPSAxIDw8IAo+
Pj4gY3RybHMtPnRpbGVfZ3JvdXBfZW50cnktPnRpbGVfY29sOwo+Pj4gK8KgwqDCoCBjb25zdCBz
dHJ1Y3QgdjRsMl9hdjFfdGlsZV9pbmZvICp0aWxlX2luZm8gPSAKPj4+ICZjdHJscy0+ZnJhbWUt
PnRpbGVfaW5mbzsKPj4+ICvCoMKgwqAgdW5zaWduZWQgaW50IG51bV90aWxlX2NvbHMgPSB0aWxl
X2luZm8tPnRpbGVfY29sczsKPj4+IMKgwqDCoMKgwqAgdW5zaWduZWQgaW50IGhlaWdodCA9IEFM
SUdOKGN0cmxzLT5mcmFtZS0+ZnJhbWVfaGVpZ2h0X21pbnVzXzEgCj4+PiArIDEsIDY0KTsKPj4+
IMKgwqDCoMKgwqAgdW5zaWduZWQgaW50IGhlaWdodF9pbl9zYiA9IGhlaWdodCAvIDY0Owo+Pj4g
wqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgc3RyaXBlX251bSA9ICgoaGVpZ2h0ICsgOCkgKyA2Mykg
LyA2NDsKPj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
