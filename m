Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD851606A335
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Nov 2026 13:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=irlTlRrf;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=nEylbCvu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+3/kgFKjMy4amksb1A2g+MZ5W3mW+8bfDT4nG5AFLPs=; b=irlTlRrf2lzr6WS4gqoXz26cYE
	4N1I/IeEpqHYWRM6YxgiRZIO7wMpAGbMqs5YP86tKhiwwCfXYdsPwrfJuIOGIQvsAbW6lys029Jd3
	Yd1afiFdNrBYoE4aqHD9KypSH74I6hT1BeKsmv6SkRRb8zeMXm0C8q6/mFqK1+dXnk2n7hFpeQ3fw
	hy7wUN47PB1/I4p6j7GwG7MkNwfCGFIn1xTsj75qvO7E1Wl3yYZbt05hsYF1X8XVxst1ScfuL5eL8
	Fb7iOk8L2/FzPBpK9kN6Xa/0g6SMczFBbG2vzRVHBtDVW7wqNl4CzN8DIZ9v897Oubn96LZrfcmDS
	OrHB5nhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUlFS-0000000HIFv-0n09;
	Sat, 21 Nov 2026 13:35:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUlFP-0000000HIF5-2XcE;
	Sat, 21 Nov 2026 13:35:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=fffPhen65RXvgrHvozLgMLsmu+SDxyuRcwXFiGMhJew=; b=nEylbCvuQdGWOM/Z5RINWTpd0Q
	ZKohSuNpjwv+qUOH+VwAOX6t1I6AhjQcjdO0UNXQmY4IYWW31T+vGl11olyTl22SSSukG4H/CUqjM
	vh5OthKF5we6rnV+eL1JR9NZSnXcfDXBOHp528Gswn27fALsq2tzDLzZgCT+nscdib5axuNJw85l4
	asYmd0Ze7D5MBfuRwSeBqQAGjsYNyEw7L4l+n5mejjv5Kb+mZvMDyw8rMRMw+Joq0Rm92HXlVddDx
	H8q20B6fQgUdj/NVFy7PMz0kUI0XDJQF3a0j9Etgqapx2yPN1kUzG+Vkqj2Hw4wEeg75Z9u0Zq7AG
	mFvw2B1Q==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <ukleinek@kernel.org>,
 ZhuXiangyu <1194781887@qq.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 ZhuXiangyu <1194781887@qq.com>
Subject: Re: [PATCH 2/2] dt-bindings: pwm: rockchip: add RK3506 and RK3576 PWM
Date: Sat, 21 Nov 2026 14:35:17 +0100
Message-ID: <dcRZnWeuS9WMWkKE52x__A@sntech.de>
In-Reply-To: <tencent_85AFCE164FAAD1CCAB95DC7CD804CA9BB309@qq.com>
References: <20261121065936.1125919-1-1194781887@qq.com>
 <tencent_85AFCE164FAAD1CCAB95DC7CD804CA9BB309@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_053519_646865_F482A969 
X-CRM114-Status: UNSURE (   8.56  )
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

QW0gU2Ftc3RhZywgMjEuIE5vdmVtYmVyIDIwMjYsIDA3OjU5OjM2IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgWmh1WGlhbmd5dToKPiBEb2N1bWVudCB0aGUgUFdNIHY0IGNv
bnRyb2xsZXJzIGZvdW5kIG9uIFJLMzUwNiBhbmQgUkszNTc2LiBUaGV5IHVzZQo+IHRoZSBwd20v
cGNsayBjbG9ja3MgYW5kIG1heSBhZGRpdGlvbmFsbHkgcHJvdmlkZSB0aGUgb3NjIGFuZCByYwo+
IGNsb2NrcyB1c2VkIGJ5IHRoZSBleHRlbmRlZCBmZWF0dXJlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBaaHVYaWFuZ3l1IDwxMTk0NzgxODg3QHFxLmNvbT4KCgpwbGVhc2UgY2hlY2sgbWFpbGluZyBs
aXN0cywgYmVmb3JlIHN1Ym1pdHRpbmcgZHVwbGljYXRlIHdvcmsuClRoZXJlIGlzIGFscmVhZHkg
YSBiZXR0ZXIgKHlldCB1bmZpbmlzaGVkIGltcGxlbWVudGF0aW9uIHBlbmRpbmcsCnRoYXQgYWxz
byBpbmNvcnBvcmF0ZXMgdGhlIGNvdW50ZXIgaW5wdXQpLgoKRXNwZWNpYWxseSBhcyB0aGlzIGlz
IGEgbmV3IElQIGJsb2NrIC0gaW5jbHVkaW5nIGEgZGlmZmVyZW50IGhhcmR3YXJlCnN0cnVjdHVy
ZSwgdGhpcyBzaG91bGQgbW9zdCBsaWtlbHkgbm90IGxpdmUgaW5zaWRlIHRoZSBwcmV2aW91cyBi
aW5kaW5nLgoKQWxsIHRoZSBwcm9jZXNzIGlzc3VlcywgS3J6eXN6dG9mIHBvaW50ZWQgb3V0IGlu
IGFub3RoZXIgdGhyZWFkIHN0aWxsCmFwcGx5IHRvby4KCgpIZWlrbwoKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
