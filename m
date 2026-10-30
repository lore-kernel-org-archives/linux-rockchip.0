Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF044606A320
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 19:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tumKWYsB;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=ZmiTEU4Q
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GpAGQZfY2oOpKtvIwDtak3dfI6Ut4YIqIqciYLTP08I=; b=tumKWYsB55F1KTYyxVjR7Xw45E
	TiXiYUxUlJCIq//rnHyVWZimZNYhGF9k+/T4Wm3rBw1w8VuCZn7nuCwSolIJTMy3Pc+QGmCfwv5zF
	H/3xj98IlLCJoFaQmHnO4GFsxUwDZMn9ffuIjUJE5mVuZWS1k/i4Nt54Z24XIgiW2/KiDMnte5gD4
	o8BOFqeySy1re44xEUcKyy+ML4vSvl8E+kGpdWEk35qKdrV+6PoyeauggN9PO9YA7+DfFCGqvJoDB
	H5KBt0Cuh3CwrtbGU9k/itAAxy3xv/w5qynOx3CdWY0QLGzQFtXRpEPlwuUTZceWyByeac7Qq9tIv
	db7ioKMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMsES-0000000CULB-2SHD;
	Fri, 30 Oct 2026 19:25:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMsEP-0000000CUKC-0eo5;
	Fri, 30 Oct 2026 19:25:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=9Gz7En1oK8OrbG/8Czlwpynj8nEeQahmBEOy+4rFJFg=; b=ZmiTEU4Q4TcxpYKXHIHlrQXt8W
	wdsj4IoKSFCB6MzSwA9c6xHYx8241QpdOroAmqLzwGF6RobBF2DvEtmC97cvW0/R4CT1zRnA1nOWE
	oQnBw3+eLfuLQGaM90cntLhLrY6rH75dmfDLULAXGU08j9jtgmKkyvDXRJhYNysxHWOniarnyT0II
	tD1jes14OFWXVqv64LB49hE/9Wm/bUDz2bIekNPZLtdjuSqUz69BHPjZqYbRr5fuoboJ8yyY82NMI
	ZsHHqBfeQzi/Y3E5TGBxNlBlnZl3VM7s4uPaw/QNZoanlhGbl6A5iwI1GR7ZnViwpWKjsZBfAD1iL
	JStRZN+g==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Diederik de Haas <diederik@cknow-tech.com>
Cc: Joachim Eastwood <joachim.eastwood@gmail.com>,
 Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>,
 Daniele Briguglio <hello@superkali.me>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Diederik de Haas <diederik@cknow-tech.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: Add FriendlyElec NanoPC-T6 Plus
Date: Fri, 30 Oct 2026 20:25:31 +0100
Message-ID: <22143920.0c2gjJ1VT2@phil>
In-Reply-To: <20260907122406.1862398-2-diederik@cknow-tech.com>
References: <20260907122406.1862398-1-diederik@cknow-tech.com>
 <20260907122406.1862398-2-diederik@cknow-tech.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_122541_197377_A8F5D11C 
X-CRM114-Status: GOOD (  13.33  )
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGksCgpBbSBNb250YWcsIDcuIFNlcHRlbWJlciAyMDI2LCAxNDoyMjo0MyBNaXR0ZWxldXJvcMOk
aXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIERpZWRlcmlrIGRlIEhhYXM6Cj4gVGhlIE5hbm9QQy1U
NiBQbHVzIGlzIHRoZSBsYXRlc3QgYWRkaXRpb24gdG8gdGhlIE5hbm9QQy1UNiBzZXJpZXMuCj4g
QWRkIGl0IHRvIHRoZSBOYW5vUEMtVDYgbGlzdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBEaWVkZXJp
ayBkZSBIYWFzIDxkaWVkZXJpa0Bja25vdy10ZWNoLmNvbT4KPiAtLS0KPiAgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIHwgMSArCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPiBpbmRleCA4MTc0NGZiZWU5OGEuLmFh
ODI4ZWU2MGQyMSAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvYXJtL3JvY2tjaGlwLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPiBAQCAtMzk4LDYgKzM5OCw3IEBAIHByb3BlcnRpZXM6
Cj4gICAgICAgICAgICAtIGVudW06Cj4gICAgICAgICAgICAgICAgLSBmcmllbmRseWFybSxuYW5v
cGMtdDYKPiAgICAgICAgICAgICAgICAtIGZyaWVuZGx5YXJtLG5hbm9wYy10Ni1sdHMKPiArICAg
ICAgICAgICAgICAtIGZyaWVuZGx5YXJtLG5hbm9wYy10Ni1wbHVzCj4gICAgICAgICAgICAtIGNv
bnN0OiByb2NrY2hpcCxyazM1ODgKCnNvbWVob3cgdGhpcyBzZWVtcyB0byBoYXZlIHNsaXBwZWQg
dGhyb3VnaCB0aGUgY3JhY2sgd3J0LiBhIGR0LW1haW50YWluZXIKQWNrIC4uLiBtYXliZSByZXNl
bmQgdGhlIHNlcmllcz8KCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
