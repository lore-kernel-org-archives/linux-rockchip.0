Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BB6606A320
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Nov 2026 16:09:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PCL+SWT3;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=vWMuBhEL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hceG6Va7JO+tluz6xqH6b3jYjMBr9JYP5HXbNpadk+0=; b=PCL+SWT332akC5A8Ixes8kslO3
	sGBV9CB8GP8eVBvumiC+k79r2X9vFFR36o4i9nThoJ2lrzOBYvpr2njm44zE1HqJeO93W1Vt+RhjC
	FMqCtg7s+xqpETZmFSrTvmSh3EzPVzx1d0OagfK36MTvWUnOnR4kgPCIj/hCKQdPGs2XOCHGzYpHp
	0nOZBS0mkMn1YY/dNG22sHHK0TPzZeiOdcP0FtXOZX/48CpNHEd+g8l2fWN8W9L+2ZMRu1c+BYaSM
	hZoTONaKqD849qvweDLB7sD0k27IRfzSZOHCpkVTHDT5lDuy8vOkAC6BvoCU4GnRqOxpB29UKmjNB
	67DfumBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUnen-0000000HT4o-0R2l;
	Sat, 21 Nov 2026 16:09:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUnek-0000000HT22-00xS;
	Sat, 21 Nov 2026 16:09:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=7BfZ4ezOsyJWlaZx8zGrRFH+Xob1HMqX/m78J/0L5dE=; b=vWMuBhELKZhkOE50k9naugms6x
	aBRzDyWiCU32WUfxiJ9CmkKxi7DPiXk2TpKQZ1ylTKhksqU2LE1aB0AP1uOW31p/5S1rP1WfPeDCc
	6lQedV8M2Gfrx2hcQJvXhzDLqBjJRMZH/2s9cdDfWagzp7G/3zK6M1AANXQPNtvcR54nIzvTmp2t2
	pMDEHSMc3MCXEXprx7KNgu1CXRENMIGtwqmaryI0beUU6HNGUou+mX10bNYSanKiTzSTZRBq1t7/X
	KC+rjqRr+TtrZu2iNircQNWLAR+j7dXqzFq90eeLaHxSR4lAqMO3bYCV9n3bc6D1V3zmtd3Iz8jFz
	neZ4o/5Q==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Linus Walleij <linusw@kernel.org>, Ye Zhang <ye.zhang@rock-chips.com>,
 Jonas Karlman <jonas@kwiboo.se>
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] pinctrl: rockchip: Fix pull configuration readback on RK3506
Date: Sat, 21 Nov 2026 17:09:29 +0100
Message-ID: <-Gre4owXTw2C51e--4u2UA@sntech.de>
In-Reply-To: <20261121155810.706866-1-jonas@kwiboo.se>
References: <20261121155810.706866-1-jonas@kwiboo.se>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_080938_074561_48C6E8EE 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gU2Ftc3RhZywgMjEuIE5vdmVtYmVyIDIwMjYsIDE2OjU4OjA5IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgSm9uYXMgS2FybG1hbjoKPiByb2NrY2hpcF9nZXRfcHVsbCgp
IGlzIG1pc3NpbmcgYSBSSzM1MDYgY2FzZSBhbmQgaW5zdGVhZCByZXR1cm5zIC1FSU5WQUwKPiBm
b3IgYWxsIHBpbnMuIEFzIGEgcmVzdWx0LCB0aGUgcGluY29uZi1waW5zIGRlYnVnZnMgZmlsZSBv
bWl0cyB0aGUgcHVsbAo+IGNvbmZpZ3VyYXRpb24gZm9yIGFsbCBwaW5zIG9uIFJLMzUwNjoKPiAK
PiAgIHBpbiAwIChncGlvMC0wKTogLi4uLCBwaW4gb3V0cHV0ICgxIGxldmVsKQo+ICAgcGluIDEg
KGdwaW8wLTEpOiAuLi4sIHBpbiBvdXRwdXQgKDEgbGV2ZWwpCj4gICBwaW4gMiAoZ3BpbzAtMik6
IC4uLiwgcGluIG91dHB1dCAoMSBsZXZlbCkKPiAgIHBpbiAzIChncGlvMC0zKTogLi4uLCBwaW4g
b3V0cHV0ICgwIGxldmVsKQo+IAo+IEFkZCBSSzM1MDYgdG8gdGhlIGNhc2UgdGhhdCBkZWNvZGVz
IHRoZSBwdWxsIGNvbmZpZ3VyYXRpb24gZnJvbSB0aGUKPiByZWdpc3RlciB2YWx1ZSB0byBmaXgg
cHVsbCBjb25maWd1cmF0aW9uIHJlYWRiYWNrIG9uIFJLMzUwNi4KPiAKPiBBZnRlciB0aGlzIHRo
ZSBwaW5jb25mLXBpbnMgZGVidWdmcyBmaWxlIGluY2x1ZGVzIHB1bGwgY29uZmlndXJhdGlvbjoK
PiAKPiAgIHBpbiAwIChncGlvMC0wKTogaW5wdXQgYmlhcyBwdWxsIHVwICgxIG9obXMpLCAuLi4s
IHBpbiBvdXRwdXQgKDEgbGV2ZWwpCj4gICBwaW4gMSAoZ3BpbzAtMSk6IGlucHV0IGJpYXMgcHVs
bCBkb3duICgxIG9obXMpLCAuLi4sIHBpbiBvdXRwdXQgKDEgbGV2ZWwpCj4gICBwaW4gMiAoZ3Bp
bzAtMik6IGlucHV0IGJpYXMgcHVsbCB1cCAoMSBvaG1zKSwgLi4uLCBwaW4gb3V0cHV0ICgxIGxl
dmVsKQo+ICAgcGluIDMgKGdwaW8wLTMpOiBpbnB1dCBiaWFzIHB1bGwgZG93biAoMSBvaG1zKSwg
Li4uLCBwaW4gb3V0cHV0ICgwIGxldmVsKQo+IAo+IEZpeGVzOiBkYmQyMzE3ZDdiOWYgKCJwaW5j
dHJsOiByb2NrY2hpcDogQWRkIHJrMzUwNiBwaW5jdHJsIHN1cHBvcnQiKQo+IFNpZ25lZC1vZmYt
Ynk6IEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4KCnJvY2tjaGlwX3NldF9wdWxsIGhh
cyB0aGF0IGNhc2Ugc3RhdGVubWVudCwgcm9ja2NoaXBfZ2V0X3B1bGwgaXMKbWlzc2luZyBpdC4K
ClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
