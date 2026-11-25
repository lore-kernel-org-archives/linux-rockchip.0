Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2BD9606A31E
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 11:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=C5iXqgnJ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=EtKm0SAD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=XK/Q7p2AwAbsYhK4OICCF250fKD5FG9dfdqAOy3xgtY=; b=C5iXqgnJwT6tBdrAVMT9H8Dvh8
	/w/kOYRHwTRKFXNKxNDIfHTRVIIUCjlfBwIRoCEfOLOLdjowwSbIHn/ySM5cR4CBlQuDqc3JSa3uc
	sWbHJtY1D+211LCYot9B/lonIAg8JXNP76wwGxYHTz1hUTDDXABLczV82uNNsby/QvR0aT3tqzcll
	IG2HnueOfwQkARn/zyXXBgXmtELTc1IlK95lFkPAR5F2ri5+eOc/1QqY0TluoCF8GXmBdrhqRRzrr
	3gxJ3uRZKPRu4v81M2w9pT6z/pco2tF1ynFy3yg3uhdNn9/cw8mBqjUwXEGUMCUokkY8O8zu8W5g4
	3p8kNLlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWBf0-00000009knF-2c4O;
	Wed, 25 Nov 2026 11:59:38 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWBez-00000009kmz-0qZg
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 11:59:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4ECB062954;
	Wed, 25 Nov 2026 11:59:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 626601F000D2;
	Wed, 25 Nov 2026 11:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795607976;
	bh=yq9L9HAGZojBDbYgnQq4VN708e+LNAMcIM6ZkR0zdZY=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=EtKm0SADy2kDQBI+UCsVxQBSHvpu4H4feN8jVZoYdEz/tbdDI6Wb+l1I65jVbFUhG
	 zMhymZb1+uvUNvmmNTfK2f0ujN4Khx4asffmk0iLlK3r6MiBoUE3mTgIR01E69XKs1
	 8MG7OFgo8ZZezejRPGabfdxmG9oESqlcdw5zv2Ga9lRGCARzYQyA0wdPVwiwgjLbkE
	 SE8EvzU6xvSt8karKsDg70tgDeaW/oGk68ZoD45F5Z+3rvfmiSaVisjqO8Qe56vAt2
	 GGJDMvu2NmK+SikbafTwYyBFelayrEo+CgSFFr9gXL5GXwVeHalLW115xTY4m4PFeO
	 Gv/tqSfApNzTg==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH V4 3/3] arm64: dts: rockchip: Add Battery Gauge to
 Anbernic Vita-Pro
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 shawn.lin@rock-chips.com, linux-pm@vger.kernel.org, heiko@sntech.de, 
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, sre@kernel.org, 
 t.schramm@manjaro.org, xsf@rock-chips.com, 
 Chris Morgan <macromorgan@hotmail.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20261124191346.434143-4-macroalpha82@gmail.com>
References: <20261124191346.434143-1-macroalpha82@gmail.com>
 <20261124191346.434143-4-macroalpha82@gmail.com>
Date: Wed, 25 Nov 2026 12:59:33 +0100
Message-Id: <179560797327.84329.17059711157215907702.b4-reply@b4>
X-Mailer: b4 0.17-dev
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-24 13:13 -0600, Chris Morgan wrote:
 +			0x7f 0x88 0x92 0x93 0x94 0xd3 0xff 0x5f
> +			0x20 0x00 0xab 0x10 0x00 0x91 0x68 0x00
> +			0x00 0x00 0x64 0x3c 0xa0 0x89 0x00 0x00
> +			0x00 0x00 0x00 0x00 0x00 0x00 0x00 0xb2
> +		>;
> +		monitored-battery = <&battery>;
> +		power-supplies = <&sgm41542>;
> +		shunt-resistor-micro-ohms = <2000>;

> +		status = "okay";

Drop, why do you need it?

> +	};

Best regards,
Krzysztof

-- 
Krzysztof Kozlowski <krzk@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
