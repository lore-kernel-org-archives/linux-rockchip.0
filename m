Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EC58CCFA1A
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 03:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WEvla2uVUPds2hd4Le0op6j+nZNM/Mx+iuHBjdbHetA=; b=e0uFULadBtUGvf
	nCTI093zqx/EdHiEva7bC/2AWVob7mta/niXyKod3ElhhrSaTNNlcMWLYnsTeMBqmoce2d8iqrPt7
	VPXPMT6DGkHK+5+rkXYQabeRtSpAXPkNYc5nWJsqmJmEaWFEiQyRXcOEyYD+nRIVG5gOowHf19KjV
	pjZkNY41avJKDjVCfNFypp4VjqUjri+8pG28IQ2+MM9y2TCQQMEduI6ca2WJc8Rcxzc2HHWNCJGJf
	HCIdmfiZNGf19UqN+ZfMw4qU0R1qH5KBBGXNR0ZZJPmX3MhvrOMJxdO+ZFAH0yPTqJnh6FlBP1D1n
	OBomPLMALdmjxb8bG26Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIIQ4-00000004ecb-3doi;
	Mon, 10 Nov 2025 03:18:16 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIIQ0-00000004ebb-2X9m
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Nov 2025 03:18:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 05EDA40EC0;
	Mon, 10 Nov 2025 04:18:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762744689; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=LH1k1T7oTNXD8mQxm3nd393V6A/zbNo0/16PhRkMMbk=;
	b=YZjiaiJdL2l/5iJDNM66wH6BzqWpmsoUXzT2XD6zVw5Mraeg5t3/J0zQWt8aMGF56knYXV
	x+/x7ZG7rgo+8sQ4s36HCswa4SkQeUzmiSl+rM9CXdFNG/WcKKWr3PWfYlk8ptlp94ViBf
	Wcokym2/RuH0h3uTk8htHF/xhuAzC6wD5MiDTpQ0/7sJmFvRUQCEqdwzmNI/HJ7bdJBoDx
	lPWT27ExgG9F1piav2a74xCDbaY6SY08FhFjC1YGhqu0KgrvKkBNMHhH/vODqqrCtNjBzc
	/sZv3JZrstyC+I0Hzo8Y/0gwM9QmESk0qhW+FJYBkjUVSLYpA5+vv8f0HWZbEQ==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <CALWfF7K3zNxSsXVpW8pLc_xWi793HG99OvbshtP-0=764JmPKw@mail.gmail.com>
References: <20251105051335.17652-1-naoki@radxa.com> <20251105051335.17652-4-naoki@radxa.com>
 <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com>
 <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com> <35ff8e6f-dd2b-d909-70c7-b19240e32ccf@manjaro.org> <CALWfF7K3zNxSsXVpW8pLc_xWi793HG99OvbshtP-0=764JmPKw@mail.gmail.com>
Date: Mon, 10 Nov 2025 04:18:04 +0100
Cc: "FUKAUMI Naoki" <naoki@radxa.com>, heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "Jimmy Hon" <honyuenkwun@gmail.com>
MIME-Version: 1.0
Message-ID: <fab774df-de59-f101-55ec-5d4f691955eb@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 3/3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Add Radxa CM5 IO Board
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_191812_889786_1979E889 
X-CRM114-Status: GOOD (  25.20  )
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

SGVsbG8gSmltbXksCgpPbiBUaHVyc2RheSwgTm92ZW1iZXIgMDYsIDIwMjUgMDU6NTMgQ0VULCBK
aW1teSBIb24gPGhvbnl1ZW5rd3VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4gT24gV2VkLCBOb3YgNSwg
MjAyNSBhdCA5OjMx4oCvUE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IHdyb3Rl
Ogo+ID4gV2l0aCBhbGwgdGhhdCBpbiBtaW5kLCB3ZSBzaG91bGQgc3BlY2lmeSAibm8tbW1jIiBo
ZXJlLCBiZWNhdXNlCj4gPiB3ZSdyZSBkZXNjcmliaW5nIGEgbWljcm9TRCBzbG90LCBpbnN0ZWFk
IG9mIGRlc2NyaWJpbmcgc29tZSBoeWJyaWQKPiA+IE1NQy9taWNyb1NEIHNsb3QuICBUaGF0IGFs
c28gZXhwbGFpbnMgd2h5IHRoZSBhZGFwdGVyIHNvbGQgYnkgUmFkeGEKPiA+IGlzIGRlc2NyaWJl
ZCBhcyBub3QgdG8gYmUgdXNlZCB3aXRoIG1pY3JvU0QgY2FyZCBzbG90cyBvbiBTQkNzLiAgSSdk
Cj4gPiBhbHNvIGxpa2UgdG8gaGVhciBpcyB0aGlzIGFkYXB0ZXIvZU1NQyBjaGlwIGNvbWJvIHJl
Y29nbml6ZWQgYnkgdGhlCj4gPiBrZXJuZWwgd2hlbiAibm8tbW1jIiBpcyBzcGVjaWZpZWQ7IGl0
IHNob3VsZCBmYWlsLgo+ID4KPiA+IEFjdHVhbGx5LCBub3Qgc3BlY2lmeWluZyAibm8tbW1jIiBo
ZXJlIG1heSByZXN1bHQgaW4gc29tZSB1bmZvcmVzZWVuCj4gPiBpc3N1ZXMgd2l0aCBzb21lIChv
ciBwZXJoYXBzIG1hbnk/KSBtaWNyb1NEIGNhcmRzLCBiZWNhdXNlIHRoZSBNTUMKPiA+IGRyaXZl
cnMgd2lsbCB0cmVhdCB0aGVtIGFzIE1NQy1jYXBhYmxlIGRldmljZXMgYW5kIHRyeSB0byBpbml0
aWFsaXplCj4gPiB0aGVtIGFzIHN1Y2gsIHdoaWNoIG1heSBjYXVzZSBhbGwga2luZHMgb2YgaXNz
dWVzLiAgSW4gZmFjdCwgSSdtIG5vdAo+ID4gcmVhbGx5IHN1cmUgdGhhdCB0aGUgTU1DIGRyaXZl
cnMgYXJlIGFjdHVhbGx5IGltcGxlbWVudGVkIGluIGEgd2F5Cj4gPiB0aGF0IGF2b2lkcyBhbGwg
cG9zc2libGUgaXNzdWVzIHdpdGggdGhlIHN0b3JhZ2UgY29udHJvbGxlcnMgdGhhdAo+ID4gYXJl
IGNhcGFibGUgb2YgYm90aCBTRCBhbmQgTU1DIG1vZGVzIHdoZW4gbmVpdGhlciBvZiAibm8tc2Qi
IGFuZAo+ID4gIm5vLW1tYyIgaXMgc3BlY2lmaWVkIGluIHRoZWlyIERUIG5vZGVzLgo+IAo+IEh5
YnJpZCBNTUMgYW5kIFNEIHNsb3RzIGFyZSBwcmV0dHkgbm9ybWFsIG9uIFVTQiBjYXJkIHJlYWRl
cnMuIFNvIGl0J3MKPiBub3JtYWwgZm9yIHRoZSBob3N0IGNvbnRyb2xsZXIgdG8gZmlndXJlIG91
dCB3aGF0IGtpbmQgb2YgY2FyZCBpcyBpbgo+IHRoZSBzbG90Lgo+IGh0dHBzOi8vdWRpdGFnYXJ3
YWwuaW4vdW5kZXJzdGFuZGluZy1zZC1zZGlvLWFuZC1tbWMtaW50ZXJmYWNlLwo+IAo+IGh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4
LmdpdC9jb21taXQvP2lkPTZhZTNlNTM3ZWFiOWY1NjBiNTE2YjAwMWViODlmMGNkNTY4YmRjZWQK
PiB3YXMgdGhlIGNvbW1pdCB0aGF0IGludHJvZHVjZWQgdGhlIGRldmljZSB0cmVlIHByb3BlcnRp
ZXMuIEJ5IHRoZQo+IHdvcmRpbmcgb2YgdGhlIGNvbW1pdCBtZXNzYWdlLCB0aGVzZSBkZXZpY2Ug
dHJlZSBwcm9wZXJ0aWVzIGFyZSB1c2VkCj4gdG8gaW5kaWNhdGUgdG8gdGhlIGRyaXZlciBpZiB0
aGUgaG9zdCBjb250cm9sbGVyIGhhcmR3YXJlIGlzIGNhcGFibGUKPiBvZiBNTUMgaW5pdGlhbGl6
YXRpb24gb3IgU0QgaW5pdGlhbGl6YXRpb24uCj4gCj4gU2luY2UgdGhlIGhvc3QgY29udHJvbGxl
ciBpbiB0aGUgUkszNTg4IGlzIGNhcGFibGUgb2YgYWxsIHRoZSBtb2RlcywKPiB0aGVzZSBwcm9w
ZXJ0aWVzIGRvIG5vdCBuZWVkIHRvIGJlIHNwZWNpZmllZC4KPiAKPiBTaW5jZSBSYWR4YSBoYXMg
dGhlIGVNTUMgdG8gdVNEIGFkYXB0ZXIsIGl0IG1ha2VzIHNlbnNlIFJhZHhhIHdvdWxkCj4gd2Fu
dCB0byBjb25maWd1cmUgdGhlaXIgbWljcm9TRCBjYXJkIHNsb3Qgb24gdGhlaXIgYm9hcmRzIHRv
IGJlIGEKPiBoeWJyaWQgU0QvTU1DIHNsb3QuCgpUaGFua3MgZm9yIHByb3ZpZGluZyBmdXJ0aGVy
IGluc2lnaHRzISAgQWZ0ZXIgdGhpbmtpbmcgYSBiaXQgbW9yZQphYm91dCBpdCBhbmQgYWZ0ZXIg
cmVtZW1iZXJpbmcgdGhhdCBIYXJkS2VybmVsIGFsc28gb2ZmZXJzIGEgc2ltaWxhcgptaWNyb1NE
LXRvLU1NQyBhZGFwdGVyLCBbMV0gdGhlcmUgc2hvdWxkIGJlIHZlcnkgZmV3IHJvYWRibG9ja3Mg
dGhhdAptYXkgYWN0dWFsbHkgcHJldmVudCB1cyBmcm9tIGRlZmluaW5nIHBoeXNpY2FsIG1pY3Jv
U0Qgc2xvdHMgZm91bmQKb24gUm9ja2NoaXAgYm9hcmRzIGFzIGh5YnJpZCBtaWNyb1NEL01NQyBz
bG90cyB3aGVyZXZlciB0aGF0J3MKYWxsb3dlZCBieSB0aGUgc2xvdCBpbXBsZW1lbnRhdGlvbiBh
bmQgdGVzdGVkIHRvIHdvcmsgYXMgZXhwZWN0ZWQuClN1cHBvcnRpbmcgbW9yZSBjYXJkIHN0YW5k
YXJkcyBpcyBhbHdheXMgZ29vZC4KClRoaXMgYXBwcm9hY2ggc2hvdWxkbid0IGJlIGxpbWl0ZWQg
dG8gUmFkeGEgKG9yIEhhcmRLZXJuZWwpIGJvYXJkcwpvbmx5LCBiZWNhdXNlIHRoZSBhdmFpbGFi
bGUgbWljcm9TRC10by1NTUMgYWRhcHRlcnMgYXJlbid0IGRlc2lnbmVkCnNwZWNpZmljYWxseSB0
byBmaXQgc29tZSBib2FyZHMgb25seS4KClRoZSBwb3NzaWJsZSByb2FkYmxvY2tzLCBhcyBtZW50
aW9uZWQgYWJvdmUsIGFyZSBzb21lIHVuZXhwZWN0ZWQKc2lnbmFsIGludGVncml0eSBpc3N1ZXMg
dGhhdCBtYXkgcHJldmVudCB0aGUgTU1DIG1vZGUgZnJvbSB3b3JraW5nCmFzIGV4cGVjdGVkIG9u
IHNvbWUgYm9hcmRzLCB3aGljaCBKb25hcyBwb2ludGVkIG91dCBhbHJlYWR5LCBbMl1bM10KYW5k
IGFueSBhc3NvY2lhdGVkIGlzc3VlcyBpbiB0aGUgTU1DIGRyaXZlcnMuCgpJJ2xsIGtlZXAgY2hl
Y2tpbmcgdGhlIGNvZGUgb2YgTU1DIGRyaXZlcnMgZm9yIHRoZSBleGlzdGVuY2Ugb2YgYW55CmFz
c29jaWF0ZWQgaXNzdWVzLCBhbmQgSSdsbCBwb3NzaWJseSB0dXJuIGEgZmV3IG1pY3JvU0Qtb25s
eSBzbG90cwppbnRvIGh5YnJpZCBvbmVzLiA6KQoKWzFdIGh0dHBzOi8vd3d3LmhhcmRrZXJuZWwu
Y29tL3Nob3AvZW1tYy1tb2R1bGUtcmVhZGVyLWJvYXJkLWZvci1vcy11cGdyYWRlLwpbMl0gaHR0
cHM6Ly9saWJlcmEuY2F0aXJjbG9ncy5vcmcvbGludXgtcm9ja2NoaXAvMjAyNS0xMS0wNiMzODk3
NjQ0NTsKWzNdIGh0dHBzOi8vbGliZXJhLmNhdGlyY2xvZ3Mub3JnL2xpbnV4LXJvY2tjaGlwLzIw
MjUtMTEtMDcjMzg5ODEwNjA7CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
