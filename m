Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15DA2C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 10:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GeGDX53NTUfK1GcuCeaO/HdCS2L2QCdq6jjFZzR+w5w=; b=ikG0KH5M7tfCd0
	I+81qk72N6fNtLDoQMhw9tNJgAhllH9l3Nv4wG3Ox4uNpOMMSNGNV7C75F/10iSXKoM63Puzh/PPL
	139hEkt0tOXvXIFRuHBFMurgFgIC53Njg4DCUnodlPXbPmTIIDMZpPKfML5wLiW4l1YaUaeyxuF0N
	3Q99MNBtyXh6bE9Kt3/GcBvMDMKmARBT31j7jA8iT2osR7uJ5bLxkGI+yBiNDwvVThIjx4dYJXdQL
	XD+ywaLacUnqzPlwpb1PGYFODtWveIzka7B/ZdtJ4AXmO0oFWyov7RE9rrXmQFE+aZ1HVB7V8U9Bj
	5x/hShzDD2ximQG9GC+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vFm-004r6W-0n;
	Tue, 28 Nov 2023 10:23:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vFj-004r5i-0k;
	Tue, 28 Nov 2023 10:23:40 +0000
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7vFd-00030f-06; Tue, 28 Nov 2023 11:23:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Trevor Woerner <twoerner@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: rockchip: dts: rk3308-rock-pi-s add gpio-line-names
Date: Tue, 28 Nov 2023 11:23:31 +0100
Message-Id: <170116700275.2183789.12263120893522806404.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231120162232.27653-1-twoerner@gmail.com>
References: <20231120162232.27653-1-twoerner@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_022339_287928_79A722D6 
X-CRM114-Status: GOOD (  11.48  )
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

On Mon, 20 Nov 2023 11:22:32 -0500, Trevor Woerner wrote:
> Add names to the pins of the general-purpose expansion header as given in the
> Radxa GPIO page[1] following the conventions in the kernel documentation[2] to
> make it easier for users to correlate the pins with functions when using
> utilities such as gpioinfo.
> 
> [1] https://wiki.radxa.com/RockpiS/hardware/gpio
> [2] Documentation/devicetree/bindings/gpio/gpio.txt
> 
> [...]

Applied, thanks!

[1/1] arm64: rockchip: dts: rk3308-rock-pi-s add gpio-line-names
      commit: 6204c84c196889c54ce5c4d44d69472c93e56c39

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
