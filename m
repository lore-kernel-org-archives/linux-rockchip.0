Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B305A60A3819
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 12:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TmE19aO9;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=hAvz/X7+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKTnACdGs6cP0Cxj0ZVdQau1Op7RKRoBbDqL/YQ58k0=; b=TmE19aO9bNuuBQ
	mT+unx1QKmC9mBitjaU3ix4XC+I/lo8EX8M4z4rV4ZOM+IxYtltzsF7SmVgYk/zwyuN3hHKjw9Dac
	gSAHhvlmnkHxvsLELpVLUGsMyEXylOy5XmhDP7m28dlyttZlA8eCWnLIl9ayxd3/XTxfb0Zs9TqMC
	qOmnzWxO3ebT0gkNorc+gQpOLTV51zDcnZ8nxmNFBdT5KjQ7iW324/C/tXKGJTwTIJBmZ5fCsp25I
	CNFwFTwSRkXXXC41xAJABh715mtRnPn/1FH5A9OqhyDLKV3fZfnPxjAZkPPBEdoP1ggkz//Rei1kt
	Q7TIwalA43waf53v9AiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJVXa-0000000BoQt-49Ug;
	Wed, 21 Oct 2026 12:35:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJVXX-0000000BoPX-2p6n;
	Wed, 21 Oct 2026 12:35:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=mZhXxF+en7TSzDNChj0YyY8mvJcnCccOQkxv7KHn/SI=; b=hAvz/X7+dgdTH0JGQIY2rAmVZB
	gSiLmsVxT+kWSrg9UvJuOAYq6iCqcD+6hzbNfCNbjJYehUS8unyuyYEGUz0ax6SO4NAJxZjrlOw1G
	bbyI1h0ptkSgxv6S5xgGdw3xkfDYVWF+n+Ey3FkTINp3NRdZQOVvHMg6Fmlrc3sKWZsBpZNRE6ZoZ
	cfCxQhfzhaTyO2wCZv2CHSMRcXd8pmK9IQXrFtHeHKNLQtO8xW7MFQ6SDv7zcjKemgnnrOaSalio5
	HkV00/uApwM48sJ0RLT9ECGvqia2ieqtb5/t4BxmwBoknahhOulb7bQagFqim2rA2eny16JFi9uKv
	q1H42PgA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Diederik de Haas <diederik@cknow-tech.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Diederik de Haas <diederik@cknow-tech.com>
Subject: Re: [PATCH] phy: rockchip: inno-usb2: Remove redundant dev_err()
Date: Wed, 21 Oct 2026 14:35:19 +0200
Message-ID: <6983266.4vTCxPXJkl@diego>
In-Reply-To: <20261021102155.609575-1-diederik@cknow-tech.com>
References: <20261021102155.609575-1-diederik@cknow-tech.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_053531_755754_51CAA795 
X-CRM114-Status: UNSURE (   6.30  )
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
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gTWl0dHdvY2gsIDIxLiBPa3RvYmVyIDIwMjYsIDEyOjIxOjIwIE1pdHRlbGV1cm9ww6Rpc2No
ZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRGllZGVyaWsgZGUgSGFhczoKPiBUaGUgZGV2bV9yZXF1ZXN0
X3RocmVhZGVkX2lycSgpIGZ1bmN0aW9uIGFscmVhZHkgYXV0b21hdGljYWxseSBsb2dzCj4gZGV0
YWlsZWQgZXJyb3IgbWVzc2FnZXMgb24gZmFpbHVyZSBzaW5jZSBjb21taXQKPiA1NWI0OGUyM2Y1
YzQgKCJnZW5pcnEvZGV2cmVzOiBBZGQgZXJyb3IgaGFuZGxpbmcgaW4gZGV2bV9yZXF1ZXN0Xypf
aXJxKCkiKQo+IFNvIHJlbW92ZSB0aGUgbm93LXJlZHVuZGFudCBkcml2ZXItc3BlY2lmaWMgZGV2
X2VycigpIGNhbGxzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IERpZWRlcmlrIGRlIEhhYXMgPGRpZWRl
cmlrQGNrbm93LXRlY2guY29tPgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+CgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
