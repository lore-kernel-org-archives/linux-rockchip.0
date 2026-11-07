Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4396082BCE
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2026 14:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=pjh08Z7y;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=AKfQpOEc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=k8mRTqfaOMIMzRN8cibMhhxbBK0/mje+7J7LqNM5IhE=; b=pjh08Z7ybfyAYthi8RhsvkvNe1
	0QwlifUByOi3auablO8Xl5l+p9SkpsteS4bYwT5iPwRoaC4qTEijmmNuZWiuJmfrXIXFuD8UTP46m
	WeHjue0c1aTlhQdI/IKS30dDMuvbn5RjwG3A92G0pywy7+Qwp9tOwfy+H7d0hSbmeIxObrS0+wg5F
	ZXHBCBhs1PtAV+7rJk4uSw4H65jkPcrnstn4K0w/4XnBsfn10Xyk4eM2VbpNsFzI2sC9UZJq1W9o3
	zbAHr79TPOa/aeNY1t8saJyldja28LOKi63CpbR2bVLHy/tz9faK1YUYcCZwXdxGkkzlp9ZtLcsan
	6DApBwXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPhbb-0000000Epxd-0iLm;
	Sat, 07 Nov 2026 14:41:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPhbY-0000000EpwN-1Ata;
	Sat, 07 Nov 2026 14:41:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=MTKqzeN2qzSEwB7wgpPDqmDOm1XJz5MFsmhF4czrNrI=; b=AKfQpOEcyMJuFY5WDsAYJCTPjL
	pgnw4g5N7gDR3sRbLbFgG73J6zge7zNIO0U5Km4Qo/IoKiabt/e8uLUdTA7R2zZXc/s+9IS57fvvF
	72zVqn2IdV6MrKoyzu9pOjZqKdtb5zyu7j2UkFKUk67ed7AEm0Dh+jLxuLdUY4pItdnHYV8H1Tev5
	vD+2hx89y6foUzJmwrEnK7jzdalIL2ZDOVxos10lo20RajGCi5S8fwui/nYnLxiTYpETen3FkgD0+
	f2wq6OjDIi1cpxq//uoGJdNTDNcF3XxMPt37xeImwXJZqfUKmYQx0vNtV0j1Hj+XlF3mdU7+Hu8F8
	tZjG+fog==;
From: Heiko Stuebner <heiko@sntech.de>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
 Vincent Mailhol <mailhol@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Wolfgang Grandegger <wg@grandegger.com>,
 Oliver Hartkopp <socketcan@hartkopp.net>, kernel <kernel@pengutronix.de>,
 Eric Dumazet <edumazet@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, Cunhao Lu <1579567540@qq.com>
Cc: linux-can <linux-can@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 netdev <netdev@vger.kernel.org>, linux-doc <linux-doc@vger.kernel.org>,
 stable <stable@vger.kernel.org>
Subject: Re: [PATCH net v7 0/7] can: fix bus-off restart and device close races
Date: Sat, 07 Nov 2026 15:40:55 +0100
Message-ID: <6105577.1B3tZ46Xf9@phil>
In-Reply-To: <tencent_B3369A1199D0849091BB8015C41BBFF0A607@qq.com>
References: <20261106-rockchip-canfd-restart-close-v7-0-accdb11bc845@qq.com>
 <16255046.uLZWGnKmhe@diego>
 <tencent_B3369A1199D0849091BB8015C41BBFF0A607@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261107_064116_321047_A126ECC4 
X-CRM114-Status: GOOD (  22.17  )
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

SGksCgpBbSBTYW1zdGFnLCA3LiBOb3ZlbWJlciAyMDI2LCAwMzo1NzoyNiBNaXR0ZWxldXJvcMOk
aXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIEN1bmhhbyBMdToKPiA+ID4gVGhpcyBzZXJpZXMgZGVw
ZW5kcyBvbiB0aGUgdGhyZWUgcGF0Y2hlcyBpbiAiY2FuOiBza2I6IG1ha2UgQ0FOIHNrYgo+ID4g
PiBmcmVlaW5nIHNhZmUgaW4gYW55IElSUSBjb250ZXh0IiBbMV0gYW5kIHRoZSB0aHJlZSBwYXRj
aGVzIGluICJjYW46Cj4gPiA+IHJvY2tjaGlwX2NhbmZkOiBmaXggVFggc3RhbGxzIGFuZCByYWNl
cyIgWzJdLgo+ID4gPiAKPiA+ID4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWNh
bi90ZW5jZW50X0NEMDVGMDIwQkFGQjI1MzdGNUQxRjRDQkI0MjU1ODhFQTgwQUBxcS5jb20vCj4g
PiA+IFsyXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1jYW4vdGVuY2VudF9FMjVDOUJF
NjY4OTI2NEU0MTM4QTQ2NDgwM0I4MTBGREZEMDlAcXEuY29tLwo+ID4gCj4gPiBCb3RoIHRoZXNl
IHNlcmllcyBhcmUgZnJvbSBqdWx5IGFuZCBzZWVtaW5nbHkgZnJvbSBiZWZvcmUgeW91IHN0YXJ0
ZWQKPiA+IHVzaW5nIHRoZSBiNC1yZWxheS4gU28gdGhleSBtYXkgb3IgbWF5IG5vdCBoYXZlIHN1
cnZpdmVkIHRoZSBrZXJuZWwKPiA+IHJlbGVhc2VzIGFuZCB0aGVpciB0aHJlYWRpbmcgaXMgYnJv
a2VuIGJvdGggb24gbG9yZSBhbmQgaW4gYW55IG1haWJveAo+ID4gdGhleSBhcnJpdmVkIGluLgo+
ID4gCj4gPiBBbmQgaWYgdGhlcmUgaGF2ZW4ndCBiZWVuIGFueSByZXNwb25zZXMgdG8gdGhlbSBz
aW5jZSB0aGVuLCBJJ2QgdGhpbmsKPiA+IHRoZXkgaGF2ZSBiZWVuIGxvc3Qgb3Igc28uCj4gPiAK
PiA+IFNvIEknZCBzdWdnZXN0IHJvbGxpbmcgYm90aCB5b3VyIGRlcGVuZGVuY2llcyBmb3J3YXJk
IG9uIHRvcCBvZiB0aGUgY2FuCj4gPiB0cmVlIGFuZCBzZW5kaW5nIHRoZW0gYXMgYSBuZXcgdmVy
c2lvbiwgc28gdGhhdCByZXZpZXdlcnMgY2FuIGZpbmQgdGhlbT8KPiAKPiBUaGFuayB5b3UgdmVy
eSBtdWNoIGZvciB0aGUgZ3VpZGFuY2UhIDotUAo+IAo+IEkganVzdCBjaGVja2VkOiB0aGUgImNh
bjogc2tiOiBtYWtlIENBTiBza2IgZnJlZWluZyBzYWZlIGluIGFueSBJUlEKPiBjb250ZXh0IiBz
ZXJpZXMgd2FzIG1lcmdlZCBpbnRvIG1haW5saW5lIHllc3RlcmRheSwgc28gSSB3b24ndCBzZW5k
IGEKPiBuZXcgdmVyc2lvbiBvZiBpdC4gSSdsbCByZW1vdmUgaXRzIGxpbmsgZnJvbSB0aGUgY292
ZXIgbGV0dGVyLgo+IAo+IFRoZSAiY2FuOiByb2NrY2hpcF9jYW5mZDogZml4IFRYIHN0YWxscyBh
bmQgcmFjZXMiIHNlcmllcyBzdGlsbCBoYXMgc29tZQo+IGlzc3VlcyByZXBvcnRlZCBieSB0aGUg
Ym90cyBkdXJpbmcgc3VibWlzc2lvbiB0byB0aGUgbmV0IHRyZWUgdGhhdCBJCj4gbmVlZCB0byBh
ZGRyZXNzLiBTaW5jZSB0aG9zZSBwYXRjaGVzIG92ZXJsYXAgd2l0aCB0aGlzIHNlcmllcywgSSBw
bGFuCj4gdG8gZm9sZCB0aGVtIGludG8gdGhlIG5leHQgdmVyc2lvbiAodjgpIGFuZCBzZW5kIHRo
ZW0gdG9nZXRoZXIuCgpBcyB0aGF0IHNlcmllcyBpcyBhbHNvICJqdXN0IiBmb3IgdGhlIFJvY2tj
aGlwIENBTiBkcml2ZXIsIG1lcmdpbmcgYm90aApzb3VuZHMgbGlrZSBhIGdvb2QgcGxhbiAtIGVz
cGVjaWFsbHkgYXMgaXQgbWFrZXMgaXQgZWFzaWVyIHRvIGtlZXAgdHJhY2sKb2YgdGhpbmdzIDot
KSAuCgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
