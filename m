Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F7C9C44500
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 16:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8G7OE4HdYEucqdk8eDee2OeQScB32cCYp+GqY8r9094=; b=VSxT+iD7uXV81b
	7J3RuaUKsPZvzX/HgAq7vn5GF29d62yi8Fcz8RYb6uzueGz/9QsV5LnuXH6elNbiUl5sm/JTzebRt
	LZLHMV3XptQcMLgV53SjwSIl9TpYkimBeLL0DbwWfZBcP6xBEhsX5aFR9/GVppmFj3otHz1tbRqXK
	XJXGC9R7hkKDIHQuNomT/On7HmQ0apQXlpmTDNH7STop4F2Y2p2zOeGzTuXbDNiruany6Vc0vWeqw
	79J7J0j3xTF6xCXQrInzM6jYKPXwIbAljMgsf+tHijhU+n019AkShmTxZa97uNGfeEnT18TFAAjhB
	fSkgIQNbLsRhMWLvrVQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfgVc-00000007XZK-1Axs;
	Fri, 03 Jul 2026 16:12:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfgVY-00000007XX6-3x55;
	Fri, 03 Jul 2026 16:12:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=sEs4rY7eHqvNO9iNPud7g4FzDBOXrr28xDXC3lthqhM=; b=Nvvw3IFWR+JVGJVmxPzeEJSXsb
	5aMY2F1V9t+poqC7mKWF2rFowHP+iGLhSVv3M21edc0tutACoaqePA2o7KuyiHQXfpKkq0HTHeD3+
	y1zh48ybvfK/BXuQudhUtfPm2CXIThJlqDRxfP7rBkq627HZ2K2VDdyF2iF34xEW9MDohn7z6C8Da
	KqmyvcIpVUrMlJFk2x84W/n7fMzNd1YjqO+sd83EyJJaEXgfcsqx4u/NWhYQDWnwSS2W3Gpbkgjog
	iHRtxclyuNNsCK9iLyoTzH7qzAeD0YeFu0kESBaGSxSJEnAId7/u1uwb9SyOk4s1fcAPhDaGi2MTU
	GaqHM7fg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 Brian Mayer <bleemayer@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: add HYM8563 RTC to Radxa CM5 IO board
Date: Fri, 03 Jul 2026 18:12:47 +0200
Message-ID: <2960762.AiC22s8V5E@diego>
In-Reply-To: <CAB3eKoDcp=rVGDpvAHEeVLG3rHFw2E1XXxCe2QaApX0aLkyXyA@mail.gmail.com>
References: <CAB3eKoDcp=rVGDpvAHEeVLG3rHFw2E1XXxCe2QaApX0aLkyXyA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_091253_044539_807418CA 
X-CRM114-Status: GOOD (  15.06  )
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

SGkgQnJpYW4sCgpBbSBEb25uZXJzdGFnLCAyLiBKdWxpIDIwMjYsIDIxOjA5OjIwIE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgQnJpYW4gTWF5ZXI6Cj4gSGkga2VybmVsIHRl
YW0uCj4gCj4gSSB3YXMgdGVzdGluZyBidWlsZGluZyB0aGUga2VybmVsIGZvciBteSByYWR4YSBj
bTUraW8gc2hpZWxkLCBhbmQgaXQgdHVybnMKPiBvdXQgdGhlcmUgaXMgbm8gcnRjIGluIHRoZSBE
VFMsIHNvIEkgZ290IGl0IGZyb20gdGhlIHJhZHhhIGZpbGVzLgo+IFRoaXMgaXMgbXkgZmlyc3Qg
ZW1haWwgdG8geW91LCBwbGVhc2UgaGVscCBtZSBjb3JyZWN0IGl0IGlmIHNvbWV0aGluZyBpcwo+
IG9mZiB0aGUgc3RhbmRhcmRzLgo+IAo+IFRoZSBjb21taXQgYXR0YWNoZWQgZG9lcyB0aGUgdHJp
Y2suIEkgdXNlZCBBSSB0byBhc3Npc3QgbWUgaW4gdGhpcyBpbgo+IGNhc2UgeW91J3JlCj4gd29u
ZGVyaW5nLgoKR2VuZXJhbGx5LCBwbGVhc2UgZG9uJ3QgcG9zdCBwYXRjaGVzIGFzIGF0dGFjaG1l
bnRzLgpGb3IgcmV2aWV3IGNvbW1lbnRzIGl0IGVzIGV4cGVjdGVkIHRvIGJlIGFibGUgdG8gY29t
bWVudAppbmxpbmUgaW4gdGhlIHBhdGNoLgpJZGVhbGx5IHVzZSBnaXQtc2VuZC1lbWFpbCBvciBi
NCBmb3Igc2VuZGluZyBwYXRjaGVzLgoKRm9yIEFJIGFzc2lzdGVkIGNoYW5nZXMsIHRoZXJlIGlz
IGFuIEFzc2lzdGVkLWJ5OiB0YWcgWzBdCgpQbGVhc2UgZHJvcCB0aGUgVGVzdGVkLWJ5IHRhZyAu
Li4gYXMgeW91J3JlIHNlbmRpbmcgaW4gdGhlIHBhdGNoIGFuZAp5b3VyIHNpZ25lZC1vZmYtYnkg
aXMgb24gaXQsIGl0IGlzIGV4cGVjdGVkIHRoYXQgeW91IHRlc3RlZCB0aGF0IGNoYW5nZSA6LSkg
LgoKClBhdGNoIGNvbnRlbnRzOgpQbGVhc2UgdXNlIG5hbWVzIGZvdW5kIGluIHRoZSBzY2hlbWF0
aWNzIC4uLiB0aGUgcGluIGlzIG5hbWVkCiBydGNfaW50X2wgdGhlcmUgLi4uIHNvIHRoZSBwaW5j
dHJsIGVudHJ5IHNob3VsZCBiZSAicnRjX2ludF9sOiBydGMtaW50LWwgeyAiLi4uCgpUaGlzIGFs
bG93cyBlYXNpZXIgbG9va3VwcyB3aGVuIGdvaW5nIGZyb20gRFQgdG8gc2NoZW1hdGljcyBhbmQg
YmFjay4KCgpUaGFua3MKSGVpa28KCgpbMF0gaHR0cHM6Ly9kb2NzLmtlcm5lbC5vcmcvcHJvY2Vz
cy9jb2RpbmctYXNzaXN0YW50cy5odG1sCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
