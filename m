Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4432606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2026 21:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JLp2Thk/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=n5LHFLHQ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+p5lUZCHsJ1+5/RXyMqG7CcxmJ9HiOHOKUxP56RPMXY=; b=JLp2Thk/rfu494
	MudzESG18T0t+xL7TpJg8GfIgCsw19k/QwWDlK1NjLz+/DgN5DkpvO3594fuW7eSoyvEw0luQ9R/W
	fttSxTq0CQ3X5B81STOGu/b8/nvRhDS3sdgVHvfkq4jCzNyyz3jvu+5YHT1WYC/d26Pq0TrGllvry
	4sZjhqvpHl86C6A3fSdZlTM7UqWErw4tb3oCcD7GBK4cH28jSozsFTd206fr7urzEPUZ6rTvaD5Ew
	wKCSIpsXrwmo0Xk7Qjlc3QczaFXqArzJW7FpGj9ClF+CVlh9LN15Q4orbQfu1m6L49X47a9T4atFq
	7DVxXXNt8JHmGwMrtdRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIuig-00000008Man-2IfU;
	Mon, 19 Oct 2026 21:16:34 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIuif-00000008Mag-2doA
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Oct 2026 21:16:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7513260A66;
	Mon, 19 Oct 2026 21:16:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 799021F000CA;
	Mon, 19 Oct 2026 21:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792444592;
	bh=jgtUknoDH3FZsXM4n8QrE86+N8BKczlf2RGSNuULytA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=n5LHFLHQOLzDyBNyRcOIBkTrBCkHppS9/ygf9c0ijuND+vrQqFTEwq0cHaOD1Zotu
	 EmwTfQ5W6OcxBmkKxS+/X0561qrELHUnqAxsLFWiLYYkagHT3hqTEbolKcaoVUW26s
	 VSJuxMkqZ362B6+2iQkvGI8uNZu5oPLfr3+D4vHfM23cqJFqoN6uxUwgrcvGGIVZfe
	 SHiVn8fnmlO8vbFIvktEKeSBvtM0qWLYZ/r5+OiiTDQxq5/Ji/D2O/SU+XKuXUo0cv
	 hlBseneFG7tRO6CiP/qlhvj5yicve0N7puxDqOUCyG2b44XHbr+l6sKAvVrGR21YGC
	 TcgcOS84YYQ0Q==
From: Thomas Gleixner <tglx@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: shawn.lin@rock-chips.com, Bjorn Helgaas <bhelgaas@google.com>,
 linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org, Manivannan
 Sadhasivam <mani@kernel.org>
Subject: Re: [PATCH] PCI: dw-rockchip: Enable INTx affinity support
In-Reply-To: <d6becae5-df39-422b-8d2c-f15efb4ef4a5@rock-chips.com>
References: <1790664898-207928-1-git-send-email-shawn.lin@rock-chips.com>
 <atRLsp1qUA_sGS-0@debian> <87y0bubws7.ffs@fw13>
 <d6becae5-df39-422b-8d2c-f15efb4ef4a5@rock-chips.com>
Date: Mon, 19 Oct 2026 23:16:29 +0200
Message-ID: <87se21bdci.ffs@fw13>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
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
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gTW9uLCBPY3QgMTkgMjAyNiBhdCAwODoyNSwgU2hhd24gTGluIHdyb3RlOgo+IOWcqCAyMDI2
LzEwLzE5IOaYn+acn+S4gCA0OjA0LCBUaG9tYXMgR2xlaXhuZXIg5YaZ6YGTOgo+PiBPbiBTdW4s
IE9jdCAxOCAyMDI2IGF0IDEwOjA1LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4+PiBP
biBUdWUsIFNlcCAyOSwgMjAyNiBhdCAwMjo1NDo1OFBNICswODAwLCBTaGF3biBMaW4gd3JvdGU6
Cj4+Pj4gTGV2ZXJhZ2UgdGhlIGludGVycnVwdCByZWRpcmVjdGlvbiBpbmZyYXN0cnVjdHVyZSB0
byBlbmFibGUgQ1BVCj4+Pj4gYWZmaW5pdHkgc3VwcG9ydCBmb3IgdGhlIGxlZ2FjeSBJTlR4IGlu
dGVycnVwdHMuIFRoZSBJTlR4IHZpcnFzIGFyZQo+Pj4+IGRlbXVsdGlwbGV4ZWQgYnkgdGhlIGNo
YWluZWQgaGFuZGxlciBvZiB0aGUgImxlZ2FjeSIgaW50ZXJydXB0LCB3aG9zZQo+Pj4+IGFmZmlu
aXR5IGNhbm5vdCBiZSBjaGFuZ2VkLCBzbyBhZmZpbml0eSBjb250cm9sIGZvciB0aGUgSU5UeCB2
aXJxcyBpcwo+Pj4+IGFjaGlldmVkIGJ5IHJlZGlyZWN0aW5nIHRoZSBoYW5kbGVyIHRvIHJ1biBp
biBJUlEgd29yayBjb250ZXh0IG9uIHRoZQo+Pj4+IHRhcmdldCBDUFUuCj4+Pj4KPj4+PiBNYXNr
IHRoZSBJTlR4IHNvdXJjZSBpbiAuaXJxX3ByZV9yZWRpcmVjdCgpIGJlZm9yZSB0aGUgaGFuZGxl
ciBpcwo+Pj4+IHJlZGlyZWN0ZWQ6IHRoZSBsZWdhY3kgaW50ZXJydXB0IGlzIGxldmVsIHRyaWdn
ZXJlZCwgc28gYW4gdW5tYXNrZWQKPj4+PiBsaW5lIHdvdWxkIGtlZXAgcmUtZmlyaW5nIHRoZSBj
aGFpbmVkIGludGVycnVwdCB1bnRpbCB0aGUgcmVkaXJlY3RlZAo+Pj4+IGhhbmRsZXIgcnVucy4K
Pj4+Pgo+Pj4+IFNhbWUgYXBwcm9hY2ggYXMgdGhlIERlc2lnbldhcmUgY29yZSwgY29tbWl0IGVh
ZjI5MGM0MDRmN2MzOWYyICgiUENJOgo+Pj4+IGR3YzogRW5hYmxlIE1TSSBhZmZpbml0eSBzdXBw
b3J0IikuCj4+Pj4KPj4+PiBUZXN0IHdhcyBkb25lIG9uIFJLMzU4OCBFVkIxIGJvYXJkIHdpdGgg
YW4gTlZNZSB3aXRoIHBjaT1ub21zaQo+Pj4+IHBhcmFtZXRlci4gVGhlIC9wcm9jL2ludGVycnVw
dHMgY29sdW1ucyBhcmUgdHJpbW1lZCBmb3IgYnJldml0eS4KPj4+Pgo+Pj4+ICAgICMgY2F0IC9w
cm9jL2ludGVycnVwdHMgfCBncmVwIElOVHgKPj4+PiAgICA1MTogIDEzNyAwIDAgMCAwIDAgMCAw
IElOVHggMCBFZGdlIFBDSWUgUE1FLCBudm1lMHEwLCBudm1lMHExCj4+Pj4gICAgIyBlY2hvIDEw
ID4gL3Byb2MvaXJxLzUxL3NtcF9hZmZpbml0eQo+Pj4+ICAgICMgZGQgaWY9L2Rldi9udm1lMG4x
cDEgb2Y9L2Rldi9udWxsIGJzPTFNIGNvdW50PTIwMAo+Pj4+ICAgIDIwMCswIHJlY29yZHMgaW4K
Pj4+PiAgICAyMDArMCByZWNvcmRzIG91dAo+Pj4+ICAgIDIwOTcxNTIwMCBieXRlcyAoMjEwIE1C
LCAyMDAgTWlCKSBjb3BpZWQsIDAuMTgyMDIxIHMsIDEuMiBHQi9zCj4+Pj4gICAgIyBjYXQgL3By
b2MvaW50ZXJydXB0cyB8IGdyZXAgSU5UeAo+Pj4+ICAgIDUxOiAgMTM3IDAgMCAwIDk0NiAwIDAg
MCBJTlR4IDAgRWRnZSBQQ0llIFBNRSwgbnZtZTBxMCwgbnZtZTBxMQo+Pj4+Cj4+Pj4gU2lnbmVk
LW9mZi1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4+Pgo+Pj4gSSdk
IGxpa2UgdG8gZ2V0IGFuIEFjayBmcm9tIFRob21hcyBmb3IgdGhpcyBwYXRjaCBzaW5jZSBJJ20g
bm90IGFuIGlycWNoaXAKPj4+IGV4cGVydCB0byBkZWNpcGhlciB3aGV0aGVyIHRoaXMgcGF0Y2gg
aXMgdmFsaWQgb3Igbm90LgoKWWVzLCB0aGUgcGF0Y2ggaXMgdmFsaWQgYW5kIHVzZXMgdGhlIHJl
ZGlyZWN0aW9uIG1lY2hhbmlzbSBjb3JyZWN0bHkuCgpBY2tlZC1ieTogVGhvbWFzIEdsZWl4bmVy
IDx0Z2x4QGtlcm5lbC5vcmc+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
