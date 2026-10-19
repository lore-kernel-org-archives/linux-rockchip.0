Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C46606A326
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2026 16:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2uljtOT7;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=VwtKHOcM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1SUBEdVcxV5pmniL0cZM6RfCupnhyPR69z2H25IQkM4=; b=2uljtOT7Dyo4zh
	6tX7C4VTvcDni2M4+reTWRsXyfGT1f3zJd3fKKLBNp/MFf3Q2yHq1AgOjnJMvWCkBULDbIs5hCz4P
	b3smYVtNm40ujuvEWmLF4z+RM+kvJHq1MBMXOy/2pnPlOm7a/o+4xkziUDtx/rZQruczbvA+b22J8
	ijx3ABHvrmObdshmJFHl3RGFgm4/aw+bbgZ/cTwXHCIyUDzURbj0HTdFGU9dJ6bxKwKNXg9UOTXOs
	kep2IWZZvHxz0ms496k7cbR+dxfpZ2KnT50YS+LoA1h7jgUvNtNiQQtUfy714InojNijb3LB459L6
	OVd2MHNbBuWcbd9cj5wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIqZa-00000008212-2D3l;
	Mon, 19 Oct 2026 16:50:54 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIqZY-000000081zl-2nBn
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Oct 2026 16:50:54 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-c43373ae89aso227879266b.3
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Oct 2026 09:50:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792428650; cv=none;
        d=google.com; s=arc-20260327;
        b=Rj5yLuabRhq1bCbewucF3GVrOhd5Kgr8yNGJdGL3H49kp9KG18Yq6OQT3jW1ZREGV9
         melCdb2MG3etJDevWYD0DkcxJpEqVhD5zNbTSGsBwfWSQ288/PNjUb0IRRrwePWFaw9i
         9hn38mPcR4GGNEn0mvU10NSNeGG4M3nLGh0oSPfNRpMUDdzeDJB9wvFu7aPIND8MfE2y
         eopO/QisVH7spwAz9nFa8d0NTq69/3SdImd89F5vZoBSAo1UTXNodAFGDJSnxmBIV7md
         ZinDCgiMKt35LW5b8ODcNROAzfbax0/9E89FBVPxAr1iFI0vk9/NT6XbVCGULZ0uZwYa
         k6UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=iVwRMBbuzg7b5pNfa4A9rRUh+XfwqITm1ddr4+PZFxo=;
        fh=s5B0pvuO+GZdICeKJ15VzFAVnoYvYMUCbvVmBBvk6e0=;
        b=htx5w8G1MlVLxvJc7kGrkcDCR/Qow6pkZb1k9t8EY1BlU5sB31IJsJ4b9psjKy7AS3
         pc53FSOMRyqJlapImulbrKJLrsuUYdVMoT45wGrJZDQU/2gnMtgJjsscZKfHQ5qwLXcd
         BF/3iT7NzVat7sXRZM24LgUfwJARvRXFnzzegEV5+CjhmJzkBtPXGznG6aFuPgVuQsXg
         HkoiKW7Lp2OkajArKb1BBm9bKDFLQh9XdoX27HcgBVT7Nm9eX+cgoKJ3p92JPSylOciO
         QZP7ZLdCp0zFpc5aXcdPw+HlvojnleA91Q250sw8fBoMOXfIHNFJX7EmmTZA/g1en29D
         tLww==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1792428650; x=1793033450; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=iVwRMBbuzg7b5pNfa4A9rRUh+XfwqITm1ddr4+PZFxo=;
        b=VwtKHOcM4wmpRpPpag9JWvpdXgOeu7bgciWdHi0K6LkDEFVvTcvYzQLoaw3i5laqXn
         M+ED2SpezC3lc6cgQ0HdYVV/HxGy25A0gsX02yhi6NUt/V5pd+V3PW3i3dxS+ihjM8aR
         wh2mvMK7iifmKTfjnLb8G+E6sC2HK7VzHvUrolM2zHNBiRg9l46xHeYqm3n7u6rrr9gI
         G9nyJrKsrN0tOF1WkQ+cLrjIhDxJRT6vLBnP6QDKwqSwk6sFpNACmBD3DVkQrJpGwAVS
         NNLg3Nv17bUaD186yHM4ucShxAjULsUjBbyAlhXRxUICOYd9QEy00VU3wJOroMNEK4si
         4v6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792428650; x=1793033450;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iVwRMBbuzg7b5pNfa4A9rRUh+XfwqITm1ddr4+PZFxo=;
        b=bJ3xFHR4JLn9vLAsrZUPCD+rCFfXlz1C7tfomAbbfS+DK9YFb5t2FD59/5J5GujH9F
         Ja6V9L5RwRWPv0it2qbRsmjsKU+6U1hED3Jm5RDgda26dKrEeB1m2A52mKJu/MV44yK0
         w63Tc3dU+EeY9RtZTtYboVSRZb/Cs9e0x4sq+j4fjUgbjr1R01/SKeyMrzAryjwXoLUD
         dKykpu0EJHSMuIvQjYd7oEzH9CAsPtXtdwzetFGGBJEnGtK2uZlEdsYqHhcvuDzUSy/1
         Jckzta6mBdn6eY6MdPX+QpN3mlZ3B35D+gwwYVodlm5p1LEz6SqPuTLiutetn9Tmbnb9
         USOA==
X-Forwarded-Encrypted: i=1; AKwUvBzk2yowSYJIkHPqA3EWYeuGjlvkzTMX5p+m70zt8vCcJPFkYc/gaaZEp1iDcAh9nBfo+82MMjR6ewnYo+456Q==@lists.infradead.org
X-Gm-Message-State: AFq9FYLc3zENBRXsd8GrPDgPa2j2KOxQug7v4CXersnRrL1HNl+l/f20
	9k53dPBwxeX7ZFH2N4MK8lAAHmoZsQCzaMMC6VqqLswsvQGfC9gq5ubvt9hfZrO8HA0aU0RHd6D
	VW63rNPMts+ENrtPqKf3yBN5onzNtvskKMcAkanbLoA==
X-Gm-Gg: AYBFou3cFX0IPVetMIBBWo5mzqiXH0JS3VoBG3FtvTnFY9eB6paLmG7JVvWEHETV1w5
	VUBDBvzOsCo0igy0TTSFE1SJmo3bWsA6b46ZnrH6Gov+5YRBOgn/ouEMVsSCZ1d8Z4xukD6S5U1
	W0shQIetC+DFHtE4/5StUnIJh0rXt6TaCuvu0UfjsyOhanPW2/ZZnF+NhsZ0JLi99B7TPnfeMcs
	KeA7QuYBQJO7FkxZOuMC8CgO0VfVjaMnEuEcwBZgwhBqJK/oen7IFHVpPNbZsqOa73NpnnspI6g
	/KJf+dz5p7MkDbbQWkAyCuqGez6ATdKJ5iS7Z9wtAVgaDz+DxBDnkFutOC4X/J8weYJlptdPNE7
	pogc6/hMtJDu1
X-Received: by 2002:a17:907:c819:b0:c32:8cbb:fb3 with SMTP id
 a640c23a62f3a-c419da3f531mr597229866b.14.1792428649640; Mon, 19 Oct 2026
 09:50:49 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261015-i2c-rk3x-disable-v1-1-81625845c175@flipper.net> <bfe8baa4-e740-4908-9d2a-4defc5240a82@rock-chips.com>
In-Reply-To: <bfe8baa4-e740-4908-9d2a-4defc5240a82@rock-chips.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Mon, 19 Oct 2026 20:50:38 +0400
X-Gm-Features: AclHuK8q0YJA2qpd7bG850w0xtzlJFV0bFMuoGTJWJoEbLnFUaD8-ggaMzyW9Gg
Message-ID: <CAKTNdwFYxPeaG6pZn3SYoR6cPAtON37ajo4nZpPE0Hm=y2c6Lg@mail.gmail.com>
Subject: Re: [PATCH] i2c: rk3x: Disable the controller between transfers
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-i2c@vger.kernel.org, Andi Shyti <andi.shyti@kernel.org>, 
	linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
	"david.wu" <david.wu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_095052_765290_439BC101 
X-CRM114-Status: GOOD (  18.95  )
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
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_ZEN_BLOCKED_OPENDNS,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgU2hhd24sCgpPbiBGcmksIE9jdCAxNiwgMjAyNiBhdCA0OjMz4oCvQU0gU2hhd24gTGluIDxz
aGF3bi5saW5Acm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4gQ2M6ICsgRGF2aWQKPgo+IOWcqCAy
MDI2LzEwLzE1IOaYn+acn+WbmyAyMjowMCwgQWxleGV5IENoYXJrb3Yg5YaZ6YGTOgo+ID4gVGhl
IGRyaXZlciBsZWF2ZXMgdGhlIGNvbnRyb2xsZXIgZW5hYmxlZCBvbmNlIGEgdHJhbnNmZXIgY29t
cGxldGVzLCBhbmQKPiA+IGFuIGVuYWJsZWQgY29udHJvbGxlciBrZWVwcyB0cmFja2luZyB0aGUg
YnVzLiBJZiB0aGUgbGluZXMgY29sbGFwc2UgdW5kZXIKPiA+IGl0IHdoaWxlIGlkbGUsIGFzIGhh
cHBlbnMgd2hlbiBhIHRhcmdldCdzIHN1cHBseSBpcyBzd2l0Y2hlZCBvZmYgd2hpbGUKPiA+IGl0
cyBidXMgcHVsbC11cHMgc3RheSBwb3dlcmVkLCBpdHMgc3RhdGUgbWFjaGluZSB3ZWRnZXMgZHJp
dmluZyBTREEgbG93Lgo+ID4gRXZlcnkgbGF0ZXIgdHJhbnNmZXIgdGhlbiB0aW1lcyBvdXQsIHNp
bmNlIHRoZSB0aW1lb3V0IHBhdGggb25seSByZXF1ZXN0cwo+ID4gYSBTVE9QIGFuZCBuZXZlciBk
aXNhYmxlcyB0aGUgY29udHJvbGxlciwgYW5kIHRoZSBzdHVjayBzdGF0ZSBldmVuCj4gPiBzdXJ2
aXZlcyBhIGtleGVjLgo+ID4KPiA+IENsZWFyIHRoZSBlbmFibGUgYml0IG9uY2UgZWFjaCB0cmFu
c2ZlciBpcyBkb25lLCBzdWNjZXNzZnVsIG9yIG5vdCwgc28KPiA+IHRoYXQgdGhlIGNvbnRyb2xs
ZXIgZG9lcyBub3Qgd2F0Y2ggYW4gaWRsZSBidXMgYW5kIHN0YXJ0cyBldmVyeSB0cmFuc2Zlcgo+
ID4gZnJvbSBhIGNsZWFuIHN0YXRlLgo+ID4KPgo+IEkgY2hlY2tlZCB0aGUgdmVuZG9yIGtlcm5l
bCB0cmVlIGFuZCBzYXcgYW5vdGhlciBjYXNlIHRoYXQgeW91IHBlcmhhcHMKPiBuZWVkIHRvIGZv
bGQgc29tZXRoaW5nIHNpbWlsYXIgYmVsb3cgaW50byB5b3VyIHBhdGNoLCBhbG9uZyB3aXRoIHlv
dXIKPiBkaXNhYmxpbmcgY29udHJvbGxlcj8KPgo+ICAgICAgSW4gc29tZSBjYXNl77yMbG9nIGxp
a2UgdGhpczoKPgo+ICAgICAgWyAgIDEyLjM5MzkyNl0gcmszeC1pMmMgZmYxNTAwMDAuaTJjOiBp
cnEgaW4gU1RBVEVfSURMRSwgaXBkID0gMHg1MQo+ICAgICAgWyAgIDEyLjQxNjU5Ml0gcmszeC1p
MmMgZmYxNTAwMDAuaTJjOiBpcnEgaW4gU1RBVEVfSURMRSwgaXBkID0gMHg1MQo+Cj4gICAgICBU
aGUgaTJjIGNsb2NrIGlzIGRpc2FibGVkLCBzbyB0aGUgcGVuZGluZyBpcnEgY2xlYW4gaXMgbm90
Cj4gICAgICB3b3JrZWQuIERpc2FibGUgdGhlIGludGVycnVwdCBhZnRlciB0aGUgaTJjIGpvYnMg
d2VyZSBkb25lLAo+ICAgICAgdGhlIGVycm9yIGxvZyB3b3VsZCBub3QgaGFwcGVuLgo+Cj4KPiAv
KiBEaXNhYmxlIGkyYyBhbGwgaXJxcyAqLwo+ICNkZWZpbmUgSUVOX0FMTF9ESVNBQkxFICAgMAo+
Cj4gaTJjX3dyaXRlbChpMmMsIElFTl9BTExfRElTQUJMRSwgUkVHX0lFTik7aTJjX3dyaXRlbChp
MmMsCj4gSUVOX0FMTF9ESVNBQkxFLCBSRUdfSUVOKTsKClRoYW5rcyBmb3IgbG9va2luZyBpbnRv
IHRoaXMhIERvIHlvdSBoYXBwZW4gdG8gaGF2ZSBhIHJlcHJvZHVjZXIgb3IKYW55IGFkZGl0aW9u
YWwgaW5mbyBvbiBob3cgdGhpcyBzdGF0ZSBnZXRzIHRyaWdnZXJlZD8gSSBoYXZlbid0IHJ1bgpp
bnRvIGl0IGluIG15IHNldHVwcyAtIGRpZCBJIGp1c3QgZ2V0IGx1Y2t5PyA6KQoKSSBzZWUgdGhl
IHNhbWUgd3JpdGUgb2YgMCB0byBSRUdfSUVOIGp1c3QgYWJvdmUgbXkgY2hhbmdlZCBsaW5lcyBm
b3IKdGhlIGNhc2UgaWYgKHRpbWVfbGVmdCA9PSAwKSwgd2hpY2ggbWFrZXMgc2Vuc2UgYmVjYXVz
ZSBhCnRvby1sb25nLXJ1bm5pbmcgdHJhbnNmZXIgbWlnaHQgZXZlbnR1YWxseSBjb21wbGV0ZSBh
bmQgdHJpZ2dlciB0aGUKaW50ZXJydXB0IHdpdGggdGhlIGNvbnRyb2xsZXIgZGlzYWJsZWQsIHVu
bGVzcyB0aGUgaW50ZXJydXB0IGlzCmRpc2FibGVkIHRvby4gRm9yIG90aGVyIGNhc2VzIEknZCBi
ZSBpbnRlcmVzdGVkIHRvIGtub3cgd2hhdCBjYW4gcmFpc2UKdGhlIGludGVycnVwdC4KCkJlc3Qg
cmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
