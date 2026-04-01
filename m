Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87337D3514A
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Apr 2026 07:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qgre8QL3VB/4IjWqAkBeT7InZMGN+XfR/tb5C73SNOw=; b=0TZCciJOLZpc+P
	oB/QWgpWty12fDlYiPKrQGb5df7M1wQvR4suUQcnQmY+5FTnXCLneYmUxAtZEFAVC7w24rq4Uli6w
	zmkkhxLFxLah85msdQLv5M9TJlwY4XSUgwUIfnsNfD17nwVXhjltkVDfQ8pY1S/BUYiHgYeR1/dQm
	d3daklcHb5YfghdhTdiA8uyrzpBjg5BcaxsRyqSWZ5jeIa7v6Nhj2QDPhQD/vuwHJ8q2dm2cP3zYh
	56w17Kc/5vjrJJSAm81/Qdrth1/JuzogaqgumwV8z6GKbTbpmctmx5rlEYbM1hBqsXy+erIJwc8SQ
	wUDA2aTKMtN4Wqwy00NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7pjb-0000000EAsX-2NoW;
	Wed, 01 Apr 2026 07:11:27 +0000
Received: from mail-m15581.qiye.163.com ([101.71.155.81])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7pjY-0000000EAs5-0tQ7;
	Wed, 01 Apr 2026 07:11:26 +0000
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 391dff0b7;
	Wed, 1 Apr 2026 15:11:18 +0800 (GMT+08:00)
Message-ID: <fbf16b5a-1565-39c9-0d92-33a7a577212f@rock-chips.com>
Date: Wed, 1 Apr 2026 15:11:16 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Cc: shawn.lin@rock-chips.com, "finley.xiao" <finley.xiao@rock-chips.com>
Subject: Re: [PATCH 1/2] pmdomain/rockchip: skip QoS operations for idle-only
 domains
To: Daniel Bozeman <daniel@orb.net>, ulf.hansson@linaro.org, heiko@sntech.de,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260331180223.1682283-1-daniel@orb.net>
 <5c8732a3-6cc9-5d02-f56b-fc7ba29c7ce0@rock-chips.com>
 <CAG+Ngm+xJCCQMPddZx8AbPEeH3rUrn3GKF575zXpGPJrnELvMw@mail.gmail.com>
 <acy3eP0dZBx6A950@claude-dev>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <acy3eP0dZBx6A950@claude-dev>
X-HM-Tid: 0a9d47e1de0c09cckunm098604e3fd985d
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUpLGFYZSk9OSk1JGE9KTENWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=XK7L4fAB8DVTWQs0ZKyABCZaY4MYlJiruuP1OSHK17Lk2Pzs+YyiLRLbyFXuzV+mgXQ9+RXOeAgtqFdyIGOVS5QQZTRn/2sw8DcwlTmyVIkWB+DOBA22inMmCF0k5u72WnyMY3dxPX2J8INrdHlfbOgp5CwAbXDru+pUE65dEP0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=PTYD3BdeiKasj9p/65Qh1vCnQKo8NB1Gv0M28P71x98=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_001124_879296_5BE26BB8 
X-CRM114-Status: GOOD (  17.14  )
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

KyBGaW5sZXkKCuWcqCAyMDI2LzA0LzAxIOaYn+acn+S4iSAxNDoxMywgRGFuaWVsIEJvemVtYW4g
5YaZ6YGTOgo+IDxmYzZmMDBmYS0xMGIwLTQ0YzgtZDhiNC02OTRmOGZmM2I5ZWFAcm9jay1jaGlw
cy5jb20+Cj4gCj4gSSByYW4gYWRkaXRpb25hbCB0ZXN0cyB0byBnYXRoZXIgZXZpZGVuY2U6Cj4g
Cj4gVGVzdCAxOiBQYXRjaCAyIG9ubHkgKHNraXAgRVBST0JFX0RFRkVSKSwgbm8gcGF0Y2ggMS4K
PiBSZXN1bHQ6IGtlcm5lbCBwYW5pYy4gVGhlIGlkbGUtb25seSBkb21haW5zIHJlZ2lzdGVyCj4g
c3VjY2Vzc2Z1bGx5LCBidXQgZ2VucGRfcG93ZXJfb2ZmX3dvcmtfZm4gYXR0ZW1wdHMgdG8gcG93
ZXIKPiB0aGVtIG9mZiBhbmQgY3Jhc2hlcyBpbiByb2NrY2hpcF9wbXVfc2V0X2lkbGVfcmVxdWVz
dDoKPiAKPiAgICBJbnRlcm5hbCBlcnJvcjogc3luY2hyb25vdXMgZXh0ZXJuYWwgYWJvcnQ6IDAw
MDAwMDAwOTYwMDAwMTAKPiAgICBDUFU6IDAgUElEOiA1OSBDb21tOiBrd29ya2VyLzA6Mwo+ICAg
IFdvcmtxdWV1ZTogcG0gZ2VucGRfcG93ZXJfb2ZmX3dvcmtfZm4KPiAgICBwYyA6IHJlZ21hcF9t
bWlvX3JlYWQzMmxlKzB4OC8weDIwCj4gICAgQ2FsbCB0cmFjZToKPiAgICAgcmVnbWFwX21taW9f
cmVhZDMybGUrMHg4LzB4MjAKPiAgICAgX3JlZ21hcF9idXNfcmVnX3JlYWQrMHg2Yy8weGFjCj4g
ICAgIF9yZWdtYXBfcmVhZCsweDYwLzB4ZDgKPiAgICAgcmVnbWFwX3JlYWQrMHg0Yy8weDdjCj4g
ICAgIHJvY2tjaGlwX3BtdV9zZXRfaWRsZV9yZXF1ZXN0LmlzcmEuMCsweDk0LzB4MWI0Cj4gICAg
IHJvY2tjaGlwX3BkX3Bvd2VyKzB4Mzc4LzB4NjA0Cj4gICAgIHJvY2tjaGlwX3BkX3Bvd2VyX29m
ZisweDE0LzB4MzQKPiAgICAgZ2VucGRfcG93ZXJfb2ZmLmlzcmEuMCsweDFmMC8weDJmMAo+ICAg
ICBnZW5wZF9wb3dlcl9vZmZfd29ya19mbisweDM0LzB4NTQKPiAKPiBUZXN0IDI6IE5vIGtlcm5l
bCBwYXRjaGVzLCBQRF9HUFUgZGlzYWJsZWQgdmlhCj4gc3RhdHVzID0gImRpc2FibGVkIiBpbiBE
VFMgdG8gYXZvaWQgRVBST0JFX0RFRkVSIGVudGlyZWx5Lgo+IFJlc3VsdDogc2FtZSBrZXJuZWwg
cGFuaWMuIFRoZSBpZGxlLW9ubHkgZG9tYWlucyByZWdpc3Rlcgo+IGJ1dCBjcmFzaCBpZGVudGlj
YWxseSB3aGVuIGdlbnBkIHRyaWVzIHRvIHBvd2VyIHRoZW0gb2ZmLgo+IFNhbWUgY2FsbCB0cmFj
ZSBhcyBhYm92ZS4KPiAKPiBTbyB0aGUgY3Jhc2ggaXMgbm90IGNhdXNlZCBieSBwcm9iZSBvcmRl
cmluZyBvcgo+IEVQUk9CRV9ERUZFUiAtLSBpdCBoYXBwZW5zIHdoZW5ldmVyIGlkbGUtb25seSBk
b21haW5zCj4gKHB3cl9tYXNrID09IDApIGFyZSByZWdpc3RlcmVkIGFuZCBnZW5wZCBhdHRlbXB0
cyB0bwo+IHBvd2VyIHRoZW0gb2ZmLiBUaGUgUW9TIHJlZ2lzdGVyIGFjY2VzcyBpbgo+IHJvY2tj
aGlwX3BtdV9zZXRfaWRsZV9yZXF1ZXN0IGZhdWx0cyBvbiB0aGVzZSBkb21haW5zLgo+IAo+IFJl
Z2FyZGluZyBTMlI6IHlvdSByYWlzZSBhIHZhbGlkIGNvbmNlcm4gYWJvdXQgc2tpcHBpbmcKPiBR
b1Mgc2F2ZS9yZXN0b3JlLiBIb3dldmVyLCB0aGVzZSBpZGxlLW9ubHkgZG9tYWlucyBjYW5ub3QK
PiBhY3R1YWxseSBiZSBwb3dlcmVkIG9mZiAocHdyX21hc2sgPT0gMCksIHNvCj4gcm9ja2NoaXBf
ZG9fcG11X3NldF9wb3dlcl9kb21haW4gYWxyZWFkeSByZXR1cm5zIGVhcmx5IGZvcgo+IHRoZW0u
IFRoZSBRb1Mgc2F2ZS9pZGxlL3Jlc3RvcmUgY3ljbGUgaW4gcm9ja2NoaXBfcGRfcG93ZXIKPiBo
YXMgbm8gZWZmZWN0IG9uIHRoZXNlIGRvbWFpbnMgc2luY2UgdGhlIHBvd2VyIHN0YXRlIG5ldmVy
Cj4gY2hhbmdlcyAtLSB0aGUgc2F2ZSBhbmQgcmVzdG9yZSBhcmUgcGFpcmVkIGFyb3VuZCBhIG5v
LW9wLgo+IFNraXBwaW5nIHRoZSBlbnRpcmUgc2VxdWVuY2UgZm9yIHB3cl9tYXNrID09IDAgc2hv
dWxkIGJlCj4gc2FmZSBmb3IgUzJSIGFzIHdlbGwuCj4gCgpUaGFua3MgZm9yIHRoZXNlIGRldGFp
bHMgYnV0IEkgdGhpbmsgaXQgZXhwbGFpbnMgdGhlIHBoZW5vbWVub24KYW5kIHdvcmsgYXJvdW5k
IGl0IGJ1dCBkaWRuJ3QgZXhwbGFpbiB0aGUgcm9vdCBjYXVzZS4KClJLMzUyOCBTb0MgY2FuJ3Qg
cG93ZXIgZG93biB0aGVzZSBQRHMgYnV0IG9ubHkgc3VwcG9ydCB0byBpZGxlIHRoZW0uClJpZ2h0
LCBpZGxlIHRoZXNlIFBEcyBjb3VsZCBzdGlsbCBtYWtlIFFvUyByZWdpc3RlcnMgaW5hY2Nlc3Nh
YmxlLgpCdXQgZnJvbSB0aGUgY29kZSwgcm9ja2NoaXBfcG11X3NhdmVfcW9zKCkgYW5kCnJvY2tj
aGlwX3BtdV9yZXN0b3JlX3FvcygpIGJvdGggYXJlIGNhbGxlZCB1bmRlciBpZGxlLWZyZWUgc3Rh
dGUuCgpPbmUgcG9zc2libGUgZ3Vlc3MgaXMgaXQncyBjbGsgcmVsYXRlZC4gQ291bGQgeW91IHBs
ZWFzZSBoZWxwCnRlc3QgeW91ciBlbnZpcm9ubWVudCB3aXRoICJjbGtfaWdub3JlX3VudXNlZCIg
c2V0IGluIGNtZGxpbmU/CgpBbm90aGVyIHRlc3QgaXMgdG8gcHJpbnQgb3V0IGdlbnBkLT5uYW1l
IGluIHRoZSBlbnRyeSBvZgpyb2NrY2hpcF9wZF9wb3dlcl9vbigpIGFuZCByb2NrY2hpcF9wZF9w
b3dlcl9vZmYoKSB0byBzZWUKd2hpY2ggb25lIGlzIGluYWNjZXNzYWJsZS4KCgoKPiBCb3RoIHBh
dGNoZXMgYXJlIG5lZWRlZDoKPiAtIFBhdGNoIDE6IHByZXZlbnRzIHRoZSBRb1MgY3Jhc2ggb24g
aWRsZS1vbmx5IGRvbWFpbnMKPiAtIFBhdGNoIDI6IHByZXZlbnRzIHByb2JlIHRlYXJkb3duIGZy
b20gbWFraW5nIHRoaW5ncyB3b3JzZQo+IAo+IFRlc3RlZCBvbiBOYW5vUGkgWmVybzIgKFJLMzUy
OCkgd2l0aCBhbGwgZm91ciBzY2VuYXJpb3M6Cj4gYm90aCBwYXRjaGVzIChib290cyksIHBhdGNo
IDIgb25seSAocGFuaWMpLCBEVFMgd29ya2Fyb3VuZAo+IChwYW5pYyksIGJvdGggcGF0Y2hlcyAr
IEUyMEMgcmVncmVzc2lvbiB0ZXN0IChubyBpc3N1ZXMpLgo+IAo+IFRoZSBib2FyZCBEVFMgdGhh
dCB0cmlnZ2VycyB0aGlzIChHUElPLWNvbnRyb2xsZWQgVVNCIFZCVVMKPiByZWd1bGF0b3Igb24g
R1BJTzQvUERfUktWRU5DKSBjYW4gYmUgc2VlbiBhdDoKPiBodHRwczovL2dpdGh1Yi5jb20vZGJv
emUvb3BlbndydC9ibG9iL2FkZC1uYW5vcGktemVybzItY2xlYW4vdGFyZ2V0L2xpbnV4L3JvY2tj
aGlwL3BhdGNoZXMtNi4xMi8xMDItYXJtNjQtZHRzLXJvY2tjaGlwLUFkZC1GcmllbmRseUVsZWMt
TmFub1BpLVplcm8yLnBhdGNoCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
