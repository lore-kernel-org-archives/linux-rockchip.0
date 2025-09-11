Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7E98CAC58D
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Sep 2025 09:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/BDp9FPcH1iYEZBjnd67zgDRcyzlH+oeVekE1/fOeCE=; b=SMsTyB06Jblgtr
	xzuPzS/CpNFpDahFEgVs/fi+9MF+9OtYAGD/u7SPepsrFzsx61Cy3dCmeAXPC3y6udQgnhZ0iSE2c
	4+EGb0G4dIE849W6xu1tWwu0C26uwjs3B2oMBsUeSIJZMX0RCrYqtAU1dneqn3RjQ3YGc4WbRXZwF
	jGcJDBD0YYwp4qY/xb6MZDG+9saqh5P6cJFJQf4AnA+7RslK3hyQeXLeIJX64JwvHkT0rJ9qkazFa
	KPTQ/hDWyC6qOxDoPa1SExC/ktKxY+FD9q0cMYstRqt4gKzLgWohrCln8c5MTKIltcUpfv+PcWqSv
	QYte6htk/anUksnGDPGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwdFe-0000000204t-26OD;
	Thu, 11 Sep 2025 09:05:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwdFc-0000000203o-1AV1;
	Thu, 11 Sep 2025 09:05:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=6gx6VMk7TDXvQGr0QBI+xdzzWNaTJzaWnQI1EKY6rgU=; b=y4zRtMJUhMlPYzMKYM/wIDAVHN
	VBCCrSyfwSo4g3qFvDrBo2m4c9WsXLPOgJ28hfc+lm9ZaMllmgVPLp73lSu5SGWL1pcq6c13G0P0Q
	+6heFKHDxHJrrTobTY4ynEY0FBh87NfuA4Dz2/DuUVDN0w3s2KISyXaLIzX/oKqUQGsg7nkHfPVFn
	l1tAABgnZb04drR4A0eeXQvLgeKW6v7S6LCgnGyyfUaUMOprKFgic3hpQVj4Cj/hEYWyl7CniNMYv
	l+PBUwM+ZQfDJ+f8My81hBuIsRFhetOCOwmrMoUJa5UMU8eATxkQ+zshadXVmNagYKp3oQXQbhf29
	91TqB45w==;
Received: from i53875b0e.versanet.de ([83.135.91.14] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uwdFa-00005b-CZ; Thu, 11 Sep 2025 11:05:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Christian Hewitt <christianshewitt@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Alex Bee <knaerzche@gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: rockchip: add GPU powerdomain, opps, and cooling to rk3328
Date: Thu, 11 Sep 2025 11:05:42 +0200
Message-ID: <175758154015.610665.11518544255206774361.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250906120810.1833016-1-christianshewitt@gmail.com>
References: <20250906120810.1833016-1-christianshewitt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_020556_317029_87C5C1D3 
X-CRM114-Status: GOOD (  10.52  )
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


On Sat, 06 Sep 2025 12:08:09 +0000, Christian Hewitt wrote:
> Add GPU powerdomain, opp-table, and cooling map nodes for the Mali
> GPU on the RK3328 SoC. Opp-table frequencies are sourced from the
> Rockchip Linux v4.4 vendor kernel while voltages have been derived
> from practical use and support work: keeping voltage above 1075mV
> and disabling the 500MHz opp-point avoids instability and crashes.
> 
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: add GPU powerdomain, opps, and cooling to rk3328
      commit: 718efbc6a773dd07047f2ac3d62bbbf3bc4b104f
[2/2] arm64: dts: rockchip: enable the Mali GPU on RK3328 boards
      commit: d81b0c3099d02f6c7a4be7a15d33145b3700b159

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
