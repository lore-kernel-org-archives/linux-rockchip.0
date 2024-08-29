Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B88ECA0EC4
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 22:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmk0xavfhgQZZ6g1M+q+GIE2iIOuZpOPK7J/P74xn9w=; b=WFtZV876V+HZQc
	jH0kG3bb974ks+1YUhPGkOuH0LBGFo7XK/vg4GGyJ4KOS5amEo7OA2dQcE0gDsL3ogFNi2lzy2w+d
	Dt5P5lQBckvMAfXdDrKNPW/7pOrcXg1UNPUINgEoFWuE9AEfVvypl4AMMaZOWDaYxgdoMbpRFRt/W
	4iNqmD9Bf4Vr4soLSillhy49bUwNaZrc2G7W0IqvEHxCQkzvDmhSQib8bIvD4J5DhywTjQUXcrMEW
	8ZqoUEX4X/g4to8EWf3c9HkuQCGPAYutFnG5dlBREZoFxHqQ/hpEt47+5GUtRw+wDxLM6/XhJq5xW
	6Ogi72rL+ZQVPqV8/Rlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjnBq-00000003mvS-1UGh;
	Thu, 29 Aug 2024 22:00:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjnAy-00000003mpD-0R77;
	Thu, 29 Aug 2024 21:59:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=KyJu9jAJNjONx7PKu00g6vbxETZNeMq5GmzVPgRma/0=; b=gV9+Z9SXiKfQwXEtoPLuT4pIPy
	kHlEMQaBKSm7wv/FGmQUw+vvKMMFNUhKi3/SvcI4q2G5Tgp3vsMGG0jOh2VTjqmpOkYJOkvFJw2MB
	rA6umxJ+mX5iSBkDn6fRU0zuzuTu/ZMyEzR8Kz25TnqqqA12rQSeDxrBQKVvXPUbYYYnTdZ7h9mYy
	KwZUmbauqxYAJgwP5lHVkEHHHMoo7rKmSgl8jEWORULJeXYt1Mp+A7IMRMknrFBAnU2E+c0bBPIts
	Sxqn1onvI/XQqzRmzINl/qwtEBkBjLNry4BDzmXU1e4cbPQ18li1eR4EjHl/5wan00B6M3kkdiZHj
	1dTMu2cQ==;
Received: from i5e861916.versanet.de ([94.134.25.22] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjnAw-0007AW-6D; Thu, 29 Aug 2024 23:59:30 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org,
	marcin.juszkiewicz@linaro.org,
	linux-rockchip@lists.infradead.org,
	didi.debian@cknow.org
Subject: Re: [PATCH 0/3] Some fixes for issues found by dtbs check
Date: Thu, 29 Aug 2024 23:59:27 +0200
Message-ID: <172496876161.1802834.6330688865845887456.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240829132100.1723127-1-heiko@sntech.de>
References: <20240829132100.1723127-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_145932_244402_CFD1A0A9 
X-CRM114-Status: GOOD (  10.64  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 29 Aug 2024 15:20:57 +0200, Heiko Stuebner wrote:
> There two additional warnings remaining, hopefully I can motivate someone
> to look into them:
> 
> _build-arm64/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb:
>     codec@1b: Unevaluated properties are not allowed
>     ('assigned-clock-rates', 'assigned-clocks', 'clock-names', 'clocks', 'port' were unexpected)
>         from schema $id: http://devicetree.org/schemas/sound/realtek,rt5616.yaml#
> _build-arm64/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb:
>     sound: 'simple-audio-card,hp-pin-name' does not match any of the regexes:
>     '^simple-audio-card,codec(@[0-9a-f]+)?$',
>     '^simple-audio-card,cpu(@[0-9a-f]+)?$',
>     '^simple-audio-card,dai-link(@[0-9a-f]+)?$',
>     '^simple-audio-card,plat(@[0-9a-f]+)?$', 'pinctrl-[0-9]+'
>         from schema $id: http://devicetree.org/schemas/sound/simple-card.yaml#
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: use correct fcs,suspend-voltage-selector on NanoPC-T6
      commit: 170c77276d470a63d22a2634a38846dd88538637
[2/3] arm64: dts: rockchip: drop unsupported regulator property from NanoPC-T6
      commit: 9c50ba541a52eca091f74f0c3af558824cd11314
[3/3] arm64: dts: rockchip: drop unsupported regulator-property from NanoPC-T6
      commit: 78d500329b65217c45422ac0adf5c030783d3e58

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
