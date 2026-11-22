Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D84A606A31D
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Nov 2026 22:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VrwODWUN;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=o8Aspt50
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=vEoFDtCJU3tZzTsELNHMhx4VRzveeuT8jrDgB0hs1NM=; b=VrwODWUNSINu2M6T6M+UHKdh/z
	qd4YyeZ50epoHnsDGXGbSGiLjIOQtlwk5a0USTfROq/h6Krw4uyC+zhHtOANy24GOTFcH76S+/Jd6
	8O2sP7soIQKqae7tgFl5kqjKOCUbj3dD8JL9tskByjWmigHxI+S5vwhGOvWedXgM1ssD6PgV28Frb
	vSR6urivOQDWG1Mu2R2EBU5EHyQ5EGkgXmAOZlGGyj9a4hdGN0ugS9LRY3QMjBvOubLBQliBDYi7a
	miyy1KuVMsKZ3Z5j0/Q8UOHjO/E5Vo9/wiknIjKwDLI67CrQAIzKx/BKPI7CZgmSUtFhyt7mzUiOs
	ASZEyjMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVFfB-00000001pZ8-48Fn;
	Sun, 22 Nov 2026 22:03:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVFf9-00000001pXb-2cW1;
	Sun, 22 Nov 2026 22:03:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=wx3P+dKo4GM43A7D066wIsRvaq0/Fqq2FMKb809nRkY=; b=o8Aspt50Btrcq59EN1EuJxGvAC
	7/DZqL56mUJ8ZIML79qYWp+JQz1VwTTmWVUNzScFzs1lypU/JdXJbBPHxE4Lb7kidXyAYr1tiDlKv
	VMZdeicvXQoQR8mVKYLdj2n1+rVF8mJkLh2+FmU4Ru70NyZC4ugsbA12XwPZYRziHSLpxYIW0HQKv
	JJO4TIa1sBvgh9tEyOeXglZPCS4JZ8TiY8Kn7lycMfx3pHfc/eso/lvOMYmzcqj0X83wSijRqcTpg
	/4xsHY46QzkbAqt58b2CDkln0RCTbsicY3RyIFxTbc8xJQJDUwSo9qHGzkvqBqgq4Fw1bd8OTYoz4
	yL3WG0uA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andyshrk@163.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: Andy Yan <andy.yan@rock-chip.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: rockchip: Allow single 'port' node for DP
 input port
Date: Sun, 22 Nov 2026 23:03:35 +0100
Message-ID: <GHrf8KahSYaDLPGqb0rYhw@sntech.de>
In-Reply-To: <20261109184759.467215-1-robh@kernel.org>
References: <20261109184759.467215-1-robh@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_140355_722814_96C84CD4 
X-CRM114-Status: UNSURE (   5.69  )
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

QW0gTW9udGFnLCA5LiBOb3ZlbWJlciAyMDI2LCAxOTo0Nzo1OCBNaXR0ZWxldXJvcMOkaXNjaGUg
Tm9ybWFsemVpdCBzY2hyaWViIFJvYiBIZXJyaW5nIChBcm0pOgo+IEV4aXN0aW5nIFJLMzM5OSB1
c2VycyBoYXZlIG9ubHkgYSBzaW5nbGUgJ3BvcnQnIG5vZGUuIFRoaXMgd2FzIGNvbW1vbiBiZWZv
cmUKPiBjb25uZWN0b3Igbm9kZXMgd2VyZSBkZWZpbmVkLiBBbGxvdyBmb3IgdGhpcyBzaW5jZSB0
aGVyZSBhcmUgYWxyZWFkeSBzdGFibGUKPiB1c2Vycy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBSb2Ig
SGVycmluZyAoQXJtKSA8cm9iaEBrZXJuZWwub3JnPgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVi
bmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
