Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB875FF8875
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Apr 2026 08:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OVs1dRT/B3F+GU0vEoJuo+D5voh0WjKYoZBNeU/Nbro=; b=c3YRlFo+/X0UYS
	xgIgyGzNbBig3IJ/i7940dCD1Z7vAr1vsusqE+N19SkjKcdxqvinb4YfVZo0H0YETQ9vgEChI748l
	ELHUEUnXXlbonwqqwEUfOBXTacsjF38z1MYMPvX1Fw2QxIxIkIeHM1Ed+1/oMlrcZR97deCQ8YN8z
	fb1HlNycXQSBdRJxgbBdHsDBaWCwg4CzfmS/9FE4/lDEWhn4yiBngKuLe8P78gnFOZkyDe6+yLr97
	2hnHqCucuvDpkj3hnd8d68ItiNzW1W+IaHvebYKwX6ekfhuRHIt+WLy4iEIuuOz0Xc3+gtEFVoevi
	oHPDI0zMWvPLlJvEyRWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIMd5-00000004zYj-0s4g;
	Thu, 30 Apr 2026 08:20:15 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIMd2-00000004zXd-1qTi;
	Thu, 30 Apr 2026 08:20:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777537207;
	bh=CvZdTuDsOPbOOmFVZSdMX9Q+/W011Sk793y54eFmV0Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XaUMvcwjVufXn463hhg7uWcS9Rxv4Tru74bsB2yGvC44ZNYhwnpiLzll7Gb+tm6TG
	 UqehcY/XL/b/r6ZKGeKJhciwp1yH/flVzYSRMTNzCW72taUSt8Ki6JokO9N1XqkCRN
	 IW4WwECF47QGtHp5iU8wk8GOtZM/wUr+4lw6vHxj6KV9Euxytw/N3w5tdQZMlZXsC1
	 Wv7Af0VSwdITetenf94ZVMVV0uqFFNpWhr3WCvdNDPXW8QKz2HpHfWl9sQjCZA3EOl
	 jrDBSBPkekD7cfEF1pN3iXYFUYu0w9AVubP0oSDTUOA2sgKL9/QOviFMqGwZGvcadX
	 zDOilydgE2mQw==
Received: from [100.64.1.43] (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7176017E1340;
	Thu, 30 Apr 2026 10:20:06 +0200 (CEST)
Message-ID: <6ff04d04-ebe8-4a57-bdc2-b98346080055@collabora.com>
Date: Thu, 30 Apr 2026 10:20:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] media: verisilicon: Simplify motion vectors and
 rfc buffers allocation
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Frank Li <Frank.li@nxp.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, heiko@sntech.de,
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com, wens@kernel.org,
 jernej.skrabec@gmail.com, samuel@sholland.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev,
 kernel@collabora.com
References: <20260415140420.282084-1-benjamin.gaignard@collabora.com>
 <20260415140420.282084-2-benjamin.gaignard@collabora.com>
 <aeIRWW937ev_F8zF@lizhi-Precision-Tower-5810>
 <4064d0168c3409a1e15f9c92da56cea93956b31e.camel@collabora.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <4064d0168c3409a1e15f9c92da56cea93956b31e.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_012012_665914_96663096 
X-CRM114-Status: GOOD (  11.13  )
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

CkxlIDI5LzA0LzIwMjYgw6AgMjA6MTEsIE5pY29sYXMgRHVmcmVzbmUgYSDDqWNyaXTCoDoKPiBI
aSBCZW5qYW1pbiwKPgo+IExlIHZlbmRyZWRpIDE3IGF2cmlsIDIwMjYgw6AgMDY6NTQgLTA0MDAs
IEZyYW5rIExpIGEgw6ljcml0wqA6Cj4+IE9uIFdlZCwgQXByIDE1LCAyMDI2IGF0IDA0OjA0OjE5
UE0gKzAyMDAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+Pj4gVW50aWwgbm93IHdlIHJlc2Vy
dmUgdGhlIHNwYWNlIG5lZWRlZCBmb3IgbW90aW9uIHZlY3RvcnMgYW5kIHJlZmVyZW5jZQo+Pj4g
ZnJhbWUgY29tcHJlc3Npb24gYXQgdGhlIGVuZCBvZiB0aGUgZnJhbWUgYnVmZmVyLgo+Pj4gRGlz
ZW50YW5nbGVtZW50IG12IGFuZCByZmMgZnJvbSBmcmFtZSBidWZmZXJzIGJ5IGFsbG9jYXRpbmcK
Pj4+IGRpc3RpbmN0IGJ1ZmZlcnMgZm9yIGVhY2ggcHVycG9zZS4KPj4+IFRoYXQgc2ltcGxpZnkg
dGhlIGNvZGUgYnkgcmVtb3ZpbmcgbG90IG9mIG9mZnNldCBjb21wdXRhdGlvbi4KPj4gQ2FuIHlv
dSB0cnkgc3BsaXQgdG8gbW9yZSBzbWFsbCBhbmQgc3RyYWlnaHQgZm9yd2FyZCBwYXRjaGVzLCBm
b3IgZXhhbXBsZQo+Pgo+PiBmb3IgZXhhbXBsZSBjcmVhdGUgcGF0Y2gganVzdCBtb3ZlIGhhbnRy
b19oMjY0X212X3NpemUoKSB0byBoZWFkZXIgZmlsZSwKPiBNYXJraW5nIHRoaXMgaGFzIENoYW5n
ZSBSZXF1ZXN0ZWQsIGFzIEkgY29tcGxldGVseSBhZ3JlZSB3aXRoIEZyYW5rIHRoYXQgYSBzcGxp
dAo+IG9mIHRoaXMgZ2lhbnQgd2lsbCBoZWxwIHByb3BlciByZXZpZXcuCgpJIHdpbGwgY3V0IHRo
ZSBzZXJpZXMgaW4gdHdvOiBvbmUgY2xlYW4gdXAgc2VyaWVzICh3aGljaCB3aWxsIGNvbWUgYWZ0
ZXIgYXYxIGxpYiBzZXJpZXMgYmVlbiBtZXJnZWQpCmFuZCBidWZmZXIgc2ltcGxpZmljYXRpb24g
cGF0Y2ggYWZ0ZXIgdGhhdC4KCkJlbmphbWluCgo+Cj4gTmljb2xhcwo+Cj4+IC4uLgo+Pj4gKysr
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faGV2Yy5jCj4+PiBA
QCAtNDQsMzAgKzQ0LDQ5IEBAIGRtYV9hZGRyX3QgaGFudHJvX2hldmNfZ2V0X3JlZl9idWYoc3Ry
dWN0IGhhbnRyb19jdHggKmN0eCwKPj4+ICDCoAlpbnQgaTsKPj4+Cj4+PiAgwqAJLyogRmluZCB0
aGUgcmVmZXJlbmNlIGJ1ZmZlciBpbiBhbHJlYWR5IGtub3duIG9uZXMgKi8KPj4+IC0JZm9yIChp
ID0gMDvCoCBpIDwgTlVNX1JFRl9QSUNUVVJFUzsgaSsrKSB7Cj4+PiArCWZvciAoaSA9IDA7IGkg
PCBOVU1fUkVGX1BJQ1RVUkVTOyBpKyspIHsKPj4+ICDCoAkJaWYgKGhldmNfZGVjLT5yZWZfYnVm
c19wb2NbaV0gPT0gcG9jKSB7Cj4+PiAgwqAJCQloZXZjX2RlYy0+cmVmX2J1ZnNfdXNlZCB8PSAx
IDw8IGk7Cj4+PiAgwqAJCQlyZXR1cm4gaGV2Y19kZWMtPnJlZl9idWZzW2ldLmRtYTsKPj4+ICDC
oAkJfQo+Pj4gIMKgCX0KPj4+IC0KPj4+ICDCoAlyZXR1cm4gMDsKPj4gTW92ZSB0aGlzIGNvZGUg
c3R5bGUgY2hhbmdlIHRvIG5ldyBwYXRjaGVzLgo+Pgo+PiBGcmFuawoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
