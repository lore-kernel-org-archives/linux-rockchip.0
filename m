Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1442DE7849C
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Oct 2023 23:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5DQMPEp6i6dv0luTZTQrqCF/EpQNSkdGTbJCCw82UAg=; b=pRSVh1DAXEMQJL
	r4SIGlAQ0yZddnMAdMwf+xN+ExIUVuunDsEmqYDBG6NHauQAUXz9Dn7VYLdPMY7pgQzl9x/IcbPVz
	Ioj29CO4Stq+2GPq3RAWA6IGs1fb4JscdxW8uMWaM2j5xe32y+IH9bYXIWr9mzuFOft3S0DYr10XF
	bEWXzKhWmReq1mq4Y5W6Y9DlCT1H5Pndwx1M3YcAwNFvNLa3boVzctXfHywYxip8LzRidamzmtRi6
	RVJBNtGKyLBIrRAIFiEJ8xknG1TtKS3fYD9NyXXDHEpvl/TN9rn3Hq0MGv8O49/eMrbJJucWuPWlG
	Lip/mizhvthdPpuldJFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qn5SP-00BioY-01;
	Sun, 01 Oct 2023 23:02:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qn5SM-00BioA-1B;
	Sun, 01 Oct 2023 23:02:35 +0000
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qn5SF-0002tX-Vy; Mon, 02 Oct 2023 01:02:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jagan Teki <jagan@edgeble.ai>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH 00/13] arm64: rockchip: Add more RV1126 DT nodes
Date: Mon,  2 Oct 2023 01:02:33 +0200
Message-Id: <169620134724.283788.8556096916301682585.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231001_160234_402942_1C9B3ECD 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
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

On Mon, 31 Jul 2023 16:05:05 +0530, Jagan Teki wrote:
> Patchset adds more DT nodes for Rockchip RV1126.
> 
> Jagan Teki (12):
>   dt-bindings: pwm: rockchip: Document rv1126-pwm
>   ARM: dts: rockchip: rv1126: Add pwm2m0 pins
>   ARM: dts: rockchip: rv1126: Add pwm2 node
>   ARM: dts: rockchip: rv1126: Add pwm11m0 pins
>   ARM: dts: rockchip: rv1126: Add pwm11 node
>   ARM: dts: rockchip: rv1126: Add SFC node
>   ARM: dts: rockchip: rv1126: Add FSPI pins
>   ARM: dts: rockchip: rv1126: Add uart5m2_xfer pins
>   ARM: dts: rv1126: Enable pwm fan for edgeble-neu2
>   ARM: dts: rv1126: Drop EMMC_RSTN for edgeble-neu2
>   ARM: dts: rv1126: Add 3V3_SYS regulator for edgeble-neu2
>   ARM: dts: rv1126: Add 12V main supply for edgeble-neu2
> 
> [...]

Applied, thanks!

[01/13] dt-bindings: pwm: rockchip: Document rv1126-pwm
        commit: b0d587be2407ae7319098339034296370a851939
[02/13] ARM: dts: rockchip: rv1126: Add pwm2m0 pins
        commit: 32cd0ebf1f7961ef049cf9e286568f8e2dfbb88b
[03/13] ARM: dts: rockchip: rv1126: Add pwm2 node
        commit: 8625206d7c3811dfdaef1df9a0bd134f17098b5f
[04/13] ARM: dts: rockchip: rv1126: Add pwm11m0 pins
        commit: 19d79ef9faad6cc15315c3bb0d5fc3594c869d71
[05/13] ARM: dts: rockchip: rv1126: Add pwm11 node
        commit: 8cc85fa1b7640a5de02a3697aaaef4491cf8dba3
[09/13] ARM: dts: rv1126: Enable pwm fan for edgeble-neu2
        commit: 9b201229814fd8d77cc069962b43c4f451592217

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
