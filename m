Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED093606A336
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 00:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=mJvOa6zG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Rpmtyci8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=YaVPO/YZff3SnrvDDcuE75YQqXwVZhsoe/B3wUnPzW0=; b=mJvOa6zGPY6+qnLLw8Y3k20XtH
	wrCqxCAXMxtwnxMWD1SWXafG6eAduMMQqFOqL6CQ8/Fx6cO8jXQU41eXxW00XkJgHhhtxnC4K4ewR
	FXr/cvPfQ1iT3z8YC0hjajCbI92HEhdVCbjlCSbEnV1aDZJsbJyw9Dd9zqJB4IN+dNpbVJaJSWyn4
	/VWcFmE49yHBioTrBqPa72NovLYiapr/PQ9IFbzSe+W+3nWwHF7pPyuk2VCJBBHaAsQWH7azTvHYu
	WoCwq7la+9TxG8B9ensPa4y3b/JoXPfUOIyz7KkLxkIw+opE2SZ6To4pr0BTDduPSKdNmUbvheKQC
	G1GT89dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRIT1-00000008DN2-1mZF;
	Thu, 12 Nov 2026 00:15:03 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRISz-00000008DMf-37qO;
	Thu, 12 Nov 2026 00:15:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 28E2941074;
	Thu, 12 Nov 2026 00:15:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A60B1F00A07;
	Thu, 12 Nov 2026 00:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794442501;
	bh=Q/EartPOy717CuQdv8ANaMlETa+4mCRy7I4dcWtZtrE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=Rpmtyci8aux5sP02UwuMM0SFs1Ay4fZueM4bTxiZAvf1FG/XV2+1zNXsE0Ri3aVxE
	 Lz7/V3FoZmXtls4ENNgK9ebqPtTIRCtEU4crfR8jfASyOwESqRTsg7ya9r6PVP7S00
	 SZ8YJs7qh8OYlbn40nmcbXWzrbNOYP09/iyhqD1tmGeYo63rlR/fxHE/Nj9F3WC5Lr
	 OhFR4Uj6c9TYSDpb3YvcNoq7SEjOvTiIHveNLHnyOqa/0m+IJo2jL5QGackjbXUkw/
	 GdC47yH+vK84qfngcuCWhkwqYDju3eVgJ/b5uwF7VHmevhk1sMJX5YPRdOCpaIzQf0
	 m7DsfPn1Thx3A==
Date: Wed, 11 Nov 2026 16:14:59 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Cunhao Lu" <1579567540@qq.com>
Cc: "Marc Kleine-Budde" <mkl@pengutronix.de>, "kernel"
 <kernel@pengutronix.de>, "Vincent Mailhol" <mailhol@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, "Oliver Hartkopp" <socketcan@hartkopp.net>,
 "David S. Miller" <davem@davemloft.net>, "Eric Dumazet"
 <edumazet@kernel.org>, "Paolo Abeni" <pabeni@redhat.com>, "Simon Horman"
 <horms@kernel.org>, "Jonathan Corbet" <corbet@lwn.net>, "Shuah Khan"
 <skhan@linuxfoundation.org>, "Randy Dunlap" <rdunlap@infradead.org>,
 "Wolfgang Grandegger" <wg@grandegger.com>, "linux-can"
 <linux-can@vger.kernel.org>, "linux-arm-kernel"
 <linux-arm-kernel@lists.infradead.org>, "linux-rockchip"
 <linux-rockchip@lists.infradead.org>, "linux-kernel"
 <linux-kernel@vger.kernel.org>, "netdev" <netdev@vger.kernel.org>,
 "linux-doc" <linux-doc@vger.kernel.org>, "stable" <stable@vger.kernel.org>
Subject: Re: [PATCH net v8 00/10] can: fix Rockchip TX stalls and bus-off
 restart/close races
Message-ID: <20261111161459.4879a82d@kernel.org>
In-Reply-To: <tencent_F59D327809C523BE014488357EEF4D163408@qq.com>
References: <20261108-rockchip-canfd-restart-close-v8-0-3e7a23fd9eae@qq.com>
	<20261109112402.283c16a3@kernel.org>
	<tencent_F59D327809C523BE014488357EEF4D163408@qq.com>
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVHVlLCAxMCBOb3YgMjAyNiAxMTowNTozNyArMDgwMCBDdW5oYW8gTHUgd3JvdGU6Cj4gPiA+
wqBTdWJqZWN0OsKgW1BBVENIwqBuZXTCoHY4wqAwMC8xMF3CoGNhbjrCoGZpeMKgUm9ja2NoaXDC
oFRYwqBzdGFsbHPCoGFuZMKgYnVzLW9mZsKgcmVzdGFydC9jbG9zZcKgcmFjZXMgIAo+ID4KPiA+
IHBsZWFzZcKgdXNlwqBnZXRfbWFpbnRhaW5lci5wbCzCoGRvwqBub3TCoENDwqBuZXRkZXbCoG9u
wqBDQU7CoHBhdGNoZXPCoGRpcmVjdGx5LiAgCj4gCj4gSSB1c2VkIGI0IHByZXAgLS1hdXRvLXRv
LWNjLCB3aGljaCBpbnZva2VzIGdldF9tYWludGFpbmVyLnBsLgo+IFRoZSBzZXJpZXMgbW9kaWZp
ZXMgRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL2Nhbi5yc3QsIHdoaWNoIG1hdGNoZXMKPiBEb2N1
bWVudGF0aW9uL25ldHdvcmtpbmcvIHVuZGVyIE5FVFdPUktJTkcgW0dFTkVSQUxdIGFuZCBpcyBu
b3QKPiBleGNsdWRlZCB0aGVyZSwgc28gbmV0ZGV2QHZnZXIua2VybmVsLm9yZyB3YXMgYWRkZWQg
YXV0b21hdGljYWxseS4KPiAKPiBJIHdpbGwgbWFudWFsbHkgcmVtb3ZlIG5ldGRldkB2Z2VyLmtl
cm5lbC5vcmcgZnJvbSBDYyBmb3IgdGhlIG5leHQKPiByZXZpc2lvbi4KCk9yIGJldHRlciBzdGls
bCBzZW5kIGEgcGF0Y2ggdG8gZXhjbHVkZSBpdCBsaWtlIHRoZSByZXN0IG9mIENBTgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
