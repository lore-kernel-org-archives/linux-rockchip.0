Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2B7BCEFCE2
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jan 2026 18:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nDUqGIqkPwJQFn4IYs6ID+pScwrBjBlGcXzD0Syf9HY=; b=XNRfZ4yt0WYZ6U
	Stxt3vnDWGRndMcTfKtZGuTysZJse+fEF4J4mFIr9y3kUYPu/cAPam76oGTnzrWbCxXViexiDjcfr
	oWM36wNGCOrQB+1X6uHsF4+GyzDpZrBupY4BHsAbH0xVXn1biWlK+IumBPjnIA1WrhzohCsP7dxJo
	ThVZFYnUmClXuwYZw7G5lrItlDDYMb5DkJAvLMWvCfxR4285uPzrrx5n2+QxJeN1VUetMMFGISdfk
	5NQxX5VswGqSrdZiAYXI+YYSwfcwG9REyQJpf+58CTz9nfpIVq9mCveJ8sMXKL1JJraZdqfGTg9sv
	LGdwTCZJaM5o0javpeig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdC5i-0000000DiWI-2EDm;
	Tue, 06 Jan 2026 18:47:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdC5f-0000000DiVO-101y;
	Tue, 06 Jan 2026 18:47:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=P9FdgrVyF+ltzH5J8V9yVqvYq81tGjbEns+yQFUcek8=; b=ExHSgkXp+eGbtuOCRautigGMhZ
	903f7A5W7kymSzuJcFPWVSrqaAmiBfO8K1feB2nbOxcwKNo2bHmy+T1+JSUTvEdo9UmVguWgaUxbS
	22+43FS7v0h8io5HN6RA4FeCK/JQs+86itDMaO52JDSl1NlDPqvin/L0o3xqq/T6pj4/siyRE8/rZ
	QQEG28Kvn/dmuQDqt3umW0xYLTbwgSeaRMIa2zaDFrH/W1mYFba4tJB3et2dT3Ab+NDO2su2dKUUl
	fryfb/5DW8NOZ6AJD/xpNENOZXoehWv5g9g2vi3OLjb8VRpZoiIPpVQieAXdFMWdCSMl2K+NuWNi+
	QOlLLg4A==;
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdC5b-001HlT-V4; Tue, 06 Jan 2026 19:47:32 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, John Clark <inindev@gmail.com>,
 Alexey Charkov <alchark@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Subject: Re: [PATCH 0/7] arm64: dts: rockchip: Sound fixes and additions on RK3576
 boards
Date: Tue, 06 Jan 2026 19:47:31 +0100
Message-ID: <4068253.BddDVKsqQX@phil>
In-Reply-To: <176772487188.3029798.5459621815338520362.b4-ty@sntech.de>
References: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
 <176772487188.3029798.5459621815338520362.b4-ty@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_104735_275485_0326E68B 
X-CRM114-Status: GOOD (  15.85  )
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

QW0gRGllbnN0YWcsIDYuIEphbnVhciAyMDI2LCAxOTo0MTo1NSBNaXR0ZWxldXJvcMOkaXNjaGUg
Tm9ybWFsemVpdCBzY2hyaWViIEhlaWtvIFN0dWVibmVyOgo+IAo+IE9uIE1vbiwgMjkgRGVjIDIw
MjUgMTQ6MTE6NTcgKzA0MDAsIEFsZXhleSBDaGFya292IHdyb3RlOgo+ID4gSGVyZSBhcmUgc29t
ZSBkZXZpY2UgdHJlZSB1cGRhdGVzIHRvIGltcHJvdmUgc291bmQgb3V0cHV0IG9uIFJLMzU3Ngo+
ID4gYm9hcmRzLgo+ID4gCj4gPiBUaGUgZmlyc3QgdHdvIHBhdGNoZXMgZml4IGFuYWxvZyBhdWRp
byBvdXRwdXQgb24gRnJpZW5kbHlFbGVjIE5hbm9QaSBNNSwKPiA+IGFzIGl0IGRvZXNuJ3Qgd29y
ayB3aXRoIHRoZSBjdXJyZW50IGRldmljZSB0cmVlLgo+ID4gCj4gPiBUaGUgdGhpcmQgb25lIGlz
IHB1cmVseSBjb3NtZXRpYywgdG8gcHJlc2VudCBhIG1vcmUgdXNlci1mcmllbmRseSBzb3VuZAo+
ID4gY2FyZCBuYW1lIHRvIHRoZSB1c2Vyc3BhY2Ugb24gTmFub1BpIE01Lgo+ID4gCj4gPiBbLi4u
XQo+IAo+IEFwcGxpZWQsIHRoYW5rcyEKPiAKPiBbMS83XSBhcm02NDogZHRzOiByb2NrY2hpcDog
Rml4IGhlYWRwaG9uZXMgd2lkZ2V0IG5hbWUgb24gTmFub1BpIE01Cj4gICAgICAgY29tbWl0OiA1
YWIzZGQ5ZDBhNjNhZjY2Mzc3ZjU4NjMzZmVjOWRhZDY1MGU2ODI3Cj4gWzIvN10gYXJtNjQ6IGR0
czogcm9ja2NoaXA6IENvbmZpZ3VyZSBNQ0xLIGZvciBhbmFsb2cgc291bmQgb24gTmFub1BpIE01
Cj4gICAgICAgY29tbWl0OiAzZTRhODE4ODFjMDkyOWIyMWEwNTc3YmM2ZTY5NTE0YzA5ZGE1YzNm
Cj4gWzMvN10gYXJtNjQ6IGR0czogcm9ja2NoaXA6IFVzZSBhIHJlYWRhYmxlIGF1ZGlvIGNhcmQg
bmFtZSBvbiBOYW5vUGkgTTUKPiAgICAgICBjb21taXQ6IDMwOTU5OGZjYTMzOWFiZDRlOGVlZjBl
ZmUwZDYzMDcxNGNhNzlhYzkKPiBbNC83XSBhcm02NDogZHRzOiByb2NrY2hpcDogRW5hYmxlIEhE
TUkgc291bmQgb24gRnJpZW5kbHlFbGVjIE5hbm9QaSBNNQo+ICAgICAgIGNvbW1pdDogYmRlNTU1
OTI2YjYxNzQwYzYyNTZhMzhhOWNmNWE0ODMzYmUzNDVjYwo+IFs1LzddIGFybTY0OiBkdHM6IHJv
Y2tjaGlwOiBFbmFibGUgSERNSSBzb3VuZCBvbiBMdWNrZm94IENvcmUzNTc2Cj4gICAgICAgY29t
bWl0OiA4N2FmNzY0MzIzNGEyYjRjYjQ5YTk3ZGZlN2ZiNDU1NjMzYjMxODVkCj4gWzYvN10gYXJt
NjQ6IGR0czogcm9ja2NoaXA6IEVuYWJsZSBIRE1JIHNvdW5kIG9uIFJLMzU3NiBFVkIxCj4gICAg
ICAgY29tbWl0OiBmNWM5NTQ5OTY0YWRiYWM5MzFlMTYzNjkzYmQxN2RiODcyOTc2Njc5Cj4gWzcv
N10gYXJtNjQ6IGR0czogcm9ja2NoaXA6IEVuYWJsZSBhbmFsb2cgc291bmQgb24gUkszNTc2IEVW
QjEKPiAgICAgICBjb21taXQ6IGQ4ODcyYjlkZDkyMDhjNDkzZjFmMzgxMWQ0Mjk5N2ZiOTY4ZGUw
NjQKCkZvcmdvdCB0byBhZGQsIHRoYW5rZnVsbHkgdGhlIGZpeGVzICsgZW5hYmxlbWVudCBkb24n
dCBkZXBlbmQgb24gZWFjaApvdGhlciwgc28gSSd2ZSBhcHBsaWVkIHBhdGNoZXMgMSsyIHRvIG15
IGZpeGVzIGJyYW5jaCBmb3IgNi4xOQphbmQgdGhlIHJlc3QgZm9yIDYuMjAuCgoKSGVpa28KCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
