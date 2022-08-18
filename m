Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10C99C00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 15:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3TBO2YkD8ogl7SCvb1/uUKIfDuOkKSSFNe70j9wAL48=; b=0X5OdsFfOaNgMc
	agnjd8oYd6YuqyNVzXgxNvfc6P71te9bIORp7orhz41HV83QAKiHSVd89W5n9OjaAYdRezVOvqaF4
	o1QWzxKRiCmnvaZDXlJjNPpnwP3Jc7WJ0sAHlxtkYPfAPDUxM2uWrPD6SZ3zwvpFpt2FA00XKitK5
	OriCSTbb8ISefRtIjuKUrjVJVcG+09cTSwLCaTNFk8aDmjMEAcS1f5Wpl2eL7guZ+nILdsjLQvOH/
	+SRoj5i9n/uukjrKRioDA7Q2y8/42sIKrR2DKPCW4u78UEHoOXvhrMpVUA3Bfxr0iJvgtm/xuOFng
	ikLaeDkBI8KRVEiX4+Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOhPu-006bmG-5v; Thu, 18 Aug 2022 15:26:42 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOhMN-006a50-7x; Thu, 18 Aug 2022 15:23:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 821D9B821E4;
	Thu, 18 Aug 2022 15:23:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26532C433B5;
	Thu, 18 Aug 2022 15:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660836180;
	bh=mD4r/gevk9DKgS9Sy3UQCjsQYbfzkYIOyX0I5GBTJyQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=azrK8yabkHj1o2Norvdf8wCRtqsj84ZB3EfBnBbU+jz5ul/HlWWnuLbnlckei/hYC
	 prO8dNvj58V25WNoKcv5VTSsaLqmlxr+pQzA9z4fc7m63Eded40Kjd5WyELlJg0TuA
	 T/RddFNmv7IkWZq7ecX++NnvrVbR21taTHNn8sSKlvqbgYs0eKZka+iD9HBm6NYEUd
	 9n0fVBmqxiJSCKUJpKRaLekg378rJih0SIXIZYoVV7z8noizSIrcvP4ibqQ/iG+i7Y
	 B4fOxFRAU/QLMdP4VAXeS0lJKyIkeCRSlHR65aA+mxGsSN5tqycvf8FmVu8GKMJId9
	 3MEYyR1MPA4bA==
From: Mark Brown <broonie@kernel.org>
To: Vincent Legoll <vincent.legoll@gmail.com>, Christian Kohlschütter <christian@kohlschutter.com>
Cc: wens@kernel.org, Heiko Stübner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Markus Reichl <m.reichl@fivetechno.de>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Robin Murphy <robin.murphy@arm.com>, linux-kernel <linux-kernel@vger.kernel.org>
In-Reply-To: <EC5FFA28-21D3-4FBB-B188-7DB1C9E1AA9E@kohlschutter.com>
References: <CAEwRq=qe+Frwpe=Zr4n_8A6vjOJnV3noegdnHSN7NTazkKejBA@mail.gmail.com>
 <EC5FFA28-21D3-4FBB-B188-7DB1C9E1AA9E@kohlschutter.com>
Subject: Re: [PATCH v3] regulator: core: Resolve supply name earlier to prevent double-init
Message-Id: <166083617788.142744.9952816090089797555.b4-ty@kernel.org>
Date: Thu, 18 Aug 2022 16:22:57 +0100
MIME-Version: 1.0
X-Mailer: b4 0.10.0-dev-fe10a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_082303_516102_036DF3CE 
X-CRM114-Status: GOOD (  14.35  )
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

T24gVGh1LCA0IEF1ZyAyMDIyIDEyOjQ0OjI5ICswMjAwLCBDaHJpc3RpYW4gS29obHNjaMO8dHRl
ciB3cm90ZToKPiBQcmV2aW91c2x5LCBhbiB1bnJlc29sdmVkIHJlZ3VsYXRvciBzdXBwbHkgcmVm
ZXJlbmNlIHVwb24gY2FsbGluZwo+IHJlZ3VsYXRvcl9yZWdpc3RlciBvbiBhbiBhbHdheXMtb24g
b3IgYm9vdC1vbiByZWd1bGF0b3IgY2F1c2VkCj4gc2V0X21hY2hpbmVfY29uc3RyYWludHMgdG8g
YmUgY2FsbGVkIHR3aWNlLgo+IAo+IFRoaXMgaW4gdHVybiBtYXkgaW5pdGlhbGl6ZSB0aGUgcmVn
dWxhdG9yIHR3aWNlLCBsZWFkaW5nIHRvIHZvbHRhZ2UKPiBnbGl0Y2hlcyB0aGF0IGFyZSB0aW1p
bmctZGVwZW5kZW50LiBBIHNpbXBsZSwgdW5yZWxhdGVkIGNvbmZpZ3VyYXRpb24KPiBjaGFuZ2Ug
bWF5IGJlIGVub3VnaCB0byBoaWRlIHRoaXMgcHJvYmxlbSwgb25seSB0byBiZSBzdXJmYWNlZCBi
eQo+IGNoYW5jZS4KPiAKPiBbLi4uXQoKQXBwbGllZCB0bwoKICAgaHR0cHM6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYnJvb25pZS9yZWd1bGF0b3IuZ2l0IGZvci1u
ZXh0CgpUaGFua3MhCgpbMS8xXSByZWd1bGF0b3I6IGNvcmU6IFJlc29sdmUgc3VwcGx5IG5hbWUg
ZWFybGllciB0byBwcmV2ZW50IGRvdWJsZS1pbml0CiAgICAgIGNvbW1pdDogOGE4NjZkNTI3YWMw
NDQxYzBlYjE0YTk5MWZhMTEzNThiNDc2YjExZAoKQWxsIGJlaW5nIHdlbGwgdGhpcyBtZWFucyB0
aGF0IGl0IHdpbGwgYmUgaW50ZWdyYXRlZCBpbnRvIHRoZSBsaW51eC1uZXh0CnRyZWUgKHVzdWFs
bHkgc29tZXRpbWUgaW4gdGhlIG5leHQgMjQgaG91cnMpIGFuZCBzZW50IHRvIExpbnVzIGR1cmlu
Zwp0aGUgbmV4dCBtZXJnZSB3aW5kb3cgKG9yIHNvb25lciBpZiBpdCBpcyBhIGJ1ZyBmaXgpLCBo
b3dldmVyIGlmCnByb2JsZW1zIGFyZSBkaXNjb3ZlcmVkIHRoZW4gdGhlIHBhdGNoIG1heSBiZSBk
cm9wcGVkIG9yIHJldmVydGVkLgoKWW91IG1heSBnZXQgZnVydGhlciBlLW1haWxzIHJlc3VsdGlu
ZyBmcm9tIGF1dG9tYXRlZCBvciBtYW51YWwgdGVzdGluZwphbmQgcmV2aWV3IG9mIHRoZSB0cmVl
LCBwbGVhc2UgZW5nYWdlIHdpdGggcGVvcGxlIHJlcG9ydGluZyBwcm9ibGVtcyBhbmQKc2VuZCBm
b2xsb3d1cCBwYXRjaGVzIGFkZHJlc3NpbmcgYW55IGlzc3VlcyB0aGF0IGFyZSByZXBvcnRlZCBp
ZiBuZWVkZWQuCgpJZiBhbnkgdXBkYXRlcyBhcmUgcmVxdWlyZWQgb3IgeW91IGFyZSBzdWJtaXR0
aW5nIGZ1cnRoZXIgY2hhbmdlcyB0aGV5CnNob3VsZCBiZSBzZW50IGFzIGluY3JlbWVudGFsIHVw
ZGF0ZXMgYWdhaW5zdCBjdXJyZW50IGdpdCwgZXhpc3RpbmcKcGF0Y2hlcyB3aWxsIG5vdCBiZSBy
ZXBsYWNlZC4KClBsZWFzZSBhZGQgYW55IHJlbGV2YW50IGxpc3RzIGFuZCBtYWludGFpbmVycyB0
byB0aGUgQ0NzIHdoZW4gcmVwbHlpbmcKdG8gdGhpcyBtYWlsLgoKVGhhbmtzLApNYXJrCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
