Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8849C27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 21:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0/6q57DaGeFYvhmI53EivUB44TS2NyzkM+Lub7tizU=; b=yx2mFtsJoLAqf5
	oPdt0Z1RdGuJ1hthDc68ZYydLr5q5i8DAaW1O7R0V/7EKOGOYxSLVPLm+LeQNvTy9mVk5rerLbdhQ
	208iQgL1l7WzwBOvyH+p3p0j/7x98utVTfz0U8ayu4J1D1AbZc6xTH2Vnv0sIyofNZAD/ay2l8Q4N
	w7/gdEEO4UNUyuPqKTAYTk6QDKJoINpt/2Ht9VS4Snj/6cUY/jvAJviCpTkNv+vo5aOdoyZWgerBy
	fp/pX0++5huOesxxpnJthvdnFhZe6TjjmpLtdoiSB4pCASTOmjpFc9wAq459Qsd6qrlbohjpVJWfW
	9KvITWxI2dqbcpGWQKaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKPdk-00000006qda-3p0l;
	Thu, 20 Jun 2024 21:48:20 +0000
Received: from shout12.mail.de ([2001:868:100:600::f154])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKPdf-00000006qbP-3Z1H;
	Thu, 20 Jun 2024 21:48:18 +0000
Received: from shout02.mail.de (unknown [10.0.120.222])
	by shout12.mail.de (Postfix) with ESMTPS id 71EB2240AE7;
	Thu, 20 Jun 2024 23:48:11 +0200 (CEST)
Received: from postfix01.mail.de (postfix01.bt.mail.de [10.0.121.125])
	by shout02.mail.de (Postfix) with ESMTP id 510B3240E88;
	Thu, 20 Jun 2024 23:48:11 +0200 (CEST)
Received: from smtp01.mail.de (smtp03.bt.mail.de [10.0.121.213])
	by postfix01.mail.de (Postfix) with ESMTP id 3408D80102;
	Thu, 20 Jun 2024 23:48:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.de;
	s=mailde202009; t=1718920091;
	bh=iq4LT+jyWGK+Ggs3f9sRwblW6Uz0uQJK4QXqBRqHS48=;
	h=Message-ID:Date:Subject:To:Cc:From:From:To:CC:Subject:Reply-To;
	b=Vn7sJmKioo/vVPjRjBiQdn1e/iqneX/zujqFhr/NkFIZMQ+2Go2xXHs0meftyb7VW
	 eZsewcjYvQaTnTMdez4fedy51q2YtJKHjHHNFU+nw/0R4aHjpb7BNj0HMOTeYgNcWb
	 Upz6iXkbJm5ylowLCTH6+bVzlwAmLk3es+1B8WDkz2rSLU62SqnrqKnXlvfSZn8Pld
	 LVuqReINdq03YRp1TC2uHDz9koT3TibUGsOGbW3ZuQLpkzhjgXD35pgfgRs8aMB0J1
	 XA9lP0ugSBsmhRsoPxtXS4LAbqpGjsdmm7d/LrCmISuWECxRl1ZUlYNlhwQOhLoaJD
	 aNftFxTOfMNbA==
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp01.mail.de (Postfix) with ESMTPSA id 650BA240573;
	Thu, 20 Jun 2024 23:48:10 +0200 (CEST)
Message-ID: <dd08df6f-5074-4fc2-909d-1d4f7676b2b3@mail.de>
Date: Thu, 20 Jun 2024 23:48:08 +0200
MIME-Version: 1.0
Subject: Re: [PATCH 2/5] arm64: dts: rockchip: Fix regulators, gmac and naming
 on NanoPi R6C/R6S
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240612205056.397204-1-seb-dev@mail.de>
 <20240612205056.397204-3-seb-dev@mail.de> <2396550.3c9HiEOlIg@diego>
From: Sebastian Kropatsch <seb-dev@mail.de>
In-Reply-To: <2396550.3c9HiEOlIg@diego>
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 2485
X-purgate-ID: 154282::1718920091-0EE221F9-1BC16D9C/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_144816_065758_B7AD592F 
X-CRM114-Status: GOOD (  21.51  )
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

SGVsbG8sCgpBbSAyMC4wNi4yMDI0IHVtIDIwOjM5IHNjaHJpZWIgSGVpa28gU3TDvGJuZXI6Cj4g
QW0gTWl0dHdvY2gsIDEyLiBKdW5pIDIwMjQsIDIyOjQ4OjExIENFU1Qgc2NocmllYiBTZWJhc3Rp
YW4gS3JvcGF0c2NoOgo+PiBGaXggdGhlIGFscGhhYmV0aWNhbCBvcmRlcmluZyBpbiBzb21lIG5v
ZGVzIGFuZCByZW5hbWUgc29tZSByZWd1bGF0b3JzCj4+IGFuZCBwaW5zIHRvIG1hdGNoIHRoZSBz
Y2hlbWF0aWNzIFsxXVsyXSBhcyB3ZWxsIGFzIHRvIGFkaGVyZSB0bwo+PiBwcmVmZXJyZWQgbmFt
aW5nIHNjaGVtZXMuCj4gCj4gR2VuZXJhbCBydWxlIG9mIHRodW1iLCB3aGVuIHlvdSBuZWVkIGFu
ICJhbmQiIGluIHlvdXIgc3ViamVjdCBvciBhIGxpc3QKPiBsaWtlIHRoZSBhYm92ZSAtIHlvdSBk
ZWZpbml0bHkgd2FudCB0byBzcGxpdCB0aGUgY2hhbmdlIGludG8gbXVsdGlwbGUKPiBjb21taXRz
LgoKVGhhbmtzIGZvciB0aGUgYWR2aWNlISBJIHdhc24ndCBzdXJlIGFuZCBkaWRuJ3Qgd2FudCB0
byBzcGFtIHRoZSBsaXN0LgpBbHNvLCBteSBlbWFpbCBwcm92aWRlciBvbmx5IGFsbG93cyBhIGxp
bWl0ZWQgbnVtYmVyIG9mIGVtYWlscyB0byBiZQpzZW50IGV2ZXJ5IGRheSAoc2VyaWVzIHdpdGgg
NSBwYXRjaGVzLCB3aXRoIDkgcmVjaXBpZW50cyA9IDQ1IGVtYWlscwpzZW50KS4gU28gSSBtaWdo
dCBoYXZlIHRvIHNlbmQgdGhlIHBhdGNoIHNlcmllcyBieSBzcGFubmluZyB0aGUKZGlmZmVyZW50
IHBhdGNoZXMgb3ZlciBtdWx0aXBsZSBkYXlzLgoKSWYgYW55b25lIGtub3dzIGFuIGVtYWlsIHBy
b3ZpZGVyIHdoaWNoIGlzIGJldHRlciBzdWl0ZWQgZm9yIHRoaXMga2luZApvZiBvcGVuIHNvdXJj
ZSB3b3JrL21haWxpbmcgbGlzdHMgYW5kIGlzIGFsc28gcHJpdmFjeSByZXNwZWN0aW5nLCBwbGVh
c2UKbGV0IG1lIGtub3cgOikKCkkgd2lsbCBkZWZpbml0ZWx5IHNwbGl0IHRoZXNlIGNoYW5nZXMg
aW50byBzZXBhcmF0ZSBjb21taXRzLgoKPj4gSW4gYWRkaXRpb24gdG8gdGhhdDoKPj4gKiB2Y2Nf
M3YzX3NkX3MwOiBGaXggdm9sdGFnZSB0byBiZSAzLjNWCj4+ICogdmNjM3YzX3BjaWU6Cj4+ICAg
ICAgLSBNb3ZlIHRvIE5hbm9QaSBSNkMsIHRoaXMgcG93ZXIgc3dpdGNoIGlzIG5vdCBhdmFpbGFi
bGUgb24gUjZTCj4+ICAgICAgLSBGaXggdmluLXN1cHBseSAoaXMgdmNjXzV2MCBwZXIgc2NoZW1h
dGljcykKPj4gICAgICAtIEFkZCBncGlvcy9waW5jcnRsIHRvIGVuYWJsZSBwb3dlcgo+IAo+IHRo
aXMgZGVmbml0bHkgbmVlZHMgaXRzIG93biBwYXRjaAo+IAo+PiAqIHZjYzV2MF91c2I6IFJlbW92
ZSB0aGlzIHJlZ3VsYXRvciBzaW5jZSBhY2NvcmRpbmcgdG8gdGhlIHNjaGVtYXRpY3MsCj4gCj4g
dGhpcyB0b28KPiAKPj4gKiB2Y2M1djBfaG9zdF8yMCBhbmQgdmNjNXYwX3VzYl9vdGcwIGFyZSBk
aXJlY3RseSBwb3dlcmVkIGJ5IHZjY181djAKPiAKPiB0aGlzIGNvdWxkIGJlIGdyb3VwZWQgdG9n
ZXRoZXIgd2l0aCB0aGUgMy4zdiBjaGFuZ2UKPiAKPj4gKiBnbWFjMTogQWRkIHJ4X2RlbGF5IG9m
IDAgKG5vIGRlbGF5IHNpbmNlIHBoeS1tb2RlID0gInJnbWlpLXJ4aWQiKQo+IAo+IHdpdGggcnhp
ZCBtb2RlLCB3aHkgaXMgdGhlIHJ4X2RlbGF5IG5lZWRlZCBhdCBhbGw/Cj4gU2hvdWxkbid0IHRo
aXMganVzdCB3b3JrIHdpdGhvdXQgdGhlIHByb3BlcnR5PwoKSW4gdGhlb3J5IHllcywgYnV0IHdp
dGggdGhlIHByb3BlcnR5IG1pc3NpbmcsIHlvdSdsbCBnZXQgYSB3YXJuaW5nCm1lc3NhZ2UgaW4g
ZG1lc2cgd2hpY2ggc2F5czoKCglDYW4gbm90IHJlYWQgcHJvcGVydHk6IHJ4X2RlbGF5LgoJU2V0
IHJ4X2RlbGF5IHRvIDB4MTAKClNvIGl0IHdpbGwgc2V0IHRoZSByeF9kZWxheSB0byBhIHZhbHVl
IHdoaWNoIGlzIG5vdCAwLCBldmVuIGlmIHJ4aWQKbW9kZSBpcyBzZWxlY3RlZC4gSSBndWVzcyB0
aGlzIGlzIHNvbWV0aGluZyB3aGljaCBjYW4gYmUgZml4ZWQgaW4gdGhlCmRyaXZlciwgYnV0IHRo
YXQgbWF5IGJlIGJleW9uZCBteSBhYmlsaXRpZXMuClNldHRpbmcgdGhlIHJ4X2RlbGF5IHRvIDAg
Z2V0cyByaWQgb2YgdGhpcyB3YXJuaW5nLCBzbyBpdCBzZWVtcyB0bwpiZSBhIHZpYWJsZSB3b3Jr
YXJvdW5kLgoKPj4gKiByZ21paV9waHkxOiBBZGQgcGh5LXN1cHBseSBhcyBzZWVuIGluIHNjaGVt
YXRpY3MKPiAKPiBzZXBhcmF0ZSBwYXRjaAo+IAo+PiAqIHBjaWUyKjoKPj4gICAgICAtIEFkZCBw
aW5jdHJsIHJlc2V0IHBpbnMKPj4gICAgICAtIFVwZGF0ZSB2cGNpZTN2My1zdXBwbHkgdG8gbWF0
Y2ggdGhlIHNjaGVtYXRpY3MKPiAKPiBzZXBhcmF0ZSBwYXRjaAo+IAo+PiAqIHNkaGNpOiBBZGQg
dm1tYy1zdXBwbHkgYW5kIHZxbW1jLXN1cHBseQo+IAo+IHNlcGFyYXRlIHBhdGNoCj4gCgpUaGFu
a3MsClNlYmFzdGlhbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
