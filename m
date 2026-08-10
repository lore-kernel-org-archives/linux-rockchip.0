Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1A16C5B567
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Aug 2026 20:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ebu5MBJq1lIEfwCsNeNPkpuQDzSmom2T1riH56/Q/lA=; b=0IfOXlmXUUfwJ5
	rp6s5l6TfZhJBpDn0Y3BVB/UX0uDPOPi7dUJBDcfiGJfY8iH24lFn3/v8wE5JT2yPzKkTbewdeDgj
	VeMwOnPKT07qF1MubBqQBE86Xab8PruCygyL018pKN5WQmy0KFYd2ztr8VvNmSq95ddRgzrfW5n0m
	1DLGrYozSfQwauo1VmvRRFzXs0iw/5r+YlC6rdRStObCLqvJmw6uk2gqvdRCFtwmSAPCJw71j8eVx
	rBeVv4d6EClug3B4TclTMyaadPWXr54epra+M23nsyyRBVH+2vkGuwQZocJ8Hc1wVzUpRrqv06OXU
	+TdByXWcYPyU3OpekDMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtWIG-0000000Cnu5-0Am6;
	Mon, 10 Aug 2026 20:08:20 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtWIE-0000000CntV-2Z09
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Aug 2026 20:08:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 141A3600AE
	for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 20:08:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0B4C1F00A3A
	for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 20:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786392497;
	bh=gnc0EdyeiEsqgD6ZmbcZDCKYRtZBL5CUiTZPP2YKLs8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=OxbBDOX8FR1yMtYc2FacGlyQTM3NSC7+jsLExWaIbFSyfE1EA+wYk0Cw+4PQlGDYd
	 ZKsW1uSmZ8I5ziy1HHflUgz4kXVOZcSiOp/tL2oGd+eVf4WormnmLanbHUot9N6t23
	 ps9W/JJkPq9H455D0V+c5bppDGzrpSznrZC3aS8C2ew7fs5zwky9OiWjX5k34H+cR0
	 MYIEVgtSDlH6IOosraoRZq3IWMQjBj1WhmSM8Ih90RaFhtab11G4jvpsM6xhJ3cB1D
	 oWBgkjYkJ/D6X/e4Zap4RC9CwjbJS78wCtMRlFO73MzJ0C+avmtQjkr0OqgBtODaNG
	 01Oat0bB4dxUQ==
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5aeb59d54b1so2468605e87.1
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 13:08:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Rov/IVPihjJ/JpACLQHPZAptkArt7nCW8HFOGOvLSK2oNrjKyufwAkCEPVfgwJ1MAxw5fIFYbRnsGfYwP2rIQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxt8NV3nVJI7GG7nmffy9O1ifB26A1YSjiErKG0sh5HDubknD++
	53c0SRw2/FnDEfglSqx36ntrSXuqS+V/AhjwZwfGnnoyG4AKbBjKI6OZfI3CFpKB0GZ8tTb9SQl
	7MmqbX83XZpJSRx76HLJVnr07MfkCJ3Q=
X-Received: by 2002:a05:6512:10cf:b0:5ad:5cec:74d4 with SMTP id
 2adb3069b0e04-5b30b77a1d4mr2649686e87.41.1786392496581; Mon, 10 Aug 2026
 13:08:16 -0700 (PDT)
MIME-Version: 1.0
References: <20260729132736.3807082-1-sjg@chromium.org> <20260729072727.v3.3.3a4f9d47d4dba36e14141f8796afe8907028aa9c@changeid>
In-Reply-To: <20260729072727.v3.3.3a4f9d47d4dba36e14141f8796afe8907028aa9c@changeid>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 10 Aug 2026 22:08:04 +0200
X-Gmail-Original-Message-ID: <CAD++jLkfKKeht4VupGiGaHRnJEZJEvoozD=6ZBjHe+oqLSP+yg@mail.gmail.com>
X-Gm-Features: AUfX_mw9WSjT9UvG0UlhqGTC--GuRIOMT32n9ySgxc10IaFc7YOGymcNv3-QqPE
Message-ID: <CAD++jLkfKKeht4VupGiGaHRnJEZJEvoozD=6ZBjHe+oqLSP+yg@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: pinctrl: rockchip: Add RV1106 compatible
To: Simon Glass <sjg@chromium.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	devicetree@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	linux-rockchip@lists.infradead.org, Jeffy Chen <jeffy.chen@rock-chips.com>, 
	huang lin <hl@rock-chips.com>, linux-kernel@vger.kernel.org
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

T24gV2VkLCBKdWwgMjksIDIwMjYgYXQgMzozMOKAr1BNIFNpbW9uIEdsYXNzIDxzamdAY2hyb21p
dW0ub3JnPiB3cm90ZToKCj4gQWRkIHRoZSBjb21wYXRpYmxlIGZvciB0aGUgcGluIGNvbnRyb2xs
ZXIgb2YgdGhlIFJvY2tjaGlwIFJWMTEwNiBhbmQKPiBpdHMgUlYxMTAzIHBhY2thZ2UgdmFyaWFu
dC4KPgo+IFNpZ25lZC1vZmYtYnk6IFNpbW9uIEdsYXNzIDxzamdAY2hyb21pdW0ub3JnPgo+IEFj
a2VkLWJ5OiBSb2IgSGVycmluZyAoQXJtKSA8cm9iaEBrZXJuZWwub3JnPgoKUGF0Y2ggYXBwbGll
ZCEKCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
