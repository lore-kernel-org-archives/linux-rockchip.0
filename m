Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCEF9606A31A
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 02:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EuhlRQLT;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=PrJl/E5X
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q3yve6ANz0vCHWX/SMF2zfmTuVlomhUsz6PGAk4++jw=; b=EuhlRQLTgsFINt
	M00+oHFRmFGXO5JQdZmHjxqf2TRieoRzlisx+0zXa6PRAcrt9AwUIzrDkIWA1GjvhoDZ40KzyNLuh
	Bzido8he6u36qvxqRttpPbHcVlUmx40Hd15s4YyNziuXM/KRtas6wvnZYftBWVst7pjBRGwLdGu3G
	YqVTG/8t0rx/pJ0zZzU/B380+4WXC4AH3xWoX0Dl83vUW3EQ1/HNTZ4TBIhcs6e7k5YccPtH4mDWy
	amFDUhjk6B6OdF6EzjjwUWs4LkJVFO9h5z/cxjP3d5J8/t0Q3gb2TGPn+ViKDe9xJKh3djMzjmU/V
	IBnfFn65iGtR2msCEiXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIzT7-00000008g1M-2Ubl;
	Tue, 20 Oct 2026 02:20:49 +0000
Received: from mail-m81175.xmail.ntesmail.com ([156.224.81.175])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIzT4-00000008fxF-0mON;
	Tue, 20 Oct 2026 02:20:48 +0000
Received: from [172.16.12.99] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 51a2dc0ed;
	Tue, 20 Oct 2026 10:20:34 +0800 (GMT+08:00)
Message-ID: <fb24d2a7-0077-4560-83aa-f957551a3f6d@rock-chips.com>
Date: Tue, 20 Oct 2026 10:20:33 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] i2c: rk3x: Disable the controller between transfers
To: Shawn Lin <shawn.lin@rock-chips.com>, Alexey Charkov <alchark@flipper.net>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-i2c@vger.kernel.org, Andi Shyti <andi.shyti@kernel.org>,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>
References: <20261015-i2c-rk3x-disable-v1-1-81625845c175@flipper.net>
 <bfe8baa4-e740-4908-9d2a-4defc5240a82@rock-chips.com>
 <CAKTNdwFYxPeaG6pZn3SYoR6cPAtON37ajo4nZpPE0Hm=y2c6Lg@mail.gmail.com>
 <9c18acc0-2b4b-4f19-9928-de1632718f15@rock-chips.com>
Content-Language: en-US
From: David Wu <david.wu@rock-chips.com>
In-Reply-To: <9c18acc0-2b4b-4f19-9928-de1632718f15@rock-chips.com>
X-HM-Tid: 0aa1571c494409cckunm07388fb3343522
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQxlNSVZCQkxLTUkeTU
	8aS01WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=PrJl/E5XisJvbfnc9+7tFf7oJI4BEsiNbiAl0y2cjIN4VdvW/WveXgzocZyORanuMX2zpU5gwWVyhhTbk+L2WN0QnwTuLnk1hh3AWY2XGlycbMmy1KwTuOWL95oanpwe0obe/IwColaKBCbgHQQ21acbKqTqJjhQYwNE77MWbRI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=O7U0HqiaHhO1m0861+/gW/QJicAZ/PhQcq0hpT521/s=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_192046_948666_AE69F51D 
X-CRM114-Status: GOOD (  17.56  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQWxleGV5LAoKVGhlcmUncyBubyBkZXRlcm1pbmlzdGljIHdheSB0byByZXByb2R1Y2UgdGhp
cywgbG9vcGluZyBzdXNwZW5kL3Jlc3VtZSAKc2VlbXMgdG8gYmUgYWJsZSB0byB0cmlnZ2VyIGl0
IGV2ZW50dWFsbHkuIFRoZSBwcm9ibGVtIGNhc2UgaXMgSUVOICE9IDAgCndoaWxlIHBjbGsgaXMg
YWxyZWFkeSBkaXNhYmxlZDogdGhlIGlycSBoYW5kbGVyIGRvZXNuJ3QgcmUtZW5hYmxlIHBjbGss
IApzbyBpdCBjYW4ndCBhY3R1YWxseSBjbGVhciB0aGUgaW50ZXJydXB0LCBhbmQgeW91IGdldCAi
aXJxIGluIApTVEFURV9JRExFIiBwcmludGluZyBmb3JldmVyLiBTbyB0aGUgZXh0cmEgSUVOIHdy
aXRlIGhlcmUgaXMganVzdCBhIApiZWx0LWFuZC1zdXNwZW5kZXJzIHNhZmVndWFyZC4KCuWcqCAy
MDI2LzEwLzIwIDA4OjQ4LCBTaGF3biBMaW4g5YaZ6YGTOgo+IEhpCj4gCj4g5ZyoIDIwMjYvMTAv
MjAg5pif5pyf5LqMIDA6NTAsIEFsZXhleSBDaGFya292IOWGmemBkzoKPj4gSGkgU2hhd24sCj4+
Cj4+IE9uIEZyaSwgT2N0IDE2LCAyMDI2IGF0IDQ6MzPigK9BTSBTaGF3biBMaW4gPHNoYXduLmxp
bkByb2NrLWNoaXBzLmNvbT4gCj4+IHdyb3RlOgo+Pj4KPj4+IENjOiArIERhdmlkCj4+Pgo+Pj4g
5ZyoIDIwMjYvMTAvMTUg5pif5pyf5ZubIDIyOjAwLCBBbGV4ZXkgQ2hhcmtvdiDlhpnpgZM6Cj4+
Pj4gVGhlIGRyaXZlciBsZWF2ZXMgdGhlIGNvbnRyb2xsZXIgZW5hYmxlZCBvbmNlIGEgdHJhbnNm
ZXIgY29tcGxldGVzLCBhbmQKPj4+PiBhbiBlbmFibGVkIGNvbnRyb2xsZXIga2VlcHMgdHJhY2tp
bmcgdGhlIGJ1cy4gSWYgdGhlIGxpbmVzIGNvbGxhcHNlIAo+Pj4+IHVuZGVyCj4+Pj4gaXQgd2hp
bGUgaWRsZSwgYXMgaGFwcGVucyB3aGVuIGEgdGFyZ2V0J3Mgc3VwcGx5IGlzIHN3aXRjaGVkIG9m
ZiB3aGlsZQo+Pj4+IGl0cyBidXMgcHVsbC11cHMgc3RheSBwb3dlcmVkLCBpdHMgc3RhdGUgbWFj
aGluZSB3ZWRnZXMgZHJpdmluZyBTREEgCj4+Pj4gbG93Lgo+Pj4+IEV2ZXJ5IGxhdGVyIHRyYW5z
ZmVyIHRoZW4gdGltZXMgb3V0LCBzaW5jZSB0aGUgdGltZW91dCBwYXRoIG9ubHkgCj4+Pj4gcmVx
dWVzdHMKPj4+PiBhIFNUT1AgYW5kIG5ldmVyIGRpc2FibGVzIHRoZSBjb250cm9sbGVyLCBhbmQg
dGhlIHN0dWNrIHN0YXRlIGV2ZW4KPj4+PiBzdXJ2aXZlcyBhIGtleGVjLgo+Pj4+Cj4+Pj4gQ2xl
YXIgdGhlIGVuYWJsZSBiaXQgb25jZSBlYWNoIHRyYW5zZmVyIGlzIGRvbmUsIHN1Y2Nlc3NmdWwg
b3Igbm90LCBzbwo+Pj4+IHRoYXQgdGhlIGNvbnRyb2xsZXIgZG9lcyBub3Qgd2F0Y2ggYW4gaWRs
ZSBidXMgYW5kIHN0YXJ0cyBldmVyeSAKPj4+PiB0cmFuc2Zlcgo+Pj4+IGZyb20gYSBjbGVhbiBz
dGF0ZS4KPj4+Pgo+Pj4KPj4+IEkgY2hlY2tlZCB0aGUgdmVuZG9yIGtlcm5lbCB0cmVlIGFuZCBz
YXcgYW5vdGhlciBjYXNlIHRoYXQgeW91IHBlcmhhcHMKPj4+IG5lZWQgdG8gZm9sZCBzb21ldGhp
bmcgc2ltaWxhciBiZWxvdyBpbnRvIHlvdXIgcGF0Y2gsIGFsb25nIHdpdGggeW91cgo+Pj4gZGlz
YWJsaW5nIGNvbnRyb2xsZXI/Cj4+Pgo+Pj4gwqDCoMKgwqDCoCBJbiBzb21lIGNhc2XvvIxsb2cg
bGlrZSB0aGlzOgo+Pj4KPj4+IMKgwqDCoMKgwqAgW8KgwqAgMTIuMzkzOTI2XSByazN4LWkyYyBm
ZjE1MDAwMC5pMmM6IGlycSBpbiBTVEFURV9JRExFLCBpcGQgPSAKPj4+IDB4NTEKPj4+IMKgwqDC
oMKgwqAgW8KgwqAgMTIuNDE2NTkyXSByazN4LWkyYyBmZjE1MDAwMC5pMmM6IGlycSBpbiBTVEFU
RV9JRExFLCBpcGQgPSAKPj4+IDB4NTEKPj4+Cj4+PiDCoMKgwqDCoMKgIFRoZSBpMmMgY2xvY2sg
aXMgZGlzYWJsZWQsIHNvIHRoZSBwZW5kaW5nIGlycSBjbGVhbiBpcyBub3QKPj4+IMKgwqDCoMKg
wqAgd29ya2VkLiBEaXNhYmxlIHRoZSBpbnRlcnJ1cHQgYWZ0ZXIgdGhlIGkyYyBqb2JzIHdlcmUg
ZG9uZSwKPj4+IMKgwqDCoMKgwqAgdGhlIGVycm9yIGxvZyB3b3VsZCBub3QgaGFwcGVuLgo+Pj4K
Pj4+Cj4+PiAvKiBEaXNhYmxlIGkyYyBhbGwgaXJxcyAqLwo+Pj4gI2RlZmluZSBJRU5fQUxMX0RJ
U0FCTEXCoMKgIDAKPj4+Cj4+PiBpMmNfd3JpdGVsKGkyYywgSUVOX0FMTF9ESVNBQkxFLCBSRUdf
SUVOKTtpMmNfd3JpdGVsKGkyYywKPj4+IElFTl9BTExfRElTQUJMRSwgUkVHX0lFTik7Cj4+Cj4+
IFRoYW5rcyBmb3IgbG9va2luZyBpbnRvIHRoaXMhIERvIHlvdSBoYXBwZW4gdG8gaGF2ZSBhIHJl
cHJvZHVjZXIgb3IKPj4gYW55IGFkZGl0aW9uYWwgaW5mbyBvbiBob3cgdGhpcyBzdGF0ZSBnZXRz
IHRyaWdnZXJlZD8gSSBoYXZlbid0IHJ1bgo+PiBpbnRvIGl0IGluIG15IHNldHVwcyAtIGRpZCBJ
IGp1c3QgZ2V0IGx1Y2t5PyA6KQo+Pgo+IAo+IFVuZm9ydHVuYXRlbHksIEkgZG9uJ3QuIFRoYXQg
Y2FtZSBmcm9tIHdoYXQgSSBmb3VuZCB3aGVuIGNoZWNraW5nCj4gdGhlIHZlbmRvciBrZXJuZWwg
Y29tbWl0IHRvIHNlZSBob3cgd2UgaGFuZGxlZCB5b3VyIGNhc2UuCj4gCj4gU28gSSBoYXZlIGxv
b3BlZCBEYXZpZCB3aG8gbWFkZSB0aGUgaW50ZXJuYWwgc3VibWlzaW9uIGZvciB0aGUgc2FtZSBj
YXNlCj4gYXMgeW91cnMgOCB5ZWFycyBhZ28gYW5kIGhvcGUgaGltIGNvdWxkIGhhdmUgYSBjb21t
ZW50IGhlcmUuCj4gCj4+IEkgc2VlIHRoZSBzYW1lIHdyaXRlIG9mIDAgdG8gUkVHX0lFTiBqdXN0
IGFib3ZlIG15IGNoYW5nZWQgbGluZXMgZm9yCj4+IHRoZSBjYXNlIGlmICh0aW1lX2xlZnQgPT0g
MCksIHdoaWNoIG1ha2VzIHNlbnNlIGJlY2F1c2UgYQo+PiB0b28tbG9uZy1ydW5uaW5nIHRyYW5z
ZmVyIG1pZ2h0IGV2ZW50dWFsbHkgY29tcGxldGUgYW5kIHRyaWdnZXIgdGhlCj4+IGludGVycnVw
dCB3aXRoIHRoZSBjb250cm9sbGVyIGRpc2FibGVkLCB1bmxlc3MgdGhlIGludGVycnVwdCBpcwo+
PiBkaXNhYmxlZCB0b28uIEZvciBvdGhlciBjYXNlcyBJJ2QgYmUgaW50ZXJlc3RlZCB0byBrbm93
IHdoYXQgY2FuIHJhaXNlCj4+IHRoZSBpbnRlcnJ1cHQuCj4+Cj4+IEJlc3QgcmVnYXJkcywKPj4g
QWxleGV5Cj4+Cj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
