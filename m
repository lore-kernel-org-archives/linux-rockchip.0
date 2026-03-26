Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 535D2106F2F9
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Mar 2026 14:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qk54xN//v1fdXHqZLzWiwWX4dO91L311+KHPkkj5KXg=; b=DhbDn65QIQIbTX
	kCdsttR2meywxCM/zGM8189cYC669fBUqbieZ1G5x3dMmcB4cme/xTnwyulj0Fz6UTRP1WkueGbSt
	DSojHX4uX2N1FEr8mPdi9FVsjMryLTcd+tqEiX00ZiKGFNonvWDMParrwIjzBEU1xYh1ob1CpbQbI
	u8kpTqcCMMnN7sxYC+vVlvib29EVtTd+YWMQiuFUhwk6UY9HhBSLgeYPeAUf8LuFmlL438b4JOK7E
	hVyfFfBWopLvBYaoiskT4DZjC1MZm806wdD+oY5yoCNEvBhBKnlrq9sRuo7lRAZwayl4Tr/IAp/ch
	s9YaCeKvXyzc1I3Xkujw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5mAB-00000005hYl-3OnM;
	Thu, 26 Mar 2026 14:58:23 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5mA9-00000005hY5-0cAI
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Mar 2026 14:58:22 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-666f646f5cfso3288763a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Mar 2026 07:58:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774537098; cv=none;
        d=google.com; s=arc-20240605;
        b=VC8Cy+GDt08BmmaVM/cCPrxzxlhEj/IS/Ah+HqtR5+bw12rySV7yoHiHiZjSUZF+31
         6k25lkD22w2P0LV2NTxs3ZIL6Yky3/ZybCS6RGFuGOyeCwROREn33B/Viajn8rsT3RTu
         2OFGszJy8JL9Sifdm93CUaf4GRpTWkX18U4TjRzTYdjtReZgph+Szn3uCmyWTgIZxI6h
         M28Gq9uJRrEgaWpfHOdXy1rZCIQAw05Rm9zePhvb6RhtESLKbnc0a8HpIOjtGvy860JO
         wTE5ve8aGBhP7tnX/1BtHvW1LsyBErfN5tZShQbhtStlVIuKqz3mC83qQ0yMvf1RMNDi
         mDkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Knt8t9hYBVcc+Ey+bKLKvDpLtFkLS2enHg6EzCCsukw=;
        fh=7rgUqEsC3gSGBSpt3USSGUzXxmRRCIS9V2BZxafSqkA=;
        b=XcMW40NNgd/cShrKojjTlo4Pt0QNOqvetPB5reGOq81RmgAK8VzMpq5X5bYemIsWPC
         qRZp3HFwWJTZd/uXws5HSMJVgiVLsoKzFkLQUJt/FFccfyB+mRVZ+arSs2rQjWcxkxJa
         YGUU0ey7ARrl9ciKKIWFKFsEO00ht+ID/Q6WmMSbNBXxpvutBvc/5pVdD2NneozMqwf+
         fCjj5S/3eR4NPSmB6DJmJJM4UJi1XVk0VDL4rne7/2EJ3QMVRe8uTEHNlxgA71btMFF/
         eNyeJy4VnWcSRSJxzNCEHt7WhGBGr8N8SKWjlq+ZxRyPqyaZtfVpQoNloycIiFiFPA+8
         06eg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1774537098; x=1775141898; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Knt8t9hYBVcc+Ey+bKLKvDpLtFkLS2enHg6EzCCsukw=;
        b=JlCxYz124HUb5qdnQTcxaHIsA40dwyeJxR+u1nV37Yyp3bzM0Jad6ekEq16JBZbbi1
         nz7SO5N5geze0YjmZC7vcATA25OUV+NfF36USfqOKkpv/L13ythWCz0CuMYGBAdveeR9
         Q8HTzGg64kLnvXG92Ni6bkkFtadrQV4tg3Cht+aK9ofWX1roQJw+86yyCYiwu1IgOQcK
         H1kn1cbKMlmX02g12jl3oI11q4wVzgmjXK8exnjNprVTe0n2BLNT7I0CqO5SurWfRblO
         voJFpKaNAGkrDAHQ3n+J24HGBwwVO3TG4fkQ7Z9ZpLnKUxdjDT8mM8AcQ/lIGuNUh8+/
         /3Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774537098; x=1775141898;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Knt8t9hYBVcc+Ey+bKLKvDpLtFkLS2enHg6EzCCsukw=;
        b=VTi0fOOP+O+oxZ9CBD2RQhPI6XvyXiIkSJY2hkybSUriEZKjujcPZQQifOGz3VrKbU
         ivwKLLSSGsEoCsw8RftPxmhL8iAZZmqGjNPu/ZP4pLoAcpbwNbOGAmW5isLxL509Q3Yn
         kWVc2Bf+Wc/kSSYIsJcNDwJjKBCnBtpe6djDUZc+v3UyJ93upqN71kpp/cx6v14Jt4p0
         qnP0+Lh1DXAAA1dIibw/rabEtljxpzvgTBFKjosQFakyYn054xIr0zResCtrNcF/PzXd
         ZnjbAYeV5Fssb9wNChgZ5NP6v/mrMrLFgW1GKZyh+nUCJJq8OkDEMC7v5+eBULTSTQgP
         lILA==
X-Forwarded-Encrypted: i=1; AJvYcCU2MQ0bFf99MmrmQFR62ARo5FInGw7huAUiK+dQsR1k0JEnFitgIZeGVzhXmph5Lmzaz7NqnhFJ7KK035G3Pw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5u5eNtGxsN9gT1ciWf4GMtn4ps8ocCixEukvJ5ipYfBTkHZBi
	UfgnILoC2Vvx1EYqGGA45inR68p3FXYU/oU2WbYVIfbIwfh6SZowl2BwCBpx6xsxe2M80RY4Xp8
	4twXfwvwQw5z3UgVR5YrvWj7yWbSWrYsjenxCLe0jMA==
X-Gm-Gg: ATEYQzy/YPN7Gjd3PTJh63WZVtVD+wz0vLEnjTu4qgjuqymF6jxmFKGFF3AeNrnRTK9
	z8UV426kcfSrJFMUS5KrpD6kcg6fnN/+KMlePeB3cBtAukTgs3DnwmqI0oWrpjn1yGi+70CcV1O
	rAe6oQ6/w3QKfnLq1jIL3i6WWznCpw3MRQGRIgVzKAnUiH6YqKEJ/F6SGSFzO9vXWZfPAKTNNnh
	PVKlVoxKMQjwvwQzPpkiJUyl7E8ZsNgWpVyYWc1Qj46AfN/52201nIvbsd7I29fcMMLQNE1azOi
	x8h2b4E=
X-Received: by 2002:a17:907:1ddf:b0:b98:4104:1f83 with SMTP id
 a640c23a62f3a-b9b34713aa7mr71321766b.19.1774537098508; Thu, 26 Mar 2026
 07:58:18 -0700 (PDT)
MIME-Version: 1.0
References: <20260318-sai-slot-width-v1-1-1f68186f71e3@flipper.net> <14828456.uLZWGnKmhe@workhorse>
In-Reply-To: <14828456.uLZWGnKmhe@workhorse>
From: Alexey Charkov <alchark@flipper.net>
Date: Thu, 26 Mar 2026 18:58:07 +0400
X-Gm-Features: AQROBzADiNamIvMkTjLneuBvCLIAqiBkToo-n1En-MLhpXfCGuUuqWIWcusA_qc
Message-ID: <CAKTNdwEpQssNuuvHG7v-wXcwhVSUcg+o5B2jM88JQAuChcWWxw@mail.gmail.com>
Subject: Re: [PATCH] ASoC: rockchip: rockchip_sai: Set slot width for non-TDM mode
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, 
	Sugar Zhang <sugar.zhang@rock-chips.com>, linux-rockchip@lists.infradead.org, 
	linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_075821_211342_ABB2EB6A 
X-CRM114-Status: GOOD (  34.89  )
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

T24gV2VkLCBNYXIgMTgsIDIwMjYgYXQgMTE6NTbigK9QTSBOaWNvbGFzIEZyYXR0YXJvbGkKPG5p
Y29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IE9uIFdlZG5lc2RheSwg
MTggTWFyY2ggMjAyNiAxNTo1MDoyNSBDZW50cmFsIEV1cm9wZWFuIFN0YW5kYXJkIFRpbWUgQWxl
eGV5IENoYXJrb3Ygd3JvdGU6Cj4gPiBDdXJyZW50bHkgdGhlIHNsb3Qgd2lkdGggaW4gbm9uLVRE
TSBtb2RlIGlzIGFsd2F5cyBrZXB0IGF0IHRoZSBQT1IgdmFsdWUKPiA+IG9mIDMyIGJpdHMsIHJl
Z2FyZGxlc3Mgb2YgdGhlIHNhbXBsZSB3aWR0aCwgd2hpY2ggZG9lc24ndCB3b3JrIHdlbGwgZm9y
Cj4gPiBzb21lIGNvZGVjcyBzdWNoIGFzIE5BVTg4MjIuCj4gPgo+ID4gU2V0IHRoZSBzbG90IHdp
ZHRoIGFjY29yZGluZyB0byB0aGUgc2FtcGxlIHdpZHRoIGluIG5vbi1URE0gbW9kZSwgd2hpY2gK
PiA+IGlzIHdoYXQgb3RoZXIgQ1BVIERBSSBkcml2ZXJzIGRvLgo+ID4KPiA+IFRlc3RlZCBvbiB0
aGUgZm9sbG93aW5nIFJLMzU3NiBjb25maWd1cmF0aW9uczoKPiA+IC0gU0FJMiArIE5BVTg4MjIg
KGNvZGVjIGFzIHRoZSBjbG9jayBtYXN0ZXIpLCBjdXN0b20gYm9hcmQKPiA+IC0gU0FJMSArIEVT
ODM4OCAoY29kZWMgYXMgdGhlIGNsb2NrIG1hc3RlciksIFJLMzU3NiBFVkIxCj4gPiAtIFNBSTIg
KyBSVDU2MTYgKFNBSSBhcyB0aGUgY2xvY2sgbWFzdGVyKSwgRnJpZW5kbHlFbGVjIE5hbm9QaSBN
NQo+ID4KPiA+IE5BVTg4MjIgZGlkbid0IHdvcmsgcHJpb3IgdG8gdGhpcyBwYXRjaCBidXQgd29y
a3MgYWZ0ZXIgdGhlIHBhdGNoLiBPdGhlcgo+ID4gdHdvIGNvbmZpZ3VyYXRpb25zIHdvcmsgYm90
aCBiZWZvcmUgYW5kIGFmdGVyIHRoZSBwYXRjaC4KPiA+Cj4gPiBGaXhlczogY2M3OGQxZWFhYmFk
ICgiQVNvQzogcm9ja2NoaXA6IGFkZCBTZXJpYWwgQXVkaW8gSW50ZXJmYWNlIChTQUkpIGRyaXZl
ciIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BmbGlwcGVyLm5l
dD4KPiA+IC0tLQo+ID4gIHNvdW5kL3NvYy9yb2NrY2hpcC9yb2NrY2hpcF9zYWkuYyB8IDQgKysr
Kwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0
IGEvc291bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX3NhaS5jIGIvc291bmQvc29jL3JvY2tjaGlw
L3JvY2tjaGlwX3NhaS5jCj4gPiBpbmRleCAxYmY2MTRkYmRmNGQuLmVkMzkzZTUwMzRhNCAxMDA2
NDQKPiA+IC0tLSBhL3NvdW5kL3NvYy9yb2NrY2hpcC9yb2NrY2hpcF9zYWkuYwo+ID4gKysrIGIv
c291bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX3NhaS5jCj4gPiBAQCAtNjI4LDYgKzYyOCwxMCBA
QCBzdGF0aWMgaW50IHJvY2tjaGlwX3NhaV9od19wYXJhbXMoc3RydWN0IHNuZF9wY21fc3Vic3Ry
ZWFtICpzdWJzdHJlYW0sCj4gPgo+ID4gICAgICAgcmVnbWFwX3VwZGF0ZV9iaXRzKHNhaS0+cmVn
bWFwLCByZWcsIFNBSV9YQ1JfVkRXX01BU0sgfCBTQUlfWENSX0NTUl9NQVNLLCB2YWwpOwo+ID4K
PiA+ICsgICAgIGlmICghc2FpLT5pc190ZG0pCj4gPiArICAgICAgICAgICAgIHJlZ21hcF91cGRh
dGVfYml0cyhzYWktPnJlZ21hcCwgcmVnLCBTQUlfWENSX1NCV19NQVNLLAo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgU0FJX1hDUl9TQlcocGFyYW1zX3BoeXNpY2FsX3dpZHRo
KHBhcmFtcykpKTsKPiA+ICsKPiA+ICAgICAgIHJlZ21hcF9yZWFkKHNhaS0+cmVnbWFwLCByZWcs
ICZ2YWwpOwo+ID4KPiA+ICAgICAgIHNsb3Rfd2lkdGggPSBTQUlfWENSX1NCV19WKHZhbCk7Cj4g
Pgo+ID4gLS0tCj4gPiBiYXNlLWNvbW1pdDogOGU1YTQ3OGI2ZDZhNWJiMGEzZDUyMTQ3ODYyYjE1
ZTRkODI2YWYxOQo+ID4gY2hhbmdlLWlkOiAyMDI2MDMxOC1zYWktc2xvdC13aWR0aC0zNzhlZWQ1
YzIyY2QKPiA+Cj4gPiBCZXN0IHJlZ2FyZHMsCj4gPgo+Cj4gVGhhbmtzIGZvciB0aGUgcGF0Y2gh
IExvb2tpbmcgYXQgd2hlcmUgZWxzZSB0aGlzIHJlZyBtYXNrIGlzIHVzZWQsIEkKPiBnb3QgY3Vy
aW91cyBhYm91dCBgcm9ja2NoaXBfc2FpX3NldF90ZG1fc2xvdGAuIEl0IHNlZW1zIHRvIHJlc2V0
Cj4gU0FJX1hDUl9TQlcgYmFjayB0byAzMiB3aGVuIHNvbWV0aGluZyBjYWxscyBpdCB3aXRoIDAg
c2xvdHMuIERvIHdlCj4gaGF2ZSB0byBhZGp1c3QgdGhpcyBhcyB3ZWxsIHRoZXJlPwoKSG1tLCBm
cm9tIHdoYXQgSSdtIHVuZGVyc3RhbmRpbmcgc2V0X3RkbV9zbG90IGlzIGNhbGxlZCBiZWZvcmUK
aHdfcGFyYW1zIC0gZS5nLiB0aGUgRnJlZXNjYWxlIFNBSSBkcml2ZXIgZG9lc24ndCBldmVuIHBy
b2dyYW0gdGhlCnNsb3Qgd2lkdGggdG8gdGhlIGhhcmR3YXJlIGZyb20gc2V0X3RkbV9zbG90IGFu
ZCBvbmx5IHVwZGF0ZXMgdGhlCnJlcXVlc3RlZCB2YWx1ZSBpbiBpdHMgaW50ZXJuYWwgZGF0YSBz
dHJ1Y3R1cmUgLSB0byBiZSB0aGVuIHdyaXR0ZW4Kb3V0IHdoZW4gaHdfcGFyYW1zIHJ1bnMuIFNv
IEkgYmVsaWV2ZSBpdCBzaG91bGQgd29yayBhcy1pcywgYWx0aG91Z2ggSQpoYXZlbid0IHNlZW4g
YW55IFRETSB1c2VycyBvZiB0aGUgUm9ja2NoaXAgU0FJIGluIHRoZSB3aWxkIHRvIHZlcmlmeQo6
KQoKPiBJIHRoaW5rIHdoYXQgd2UncmUgcnVubmluZyBpbnRvIGhlcmUgaXMgdGhlIGRpZmZlcmVu
Y2UgYmV0d2VlbiBJMlMKPiBub3JtYWwgbW9kZSwgYW5kIEkyUyBqdXN0aWZpZWQgbW9kZS4gSW4g
anVzdGlmaWVkIG1vZGVzLCBpdCdkIGJlCj4gbm9ybWFsIHRvIGhhdmUgYSBzbG90IGJpdCB3aWR0
aCBvZiAzMiBidXQgYSB2YWxpZCBkYXRhIHdpZHRoIG9mLCBzYXksCj4gMTYuIEluIHRoYXQgY2Fz
ZSwgVkRKIHdvdWxkIHNwZWNpZnkgd2hldGhlciBzb21ldGhpbmcgaXMgbGVmdCBvciByaWdodAo+
IGp1c3RpZmllZCBhcyBmYXIgYXMgSSBjYW4gdGVsbC4KPgo+IFNvIGJhc2ljYWxseSBJJ20gd29u
ZGVyaW5nIGlmIHdlJ3ZlIGFjY2lkZW50YWxseSBiZWVuIHNlbmRpbmcKPiBJMlMgbGVmdC1qdXN0
aWZpZWQgZGF0YSBhbGwgYWxvbmcgd2hlbiB1c2luZyBTTkRfU09DX0RBSUZNVF9JMlMsCj4gYW5k
IHdoZXRoZXIgd2Ugc2hvdWxkIG9ubHkgYmUgc2V0dGluZyB0aGlzIGluIFNORF9TT0NfREFJRk1U
X0kyUy4KCklzbid0IHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gU05EX1NPQ19EQUlGTVRfSTJTIHZz
LgpTTkRfU09DX0RBSUZNVF9MRUZUX0oganVzdCBhYm91dCBjbG9jayB0aW1pbmdzIC8gZWRnZXM/
IEkgdGhvdWdodCBib3RoCmNhbiBoYXZlIHNsb3Qgd2lkdGggPj0gc2FtcGxlIHdpZHRoLCBidXQg
SSBjb3VsZCBiZSB3cm9uZyAobm90IGFuCmF1ZGlvIGd1cnUgaGVyZSkuCgo+IEVpdGhlciB3YXks
IEkgY2FuIGdpdmUgdGhpcyBhCj4KPiBUZXN0ZWQtYnk6IE5pY29sYXMgRnJhdHRhcm9saSA8bmlj
b2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+Cj4KPiBmb3IgRVM4Mzg4IG9uIG15IFJPQ0sg
NEQgKHdpdGggbXkgZW5hYmxlbWVudCBwYXRjaGVzIGZvciBpdCB0aGVyZQo+IG9uIHRvcCB0aGF0
IEkgbmVlZCB0byBnZXQgYmFjayBhcm91bmQgdG8pLgoKVGhhbmtzIGEgbG90IQoKQmVzdCByZWdh
cmRzLApBbGV4ZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
