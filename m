Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF263C77B6C
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XHH6LWOoJ/rzf6awkMSXkIO97Ti9JfCqlgSc7R15p34=; b=fBwRwAgFgzhThN
	lZCGDmgkS7Bcs89EA/Upl7R0UAfibQ7g6vZvOBIyYZYzIb+ZqSBBO/ovB+UTFaixhwrYFP22GIv9I
	cc0GdIUKOepuslh62Iziwzzm7IwPIPChbHPnjp9YcXvR26Bk4yNKtvP7gDn4DVwNda8rOTe3ukbi/
	da2FN2g9pWFArwh2znScOktMbNzbV7rQ05IB6Rmdy/Az4AWZhViK8X1QdtOvsGDI9L4g0mHZ3ho70
	1ixxOSkFOfwdTnmQqh1T9I81DystVpNnH5kfYC4ZzlZzGRjAYO0Mz/Z1cukFPxEl0C6hnxQ3cZhbO
	OX0Kpvc1bD/fYpS8guvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmuqh-0061Kq-2j;
	Thu, 13 Apr 2023 11:10:43 +0000
Received: from mail-m11876.qiye.163.com ([115.236.118.76])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmuqd-0061H0-1w
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Apr 2023 11:10:41 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m11876.qiye.163.com (Hmail) with ESMTPA id EDB5F3C065C;
	Thu, 13 Apr 2023 19:10:29 +0800 (CST)
Message-ID: <637caa0a-b0f9-ea0b-028d-8667cb75f2f7@rock-chips.com>
Date: Thu, 13 Apr 2023 19:10:29 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [BUG] Rockchip VOP2 Mainline Resume from Suspend
To: Chris Morgan <macroalpha82@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Cc: Lutz Harder <harder.lutz@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 airlied@gmail.com, Heiko Stuebner <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>
References: <CADcbR4Kvwv8pKnPEzQUFFuQ-7ggwN71_waxo8vwwsL0qEd7=1Q@mail.gmail.com>
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <CADcbR4Kvwv8pKnPEzQUFFuQ-7ggwN71_waxo8vwwsL0qEd7=1Q@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU8ZTlYfQxkfSBhIQkpIThhVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSkpLSEpDVUpLS1VLWQ
	Y+
X-HM-Tid: 0a877a4f4cef2eb2kusnedb5f3c065c
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pxg6Dyo*Ej0SGiNDUQoxETEO
	NyoaCitVSlVKTUNKSENPSUhLTEtMVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSEhLTjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_041039_789942_37EDE779 
X-CRM114-Status: GOOD (  14.66  )
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

SGkgTW9yZ2FuOgoKIMKgU29tZSBpbmZvcm1hdGlvbiBob3BlIGNhbiBoZWxwIHlvdS4KCk9uIDQv
MTMvMjMgMDY6MjUsIENocmlzIE1vcmdhbiB3cm90ZToKPiBJIG5vdGljZWQgYSBidWcgb24gdGhl
IFJvY2tjaGlwIG1haW5saW5lIFZPUDIgZHJpdmVyIHdoZXJlIGl0IGZhaWxzIHRvCj4gcmVzdW1l
IGZyb20gc3VzcGVuZC4KPgo+IEkgZHVtcGVkIHRoZSByZWdpc3RlcnMgYW5kIG5vdGljZWQgdGhl
IGZvbGxvd2luZyB3ZXJlIGNoYW5nZWQgYmV0d2Vlbgo+IHdvcmtpbmcgKHByZS1zdXNwZW5kKSBh
bmQgbm9uIHdvcmtpbmcgKHBvc3Qtc3VzcGVuZCkgc3RhdGVzLgo+Cj4gcHJlOiAweGZlMDQwMGIw
OiAweDAwMDAwMDMwCj4gcG9zdDogMHhmZTA0MDBiMDogMHgwMDAwMDAxMAo+Cj4gcHJlOiAweGZl
MDQwMGJjOiAweDAwMDAwM0NECj4gcG9zdDogMHhmZTA0MDBiYzogMHgwMDAwMDNFRAo+Cj4gcHJl
OjB4ZmUwNDAwY2M6IDB4MDAwMDAwRTMKPiBwb3N0OiAweGZlMDQwMGNjOiAweDAwMDAwMEVGCgoK
cmVnaXN0ZXJzIGF0IG9mZnNldCAweGIwL2JjL2NjIGFyZSBpbnRlcnJ1cHRzIHN0YXR1cyByZWdp
c3RlcnMgLCBzbyBpdCAKaGFzIG5vIGVmZmVjdCBmb3IgeW91ciBjYXNlLgoKPgo+IHByZTogMHhm
ZTA0MTgxYzogMHgwMDAwMDI4MAo+IHByZTogMHhmZTA0MTgyMDogMHgwMURGMDI3Rgo+IHByZTog
MHhmZTA0MTgyNDogMHgwMURGMDI3Rgo+IHBvc3Q6IDB4ZmUwNDE4MWM6IDB4MDAwMDAwMDAKPiBw
b3N0OiAweGZlMDQxODIwOiAweDAwMDAwMDAwCj4gcG9zdDogMHhmZTA0MTgyNDogMHgwMDAwMDAw
MAo+Cj4gcHJlOiAweGZlMDQxODMwOiAweDAwMDAwMDQ0Cj4gcHJlOiAweGZlMDQxODM0OiAweDAw
MDAwMDAwCj4gcG9zdDogMHhmZTA0MTgzMDogMHgwMDAwMDAwMAo+IHBvc3Q6IDB4ZmUwNDE4MzQ6
IDB4MTAwMDEwMDAKCgpyZWdpc3RlcnMgYXQgb2Zmc2V0IDB4MTgwMCgxYy8yMC8yNC8zMC8zNCkg
Y29udHJvbCB0aGUgZGlzcGxheSBzcmMvZHN0IApyZWN0YW5nbGUgLCBzbyB0aGlzIGFyZSB3aGF0
IG1hdHRlcnMuCgpUaGlzIHJlZ2lzdGVyIHNob3VsZCBiZSBzZXQgaW4gZnVuY3Rpb24gdm9wMl9w
bGFuZV9hdG9taWNfdXBkYXRlLgoKCk1heWJlIHlvdSBjYW4gZW5hYmxlIGRybV9kZWJ1Zy46IGVj
aG8gMHhmZiA+IAovc3lzL21vZHVsZS9kcm0vcGFyYW1ldGVycy9kZWJ1ZwoKCmFuZCB0cmFjZSB0
aGUgZnVuY3Rpb24gY2FsbCBiZWZvcmUgYW5kIGFmdGVyIHN1c3BlbmQuCgoKPgo+IFdoYXQncyBp
bnRlcmVzdGluZyBpcyB0aGF0IGlmIEkgd3JpdGUgdGhlIHByZS1zdXNwZW5kIHZhbHVlcyBiYWNr
IHRoZQo+IGRpc3BsYXkgc3RhcnRzIHRvIHdvcmsgYWdhaW4uIEkgYXNzdW1lIHRoaXMgbWVhbnMg
c29tZXRoaW5nIGlzIG1pc3NpbmcKPiBmcm9tIHRoZSBkcml2ZXIgdGhhdCBuZWVkcyB0byBjYXRj
aCBhIHJlc3VtZSBmcm9tIHN1c3BlbmQgc2NlbmFyaW8/Cj4KPiBMZXQgbWUga25vdyBpZiB0aGVy
ZSdzIGFueSBtb3JlIEkgY2FuIGRvIHRvIGhlbHAgZGVidWcgdGhpcyBmdXJ0aGVyLgo+IEknbSBu
b3QgdmVyeSBrbm93bGVkZ2VhYmxlIG9uIHRoZSBEUk0gc2lkZSBvZiB0aGUgaG91c2UsIGJ1dCBo
b3BlZnVsbHkKPiB0aGlzIGlzIGVub3VnaCBpbmZvcm1hdGlvbiB0byBmaW5kIHRoZSBpc3N1ZS4K
PiBUaGFuayB5b3UuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
