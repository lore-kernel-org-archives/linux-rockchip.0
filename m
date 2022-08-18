Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91FB2C00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 15:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bX3QfQSwgstLKz+/vBGa1ljdvy6UuitiDUUH3FYUbJc=; b=K9SwddpKmMVHS7
	nkcEfNDnB5wHOy/3W6s0pPfdp7Y4ajDWhizBuY9lkUHiw71mRu8oLRe6sjd1DrD3xVY2CCDgjL4J+
	hTK1xny8GqXHMAKCd7qgt4Q5qWsFIkvE4AwuSYZsNOaANdOcmsebbpKYDeafL0YozbVUviqsMctbb
	eXItRrT/iPOjgJPViEkh7Tj6HNAAbVnopdO5Xs4sR1w1RtD1cIb3toMEHBlSzKPvKX22tLna1FYm4
	iNkhl+5WOjx+IEL76vhaxgZgLLHzY5pgrdjCgs1DHGGEj1jUfFyrOi9m2jhZNpBlgl7nCrFc+hqa4
	A/cz4Lx9mfNjceiOTQeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOhR0-006cRI-R9; Thu, 18 Aug 2022 15:27:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOhMO-006a5b-D4; Thu, 18 Aug 2022 15:23:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6540B611D2;
	Thu, 18 Aug 2022 15:23:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACC42C433C1;
	Thu, 18 Aug 2022 15:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660836182;
	bh=93zRkpX8+F5vSFoNumE4nlqcLbeeMaNWaeGkTRY04+4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=f1lNleViIl5t1pUDcRte9A42+XrAhRbGdHsbKcyVfUjDI8V1leHvd9KrBnC91wpjH
	 DZyi70y4MX2oyYo8KU23cM6xRFnkplSmxKmT77HrRkHJW40lb56I6VEQRbdT6Kx2yL
	 kOHxqHS1mS68SuvDDY46CHuPXkXlMFAVHzQ7Ph9ifxz89Hi8zLaBgzhb0wtD706Yk3
	 G24T6XiMINOY0U7KYuTqxiIXlalAi2o+xCvrqepr18O/Xj/s0Z5GFVB1wNQGt9KXOm
	 A1gVm2tS2VHUj7RF4AeNGg517/WZff9Czug/XgL+XHysLsz5qfXVuPNCDnQdZZc2/K
	 DRb8uZePtBA+Q==
From: Mark Brown <broonie@kernel.org>
To: Christian Kohlschütter <christian@kohlschutter.com>
Cc: wens@kernel.org, m.reichl@fivetechno.de, robin.murphy@arm.com, heiko@sntech.de, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org, vincent.legoll@gmail.com,
 lgirdwood@gmail.com
In-Reply-To: <20220818124646.6005-1-christian@kohlschutter.com>
References: <YvorNPDQQr2SH/NF@sirena.org.uk> <20220818124646.6005-1-christian@kohlschutter.com>
Subject: Re: [PATCH v4] regulator: core: Resolve supply name earlier to prevent double-init
Message-Id: <166083618043.142744.12816130780555020292.b4-ty@kernel.org>
Date: Thu, 18 Aug 2022 16:23:00 +0100
MIME-Version: 1.0
X-Mailer: b4 0.10.0-dev-fe10a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_082304_528941_CDE26B2E 
X-CRM114-Status: GOOD (  13.57  )
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

T24gVGh1LCAxOCBBdWcgMjAyMiAxMjo0Njo0NyArMDAwMCwgQ2hyaXN0aWFuIEtvaGxzY2h1zIh0
dGVyIHdyb3RlOgo+IEZyb206IENocmlzdGlhbiBLb2hsc2Now7x0dGVyIDxjaHJpc3RpYW5Aa29o
bHNjaHV0dGVyLmNvbT4KPiAKPiBQcmV2aW91c2x5LCBhbiB1bnJlc29sdmVkIHJlZ3VsYXRvciBz
dXBwbHkgcmVmZXJlbmNlIHVwb24gY2FsbGluZwo+IHJlZ3VsYXRvcl9yZWdpc3RlciBvbiBhbiBh
bHdheXMtb24gb3IgYm9vdC1vbiByZWd1bGF0b3IgY2F1c2VkCj4gc2V0X21hY2hpbmVfY29uc3Ry
YWludHMgdG8gYmUgY2FsbGVkIHR3aWNlLgo+IAo+IFRoaXMgaW4gdHVybiBtYXkgaW5pdGlhbGl6
ZSB0aGUgcmVndWxhdG9yIHR3aWNlLCBsZWFkaW5nIHRvIHZvbHRhZ2UKPiBnbGl0Y2hlcyB0aGF0
IGFyZSB0aW1pbmctZGVwZW5kZW50LiBBIHNpbXBsZSwgdW5yZWxhdGVkIGNvbmZpZ3VyYXRpb24K
PiBjaGFuZ2UgbWF5IGJlIGVub3VnaCB0byBoaWRlIHRoaXMgcHJvYmxlbSwgb25seSB0byBiZSBz
dXJmYWNlZCBieQo+IGNoYW5jZS4KPiAKPiBbLi4uXQoKQXBwbGllZCB0bwoKICAgaHR0cHM6Ly9n
aXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYnJvb25pZS9yZWd1bGF0b3Iu
Z2l0IGZvci1uZXh0CgpUaGFua3MhCgpbMS8xXSByZWd1bGF0b3I6IGNvcmU6IFJlc29sdmUgc3Vw
cGx5IG5hbWUgZWFybGllciB0byBwcmV2ZW50IGRvdWJsZS1pbml0CiAgICAgIGNvbW1pdDogOGE4
NjZkNTI3YWMwNDQxYzBlYjE0YTk5MWZhMTEzNThiNDc2YjExZAoKQWxsIGJlaW5nIHdlbGwgdGhp
cyBtZWFucyB0aGF0IGl0IHdpbGwgYmUgaW50ZWdyYXRlZCBpbnRvIHRoZSBsaW51eC1uZXh0CnRy
ZWUgKHVzdWFsbHkgc29tZXRpbWUgaW4gdGhlIG5leHQgMjQgaG91cnMpIGFuZCBzZW50IHRvIExp
bnVzIGR1cmluZwp0aGUgbmV4dCBtZXJnZSB3aW5kb3cgKG9yIHNvb25lciBpZiBpdCBpcyBhIGJ1
ZyBmaXgpLCBob3dldmVyIGlmCnByb2JsZW1zIGFyZSBkaXNjb3ZlcmVkIHRoZW4gdGhlIHBhdGNo
IG1heSBiZSBkcm9wcGVkIG9yIHJldmVydGVkLgoKWW91IG1heSBnZXQgZnVydGhlciBlLW1haWxz
IHJlc3VsdGluZyBmcm9tIGF1dG9tYXRlZCBvciBtYW51YWwgdGVzdGluZwphbmQgcmV2aWV3IG9m
IHRoZSB0cmVlLCBwbGVhc2UgZW5nYWdlIHdpdGggcGVvcGxlIHJlcG9ydGluZyBwcm9ibGVtcyBh
bmQKc2VuZCBmb2xsb3d1cCBwYXRjaGVzIGFkZHJlc3NpbmcgYW55IGlzc3VlcyB0aGF0IGFyZSBy
ZXBvcnRlZCBpZiBuZWVkZWQuCgpJZiBhbnkgdXBkYXRlcyBhcmUgcmVxdWlyZWQgb3IgeW91IGFy
ZSBzdWJtaXR0aW5nIGZ1cnRoZXIgY2hhbmdlcyB0aGV5CnNob3VsZCBiZSBzZW50IGFzIGluY3Jl
bWVudGFsIHVwZGF0ZXMgYWdhaW5zdCBjdXJyZW50IGdpdCwgZXhpc3RpbmcKcGF0Y2hlcyB3aWxs
IG5vdCBiZSByZXBsYWNlZC4KClBsZWFzZSBhZGQgYW55IHJlbGV2YW50IGxpc3RzIGFuZCBtYWlu
dGFpbmVycyB0byB0aGUgQ0NzIHdoZW4gcmVwbHlpbmcKdG8gdGhpcyBtYWlsLgoKVGhhbmtzLApN
YXJrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
