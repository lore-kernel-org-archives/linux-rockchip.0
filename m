Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0825DC9830C
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jan 2026 00:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D/Y28hlR6rm+Xi+2b/wC5XXq0S5sfbUms2V5H1vvjTM=; b=AMQyHsizHakSs5
	Zw6sbPdobedqEtJr1Dg+jB7ihH7E/E/3PpkGTyncsmEIjdxnTnXYzcyLU6o0dW+ga/XlErgYePQ7W
	iXRssbck8aWy31X6XwLjnrvjPeGrbOXi+eb5EWVFGArXsTTNxAI7o2/EVY7Sdm37F5dkJQ0NVHzvp
	arQUabDgNLBEr/FMFiSzKhs7YLOt4RI/NnUox5W1y0utbsms9qzM6cLANIEzVMrZXWhLD5c9IkUDe
	LB7C2d/sB64rWcH94rZ50dFWfZajdOvr7gnBFBOcgrfc/15CYXSYxthXiTWDpJajaNZoPMJn1pMM4
	B1WAoeYCTLPq5iwOlkUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhcsj-00000001Bgy-4AuH;
	Mon, 19 Jan 2026 00:12:33 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhcsi-00000001BgZ-1JSA
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Jan 2026 00:12:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7668D60127
	for <linux-rockchip@lists.infradead.org>; Mon, 19 Jan 2026 00:12:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DE0CC2BCB1
	for <linux-rockchip@lists.infradead.org>; Mon, 19 Jan 2026 00:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768781551;
	bh=GM6hjWxnbx0Rs5/7Y45dHtccDdEstdeBQZhCBY29WCk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=nW7h+1MyHv+XY/D+QMgQoPSEsvqC4xZS08EgMm5QgWJWAQqCzRkqWlAFfEeFeKwzk
	 uoviDMATdhhTN9GYHHY9iRFzkaxxUD9pLBAMVOYbGJeVRuCnSJApuxVhY8BCvxlQ5E
	 dgoArPak6gRs4bBLk5jVHbVkVkg4zsSs+2pVVD3EOiqYMmh34OZJEd/rJul6jkgQJ+
	 e9oaDFyyAJoQ1Qp1DeErXTf+NherfvJ7rOJgwo457Bfp0Mm6oQ9fii3A6VAYrU5mb5
	 JbGTWaIr7+xmJpWRxkx0Zf99/arNagUn4ATg1W9VXanBKldhTQJ3Mec8vROa2lsBl2
	 3o8700Mmbeq+g==
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-64471fcdef0so2917142d50.1
        for <linux-rockchip@lists.infradead.org>; Sun, 18 Jan 2026 16:12:31 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXYKAOK8QqembWUUKZU/KVzIwzM6wl9nATD/EUu3mpln68pV9v17bUyich4XeZBVy9eDbLyWMpv3etMbIJS0g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8Xql8MS7yiMK6heGNBZieh6ANjXJF8nGPubJVyEVmOAbCjA2u
	s0ZKibetzq5dRzFrQ6ChGSfoLid/3kSKf9wmOrvaRQXsAkGbGJkgZl0x5HPVKcdqctqq0MLcBwn
	BfheMWlgEawzYUvhB8N2wvCqc7+lbn74=
X-Received: by 2002:a05:690c:f96:b0:788:989:fdae with SMTP id
 00721157ae682-793c52a3abdmr187836947b3.28.1768781550470; Sun, 18 Jan 2026
 16:12:30 -0800 (PST)
MIME-Version: 1.0
References: <20260118-pinctrl-cleanup-guard-v2-0-bd36f681bdc0@oss.qualcomm.com>
In-Reply-To: <20260118-pinctrl-cleanup-guard-v2-0-bd36f681bdc0@oss.qualcomm.com>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 19 Jan 2026 01:12:19 +0100
X-Gmail-Original-Message-ID: <CAD++jL=+MP0UZsPRAh=+1TL+7ow+rZ_VqNW=XZN1Ht82Lw88FQ@mail.gmail.com>
X-Gm-Features: AZwV_QgFwFIzeGhMFaeDXLwmJd24DRy_tYYmpsNkgD6HAMBqdqwm-YSi6s6fPfs
Message-ID: <CAD++jL=+MP0UZsPRAh=+1TL+7ow+rZ_VqNW=XZN1Ht82Lw88FQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/11] pinctrl: Some code cleanup including guards
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Andrew Jeffery <andrew@codeconstruct.com.au>, Joel Stanley <joel@jms.id.au>, 
	Emil Renner Berthing <kernel@esmil.dk>, Hal Feng <hal.feng@starfivetech.com>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Basavaraj Natikar <Basavaraj.Natikar@amd.com>, Shyam Sundar S K <Shyam-sundar.S-k@amd.com>, 
	Bartosz Golaszewski <brgl@kernel.org>, Steen Hegelund <Steen.Hegelund@microchip.com>, 
	Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Heiko Stuebner <heiko@sntech.de>, Patrice Chotard <patrice.chotard@foss.st.com>, 
	linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, sophgo@lists.linux.dev, 
	linux-tegra@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Thierry Reding <treding@nvidia.com>
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

T24gU3VuLCBKYW4gMTgsIDIwMjYgYXQgNzoxMOKAr1BNIEtyenlzenRvZiBLb3psb3dza2kKPGty
enlzenRvZi5rb3psb3dza2lAb3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cgo+IENoYW5nZXMgaW4g
djI6Cj4gLSBQYXRjaCAjOSAocGluY3RybDogdGVncmEteHVzYikgLSBEcm9wIHN0YWxlIG11dGV4
X3VubG9jayAoSm9uKQo+IC0gQWRkIHRhZ3MKPiAtIExpbmsgdG8gdjE6IGh0dHBzOi8vcGF0Y2gu
bXNnaWQubGluay8yMDI2MDExNC1waW5jdHJsLWNsZWFudXAtZ3VhcmQtdjEtMC1hMTQ1NzI2ODVj
ZDNAb3NzLnF1YWxjb21tLmNvbQo+Cj4gRmV3IGNsZWFudXBzIC0gZnJvbSB1bnVzZWQgaGVhZGVy
cyAtIG9yIGNvZGUgc2ltcGxpZnlpbmdzLCBpbmNsdWRpbmcKPiB1c2FnZSBvZiBndWFyZHMgd2hl
biBiZW5lZmljaWFsLiAgSSBkaWQgbm90IGNvbnZlciBjYXNlcyB3aGVyZSBndWFyZHMKPiB3b3Vs
ZCBiZSBtaXhlZCB3aXRoIGdvdG9zLCBiZWNhdXNlIHRoaXMgaXMgZGlzY291cmFnZWQgcHJhY3Rp
Y2UuCgp2MiBsb29rcyBnb29kIHNvIHBhdGNoZXMgYXBwbGllZCEKCllvdXJzLApMaW51cyBXYWxs
ZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
