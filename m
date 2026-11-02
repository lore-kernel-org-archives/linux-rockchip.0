Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C779D606A326
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 14:02:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=BEldMSOy;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=QFYBVzxR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bzU5PCr8O53J/rr16/bLERCZo8/KrqGJxpd8SecsfuQ=; b=BEldMSOyahfUlTUBZM0OZ62i9v
	Q6nP2e5TEjlllIr1CwjN/daU9+eXz5KLZHiihjw52ShsU/sJ646yF6gHcasPoBr2Zr8pcoKSIFsjN
	n9tyeeYc3rX6aUvVBcyey7vFg0fNNJ70KT+RbW9nQ0GNUhXBSV+ojdijDVNajpss+HeTYyvI5/jvE
	BsM8VAXBqjgX+kBxd2exv8IPsZLxKw6IKqvy1ipHK+vSb9JrkqWcBvILm+RzWlrZ1uHXCKTCU0JVW
	l0qgUs0sTKKx7sFaoz8hfYQhPcRGjsLTQCwN9oe9VtZbcpRHRfX+/t+My2dnrzNs3A8wjCx4JlEPw
	1K970OAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNsc2-0000000Ghht-42kU;
	Mon, 02 Nov 2026 14:02:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNsbz-0000000Ghgk-3oV5;
	Mon, 02 Nov 2026 14:02:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=L38WitxfSqxFzIlzs1i93G62+S2UwcYyS3oEsrBG3S8=; b=QFYBVzxRz9TqhAsSgdZjkgLffM
	xwiWRe8MKZApYOUWjyQBybEuU0nGiO1sEduE0dumhcyaJT9MUgPk1tIv/klO+J2APdop+ozo62rF2
	IvuqSmZi8NMzPaiM7rmulpZpiiy2ygSDZjPs2bEpYR2zDJHIqSRJiP9Da3z3h56iULOUO5HySLcnT
	EOGBKglillPZ7B7jAAHjhBFwnd50YFKd9Hbb9ADpDuABBHQ1nfd8He42qSMSltzh3O/o51+YRhFHj
	yelLiTfbP8363g7j7/Mx+01/QReNoakEL6KOE4Jzsv3Oc5x++61QcR45C8t3FWLDg1ApQX1nC0Kl3
	OMLiRYqA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Yaozhong Li <yaozhonguwl@gmail.com>
Cc: Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Yaozhong Li <yaozhonguwl@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: enable SD UHS-I on Firefly-RK3399
Date: Mon, 02 Nov 2026 15:02:08 +0100
Message-ID: <11288903.zapYfy813O@diego>
In-Reply-To: <20261101154407.3949-1-yaozhonguwl@gmail.com>
References: <20260922055011.14972-1-yaozhonguwl@gmail.com>
 <20261101154407.3949-1-yaozhonguwl@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_060211_968675_A299EDAF 
X-CRM114-Status: GOOD (  13.01  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGksCgpBbSBTb25udGFnLCAxLiBOb3ZlbWJlciAyMDI2LCAxNjo0NDowNyBNaXR0ZWxldXJvcMOk
aXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIFlhb3pob25nIExpOgo+IEhpIEhlaWtvLAo+IAo+IEdl
bnRsZSBwaW5nIG9uIHRoaXMgb25lLiBJdCBzdGlsbCBhcHBsaWVzIGNsZWFubHkgdG8gY3VycmVu
dCBtYWlubGluZS4KPiBQbGVhc2UgbGV0IG1lIGtub3cgaWYgeW91IHdvdWxkIGxpa2UgYW55dGhp
bmcgY2hhbmdlZC4KCnRvIGNoYW5nZSB3b3VsZCBiZSB0aGUgdGhlIGNvbW1pdCBtZXNzYWdlLCBp
dCBpcyB3YXkgdG9vIHZlcmJvc2UgYW5kCnF1aXRlIGNvbmZ1c2luZy4KCkFsc28gYXMgY2FuIGJl
IHNlZW4gaW4gd2lmaS1tb2R1bGUgZGF0YXNoZWV0cywgdGhleSBzZWVtIHRvIGNhbGwgdGhlaXIK
bWFpbiBzdXBwbHkgIiBWQkFUIC0gTWFpbiBwb3dlciB2b2x0YWdlIHNvdXJjZSBpbnB1dCIsIHdo
aWNoIGlzCnZjYzN2M19zeXMgb24gdGhlIGZpcmVmbHksIHNvIHRoZSBzZGlvIGJsb2NrIHNob3Vs
ZCBnZXQgYW4gYXBwcm9wcmlhdGUKdm1tYy1zdXBwbHkgdG9vLgoKVGhlIGdpc3QgZm9yIGEgY29t
bWl0IG1lc3NhZ2UgYXMgSSBjdXJyZW50bHkgZ2V0IGl0IHdvdWxkIGJlIGxpa2U6Cgo9PT09PT0K
Q29udHJhcnkgdG8gdGhlIG5hbWluZywgdmNjLXNkaW8gaXMgYWN0dWFsbHkgdGhlIGlvLXN1cHBs
eSByb3V0ZWQgdG8gdGhlCnNkbW1jIGNvbnRyb2xsZXIgLSBhcyBjYW4gYmUgc2VlbiBpbiB0aGUg
c2NoZW1hdGljcy4KClRoZSBzY2hlbWF0aWNzIGFsc28gc2hvdyB0aGUgd2lmaSBibG9jaydzIFZC
QVQgbWFpbiBpbnB1dCBzb3VyY2UgY29taW5nCmZyb20gVkNDM1YzX1NZUyBhbmQgaXQncyBpby1z
dXBwbHkgaXMgdGhlIGFscmVhZHkgY29ycmVjdCB2Y2NfMXY4X3MzCmFsdGhvdWdoIHRoZSBkYXRl
c2hlZXQgaXMgbWl4aW5nIG5hbWluZ3MgdXAgYSBiaXQuCgpBZGFwdCB0aGUgc3VwcGxpZXMgZm9y
IHNkbW1jMCBhbmQgc2RpbyBhY2NvcmRpbmdseSBhbmQgZW5hYmxlIHRoZSBzZHIxMDQKVUhTIG1v
ZGUgdGhhdCBub3cgYmVjb21lcyBwb3NzaWJsZQoKV2l0aCBVSFMgZW5hYmxlZCBzZXF1ZW50aWFs
IHJlYWQgZ29lcyBmcm9tIDIyIE1CL3MgdG8gNjAgTUIvcyB3aXRoIGEKNjRHQiBTRFhDIGNhcmQu
IFdpRmkgcmVtYWluZWQgYXNzb2NpYXRlZCBhdCA1IEdIeiwgLTUwIGRCbSwgd2l0aCBubwprZXJu
ZWwgZXJyb3JzLgo9PT09PT0KCmluY2x1ZGVzIGFkZGluZyB0aGUgY29ycmVjdCBzZGlvIHZtbWMt
c3VwcGx5LgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
