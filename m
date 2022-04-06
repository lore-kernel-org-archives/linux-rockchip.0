Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ADFAC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 06:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GKDtuCn7O1/eluJecYfGibgRQODZc3uidbFFgIaJwLM=; b=eDDpiFCpi5CDRa
	OPHOhJYXarmz4PEMI92uWXUsWUhExl5Z+r6WVZqLQIjDp3cPbNLAJfprqFrOA7sv7z8uC8uDRbw4O
	j1yrZBMkwrRLTfOlLXpShOKK1OHgXjuMCeNXaMh0FXO/ZlUm0GdR9tDDjRnUsPyMENL0CJZZYryv4
	B3w3jKzX1kta67MldF5lGRD9jHo0XAk7+WzUlSTaVar9nBMCMVsXL7MFbI0Kcj9KJ1RuJvhlhYsIr
	FfZEfsSNFN6Ts40o4XX1rLIEhESqJb/2NwFkTFWlvnZ1kJD5pU3MHwwmTsazznVmP14I1n4O/FqJc
	BbsOVqHeN7F/FLm/HAHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbzYe-004IDC-Dy; Wed, 06 Apr 2022 06:54:24 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbzYS-004I7k-90; Wed, 06 Apr 2022 06:54:14 +0000
Received: from [IPV6:2a01:e0a:120:3210:ff63:de1f:2a77:5241] (unknown
 [IPv6:2a01:e0a:120:3210:ff63:de1f:2a77:5241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8091E1F44519;
 Wed,  6 Apr 2022 07:54:09 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1649228050;
 bh=tqnMuI8tFUvTxaTXTOvtQ2qzTn9cKLNn18CehTYmq8w=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=hpbelg9ITQRa7aKF8ZvmRAihh+Xif2IZ1f80s4ReZW/+hjfUjbf6YDv0q+uTSAAyU
 +hp+8WaicFUXLVxHALbFU932x/O6gAmvj2w3STI3dwKIPTyEQbU63eAFAijijUcX5a
 7QQB0Ed4hvVe1vByawUjFE1muivhK0HdFyqeMdjcToNxpvOg5X90+fExd/Atfomwox
 XZS4lRr3b+/3cIbpuJgdJqsqjK55zAYRosi7aupAcwRd/Yluf91gLoLCkZzmWhfLeK
 P00ix/kzuCyg8he3Oxjp8uUq1LYP4VLO5WrBtyecAbkLYNBxowyjPZXPkQXSvLTRWR
 g/RXf+JtfVQaw==
Message-ID: <bf938b83-2b57-95b3-4bcb-f967bbb46413@collabora.com>
Date: Wed, 6 Apr 2022 08:54:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC PATCH 0/8] media: hantro: Add 10-bit support
Content-Language: en-US
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@gmail.com>,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de
Cc: mchehab@kernel.org, nicolas@ndufresne.ca, hverkuil-cisco@xs4all.nl,
 gregkh@linuxfoundation.org, wens@csie.org, samuel@sholland.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
References: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
 <b6987a9a-56af-f63f-b60a-37df141d6e89@collabora.com>
 <4386971.LvFx2qVVIh@jernej-laptop>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <4386971.LvFx2qVVIh@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_235412_484920_9A594E2C 
X-CRM114-Status: GOOD (  18.83  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

CkxlIDA1LzA0LzIwMjIgw6AgMjA6NDAsIEplcm5laiDFoGtyYWJlYyBhIMOpY3JpdMKgOgo+IEhp
IEJlbmphbWluIQo+Cj4gRG5lIHRvcmVrLCAwNS4gYXByaWwgMjAyMiBvYiAxODowNzo0MSBDRVNU
IGplIEJlbmphbWluIEdhaWduYXJkIG5hcGlzYWwoYSk6Cj4+IExlIDI3LzAyLzIwMjIgw6AgMTU6
NDksIEplcm5laiBTa3JhYmVjIGEgw6ljcml0IDoKPj4+IEZpcnN0IHR3byBwYXRjaGVzIGFkZCAx
MC1iaXQgZm9ybWF0cyB0byBVQVBJLCB0aGlyZCBleHRlbmRzIGZpbHRlcmluZwo+Pj4gbWVjaGFu
aXNtLCBmb3VydGggZml4ZXMgaW5jb3JyZWN0IGFzc3VtcHRpb24sIGZpZnRoIG1vdmVzIHJlZ2lz
dGVyCj4+PiBjb25maWd1cmF0aW9uIGNvZGUgdG8gcHJvcGVyIHBsYWNlLCBzaXh0aCBhbmQgc2V2
ZW50aCBlbmFibGUgMTAtYml0Cj4+PiBWUDkgZGVjb2Rpbmcgb24gQWxsd2lubmVyIEg2IGFuZCBs
YXN0IGluY3JlYXNlcyBjb3JlIGZyZXF1ZW5jeSBvbgo+Pj4gQWxsd2lubmVyIEg2Lgo+Pj4KPj4+
IEknbSBzZW5kaW5nIHRoaXMgYXMgUkZDIHRvIGdldCBzb21lIGNvbW1lbnRzOgo+Pj4gMS4gZm9y
bWF0IGRlZmluaXRpb25zIC0gYXJlIGZvdXJjYydzIG9rPyBhcmUgY29tbWVudHMvZGVzY3JpcHRp
b25zIG9rPwo+Pj4gMi4gaXMgZXh0ZW5kZWQgZmlsdGVyaW5nIG1lY2hhbmlzbSBvaz8KPj4+Cj4+
PiBJIHdvdWxkIGFsc28gbGlrZSBpZiB0aGVzZSBwYXRjaGVzIGFyZSB0ZXN0ZWQgb24gc29tZSBt
b3JlIEhXLgo+Pj4gQWRkaXRpb25hbGx5LCBjYW4gc29tZW9uZSB0ZXN0IHRpbGVkIFAwMTA/Cj4+
Pgo+Pj4gUGxlYXNlIHRha2UgYSBsb29rLgo+PiBIaSBKZXJuZWosCj4+Cj4+IEkgaGF2ZSBjcmVh
dGUgYSBicmFuY2ggdG8gdGVzdCB0aGlzIHNlcmllcyB3aXRoIFZQOSBhbmQgSEVWQzoKPj4gaHR0
cHM6Ly9naXRsYWIuY29sbGFib3JhLmNvbS9iZW5qYW1pbi5nYWlnbmFyZC9mb3ItdXBzdHJlYW0v
LS90cmVlLzEwYml0X2lteAo+PiA4bSBGZWVsIGZyZWUgdG8gcGljayB3aGF0IEkgbWF5IG5lZWQg
aW4gaXQuCj4+Cj4+IFRoYXQgZG9lc24ndCBpbXByb3ZlIGZsdXN0ZXIgc2NvcmVzLCBJIHRoaW5r
IG1vcmUgZGV2IGFyZSBzdGlsbCBuZWVkZWQgaW4KPj4gR1NUIGJlZm9yZSBnZXR0aW5nIHNvbWV0
aGluZyBmdWxseSBmdW5jdGlvbmFsLgo+PiBBbnl3YXkgSSBhYmxlIHRvIHNlbGVjdCBQMDEwIHBp
eGVsIGZvcm1hdCBpZiB0aGUgaW5wdXQgaXMgYSAxMGJpdCBiaXRzdHJlYW0uCj4gV2hhdCBraW5k
IG9mIGltcHJvdmVtZW50cyBkbyB5b3UgZXhwZWN0PyBBY3R1YWxseSwgdGhpcyBzZXJpZXMgaXMg
ZGVzaWduZWQgdG8KPiBjaGFuZ2Ugbm90aGluZyBmb3IgcGxhdGZvcm1zLCB3aGVyZSAxMC1iaXQg
Zm9ybWF0IGlzIG5vdCBhZGRlZCBpbnRvIHRoZSBsaXN0Cj4gb2Ygc3VwcG9ydGVkIGZvcm1hdHMu
IEkgdGhpbmsgcmVhc29ucyBhcmUgcXVpdGUgb2J2aW91cy4gRmlyc3QsIG5vdCBldmVyeQo+IGRl
dmljZSBtYXkgc3VwcG9ydCAxMC1iaXQgb3V0cHV0LiBTZWNvbmQsIGFzIHlvdSBtaWdodCBhbHJl
YWR5IGZpZ3VyZWQgaXQgb3V0LAo+IHJlZ2lzdGVycyBpbiB0aGlzIHNlcmllcyBhcmUgc2V0IG9u
bHkgZm9yIGxlZ2FjeSBjb3Jlcy4gSSBoYXZlIG5vIGlkZWEsIHdoYXQKPiBuZWVkcyB0byBiZSBk
b25lIGZvciBuZXdlciBvbmVzLCBzaW5jZSBJIGRvbid0IGhhdmUgdGhlbS4gQW55d2F5LCBJIHRl
c3RlZAo+IHRoaXMgd2l0aCBmbHVzdGVyIGFuZCBvbmx5IG9uZSBhZGRpdGlvbmFsIHRlc3QgcGFz
c2VzLCBiZWNhdXNlIGl0IGlzIHRoZSBvbmx5Cj4gb25lIGZvciAxMC1iaXQgWVVWNDIwLgoKSW4g
dGhpcyBzZXJpZXMgeW91IHdpbGwgZmluZCB0aGF0IEkgaGF2ZSBhZGRlZCB0aGUgcmVnaXN0ZXJz
IGZvciB0aGUgbmV3IGNvcmVzLApmaXggaGV2YyB0byBiZSBhYmxlIHRvIHVzZSAxMC1iaXQsIGFu
ZCBlbmFibGUgdGhhdCBpbiBJTVg4TS4KClJlZ2FyZHMsCkJlbmphbWluCgo+Cj4gQmVzdCByZWdh
cmRzLAo+IEplcm5lago+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
