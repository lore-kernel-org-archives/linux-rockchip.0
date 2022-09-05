Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CFFDECAAD5
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Sep 2022 13:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4APoI+V3jVHDR03rVDOKMu+dho2sMKjZx8sxQlHfk5M=; b=3nvjSLcHu/yVdc
	jCHrX4EhEcJ5D7yfOE7dnqS4trJB3/zeTde+F3TeSUJCvR6xuZ2MfK2wXphzpqNBWgjebHspTn6+6
	CghpRyO4IoJaR4qdWjRck24osN2c9hszr/VUKp1+OWWyQSypEal7T4qUVyT3KXXJEwaC1ph+jrFyg
	HCMU5LIr4GaQYBpRLvFp22m3qs61SazfpY3MJel+pVFbtgz4nLwCMoGS3GRPcLIFAVX8fTWIOZs0l
	v0UdX1dCtPsO9lQV5G5xV7BMo5J2cXUZ1vD08ouae72CedfIMb8X7EQ3POpjgrPdpqAiyjBJpFJwy
	viJV+WvJvKSKy+teEAIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVC9K-003BlU-2Z; Mon, 05 Sep 2022 13:28:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8sb-00H8DM-Ni; Mon, 05 Sep 2022 09:59:00 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oV8sN-0005Ed-G0; Mon, 05 Sep 2022 11:58:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh+dt@kernel.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v3 00/19] ARM: Add Rockchip RV1126 support
Date: Mon,  5 Sep 2022 11:58:42 +0200
Message-Id: <166237191879.2457466.6826593836554060446.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_025857_989116_9488D739 
X-CRM114-Status: GOOD (  10.42  )
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

On Thu, 18 Aug 2022 18:11:13 +0530, Jagan Teki wrote:
> RV1126 is a high-performance vision processor SoC for IPC/CVR,
> especially for AI related application.
> 
> It is based on quad-core ARM Cortex-A7 32-bit core which integrates
> NEON and FPU. There is a 32KB I-cache and 32KB D-cache for each core
> and 512KB unified L2 cache. It has build-in NPU supports INT8/INT16
> hybrid operation and computing power is up to 2.0TOPs.
> 
> [...]

Applied, thanks!

[01/19] dt-bindings: power: Add power-domain header for RV1126
        commit: daf7dc86513ffc9d9b2eef0378d97361609490ca
[02/19] dt-bindings: power: rockchip: Document RV1126 power-controller
        commit: 2f3484b27598427ae582a37520b67c011597d706
[03/19] soc: rockchip: power-domain: Add RV1126 power domains
        commit: 66296e0a318e12ef1ca04013e1e893539e715c5a
[04/19] dt-bindings: power: rockchip: Document RV1126 PMU IO domains
        commit: 593e860fdff9add7f7eba504cf111b59a728fda5
[05/19] soc: rockchip: io-domain: Add RV1126 IO domains
        commit: 570ed4e5b0d9e784f51a52bede2326391afa8c3f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
