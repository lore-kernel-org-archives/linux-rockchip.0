Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81DF1FF885A
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 12:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XhZDHYxO8WhRkFN9WoQ9ofqnbUjWQbJBA8Ou1HFGHa4=; b=e1d2GeK07eE/+9
	ZJkM5A/vZtru8BhicAbubO7SW5MY2e/7OjV7axpoK12fwDjPb5w+fkbY3yHfWQ4c37JkbIgCak1CP
	j8nQPxjKVW3+QeKUgBMc1zo9u8tUzwDwkEVL4xmz8np8mYpripUdmCac/rLXJnQrf15vZzmYBlnRl
	tjQUsK7oMqQbuSXIaGRki3isg0iy9fKLM8bTyOTeRMqyWihFzwLjgxM6qBh8HNbnNzEHuCYiRwUfJ
	jVAkoEW703QDhlqMouyRlNh93FQM4je13Wzwgz8gggvndu0haWwPGR+jH9E1y8onx09wFQjXIxpXG
	cM5Wc7D6f+/3ULWkgnpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKFKX-0000000GFmP-1YN6;
	Tue, 05 May 2026 12:56:53 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKFKU-0000000GFl4-3E3B
	for linux-rockchip@lists.infradead.org;
	Tue, 05 May 2026 12:56:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6AF8F43892
	for <linux-rockchip@lists.infradead.org>; Tue,  5 May 2026 12:56:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C0F5C2BCC7
	for <linux-rockchip@lists.infradead.org>; Tue,  5 May 2026 12:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777985810;
	bh=ZUs4wo3g3+7GpdmJ7ncT0CXa7bmF1VEsrvwglg4jLoE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=TW8pdnz6ylCu+n5A3jS6uOFfm1r+mrh5QJj/b5ngfXVDaIb6sHGRAklRK+cd8AwyJ
	 LM4uXqHWrv1OQYhOadPOWdI0+97b/ql0+GrGkVegK8/S2QGKL5MSYZaa71wfnd8cPI
	 BtaZlO4QuaxNAyVQCaqeW8pMIP9qhv1FpLcMKgHItIIKnZn+Wc9rdz4yx5dy5wT5PO
	 t/CZudqTq/6Q/Ajl0B6O+Cp5L/3u5wVQrHWbmJYuJ7pg4XoxkaBSFzCIDYWaJm9JQD
	 h4c5Z+uVfXj3DdraDaZGDRkC9kELRIYwtQQwaE2rmuZiTAm9RtmBcbK/VRcD310Tg9
	 A8JBWqsMhnijQ==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-3870778358aso36558871fa.1
        for <linux-rockchip@lists.infradead.org>; Tue, 05 May 2026 05:56:50 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+ZLx+wchICPz1LH5g44Ts7PCKeaht+8GDfSUTIuMoo7WpQgaMq8MSYcgRr9MZgxMrXA2DwgPRFFB0u+qHQtw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzGz6HWW1HXUO61uHuBUd47QeGzh7G5+vbTCJuhlk4ZYED8yMDz
	VlgCGOPET3yfciEKpoJD0QxXqmG/Fpp+MZsWiYZ5JXikq/J5hPQ8s5mF0wFOaPGCmLUdjdp8A+F
	op0FOuBTP5SAbrzRSdoQZ//4TXzf4epk=
X-Received: by 2002:a2e:be0c:0:b0:38a:a77a:b0b2 with SMTP id
 38308e7fff4ca-393785870femr48588051fa.30.1777985808984; Tue, 05 May 2026
 05:56:48 -0700 (PDT)
MIME-Version: 1.0
References: <20260505094321.75040-3-krzysztof.kozlowski@oss.qualcomm.com> <20260505094321.75040-4-krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260505094321.75040-4-krzysztof.kozlowski@oss.qualcomm.com>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 5 May 2026 14:56:37 +0200
X-Gmail-Original-Message-ID: <CAD++jLn-QPagz4m6jkYU6JJS22cRZrsGA=h20JiSvn-3Pxq=Dg@mail.gmail.com>
X-Gm-Features: AVHnY4Igt9-o67zqCdCfXKKYOq79SDn0cypO6X1gGr102Z0s00tmMJ-a4onPwSE
Message-ID: <CAD++jLn-QPagz4m6jkYU6JJS22cRZrsGA=h20JiSvn-3Pxq=Dg@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: rockchip: Move MODULE_DEVICE_TABLE next to
 the table itself
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_055650_824316_15EF8DC2 
X-CRM114-Status: UNSURE (   9.56  )
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

T24gVHVlLCBNYXkgNSwgMjAyNiBhdCAxMTo0M+KAr0FNIEtyenlzenRvZiBLb3psb3dza2kKPGty
enlzenRvZi5rb3psb3dza2lAb3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cgo+IEJ5IGNvbnZlbnRp
b24gTU9EVUxFX0RFVklDRV9UQUJMRSgpIGltbWVkaWF0ZWx5IGZvbGxvd3MgdGhlIElEIHRhYmxl
IGl0Cj4gZXhwb3J0cywgYmVjYXVzZSB0aGlzIGlzIGVhc2llciB0byByZWFkIGFuZCB2ZXJpZnku
ICBJdCBhbHNvIG1ha2VzIG1vcmUKPiBzZW5zZSBzaW5jZSAjaWZkZWYgZm9yIEFDUEkgb3IgT0Yg
Y291bGQgaGlkZSBib3RoIG9mIHRoZW0uCj4KPiBNb3N0IG9mIHRoZSBwaW4gY29udHJvbGxlciBk
cml2ZXJzIGFscmVhZHkgaGF2ZSB0aGlzIGNvcnJlY3RseSBwbGFjZWQsCj4gc28gYWRqdXN0IHRo
ZSBvdGhlciBkcml2ZXJzLiAgTm8gZnVuY3Rpb25hbCBpbXBhY3QuCj4KPiBTaWduZWQtb2ZmLWJ5
OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQG9zcy5xdWFsY29tbS5j
b20+CgpQYXRjaCBhcHBsaWVkLgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
