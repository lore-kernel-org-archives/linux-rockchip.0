Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8F0C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 10:49:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6A45461A02
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 10:49:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6A45461A02
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0OQaiuzFB7l1PytYmirJaL2FK4suXGeWoY/NZbrvOKE=; b=453feUX+LEx65WlBUm5k6rBH9h
	fJHnw2ld4ujQ+x7gqFrJe7kmvWpYBTiWmfL8X+2ZjRxi76GfEBAOD5DvSVxELwQmUNFVxDjm1StJV
	os4PyUfKTF5NDy86ZMsNBTQAKXbAFnSllkVbBtSrBiWGvgFxLPXRpATPQR3c5Pym91xSwiQYd0zsO
	N+iQs17M/LjC24aHlVdx4LzR5fLRsaJupMIBTBvfoGcSad8Zs4WXacW6vAdU35V7B9oW6Erntkt57
	LKKjPV1d3DJdGyTuUI8+MY3zFoMu72Lg4VLlepx/tuPWNfNhlHGSB14pDt/x3z6eil8GHnmrRKXNp
	JFeObKKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnIVL-004UE4-FA; Wed, 17 Nov 2021 10:49:27 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnIV4-004U7x-F9; Wed, 17 Nov 2021 10:49:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id CB5B71F45CA7
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=collabora.com; s=mail;
 t=1637146148; bh=VC/9/qBMbBFHqcqxE2zcEBRwUYFmTykXV2WwsjdvUN0=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=PeIXpG9CSmkw6VJ3YsKl4afDlYD05dHd3xUpRfc1JAmIEEYLPMNKwcuNge7igUA01
 F2tLsoBPU0C/p5dh2mjZShHT5mK8sLLZCLPRJbZ3lvRWPf+5G8DCIcU56TwqAUfqag
 XHmsX+cWB56x6AnpWT012mA5j/FiPhWMhJfbOBah3iSdvXNRueJZJagvh+lQWNTULb
 ylA6QRsCbpGkB8zVyDL0e2HiKdzUEkxcTox511FvIZq55X/GFybz48Q5N23hmdJt/Q
 w+enpvIZP8ssBz6pnD++aCpl6c2u0DPemVXQB3aaDs3mqr6HoudIy/C3lODlQwL364
 heqMU2+iNyRbQ==
Subject: Re: [PATCH v7 00/11] VP9 codec V4L2 control interface
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com
References: <20210929160439.6601-1-andrzej.p@collabora.com>
 <9db47ebc-cb95-872d-feb4-d6432a74f2cb@xs4all.nl>
 <29f27bad-28ae-12ff-eed6-79902bd5b722@collabora.com>
 <b8f8ee2e-ea98-4700-f4ca-f0af68c9de5c@xs4all.nl>
 <cdbbe5e6-0811-1276-1f62-fc7ad2628a30@collabora.com>
 <4da113ef-7b12-3729-0186-f746901c892a@xs4all.nl>
 <69f16bb0-4b5a-18b3-e244-60deb029d239@collabora.com>
 <2cd7a7f0-72d6-1a0e-b5d2-87ff809c2acd@xs4all.nl>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <63429780-9e39-f8ab-40c2-0f1b57553850@collabora.com>
Date: Wed, 17 Nov 2021 11:49:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <2cd7a7f0-72d6-1a0e-b5d2-87ff809c2acd@xs4all.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_024910_802478_70397194 
X-CRM114-Status: GOOD (  25.88  )
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

SGksCgpXIGRuaXUgMTcuMTEuMjAyMSBvwqAxMDo1OSwgSGFucyBWZXJrdWlsIHBpc3plOgo+IE9u
IDE2LzExLzIwMjEgMTQ6MTQsIEFuZHJ6ZWogUGlldHJhc2lld2ljeiB3cm90ZToKPj4gSGksCj4+
Cj4+IFcgZG5pdSAxNi4xMS4yMDIxIG/CoDA5OjIxLCBIYW5zIFZlcmt1aWwgcGlzemU6Cj4+PiBP
biAxNi8xMS8yMDIxIDA5OjA5LCBBbmRyemVqIFBpZXRyYXNpZXdpY3ogd3JvdGU6Cj4+Pj4gSGkg
SGFucywKPj4+Pgo+Pj4+IFcgZG5pdSAxNS4xMS4yMDIxIG/CoDIyOjE2LCBIYW5zIFZlcmt1aWwg
cGlzemU6Cj4+Pj4+IE9uIDE1LzExLzIwMjEgMTg6MTQsIEFuZHJ6ZWogUGlldHJhc2lld2ljeiB3
cm90ZToKPj4+Pj4+IEhpIEhhbnMsCj4+Pj4+Pgo+Pj4+Pj4gVyBkbml1IDE1LjExLjIwMjEgb8Kg
MTY6MDcsIEhhbnMgVmVya3VpbCBwaXN6ZToKPj4+Pj4+PiBBbmRyemVqLAo+Pj4+Pj4+Cj4+Pj4+
Pj4gQ2FuIHlvdSByZWJhc2UgdGhpcyBzZXJpZXMgb24gdG9wIG9mIHRoZSBtYXN0ZXIgYnJhbmNo
IG9mCj4+Pj4+Pj4gaHR0cHM6Ly9naXQubGludXh0di5vcmcvbWVkaWFfc3RhZ2UuZ2l0LyA/IFVu
Zm9ydHVuYXRlbHkgdGhpcyB2NyBubyBsb25nZXIKPj4+Pj4+PiBhcHBsaWVzLiBTcGVjaWZpY2Fs
bHkgInJrdmRlYzogQWRkIHRoZSBWUDkgYmFja2VuZCIgZmFpbGVkIGluIGEgbm9uLXRyaXZpYWwK
Pj4+Pj4+PiBtYW5uZXIuCj4+Pj4+Pgo+Pj4+Pj4gVGhpcyBpcyBhIGJyYW5jaCBmb3IgeW91Ogo+
Pj4+Pj4KPj4+Pj4+IGh0dHBzOi8vZ2l0bGFiLmNvbGxhYm9yYS5jb20vbGludXgvZm9yLXVwc3Ry
ZWFtLy0vdHJlZS92cDktdWFwaQo+Pj4+Pgo+Pj4+PiBJJ20gZ2V0dGluZyBhIGJ1bmNoIG9mIHNw
YXJzZS9zbWF0Y2ggd2FybmluZ3M6Cj4+Pj4+Cj4+Pj4KPj4+PiBUaGFua3MgZm9yIGZpbmRpbmcg
dGhpcywgSSB3aWxsIHJlLWNyZWF0ZSB0aGUgYnJhbmNoIGFuZCBsZXQgeW91IGtub3cgb24gaXJj
Lgo+Pj4+IFNvbWUgb2YgdGhlIGJlbG93IGFyZSAiZmFsc2UgcG9zaXRpdmVzLCBuYW1lbHk6Cj4+
Pj4KPj4+PiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL29tYXAzaXNwL29tYXAzaXNwLmgKPj4+PiBk
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vdmVudXMvY29yZS5oCj4+Pgo+Pj4gQWgsIHNvcnJ5
LCBJIHRob3VnaCBJIGhhZCBmaWx0ZXJlZCB0aG9zZSBvdXQuIE9idmlvdXNseSB5b3UgY2FuIGln
bm9yZSB0aG9zZS4KPj4+Cj4+PiBQbGVhc2UgcG9zdCBhIHY4LiBUaGF0IHdheSB0aGUgc2VyaWVz
IGlzIGFyY2hpdmVkIG9uIGxvcmUuIEFuZCBpdCB3b3JrcyBiZXR0ZXIKPj4+IHdpdGggcGF0Y2h3
b3JrLgo+Pgo+PiBTdXJlLCBubyBwcm9ibGVtLiBBbHNvIHBsZWFzZSBzZWUgYmVsb3cuCj4+Cj4+
Pgo+Pj4gUmVnYXJkcywKPj4+Cj4+PiAJSGFucwo+Pj4KPj4+Pgo+Pj4+IHdoaWNoIGFyZSBub3Qg
dG91Y2hlZCBieSB0aGUgc2VyaWVzLgo+Pj4+Cj4+Pj4gUmVnYXJkcywKPj4+Pgo+Pj4+IEFuZHJ6
ZWoKPj4+Pgo+Pj4+PiBzcGFyc2U6Cj4+Pj4+IHJrdmRlYy9ya3ZkZWMtdnA5LmM6MTkwOjQzOiB3
YXJuaW5nOiB2YXJpYWJsZSAnZGVjX3BhcmFtcycgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQt
YnV0LXNldC12YXJpYWJsZV0KPj4+Pj4gcmt2ZGVjL3JrdmRlYy12cDkuYzoyNDU6NDM6IHdhcm5p
bmc6IHZhcmlhYmxlICdkZWNfcGFyYW1zJyBzZXQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1idXQt
c2V0LXZhcmlhYmxlXQo+Pj4+PiBTUEFSU0U6aGFudHJvL2hhbnRyb19wb3N0cHJvYy5jIGhhbnRy
by9oYW50cm9fcG9zdHByb2MuYzozNzozNTogd2FybmluZzogc3ltYm9sICdoYW50cm9fZzFfcG9z
dHByb2NfcmVncycgd2FzIG5vdCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0YXRpYz8KPj4+Pj4K
Pj4+Pj4gc21hdGNoOgo+Pj4+PiBya3ZkZWMvcmt2ZGVjLXZwOS5jOjE5MDo0Mzogd2FybmluZzog
dmFyaWFibGUgJ2RlY19wYXJhbXMnIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQt
dmFyaWFibGVdCj4+Pj4+IHJrdmRlYy9ya3ZkZWMtdnA5LmM6MjQ1OjQzOiB3YXJuaW5nOiB2YXJp
YWJsZSAnZGVjX3BhcmFtcycgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJp
YWJsZV0KPj4+Pj4gcmt2ZGVjL3JrdmRlYy12cDkuYzogcmt2ZGVjL3JrdmRlYy12cDkuYzoyMzYg
aW5pdF9pbnRyYV9vbmx5X3Byb2JzKCkgZXJyb3I6IGJ1ZmZlciBvdmVyZmxvdyAncHRyJyA5MCA8
PSA5MQo+Pgo+PiB0aGlzIGxvb2tzIGEgZmFsc2UgcG9zaXRpdmUuCj4+Cj4+IEEgcG9ydGlvbiBv
ZiBtZW1vcnkgcG9pbnRlZCB0byBieSBwdHIgaXMgaW5kZXhlZCB3aXRoIGkgKiAyMyArIG0sCj4+
IHdoZXJlIGkgcmFuZ2VzIGZyb20gMCB0byAzLCBpbmNsdXNpdmUsIGFuZCBtIHJhbmdlcyBmcm9t
IDAgdG8gMjIsCj4+IGluY2x1c2l2ZSBpZiBpIDwgMywgb3RoZXJ3aXNlIG0gcmFuZ2VzIGZyb20g
MCB0byAyMCwgaW5jbHVzaXZlLgo+PiBTbyB0aGUgbGFyZ2VzdCBpbmRleCB2YWx1ZSB3ZSBjb21w
dXRlIGVxdWFscyA4OSAoMyAqIDIzICsgMjApLgo+PiBCZWNhdXNlIHB0ciBwb2ludHMgdG8gc29t
ZXRoaW5nIHRoYXQgaXMgYXQgbGVhc3QgOTAgYnl0ZXMgbGFyZ2UsCj4+IDg5IGlzIGEgdmFsaWQg
aW5kZXggYW5kIG5vIGdyZWF0ZXIgaW5kZXggd2lsbCBiZSBldmVyIGNvbXB1dGVkLgo+IAo+IEJ1
dCB3ZSBkbyBuZWVkIHRvIGdldCByaWQgb2YgdGhpcyBzbWF0Y2ggd2FybmluZywgb3RoZXJ3aXNl
IGl0IHdpbGwgcG9sbHV0ZSB0aGUKPiBsaXN0IG9mIHNtYXRjaCB3YXJuaW5ncy4KPiAKPiBJIHdh
cyBsb29raW5nIGF0IHRoZSBjb2RlIGFuZCB3b25kZXIgaWYgaXQgd291bGRuJ3QgbWFrZSBtb3Jl
IHNlbnNlIHRvCj4gbW92ZSB3cml0aW5nIHRvIHJrcHJvYnMtPmludHJhX21vZGVbaV0udXZfbW9k
ZVtdIGludG8gYSBzZXBhcmF0ZSBmb3IgbG9vcDoKPiAKPiAgICAgICAgICBmb3IgKGkgPSAwOyBp
IDwgQVJSQVlfU0laRSh2NGwyX3ZwOV9rZl91dl9tb2RlX3Byb2IpOyBpKyspCj4gICAgICAgICAg
ICAgICAgICBya3Byb2JzLT5pbnRyYV9tb2RlW2kgLyAyM10udXZfbW9kZVtpICUgMjNdID0gdjRs
Ml92cDlfa2ZfdXZfbW9kZV9wcm9iW2ldOwo+IAo+IFdvdWxkbid0IHRoYXQgZG8gdGhlIHNhbWUg
YXMgdGhlIGN1cnJlbnQgY29kZT8gSXQgbG9va3Mgc2ltcGxlciBhcyB3ZWxsLgo+IAoKSSB0aGlu
ayBpdCB3b3VsZCwgYnV0IEkgd291bGQgc2xpZ2h0bHkgY2hhbmdlIHRoZSBsb29wOgoKCWZvciAo
aSA9IDA7IGkgPCBBUlJBWV9TSVpFKHY0bDJfdnA5X2tmX3V2X21vZGVfcHJvYik7IGkrKykgewoJ
CWNvbnN0IHU4ICpwdHIgPSAoY29uc3QgdTggKil2NGwyX3ZwOV9rZl91dl9tb2RlX3Byb2I7CgoJ
CXJrcHJvYnMtPmludHJhX21vZGVbaSAvIDIzXS51dl9tb2RlW2kgJSAyM10gPSBwdHJbaV07Cgl9
CgpiZWNhdXNlIHY0bDJfdnA5X2tmX3V2X21vZGVfcHJvYiBpcyBhY3R1YWxseSBhIHU4WzEwXVs5
XS4KCkkgd2lsbCBtYWtlIHN1Y2ggYSBjaGFuZ2UgbG9jYWxseSBhbmQgdGVzdCB3aGV0aGVyIGl0
IGNhdXNlcyByZWdyZXNzaW9ucy4KCk9uY2UgSSBjb25maXJtIGl0IHdvcmtzIChhbmQgSSBleHBl
Y3QgSSB3aWxsKSB3b3VsZCB5b3UgbGlrZSBtZSB0byBwb3N0IGEgdjksCm9ubHkgcmVwbHkgdG8g
dGhlIGNoYW5nZWQgcGF0Y2ggd2l0aCBpdHMgdXBkYXRlZCB2ZXJzaW9uIG9yIGRvIHlvdSB3YW50
IHRvIG1ha2UgCnRoaXMgY2hhbmdlIHlvdXJzZWxmPwoKQW5kcnplagoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
