Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B23C1C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Mar 2023 12:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eEf8TGJDV3IN2d5joZ9SAYvMNRC0MM3//P3KmFOwtTI=; b=R4jb5dzKrL6q86
	nhs+Y5q0dMtnPsTaV/f2sbBMOLziCYVXRQ6k/knbZC/+QBjBDerYx7Y+QEZMVmo0V1nmEq+03ool2
	aJHPkg1N0DgBQH0aR1FMteq+YNtphos8RpfdlAfmf7QP1Od8RV+Qc6f7zMDI54z371CMrm44CWOQY
	vauqjZJuoQj8s78qec4OkvEDoF0JAqakjUCUosZ9w8i0wPJTbv020aHUBTXBFzbMhTqwg0R5IPZhO
	VQPzS5K0wk6flp51qPUMUGXBVMR7yFEaROOLB1yZHlWdMyYGQC+9MktbCHXpd9hvMzkXhcMrihYic
	7u+ICtmKjbbpU5CAwhwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paylo-000XYX-1Y; Sat, 11 Mar 2023 12:56:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paylZ-000XWC-CD; Sat, 11 Mar 2023 12:56:09 +0000
Received: from tuc-211-071.hrz.tu-chemnitz.de ([134.109.211.71] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1paylU-0001tI-U0; Sat, 11 Mar 2023 13:56:00 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/2] mailbox: rockchip: drop of_match_ptr for ID table
Date: Sat, 11 Mar 2023 13:56:00 +0100
Message-ID: <4073005.44csPzL39Z@phil>
In-Reply-To: <20230311111739.252080-1-krzysztof.kozlowski@linaro.org>
References: <20230311111739.252080-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230311_045605_432763_5315667A 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gU2Ftc3RhZywgMTEuIE3DpHJ6IDIwMjMsIDEyOjE3OjM4IENFVCBzY2hyaWViIEtyenlzenRv
ZiBLb3psb3dza2k6Cj4gVGhlIGRyaXZlciBjYW4gbWF0Y2ggb25seSB2aWEgdGhlIERUIHRhYmxl
IHNvIHRoZSB0YWJsZSBzaG91bGQgYmUgYWx3YXlzCj4gdXNlZCBhbmQgdGhlIG9mX21hdGNoX3B0
ciBkb2VzIG5vdCBoYXZlIGFueSBzZW5zZSAodGhpcyBhbHNvIGFsbG93cyBBQ1BJCj4gbWF0Y2hp
bmcgdmlhIFBSUDAwMDEsIGV2ZW4gdGhvdWdoIGl0IG1pZ2h0IG5vdCBiZSByZWxldmFudCBoZXJl
KS4KPiAKPiAgIGRyaXZlcnMvbWFpbGJveC9yb2NrY2hpcC1tYWlsYm94LmM6MTU4OjM0OiBlcnJv
cjog4oCYcm9ja2NoaXBfbWJveF9vZl9tYXRjaOKAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVdl
cnJvcj11bnVzZWQtY29uc3QtdmFyaWFibGU9XQo+IAo+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRv
ZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KClJldmlld2VkLWJ5
OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
