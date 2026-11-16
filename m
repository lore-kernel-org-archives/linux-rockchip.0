Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58190606A31C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 11:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Tp2H3jky;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=N4qcmHqo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=I+EAw7IPfb6MezQS61ZTfltp1m0HlKd1oqbi3pxdknQ=; b=Tp2H3jkyw9soStnIYpEmNJ4wc0
	bvHAqDwqS+V7vHl44wQQm4AvjAg5xaWChoZXrsL4sRevRD++5xZHXlxo2lHL2vLmdyJYzmXf66+C1
	H41LW1YFSw2xfFhUO1uZ+OegL8p11HYt7ENY3KFPH5e0aqZr5mnHcoZKUSTotIrmU4CRBKtZtxZBD
	iXUsHWBmKh87pzRtwFPoCzWWrVlC8gpAnXP0bzNB3aOi9joG/K/BwCuGop85vTDbIackQYNnU9i01
	v8KHhIIFc/YDVKqnzw56MlQFBi2I6I5YzIuYPmNBGHh7Ee7jTZa+PiQwN2EhA0RI1lKvIy7szIbXn
	FPCzEM2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSvG0-00000002FIK-0m0C;
	Mon, 16 Nov 2026 11:52:20 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSvFx-00000002FHM-2Rmu;
	Mon, 16 Nov 2026 11:52:18 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1794829917; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=irrbfyXogddlylcQkZlr6cFYcsiEft7lACg+oXK/70XkypgFcOjhmlPA7bq12bE16XzEfAWJYo4r3oWZcjOf3EUX46INf7/iqVbcT/NRcuNT9mFS7dg9/l2KKYIYPTF8fJlCSwLunT45fEXl/zkUcBQNFCd+V4pflORA2ag13Lk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1794829917; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=w26fEEm5ybG+G7gyNNOpBbzc8hwwqjZd0VP12Wt699s=; 
	b=D6oNnhh/8JLSRSl95JJcti5S9vsohH8/64oARoV8f0hCc7bQfImSA93NBfkpdwFosA9+xFE864riOu+NhuPED6i9DB1j6vHnT2txkXGIvpK+V9VAYv5NUNVf937QzPzylg+y6IoVhuWf4Nbs0gqve8aq48i8uH8WNoom1ikvaPI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=michael.riesch@collabora.com;
	dmarc=pass header.from=<michael.riesch@collabora.com>
DKIM-Signature: a=rsa-sha256; b=N4qcmHqo84guRQyqnmSu5MjnWgmGqqRgJx9a78v6H+YMDg0X2DOyl/HIZmAgFDsvibkEl5CTzA8eowA/zTt1HiGiSi0ht5rNR3SauwE+SxlW6i2xeongA00WAH966tOIosLWnLvvNIaFko5hsiXgrA4AvfVKhjx3Q9zdpAKkMP0=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=w26fEEm5ybG+G7gyNNOpBbzc8hwwqjZd0VP12Wt699s=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 1794829915540706.1524411200606;
	Mon, 16 Nov 2026 03:51:55 -0800 (PST)
Message-ID: <8c3805ca-0be7-4634-8904-30a9c36d8962@collabora.com>
Date: Mon, 16 Nov 2026 12:51:45 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] media: rockchip: rkcif: Honour the requested
 bytesperline on MIPI
To: Faizel K B <faizel.kb@gmail.com>
Cc: Mehdi Djait <mehdi.djait@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, libcamera-devel@lists.libcamera.org,
 Robert Mader <robert.mader@collabora.com>
References: <20261105232310.385463-1-faizel.kb@gmail.com>
 <20261105232310.385463-3-faizel.kb@gmail.com>
 <51b09428-9d10-4f36-a811-a681e479e45e@collabora.com>
 <fxrwhxkzgihpiz52rbeuomtqkzz7izgdfcbux7osamqruc7w7u@qhvh3nkqypro>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <fxrwhxkzgihpiz52rbeuomtqkzz7izgdfcbux7osamqruc7w7u@qhvh3nkqypro>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_035217_881726_D39D97CC 
X-CRM114-Status: GOOD (  25.66  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgRmFpemVsLAoKT24gMTEvMTIvMjYgMDc6MjAsIEZhaXplbCBLIEIgd3JvdGU6Cj4gSGkgTWlj
aGFlbCwKPiAKPiBPbiBXZWQsIE5vdiAxMSwgMjAyNiBhdCAxMDo0Njo0M0FNICswMTAwLCBNaWNo
YWVsIFJpZXNjaCB3cm90ZToKPj4KPj4gQ29tZSB0byB0aGluayBvZiBpdCwgVFJNIHAuIDIxMTEg
c2F5cyBmb3IgZS5nLiBWSUNBUF9NSVBJMF9WTFdfSUQwOgo+PiAiVmlydHVhbCBsaW5lIHdpZHRo
IG9mIGV2ZW4gZnJhbWUgZm9yIElEMCBwYXRoKG11c3QgYmUgYWxpZ25lZCB0byBkb3VibGUKPj4g
d29yZCkuIiB3aGljaCBJIHdvdWxkIGludGVycHJldCBhcyAiaXQgbXVzdCBiZSBhIG11bHRpcGxl
IG9mIGZvdXIKPj4gYnl0ZXMiLiBXaGF0IGRvIHlvdSB0aGluaz8KPj4KPiAKPiBUaGUgVklDQVAg
cmVnaXN0ZXIgc3VtbWFyeSBkZWZpbmVzIGl0LlRSTSBwYXJ0IDEgKFYxLjAsIHBhZ2UgMjA4MSkK
PiAiRFcgLSBEb3VibGUgV09SRCAoNjQgYml0cykgYWNjZXNzIi4gU28gOCBieXRlcy4KCkFjay4K
Cj4+PiArc3RhdGljIHZvaWQgcmtjaWZfc3RyZWFtX3NldF9ieXRlc3BlcmxpbmUoc3RydWN0Cj4+
PiB2NGwyX3BpeF9mb3JtYXRfbXBsYW5lICpwaXgsCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHUzMiByZXFfYnBsKQo+Pj4gK3sKPj4+ICvCoMKgwqAgdTMy
IG1pbl9icGwgPSBBTElHTihwaXgtPnBsYW5lX2ZtdFswXS5ieXRlc3BlcmxpbmUsIDgpOwo+Pgo+
PiBQbGVhc2UgYWRkIHN1cHBvcnQgZm9yIHRoZSBieXRlc3BlcmxpbmUgZmllbGQgaW4gYWxsIHRo
ZSBwbGFuZV9mbXQKPj4gZW50cmllcyBoZXJlLi4uCj4+Cj4+PiDCoMKgwqDCoCB3aWR0aCA9IGNs
YW1wX3QodTMyLCBwaXgtPndpZHRoLCBDSUZfTUlOX1dJRFRILCBDSUZfTUFYX1dJRFRIKTsKPj4+
ICvCoMKgwqAgcmVxX2JwbCA9IHBpeC0+cGxhbmVfZm10WzBdLmJ5dGVzcGVybGluZTsKPj4KPj4g
Li4uIGFuZCBoZXJlLgo+Pgo+Pj4gwqDCoMKgwqAgcmV0ID0gdjRsMl9maWxsX3BpeGZtdF9tcChw
aXgsIGZtdC0+Zm91cmNjLCB3aWR0aCwgaGVpZ2h0KTsKPj4+IMKgwqDCoMKgIGlmIChyZXQpCj4+
PiDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+Pgo+Pj4gK8KgwqDCoCBpZiAoc3RyZWFt
LT5pbnRlcmZhY2UtPnR5cGUgPT0gUktDSUZfSUZfTUlQSSkKPj4+ICvCoMKgwqDCoMKgwqDCoCBy
a2NpZl9zdHJlYW1fc2V0X2J5dGVzcGVybGluZShwaXgsIHJlcV9icGwpOwo+Pgo+PiBXaHkgaXMg
dGhpcyByZXN0cmljdGVkIHRvIHRoZSBNSVBJIGludGVyZmFjZXM/Cj4+Cj4gCj4gVGhlIE1JUEkg
Zm9ybWF0cyBhbGwgaGF2ZSBhIHNpbmdsZSBwbGFuZSwgYW5kIHRoZSBNSVBJIHBhdGggYWxyZWFk
eQo+IHByb2dyYW1zIHRoZSBsaW5lIHdpZHRoIGZyb20gYnl0ZXNwZXJsaW5lLiBUaGUgRFZQIHBh
dGggdXNlcyB0aGUgd2lkdGgsCj4gYW5kIEkgY2FuJ3QgdGVzdCBpdC4gQnV0IEkgYWdyZWUgaXQg
c2hvdWxkIG5vdCBkZXBlbmQgb24gdGhlIGludGVyZmFjZS4KPiAKPiBGb3IgdjIgSSB3b3VsZDoK
PiAKPiAtIHRha2UgdGhlIHJlcXVlc3RlZCBieXRlc3BlcmxpbmUgb2YgYWxsIHBsYW5lcyBpbnRv
IGFjY291bnQsIGFuZCB1c2UKPiDCoCB0aGUgbGFyZ2VzdCBmb3IgYWxsIHBsYW5lcywgYXMgdGhl
IERWUCBoYXMgb25lIGxpbmUgd2lkdGggcmVnaXN0ZXIKPiDCoCBmb3IgWSBhbmQgVVYKPiAtIGNv
bXB1dGUgdGhlIHNpemVpbWFnZSBvZiBlYWNoIHBsYW5lIGZyb20gaXQKPiAtIGxpbWl0IGl0IHRv
IHRoZSBsaW5lIHdpZHRoIGZpZWxkICgyMCBiaXRzIE1JUEksIDE1IGJpdHMgRFZQKQo+IC0gcHJv
Z3JhbSBSS0NJRl9EVlBfVklSX0xJTkVfV0lEVEggZnJvbSBieXRlc3BlcmxpbmUsIHdpdGggdGhl
IGN1cnJlbnQKPiDCoCB2YWx1ZSBhcyB0aGUgbWluaW11bQo+IAo+IERvZXMgdGhhdCBzb3VuZCBv
az8KClRoYXQgZG9lcyBzb3VuZCByZWFzb25hYmxlLCB5ZXMuCgo+IEEgcXVlc3Rpb24gb24gdGhl
IERWUDogdGhlIFBYMzAgVFJNIChQYXJ0IDIsIDUuMykgc2F5cyByYXcgZGF0YSBpcwo+IHN0b3Jl
ZCBhcyAxNiBiaXRzIHBlciBwaXhlbCwgZXZlbiBmcm9tIGFuIDgtYml0IHNvdXJjZS4gVGhpcyBt
YXRjaGVzCj4gdGhlIHdpZHRoICogMiBpbiB0aGUgZHJpdmVyLiBCdXQgZm9yIFY0TDJfUElYX0ZN
VF9TKjggKGUuZy4KPiBWNEwyX1BJWF9GTVRfU1JHR0I4KSBieXRlc3BlcmxpbmUgaXMgdGhlIHdp
ZHRoLCBzbyB0aGUgYnVmZmVyIGlzIGhhbGYKPiB0aGUgc2l6ZSB0aGUgaGFyZHdhcmUgd3JpdGVz
LiBBbSBJIG1pc3Npbmcgc29tZXRoaW5nPwoKSSBkb24ndCBoYXZlIGFueSBQWDMwIGJvYXJkLCBh
bmQgYWN0dWFsbHkgaXQgaXMgdGhlIGZpcnN0IHRpbWUgSSBoZWFyCmFib3V0IHRoYXQuIE1heWJl
IE1laGRpIGNhbiBjaGltZSBpbj8KCj4gSSBjYW4gb25seSB0ZXN0IHRoZSBNSVBJIHBhdGgsIG9u
IFJLMzU4OCAoUmFkeGEgUk9DSyA1QispLiBDb3VsZCB5b3UKPiB0ZXN0IHRoZSBEVlAgcGFydCBv
biBQWDMwIG9yIFJLMzU2OD8KCkN1cnJlbnRseSwgSSBkb24ndCBoYXZlIGFueSBhY3RpdmUgRFZQ
IHNldHVwLCBidXQgd2hlbiB5b3Ugc2VuZCB0aGUKdXBkYXRlZCBwYXRjaGVzIEknbGwgYXNrIGFy
b3VuZC4KClRoYW5rcyBhbmQgYmVzdCByZWdhcmRzLApNaWNoYWVsCgo+IAo+IFJlZ2FyZHMsCj4g
RmFpemVsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
