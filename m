Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85B04C43458
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Jun 2026 13:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJxIvowoA01zxKLoqgRLO2/pf3x0zLm1UtJuUV/VZO4=; b=TyUfdrAsfqysYW
	slolg3zWq2CELPWcsrdqxIR2L6TonQxZyehVF2uljNy9fKwFtNpMm2rGCsBqYcC8ne/QTVjnQ53Vn
	kjMulgt/1tkgTjXpOX2TfMPAwkVRKJQxKjNISgQ04nO67XmQaElWOFIPy88dU19VMrQClXX/WP6Z8
	BW4UU+VYLnQOHIP1JyoYBEaoR7IpZhPZaUg5oLSZxKzKgk0njz4EA8HBvKTnfVkH711UBtvp9bUzT
	DuB1m7a/ljClAAKwlIPab4GYowlMhrRZOVkUuSckMAdIjL35451NBnUA3NcvyDKUlBkgzIiXxi09E
	iorSTsP6NuMfj8J9YMFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdpGl-0000000D73u-0Kyg;
	Sun, 28 Jun 2026 13:09:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdpGi-0000000D73U-0rIm
	for linux-rockchip@lists.infradead.org;
	Sun, 28 Jun 2026 13:09:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=YBzYnerjriaVbT8N2bTshm586aBFDL6BvkymNB/3ZYM=; b=z3OoCoAFiNYHwTGhZ0WBELIx5A
	Oh4MyRGOq0xjR2mBiBJFaaWUIx4Vpae1/sFb+b4OkfwGA4YcfFIM8OQb4zpm4494FLm/w6HyUYT4R
	CG4lmy3xyEgIqzIN2thf0RgNGoe3ZQ9t18bZpddebKOpBdi2fPtumfZnl8hIaNWzWFSZjbplnxT8S
	IsnVZhB1rzRV/Y9j85wImkVpCtSn2NqeTAMFKJPJxomLzFbxrdX8ZfeApKS05vHU0wJBWy8Xnc7sj
	tefyVF8eGz8UexW+nHmY5IEREVo73XicwAoa4SHXihyCT9IMPWz/MacOo4G+EPStnldw93ec6Id0N
	c3v6WspA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: zhao xinchao <ChrisXinchao@outlook.com>
Cc: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: add Firefly AIO-3588L board
Date: Sun, 28 Jun 2026 15:09:48 +0200
Message-ID: <2969865.Y6S9NjorxK@diego>
In-Reply-To: <SA0PR19MB4572AB455CF87D8BB3CFEE6EC5E92@SA0PR19MB4572.namprd19.prod.outlook.com>
References: <SA0PR19MB4572AB455CF87D8BB3CFEE6EC5E92@SA0PR19MB4572.namprd19.prod.outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260628_060952_301928_22D44908 
X-CRM114-Status: GOOD (  10.66  )
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

QW0gU29ubnRhZywgMjguIEp1bmkgMjAyNiwgMDI6NTI6MzcgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiB6aGFvIHhpbmNoYW86Cj4gRnJvbTogQ2hyaXMgWGluIDxjaHJpc3hp
bmNoYW9Ab3V0bG9vay5jb20+Cj4gRGF0ZTogU3VuLCAyOCBKdW4gMjAyNiAwMDowMDowMCArMDgw
MAo+IFN1YmplY3Q6IFtQQVRDSF0gYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCBGaXJlZmx5IEFJ
Ty0zNTg4TCBib2FyZAo+IAo+IEFkZCBkZXZpY2UgdHJlZSBmb3IgdGhlIEZpcmVmbHkgQUlPLTM1
ODhMIGJvYXJkIGJhc2VkIG9uIHRoZSBSb2NrY2hpcAo+IFJLMzU4OCBTb0MuIFRoZSBib2FyZCBm
ZWF0dXJlczoKPiAtIER1YWwgSERNSSBvdXRwdXQgdmlhIERlc2lnbldhcmUgSERNSSBRUAo+IC0g
UlRMODg1MkJFIFdpRmkgb24gUENJZSAocnR3ODkgZHJpdmVyKQo+IC0gUlRMODIxMUYgRXRoZXJu
ZXQKPiAtIFNpbmdsZSBSSzgwNiBQTUlDCj4gLSBMUEREUjQgUkFNLCBlTU1DIHN0b3JhZ2UsIFVT
QiAzLjAKPiAKPiBUaGUgYm9hcmQgRFRTIGluY2x1ZGVzIHRoZSBjb21tb24gZmlyZWZseS1jb3Jl
LTM1ODhqLmR0c2kgd2hpY2ggcHJvdmlkZXMKPiBQTUlDLCBlTU1DLCBhbmQgb3RoZXIgc2hhcmVk
IGNvbmZpZ3VyYXRpb25zIGZvciBGaXJlZmx5IFJLMzU4OCBib2FyZHMuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgWGluIDxjaHJpc3hpbmNoYW9Ab3V0bG9vay5jb20+Cj4gLS0tCj4gIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgfCAg
IDEgKwo+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWZpcmVmbHktYWlvLTM1ODhsLmR0
cyAgICAgICAgIHwgNzE4ICsrKysrKysrKysrKysrKwo+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4LWZpcmVmbHktY29yZS0zNTg4ai5kdHNpICAgICAgIHwgNDUzICsrKysrKysrKwoKVGhp
cyBpcyBvbmUgcGF0Y2gsIGJ1dCB3aGVyZSBpcyB0aGUgMm5kIHBhdGNoIGFkZCB0aGUgYm9hcmQg
YmluZGluZz8KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
