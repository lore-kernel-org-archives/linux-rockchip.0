Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94616C47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jan 2024 11:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GPSHTXOIqaK0O0kqJnfCTD1G4u+qTjySATDiFYdrJkQ=; b=wdaXQsaF5OKjnt
	97G7P+zDAp4a+17dFOYiAnPvPimTcsZIWkMvucMCeRVBbKF/U7aOxxd3qHeR85sfli9fPg9MlqiKi
	gWfmCw/75VoIPbemOzgUftQR5yilbRzt3REDI2AH+XV2vjomeqQyPMTKsXuefsJXA1slVVEMZoR7A
	2pXv2Zk/vQzh0K1RxmO3SgHJrvYori0s75WV43H6Q/W6rjKgST1XAxULXaAdKUaNTj7GWTeDN45e7
	vg9n8oxCAdxpx/xuxRGT7WjgyA7I2Ym55OAyPHLVJqTdUJ3TIlUj5N2+SHxVMqdJ+lRr+NAl+V6nt
	gwamwRjkmGMmz/8fP2SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV8oe-000000036r7-18rz;
	Wed, 31 Jan 2024 11:31:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV6df-00000002Mdr-2W1I;
	Wed, 31 Jan 2024 09:12:12 +0000
Received: from i53875af6.versanet.de ([83.135.90.246] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rV6dZ-000364-MD; Wed, 31 Jan 2024 10:12:05 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alexey Charkov <alchark@gmail.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alexey Charkov <alchark@gmail.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: rockchip: Add OPP data for CPU cores on RK3588
Date: Wed, 31 Jan 2024 10:12:04 +0100
Message-ID: <2168725.pYTLVKaXyH@diego>
In-Reply-To: <20240130-rk-dts-additions-v2-3-c6222c4c78df@gmail.com>
References: <20240130-rk-dts-additions-v2-0-c6222c4c78df@gmail.com>
 <20240130-rk-dts-additions-v2-3-c6222c4c78df@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_011211_673349_D2411146 
X-CRM114-Status: GOOD (  13.81  )
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

Am Dienstag, 30. Januar 2024, 19:21:15 CET schrieb Alexey Charkov:
> By default the CPUs on RK3588 start up in a conservative performance
> mode. Add frequency and voltage mappings to the device tree to enable
> dynamic scaling via cpufreq

Please add a paragraph describing where the opp values comes from.
Probably just the vendor kernel, which is fine, but I really like to
document that these values have some sort of grounds ;-)


Thanks
Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
