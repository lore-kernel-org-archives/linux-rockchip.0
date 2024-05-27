Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B963C25B7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 22:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZIbkYpkO9sMpNsnE8jvpRCjNYwyNS+Qo3DMb4FebcF4=; b=wpShKjJLHyZ2ag
	cUU4tMNzr8lo334g70urpnw1hGEygM4MvEqqM+LNf+jk+Afxd+poP0GdZ29knXziPBmt2rYT1lXsP
	a1/3s1XP6Z0Hj0et95sIzFQqlnCgTamers204i+VqvSiqmog9DM3taLpF/WEg2cMY6qsHgWz2BWou
	EgFafF4civ5VoEt7E/DmWdaqIcUqUwXXS/LP841RxdqWjH75TyYOqQKb0oSY36eehCVrtoj6X5qSL
	BHqbgfJ8akUx6LaH8QlNlWtPvbALZK9hAcrotv1WfJymH1uuf+rHOwWck8qA8zxgPMQTzZMwMiSU6
	FeEhU+oYHnR8H8i9vRcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBj2x-0000000GVkF-2vXj;
	Mon, 27 May 2024 22:42:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBj2u-0000000GVid-06kh;
	Mon, 27 May 2024 22:42:25 +0000
Received: from i5e86193d.versanet.de ([94.134.25.61] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sBj2q-0005Os-ED; Tue, 28 May 2024 00:42:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	stable@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	krzk+dt@kernel.org,
	robh+dt@kernel.org,
	Diederik de Haas <didi.debian@cknow.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix the DCDC_REG2 minimum voltage on Quartz64 Model B
Date: Tue, 28 May 2024 00:42:15 +0200
Message-Id: <171684956152.1783037.2786989707792820997.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <e70742ea2df432bf57b3f7de542d81ca22b0da2f.1716225483.git.dsimic@manjaro.org>
References: <e70742ea2df432bf57b3f7de542d81ca22b0da2f.1716225483.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_154224_089829_8E533DF4 
X-CRM114-Status: GOOD (  11.07  )
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

On Mon, 20 May 2024 19:20:28 +0200, Dragan Simic wrote:
> Correct the specified regulator-min-microvolt value for the buck DCDC_REG2
> regulator, which is part of the Rockchip RK809 PMIC, in the Pine64 Quartz64
> Model B board dts.  According to the RK809 datasheet, version 1.01, this
> regulator is capable of producing voltages as low as 0.5 V on its output,
> instead of going down to 0.9 V only, which is additionally confirmed by the
> regulator-min-microvolt values found in the board dts files for the other
> supported boards that use the same RK809 PMIC.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix the DCDC_REG2 minimum voltage on Quartz64 Model B
      commit: d201c92bff90f3d3d0b079fc955378c15c0483cc

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
