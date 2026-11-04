Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FB1606D811
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 13:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=aaIGwx0l;
	dkim=temperror header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=WLqSLvYw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wjE+OGq6iywHtDdRrZRWLz27ktCtzpq01e/yjM7B8zY=; b=aaIGwx0lb0NbI/p7at5ChOciq4
	TP9OwzeMykGrJyOosqee/z/Fb1OUoJejc5KiGVqhnSuGsULsnbVWtlIATGr4s1E4dCQj2wwjxWVEd
	SgX6+98nkOioDfcvoJ5pNSS7vcb6+XcRxQ/kTbog9HrXQgn7oZo3O0tg4dZmaFoHf93/0IduxGoU6
	Jv8UvXFTKLYK5hpGdgPkXCw6TsuBMiUmF02UGAmX/X+/rHcyRCTBhoxqjGjBqbTOGxrQtd+0Y1ssF
	YSVzZmHAIccXjNro9ofXj6iH8784CGxMfA/+JNyYE4IC0O2FqO+ORaoKJ+JMdeL+Lmne7wZ2MqLGg
	T0DgsFdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOagD-00000005QtG-23Q8;
	Wed, 04 Nov 2026 13:05:29 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOagA-00000005QsV-3Mi1
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Nov 2026 13:05:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1951F62CCD
	for <linux-rockchip@lists.infradead.org>; Wed,  4 Nov 2026 13:05:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C71C81F000C1
	for <linux-rockchip@lists.infradead.org>; Wed,  4 Nov 2026 13:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793797525;
	bh=LPKBxmhyg89L22fIaf9IQyOx1ftYYGNVMEyFVHYOx+w=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=WLqSLvYwRuBRb2z2uy097jLLlVZenw1O0Ud3+HdLZPMW2W/yzMsw4PoGFqDOIDUwu
	 bYeTnemOekwxxrWyrcu3N1/2zGODfTWspcTCv2AIYLDuBbLuQUV8lPQQYsoeeaXIZo
	 s9pxZA4n1vrlJHdLmklh37T+D8AiUXYc4GVoPjPUCjjcMlonowAys/U2PRW90Kfnup
	 tuf9hIDTCB7oNt5tvVL+asbU98CD4ARrQUGqF8Nf8SlgNeuq/Vl88CJ3YEo52TiM8A
	 criMClDoEAWjWwpB9F04k/fO5WKv51xfXn5g8+JQfVgeQbC0d/BD2BPOItMFG3+Cjh
	 JM4GUMBVSYcnA==
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5be416e603cso409523e87.2
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Nov 2026 05:05:25 -0800 (PST)
X-Forwarded-Encrypted: i=1; AKwUvBwf4t9rQXxCF2REAA2f8xdFS0LHG3OuqaF5Hva4NG/k0RmUfALOL2spRdIop0MQw4cjYITaBH8ARjWQMXPIvA==@lists.infradead.org
X-Gm-Message-State: APuU4Z9WWdE4MYjqWswTyAG1jw5f8nOpfRRGXodt1C3knTfdqTxpQMFk
	xL3Hqb6buBLit4hTHVswxB0mrxPiq8qVKUZFTanLHgIbizlb3h963b63aURsW4rd15j9oKbmYvQ
	+uXFX4liNqVh/ZFYg4T0dzuoMxuFjCQc=
X-Received: by 2002:a05:6512:3a89:b0:5bc:c446:760c with SMTP id
 2adb3069b0e04-5bfd956f3c7mr5830020e87.48.1793797524594; Wed, 04 Nov 2026
 05:05:24 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com> <20261022-add-board-ok3572-c-v1-6-0b0fd85a31ee@qq.com>
In-Reply-To: <20261022-add-board-ok3572-c-v1-6-0b0fd85a31ee@qq.com>
From: Linus Walleij <linusw@kernel.org>
Date: Wed, 4 Nov 2026 14:05:11 +0100
X-Gmail-Original-Message-ID: <CAD++jLkfnsnqr9DeJG1UY1BNPmXV=L1fh0o1fRgq2N70k3Aq2A@mail.gmail.com>
X-Gm-Features: AclHuK_mv5t_ofBXXvFmTtsscxk8ZZZWMu9yfbYuWEEuKyuLUDpVdyNQz1Is1sQ
Message-ID: <CAD++jLkfnsnqr9DeJG1UY1BNPmXV=L1fh0o1fRgq2N70k3Aq2A@mail.gmail.com>
Subject: Re: [PATCH 06/27] dt-bindings: gpio: rockchip: Add RK3572 GPIO banks
To: 1579567540@qq.com
Cc: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
	Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, Lee Jones <lee@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Richard Cochran <richardcochran@gmail.com>, 
	Ulf Hansson <ulfh@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, David Wu <david.wu@rock-chips.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Jaehoon Chung <jh80.chung@samsung.com>, 
	Shawn Lin <shawn.lin@rock-chips.com>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	mfd@lists.linux.dev, linux-gpio@vger.kernel.org, netdev@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-serial@vger.kernel.org, linux-mmc@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-phy@lists.infradead.org, 
	linux-usb@vger.kernel.org
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

T24gV2VkLCBPY3QgMjEsIDIwMjYgYXQgNjoxMuKAr1BNIEN1bmhhbyBMdSB2aWEgQjQgUmVsYXkK
PGRldm51bGwrMTU3OTU2NzU0MC5xcS5jb21Aa2VybmVsLm9yZz4gd3JvdGU6Cgo+IEZyb206IEN1
bmhhbyBMdSA8MTU3OTU2NzU0MEBxcS5jb20+Cj4KPiBSSzM1NzIgR1BJTyBiYW5rcyBoYXZlIGZv
dXIgcGFyZW50IGludGVycnVwdHMgYW5kIGEgc2VwYXJhdGUgZGVib3VuY2UKPiBjbG9jay4KPgo+
IFNpZ25lZC1vZmYtYnk6IEN1bmhhbyBMdSA8MTU3OTU2NzU0MEBxcS5jb20+CgpSZXZpZXdlZC1i
eTogTGludXMgV2FsbGVpaiA8bGludXN3QGtlcm5lbC5vcmc+CgpQZXJoYXBzIEJhcnRvc3ogY2Fu
IGp1c3QgYXBwbHkgdGhpcyBvbmUgcGF0Y2ggdG8gc2hyaW5rIHRoZSBzZXJpZXM/CgpZb3VycywK
TGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
