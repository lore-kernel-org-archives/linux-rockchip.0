Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D46B9C27C53
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jun 2024 13:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MKAwIV6n0yGkUbxsejradpzAmnmHyRchp1XCXWM0GwQ=; b=1fKzfU5lqaLx92
	UstOfoYdZ/Q+dLSpmSkuAYbsuRGk/SKTvaepgCLeZ9+2Ts7ZcIJ/7QegAJoJ6Q+afp5LBbmqOcu5v
	KbCM27h918FN+7Kqz5uDKKiAl7rdSUe5ZH/sbG021hUxvvh1lxQidGvWMTKCcacTFt2mxxmuaM4ap
	JOYkAUajmZXfO2S9Kkyx9Qu6kOe2ZTp47fZqKBkjjiEa3yXQqjKV/veMeyMNo61cgR9Qoc3NJweg7
	zA2DukX41E7RYOiOHHvEPaYjL1LfiKalHPEkIoD+qR8WAi3ZzlzQeqlpx+r+8hljh9Qp+PCF7JV24
	BHjqgMCD/r8nbvSf2OiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sL0y9-0000000CAg3-1LMb;
	Sat, 22 Jun 2024 13:39:53 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sL0y6-0000000CAf6-1M66
	for linux-rockchip@lists.infradead.org;
	Sat, 22 Jun 2024 13:39:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 478A2CE069D;
	Sat, 22 Jun 2024 13:39:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 864CAC3277B;
	Sat, 22 Jun 2024 13:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719063587;
	bh=XoDceAdXs9z6NeEt0iuTL63LGCFyCmlS+FZp9Eo478A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YRyrbmEZwPVx6Kq3OX7UakomyMBYMbHvJTJWNzDVbmFr345rfZhNmE7m4YjIa8tDK
	 xC9peBlGek6Jcrn1zrUk0ZGyeLcLQLLn/qClDZu01loSvm75xV+jyr6m/OL9mJY/51
	 1wxxr+qwdWiTwydzXO4rV8hgvgqea39BlGxSmUDlQVcu3CIf4VWPveUPwdm0jNlHU8
	 c4yrHGfrfcbWhWY+aXlLx+qILyqelFr4X1aSa0IygbEE8FPjk1+PdpDp/B8sC6+xHw
	 yd4D4xccgu3mC+4iXTc2Ak/X8Kh/rI3ANFjiq3RmiCS+Bw2ZQK+tmRa3solRgU435U
	 7SfU2RPtQnP2A==
Date: Sat, 22 Jun 2024 15:39:40 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 00/13] PCI: dw-rockchip: Add endpoint mode support
Message-ID: <ZnbUHI5GEMCmaK2V@ryzen.lan>
References: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
 <Zm_tGknJe5Ttj9mC@ryzen.lan>
 <20240621193937.GB3008482@rocinante>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240621193937.GB3008482@rocinante>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_063950_754946_9197363D 
X-CRM114-Status: GOOD (  14.25  )
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

T24gU2F0LCBKdW4gMjIsIDIwMjQgYXQgMDQ6Mzk6MzdBTSArMDkwMCwgS3J6eXN6dG9mIFdpbGN6
ecWEc2tpIHdyb3RlOgo+IEhlbGxvLAo+Cj4gWy4uLl0KPiA+IElmIHRoZXJlIGlzIGFueXRoaW5n
IG1vcmUgSSBjYW4gZG8gdG8gZ2V0IHRoaXMgcGlja2VkIHVwLCBwbGVhc2UgdGVsbCBtZS4KPgo+
IExvb2tzIGdvb2QhIEFzIHN1Y2guLi4KPgo+IEFwcGxpZWQgdG8gY29udHJvbGxlci9yb2NrY2hp
cCwgdGhhbmsgeW91IQo+Cj4gWzAxLzA0XSBQQ0k6IGR3LXJvY2tjaGlwOiBGaXggd2VpcmQgaW5k
ZW50YXRpb24KPiAgICAgICAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcGNpL3BjaS9jL2U3ZTg4
NzIxOTFhZgo+Cj4gWzAyLzA0XSBQQ0k6IGR3LXJvY2tjaGlwOiBBZGQgcm9ja2NoaXBfcGNpZV9n
ZXRfbHRzc20oKSBoZWxwZXIKPiAgICAgICAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcGNpL3Bj
aS9jL2NiYjJkNGFlM2ZkYwo+Cj4gWzAzLzA0XSBQQ0k6IGR3LXJvY2tjaGlwOiBBZGQgZW5kcG9p
bnQgbW9kZSBzdXBwb3J0Cj4gICAgICAgICBodHRwczovL2dpdC5rZXJuZWwub3JnL3BjaS9wY2kv
Yy82N2ZlNDQ5YmNkODUKPgo+IFswNC8wNF0gUENJOiBkdy1yb2NrY2hpcDogUmVmYWN0b3IgdGhl
IGRyaXZlciB0byBwcmVwYXJlIGZvciBFUCBtb2RlCj4gICAgICAgICBodHRwczovL2dpdC5rZXJu
ZWwub3JnL3BjaS9wY2kvYy9lY2RjOThhM2E5MTIKCktyenlzenRvZiwKCnVuZm9ydHVuYXRlbHks
IHRoZSBjb250cm9sbGVyL3JvY2tjaGlwIGJyYW5jaCBjdXJyZW50bHkgZG9lc24ndCBidWlsZDoK
CmRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYzogSW4gZnVuY3Rp
b24g4oCYcm9ja2NoaXBfcGNpZV9lcF9zeXNfaXJxX3RocmVhZOKAmToKZHJpdmVycy9wY2kvY29u
dHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jOjQwNzoxNzogZXJyb3I6IGltcGxpY2l0IGRl
Y2xhcmF0aW9uIG9mIGZ1bmN0aW9uIOKAmGR3X3BjaWVfZXBfbGlua2Rvd27igJk7CglkaWQgeW91
IG1lYW4g4oCYZHdfcGNpZV9lcF9saW5rdXDigJk/IFstV2ltcGxpY2l0LWZ1bmN0aW9uLWRlY2xh
cmF0aW9uXQogIDQwNyB8ICAgICAgICAgICAgICAgICBkd19wY2llX2VwX2xpbmtkb3duKCZwY2kt
PmVwKTsKICAgICAgfCAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fgogICAgICB8
ICAgICAgICAgICAgICAgICBkd19wY2llX2VwX2xpbmt1cAoKCkNvdWxkIHlvdSBwb3NzaWJseSBp
bmNsdWRlIHRoZSBjb21taXQ6CjNkMmU0MjUyNjNlMiAoIlBDSTogZHdjOiBlcDogQWRkIGEgZ2Vu
ZXJpYyBkd19wY2llX2VwX2xpbmtkb3duKCkgQVBJIHRvIGhhbmRsZSBMaW5rIERvd24gZXZlbnQi
KQpmcm9tIHRoZSBjb250cm9sbGVyL2R3YyBicmFuY2ggaW4gdGhlIGNvbnRyb2xsZXIvcm9ja2No
aXAgYXMgd2VsbCwKb3IgcmViYXNlIHRoZSBjb250cm9sbGVyL3JvY2tjaGlwIGJyYW5jaCBvbiB0
b3Agb2YgdGhlIGNvbnRyb2xsZXIvZHdjIGJyYW5jaCwKb3IgbWVyZ2UgdGhlIGNvbnRyb2xsZXIv
ZHdjIGJyYW5jaCB0byB0aGUgY29udHJvbGxlci9yb2NrY2hpcCBicmFuY2g/CgoKCkFkZGl0aW9u
YWxseSwgc2luY2UgeW91IHBpY2tlZCB1cCBNYW5pJ3Mgc2VyaWVzIHdoaWNoIHJlbW92ZXMKZHdf
cGNpZV9lcF9pbml0X25vdGlmeSgpIG9uIHRoZSBjb250cm9sbGVyL2R3YyBicmFuY2g6CjllYmEy
ZjcwMzYyZiAoIlBDSTogZHdjOiBlcDogUmVtb3ZlIGR3X3BjaWVfZXBfaW5pdF9ub3RpZnkoKSB3
cmFwcGVyIikKCllvdSB3aWxsIG5lZWQgdG8gcGljayB1cCB0aGlzIHBhdGNoIGFzIHdlbGw6Cmh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBjaS8yMDI0MDYyMjEzMjAyNC4yOTI3Nzk5LTIt
Y2Fzc2VsQGtlcm5lbC5vcmcvVC8jdQpPdGhlcndpc2UgdGhlcmUgd2lsbCBiZSBhIGJ1aWxkIGVy
cm9yIHdoZW4gbWVyZ2luZyB0aGUgY29udHJvbGxlci9kd2MKYW5kIHRoZSBjb250cm9sbGVyL3Jv
Y2tjaGlwIGJyYW5jaCB0byBmb3ItbmV4dC4KVGhlIHBhdGNoIHRoYXQgSSBzZW50IG91dCBjYW4g
YmUgcGlja2VkIHVwIHRvIHRoZSBjb250cm9sbGVyL3JvY2tjaGlwIHJpZ2h0Cm5vdyAoc2luY2Ug
dGhlIEFQSSB0aGF0IE1hbmkgaXMgc3dpdGNoaW5nIHRvIGFscmVhZHkgZXhpc3RzIGluIExpbnVz
J3MgdHJlZSkuCgoKCk1heSBJIGFzayB3aHkgYWxsIHRoZSBicmFuY2hlcyBmb3IgdGhlIGRpZmZl
cmVudCBEV0MgZ2x1ZSBkcml2ZXJzIGFyZSBub3QKYmFzZWQgb24gdGhlIGNvbnRyb2xsZXIvZHdj
IGJyYW5jaD8KVGhleSBhcmUgb2J2aW91c2x5IGdvaW5nIHRvIGJlIHRpZ2h0bHkgcmVsYXRlZC4K
CgpLaW5kIHJlZ2FyZHMsCk5pa2xhcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
