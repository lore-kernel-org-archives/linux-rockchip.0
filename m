Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A7F606A8A1
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 13:56:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=pSgyZ0Z5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=QoBpCjFS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=W8Z2DhJepxWXc6hvh28RSKdaZC/6xP0eO+M62Mna2X4=; b=pSgyZ0Z5WxoXu0WZoT6O86v6pG
	0Vg0wXGAIkFPitrBz+72zw2LLypFiPyNxD3RRHHSEval8eMGoqlwqghg1ZwQVuQl0DVzGodxsYn8K
	5JN+3TailGvwKdCad+XDdKvmrGrd25byH0FG0kge1GLwlo7pSnlcMBUHhhrt76vKl8KvbomwnctcC
	aqjenYAMWWUHpExQe8zeKvZZ92LKjbVLEZs7R4XG0eaHDuH7lOOok3iki/ZqjKlowtkJCpO3RticH
	hqIJzQPBDWu7lhmhYAnFvi3Dek49TOW9R2OQupOYX66IfbmeGd8EBJsP1JAqmPXzRYWcgBwSTbtj7
	dbjNECLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRrll-0000000D3Oj-32Xo;
	Fri, 13 Nov 2026 13:56:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRrld-0000000D3Mt-2E5B;
	Fri, 13 Nov 2026 13:56:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=HWRK07tgReotE1rio8vCvygSDsW8NPJiLK9qpH0uLVI=; b=QoBpCjFSa2OWprOAFfkHYM7cjM
	Cb0dffrp4VgwLL2L7XeIQaLiSjV/PceuZeACZgIMxSVC0jahSBalv7xV9yBSD7iUJDG5HpsxQH3+s
	NXbu5jadPcowe/g5C3NKVq8yXxkJhfk0AAyEuwSo6fQUF8bu3G5J34ivcwqj9VXdMdgF62qzT3mC2
	uNLCsdX9plzpRiNDZx7TEOTxIntaMdtLQxPaMzzmuKYaKj80sehFQ16vMUQ4FM/810xjBrzJV+Lfk
	Cy3NCu+FoaIzvaKe0CHrnK4p2NdBViJFrCrwBOCky3Sk/dB6blp07fso9AEtr3y+SkUUvqm6fGb4z
	vpD9Q0gA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: broonie@kernel.org
Cc: linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, quentin.schulz@cherry.de,
 Lee Jones <lee@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v2 2/6] spi: Export spi_set_cs() function
Date: Fri, 13 Nov 2026 14:56:33 +0100
Message-ID: <9kep3BO9ROGEepQWTWqwnA@sntech.de>
In-Reply-To: <20261113135017.1047959-3-heiko@sntech.de>
References: <20261113135017.1047959-1-heiko@sntech.de>
 <20261113135017.1047959-3-heiko@sntech.de>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_055637_588199_3318BE7B 
X-CRM114-Status: GOOD (  11.00  )
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

QW0gRnJlaXRhZywgMTMuIE5vdmVtYmVyIDIwMjYsIDE0OjUwOjEzIE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgSGVpa28gU3R1ZWJuZXI6Cj4gRnJvbTogSGVpa28gU3R1ZWJu
ZXIgPGhlaWtvLnN0dWVibmVyQGNoZXJyeS5kZT4KPiAKPiBXaGlsZSBzcGlfc2V0X2NzIGlzIGN1
cnJlbnRseSBvbmx5IHVzZWQgd2hlbiB0aGUgU1BJIGZyYW1ld29yayBtYW5hZ2VzCj4gdGhlIGNv
cmUgdHJhbnNmZXIgZnVuY3Rpb24sIGl0IGNvbnRhaW5zIGEgbG90IG9mIGZ1bmN0aW9uYWxpdHkg
dGhhdAo+IGNhbiBiZSB1c2VkIGZvciB0aGUgdXBjb21pbmcgYXRvbWljIHRyYW5zZmVycywgd2hl
cmUgYSBkcml2ZXIgaW1wbGVtZW50aW5nCj4gdGhhdCBhdG9taWMgdHJhbnNmZXIgY291bGQgcHJv
Zml0IGZyb20gbm90IGhhdmluZyB0byBkdXBsaWNhdGUgdGhlCj4gY2hpcC1zZWxlY3QgZnVuY3Rp
b25hbGl0eS4KPiAKPiBUaGUgb25seSBzbGVlcGluZyBwYXJ0IHdhcyB0aGUgc3BpX2RlbGF5X2V4
ZWMgZnVuY3Rpb24gZG9pbmcgdGhlCj4gY2hpcC1zZWxlY3QgZGVsYXlzLCB3aGljaCBjYW4gbm93
IGFsc28gcnVuIGluIGF0b21pYyBjb250ZXh0cy4KPiAKPiBTbyBleHBvcnQgdGhlIGZ1bmN0aW9u
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrby5zdHVlYm5lckBjaGVy
cnkuZGU+Cj4gLS0tCgpEYW5nLCBvdmVybG9va2VkIHNwaV90b2dnbGVfY3NncGlvZCgpIGNhbGxl
ZCBpbiBzcGlfc2V0X2NzKCksIHdoaWNoIGRvZXMKZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKCku
CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
