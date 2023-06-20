Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9D6FEB64DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 08:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JkJo3O/qRNgQD0lY8+acvoG08MzRO24vh47YAhzbALQ=; b=znm+xrTSbJj/B5
	vUkNZZgWkCnSqud35klVxPLenGdDrc1OdzXP02Z5/lvj8MfZspSc2XG08wp9TcsZVQfzQo/9d4RLq
	6A3dRX9TWsnIwejfGZbNvHjXMiobhGnbKvJ3yCanIk3CiJyIeSKBTOi+hMWHs1L57aTAZFGcl2PrM
	W5KEnmb2x4H5U41E2EwMufGHP43aX1rT9TJDrNs6xASMYAIfnwkYeMu7P4OMTgmYL8FmbszfTHjoO
	qn8NqKWgJrAH/wv3iLQsO6pa3x8+BxIVQ+DwDENSZvuhlZHWhmIm/G6WZWpwdUcj2NASz0j19kvwS
	fOjxRAfEASBe4nTGFf2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBWIY-00AUsT-0d;
	Tue, 20 Jun 2023 08:01:10 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBWIT-00AUqF-00
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jun 2023 08:01:09 +0000
Received: from [IPV6:2a01:e0a:120:3210:6e77:5147:3eca:d8bb] (unknown [IPv6:2a01:e0a:120:3210:6e77:5147:3eca:d8bb])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 508876602121;
	Tue, 20 Jun 2023 09:00:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1687248058;
	bh=7QcfFKjwwy3oIIB+optJvNNXQHWLLCPVIQa7o8GKpg0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oPBoKjsVECgNIICizc0K3KRL8pDEGtMWD6uDQ+v/UXXuwBMTVuSzaqBJDXY50eNnu
	 uhIUE2jI27bbn2XTsQBEEfL1Lyz/Ut4vciK9Wu/zJT2NLLaYHwtUE0w70nYa+b7ONe
	 FpqOloQJvxn8k7aRs6IWGxsDDf0UrRmgMftQVQxTKg7dAoztx7pZHtnpBtQjrFvHyg
	 0KFRZR7lwXba2N0o/WArAKzkSVjWUPPsKFwWLm3FXtrDeyF4eCIVJHgCuO11AgLBHR
	 74UYPvwq8ME5s0bD85U/AxgWFh2LwyKLqhZbida9cK3wN0tLWCSMzOJtquknmZF/jO
	 7KnB/00teWKig==
Message-ID: <707b241b-c361-afde-c264-b3cd54f81f44@collabora.com>
Date: Tue, 20 Jun 2023 10:00:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 2/2] media: verisilicon: change confusingly named relaxed
 register access
To: Arnd Bergmann <arnd@arndb.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Arnd Bergmann <arnd@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230616144854.3818934-1-arnd@kernel.org>
 <20230616144854.3818934-2-arnd@kernel.org>
 <e264ac3a15e0f115aa7e941a77eb312429b8f65e.camel@collabora.com>
 <063a8886-fd31-425f-901c-fc830512eca3@app.fastmail.com>
 <d9f088d1d548c8735b393a15d5a16dbd914ddeca.camel@collabora.com>
 <300ecb3e-8747-4399-8452-77724f85330b@app.fastmail.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <300ecb3e-8747-4399-8452-77724f85330b@app.fastmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_010105_192642_5324AF98 
X-CRM114-Status: GOOD (  17.78  )
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

CkxlIDE5LzA2LzIwMjMgw6AgMjE6MjYsIEFybmQgQmVyZ21hbm4gYSDDqWNyaXTCoDoKPiBPbiBN
b24sIEp1biAxOSwgMjAyMywgYXQgMjA6MjksIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6Cj4+IExl
IGx1bmRpIDE5IGp1aW4gMjAyMyDDoCAxNjo0OSArMDIwMCwgQXJuZCBCZXJnbWFubiBhIMOpY3Jp
dMKgOgo+Pj4+IEluIHRoaXMgdGV4dCB5b3Ugc3Bva2UgYWJvdXQgcG90ZW50aWFsIHBlcmZvcm1h
bmNlIHNpZGUgZWZmZWN0cyBvZiBleGlzdGluZyBjb2RlCj4+Pj4gYW5kIHlvdXIgY2hhbmdlcywg
YnV0IGl0cyBsZWZ0IGFsbCB2ZXJ5IHZhZ3VlIGFuZCB0aGVvcmV0aWNhbC4gSGF2ZSB5b3UgZG9u
ZSBhbnkKPj4+PiBtZWFzdXJlbWVudCA/IERvIHlvdSBuZWVkIGhlbHAgd2l0aCB0aGUgbWFubmVy
ID8KPj4+IEkgZG9uJ3QgaGF2ZSB0aGlzIGhhcmR3YXJlIGFuZCBoYXZlIG5vdCBkb25lIGFueSBt
ZWFzdXJlbWVudHMuCj4+PiBPYnZpb3VzbHkgdGhlIG9ubHkgcG9pbnQgb2YgdXNpbmcgcmVsYXhl
ZCBhY2Nlc3NvcnMgaXMgdG8KPj4+IGltcHJvdmUgcGVyZm9ybWFuY2UgaW4gY3JpdGljYWwgY29k
ZSBwYXRocywgYnV0IGZyb20gdGhlIHdheSB0aGV5Cj4+PiBhcmUgdXNlZCBoZXJlIGl0IHNlZW1z
IHRoYXQgdGhpcyB3YXMgaW5zdGVhZCBqdXN0IGFuIGFjY2lkZW50Cj4+PiBhbmQgbm9ib2R5IGVs
c2UgZGlkIGFueSBjb21wYXJpc29ucyBlaXRoZXIuCj4+Pgo+Pj4gTXkgZ3Vlc3Mgd291bGQgYmUg
dGhhdCBpZiBvbmUgd2FudGVkIHRvIHNwZWVkIHVwIHRoZSByZWdpc3Rlcgo+Pj4gYWNjZXNzLCBh
IGJldHRlciB3YXkgd291bGQgYmUgdG8gdXNlIGEgcmVnbWFwIGNhY2hlIHRvIGF2b2lkCj4+PiBy
ZWFkaW5nIHJlZ2lzdGVycyB3aGVuIHRoZSBjb250ZW50cyBhcmUgYWxyZWFkeSBrbm93bi4KPj4g
QWxsIEkga25vdyBpcyB0aGF0IGZvciB0aGUgbWFqb3JpdHkgb2YgcmVnaXN0ZXJzIHdoZW4gcHJv
Z3JhbW1pbmcgc3RhdGVsZXNzCj4+IGNvZGVjcywgZWFjaCAzMmJpdCB3b3JkIG9mIHJlZ2lzdGVy
cyBhcmUgZnVsbHkgd3JpdHRlbiB0b28sIHRoZSByZWFkIHZhbHVlIGlzCj4+IG5vdCBhbHdheXMg
bWVhbmluZ2Z1bCAoaXRzIGEgdmFsdWUgZnJvbSBsYXN0IHRpbWUgdGhlIEhXIGhhcyBiZWVuIHRy
aWdnZXJlZCkgYW5kCj4+IHNob3VsZCBiZSBpZ25vcmVkLCBzbyBiZXR0ZXIgdG8gbm90IGRvIHRo
YXQuIEFzIGZvciByZWdtYXAsIHRoZXJlIGlzIGZvbGtzIHRoYXQKPj4gaGF2ZSByZXBvcnRlZCBy
ZWdtYXAgdG8gYmUgY29tcGxldGVseSBvdmVya2lsbCBmb3IgdGhpcyB0eXBlIG9mIGhhcmR3YXJl
Lgo+IFJpZ2h0LCBtb3N0IGxpa2VseSBuZWl0aGVyIHRoZSBjYWNoZSBub3IgYXZvaWRpbmcgdGhl
IHJlYWRsKCkgaXMgbmVjZXNzYXJ5LAo+IGFuZCB0aGF0IHdhcyBleGFjdGx5IG15IHBvaW50IHRv
IHN0YXJ0IHdpdGg6IGRvbid0IGFkZCBwb3RlbnRpYWxseSBkYW5nZXJvdXMKPiBtaWNyb29wdGlt
aXphdGlvbnMgbGlrZSByZWxheGVkIGFjY2Vzc29ycyB1bmxlc3MgdGhlIG9idmlvdXMgb3B0aW1p
emF0aW9ucwo+IGFyZSBhbHNvIG5lZWRlZCBhbmQgdXNlZC4KPgo+IE9idmlvdXNseSwgdGVzdGlu
ZyBteSBwYXRjaCB3b3VsZCBzdGlsbCBiZSBhIGdvb2QgaWRlYSBiZWZvcmUgYXBwbHlpbmcgaXQu
CgpJIGhhdmUgdGVzdCB0aGUgcGF0Y2hlcyBvbiBJTVg4TSAoSEVWQyBkZWNvZGVyKSBhbmQgUksz
NTg4IChBVjEgZGVjb2RlcikuCkkgbm90aWNlIG5vdCByZWdyZXNzaW9uIG9yIHByb2JsZW1zLCBj
b25mb3JtYW5jZSB0ZXN0cyBzY29yZXMgcmVtYWluIGlkZW50aWNhbC4KCkZvciB0aGUgYm90aCBw
YXRjaGVzOgpUZXN0ZWQtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBj
b2xsYWJvcmEuY29tPgoKVGhhbmtzIGZvciB0aGUgcGF0Y2hlcywKQmVuamFtaW4KCj4KPiAgICAg
ICAgIEFybmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
