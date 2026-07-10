Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D536BC43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 13:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++ywCKLr0jtQlf3ZF8aZ1I2Owjj01qAj5/c94/+ZeXs=; b=FrokoN2C+mt6GZ
	E6sDzFSXKjitU4FYhbD9th3cmlbk4VoDUCs8D5FDG8qN09QwpMR4byTiVr5x6Hivs/eOgsdbvSiRb
	+x5kuus6vJuggY46+I2x+sMIHy7Ylh04swG4xLPed0xdcX6JwTI7woc8QH7llYiFQn/RgPFPANcxD
	wqYXukSpfBwwHfuxQzPtIiuMpgfjnJ0cGChU5Uap5BwRUopuVHQAEBTSMK0mgHswUlFDZIADzxTGl
	iBw9JZzM2kC5W+i0eH12IZ0QtuyEDHYNtR01bE1aygbz7HbnrT8BbzqrJRSdBFhHV35d8rl58Gt0D
	e5bBfO/wL0KkqT8E+WdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiBVT-000000052GQ-0rQB;
	Fri, 10 Jul 2026 13:43:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiBVQ-000000052F9-39cs;
	Fri, 10 Jul 2026 13:43:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=VTWLYjdgbzHqJpZ1UgqhE3ddioxPi+X5APCbgrRIKAM=; b=MU+fLHrCTy5vRdOMD9FH3w2RGN
	hECCq8uevcPfomhKkp9eRAadvXsDVWPPbK/nRKSMYi99uhcRuaO9qpkdlYA4eJHrJpDQEeGXWQtAf
	gXhGEed22qTptnsXusJbntmkMNb6zkBLm/UygpjYHgAmU/qEYlztvwlSNLBqBG0cRBSBVRf+7r9gK
	S12opPlv+soMAE+FLbnx7UbO8aOa4BGcyAVp+uhd6L6Lm6/NVahgQhhqLENxKnkICszFNhp89qeYk
	/3J+l3LlhzCXxlj+jl6yTt888um3CCDdSh9zlfzJK9IRa64JVv0I+eY+jljXzjAE+uqfNT+5NqYFS
	jIZU4AKw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Will Deacon <will@kernel.org>, Jiaxing Hu <huhuvmb88@gmail.com>
Cc: Joerg Roedel <joro@8bytes.org>, Robin Murphy <robin.murphy@arm.com>,
 iommu@lists.linux.dev, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] iommu/rockchip: implement .flush_iotlb_all
Date: Fri, 10 Jul 2026 15:42:46 +0200
Message-ID: <12654012.zAa99ISigo@diego>
In-Reply-To: <20260710111508.917486-1-huhuvmb88@gmail.com>
References: <20260710060513.863714-1-huhuvmb88@gmail.com>
 <20260710111508.917486-1-huhuvmb88@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_064304_864187_1B9BB1EE 
X-CRM114-Status: GOOD (  16.34  )
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

SGksCgpBbSBGcmVpdGFnLCAxMC4gSnVsaSAyMDI2LCAxMzoxNTowOCBNaXR0ZWxldXJvcMOkaXNj
aGUgU29tbWVyemVpdCBzY2hyaWViIEppYXhpbmcgSHU6Cj4gT24gRnJpLCAxMCBKdWwgMjAyNiwg
V2lsbCBEZWFjb24gd3JvdGU6Cj4gPiBTbyBJIHRoaW5rIHRoaXMgaXMgdGhlIHdyb25nIGRpcmVj
dGlvbi4gV2Ugc2hvdWxkIHRyeSBoYXJkZXIgdG8gcmVtb3ZlCj4gPiB0aGUgZnVuY3Rpb24gcmF0
aGVyIHRoYW4gYWRkIG5ldyBpbXBsZW1lbnRhdGlvbnMgb2YgaXQuIEknbSBhc3N1bWluZwo+ID4g
eW91J3JlIG9ubHkgYWRkaW5nIGl0IGZvciBzb21lIG91dC1vZi10cmVlIGNvZGUgdGhhdCBjYWxs
cyBpdD8KPiAKPiBZZXMsIHRoYXQncyByaWdodC4gVGhlIG9ubHkgY2FsbGVyIGlzIHRoZSBvdXQt
b2YtdHJlZSBSSzM1NzYgTlBVCj4gKGFjY2VsL3JvY2tldCkgYnJpbmctdXAgSSBtZW50aW9uZWQg
aW4gdGhlIGNvbW1pdCBtZXNzYWdlLiBUaGVyZSdzIG5vCj4gaW4tdHJlZSBya19pb21tdSB1c2Vy
LCBzaW5jZSB0aGUgaW4tdHJlZSBjb25zdW1lcnMgYWxsIGludmFsaWRhdGUgdGhyb3VnaAo+IC51
bm1hcCBhbmQgbm9uZSBvZiB0aGVtIGNhbGwgaW9tbXVfZmx1c2hfaW90bGJfYWxsKCkuCgphY2Nl
bC9yb2NrZXQgaXMgaW4gbWFpbmxpbmUsIHNvIEkgZ3Vlc3MgdGhlIGludGVyZXN0aW5nIHF1ZXN0
aW9uIGlzLCB3aHkKYXJlIHlvdSBleHBlY3RpbmcgeW91ciBjaGFuZ2VzIHRvIGJlIChzdGF5Pykg
b3V0IG9mIHRyZWU/CgpXaGVuIHlvdSBzaG93IHlvdXIgY2hhbmdlcyAtIGV2ZW4gYXMgYSBSRkMg
LSBvbiB0aGUgbGlzdHMgeW91IG1pZ2h0IGdldApoZWxwZnVsIGNvbW1lbnRzIC0gbGlrZSB0aGUg
b25lcyBoZXJlIGZvciB0aGUgaW9tbXUgY2hhbmdlLgpUaGF0IG1pZ2h0IGFsc28gcHJldmVudCB5
b3UgZnJvbSBnb2luZyB0b28gZmFyIGluIGEgc3Vib3B0aW1hbCBkaXJlY3Rpb24KYW5kIHRodXMg
Y291bGQgc2F2ZSB0aW1lLgoKQWRkaXRpb25hbGx5LCB5b3Ugd291bGQgc2hvdyB5b3UncmUgd29y
a2luZyBvbiB0aGF0LCBzbyB0aGF0IGNvdWxkCnByZXZlbnQgc29tZW9uZSBlbHNlIHN0YXJ0aW5n
IGEgZHVwbGljYXRlIG9mIHlvdXIgd29yayAtICBvciBhdCBsZWFzdApwb29sIHJlc291cmNlcy4K
ClRoZXJlIGFyZSBhIGJ1bmNoIG9mIHBlb3BsZSB3b3JraW5nIG9uIHRoZSBSSzM1NzYgZm9yIGRp
ZmZlcmVudCBwcm9qZWN0cwpzbyB0aGVyZSBpcyBhIHByZXR0eSBoaWdoIGNoYW5jZSBvZiBnZXR0
aW5nIHZhbHVhYmxlIGZlZWRiYWNrLgoobGlrZSB3aGF0IGhhcHBlbmVkIHdpdGggdGhpcyBwYXRj
aCA7LSkgKQoKCkhlaWtvCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
