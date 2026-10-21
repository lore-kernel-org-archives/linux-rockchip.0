Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DAA7606B4D1
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 12:35:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=y7HhMrUd;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=uhPCu5kB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RTYu71Gi1ZlB/DpWcs1yILmy/KssX/dd3GukXjAYOek=; b=y7HhMrUd0rCbOF
	Cjq2aDJWyPQN0G0TYPrm8i4MWwbMXpyNRoxUYDzNPNp1D1hsCkApsfCCsUBof8z62Nz2zMDx4RRgn
	7+vUVXmi+MMS5wzV/ghhTbliScmi6YX6aHfiHzW9EthoymEi7YqYgs/RmlOeUE0MclEYKjrwAlWqv
	56xbujQ7UjXWY9rVBJ8xEuxXqy+aWmT/9uWds0sKBePCel9j/iRuIAUdJMa0uOvfddr54UnPXe8v6
	K/0gBjRg5JqYFI85tfA+9Vdixc4pTEJh0zwG4Lub9YoSekLz9DLWnqDSeSv5AxLQxniGxjKxZd5u3
	GTvi0fQLcvsEkWr0QENA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJVXl-0000000BoV8-16Q6;
	Wed, 21 Oct 2026 12:35:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJVXg-0000000BoSZ-3nhy;
	Wed, 21 Oct 2026 12:35:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=+c9+shoBVGKMTVRiYFf5APeJCORN4Sf79qlNAFX1wgg=; b=uhPCu5kBqD3gwHLmGX+i3yZ8D+
	RqD4k7y1uAlgvVkz+zgxZb1KFh6bofsoDYvnRySAHrBApQMB0r4g9M8amF+ZFJznEVL6WISsDawON
	brLaQ/BwqcOVG9tOK/xBEziZPyku17B+bnSQMe5eQXm+WxaFtD77WgRZNdN/ecHx3zWoqeFMHvdUK
	H7GDGR7BkGsqOGW7V0mUx9JeAsQ6T9hS9RkVeN3RSNRwaW/ODNL9YXcry+rtmIR5CRwn/Otv8LFJ8
	J/9cWyHG8IjCt7gYh/8Ky1Yte1lmbgNH+rn2nSzg7G+jH6k/miHIwseDTfhc5M6LyeJt5bFiR23/F
	94CenVBQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Diederik de Haas <diederik@cknow-tech.com>
Cc: Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Diederik de Haas <diederik@cknow-tech.com>
Subject: Re: [PATCH] PCI: dw-rockchip: Remove redundant dev_err()
Date: Wed, 21 Oct 2026 14:35:37 +0200
Message-ID: <3711913.V25eIC5XRa@diego>
In-Reply-To: <20261021101533.609118-1-diederik@cknow-tech.com>
References: <20261021101533.609118-1-diederik@cknow-tech.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_053540_949645_D7BAB183 
X-CRM114-Status: UNSURE (   7.06  )
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

QW0gTWl0dHdvY2gsIDIxLiBPa3RvYmVyIDIwMjYsIDEyOjE0OjU3IE1pdHRlbGV1cm9ww6Rpc2No
ZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRGllZGVyaWsgZGUgSGFhczoKPiBUaGUgZGV2bV9yZXF1ZXN0
X3RocmVhZGVkX2lycSgpIGZ1bmN0aW9uIGFscmVhZHkgYXV0b21hdGljYWxseSBsb2dzCj4gZGV0
YWlsZWQgZXJyb3IgbWVzc2FnZXMgb24gZmFpbHVyZSBzaW5jZSBjb21taXQKPiA1NWI0OGUyM2Y1
YzQgKCJnZW5pcnEvZGV2cmVzOiBBZGQgZXJyb3IgaGFuZGxpbmcgaW4gZGV2bV9yZXF1ZXN0Xypf
aXJxKCkiKQo+IFNvIHJlbW92ZSB0aGUgbm93LXJlZHVuZGFudCBkcml2ZXItc3BlY2lmaWMgZGV2
X2VycigpIGNhbGxzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IERpZWRlcmlrIGRlIEhhYXMgPGRpZWRl
cmlrQGNrbm93LXRlY2guY29tPgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
