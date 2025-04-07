Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1752C3601A
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Apr 2025 07:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2tnmq66vtbBKjVP664CROZBujZuG78QVnVZF8MG7eQ=; b=oFBnxSKS6csa1i
	DUyJeDJQIo+bP37WkdJIZnUT3NlZ1YFPGuzQ7MmdHx0Z8lT2TngWcoN7DyHC4LUmm7C5TqwsqPh5I
	YOTOS98M2LUjLyRFhyIXv1jTCC3DxI/BG1inrzwupQF5RdAgAhIA5039K+yZaooPH0YRAQwn/fqEe
	YoLVxeYJlCBs5VGpRACOk/wzKr5ZXpFXe/mNQ1ARi9efpWchqK9vZCJ/JoXgHGzz02IARSrGeU4Lx
	1QXR9RjB9MSru+b8+YZU1got029ApbaIJLeTVM3Vs7TmSCBT8hjqESz1znqBGxszCNu/E3I6aK5ZM
	wQyeXiBYVtjetj3pcuIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1gpi-0000000GkRf-3utX;
	Mon, 07 Apr 2025 07:23:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1gjz-0000000GiQc-0Xfi;
	Mon, 07 Apr 2025 07:17:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=2HsI7Mvqhlkg1D4i/gRhR4oTLdzatJEvGabIM6WMsGo=; b=HUC/jHK8rkiyZZglx3C3N65Ku7
	uc0G3l3HH+hpj8E658nWnEgQLfrXbpASIBJPvqD3lL7KQieTfGwGFT83Y+ugEJ/6F/Shiw/xqV/nW
	nY9sZgww2KpuODcaWifcbE/z0S3yJwUwiMkkElBDEFlXYqllReELfIOhDNeWGchiwbZX8OJV6bmBk
	q7FgijtxRKioiUHymz6yQjTFjfParmu7YxB9LlQnvW14rzaqzpe9YOnnkT0EstyHX/bBY/7uqMbOr
	fDKyXASGegdgpCuzMM8antOk/DWgIg4sdu9svyFDdcWVkeIMyT/jI/l7CcPi0t1Tk1YMPaPbLg+LR
	F4r0LLEg==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u1gjw-0000tP-3F; Mon, 07 Apr 2025 09:17:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	stable@vger.kernel.org,
	Alexey Charkov <alchark@gmail.com>,
	Quentin Schulz <quentin.schulz@cherry.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Remove overdrive-mode OPPs from RK3588J SoC dtsi
Date: Mon,  7 Apr 2025 09:17:41 +0200
Message-ID: <174401024394.372530.11791471652987821644.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <eeec0d30d79b019d111b3f0aa2456e69896b2caa.1742813866.git.dsimic@manjaro.org>
References: <eeec0d30d79b019d111b3f0aa2456e69896b2caa.1742813866.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_001755_188682_5D5A4269 
X-CRM114-Status: UNSURE (   9.60  )
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


On Mon, 24 Mar 2025 12:00:43 +0100, Dragan Simic wrote:
> The differences in the vendor-approved CPU and GPU OPPs for the standard
> Rockchip RK3588 variant [1] and the industrial Rockchip RK3588J variant [2]
> come from the latter, presumably, supporting an extended temperature range
> that's usually associated with industrial applications, despite the two SoC
> variant datasheets specifying the same upper limit for the allowed ambient
> temperature for both variants.  However, the lower temperature limit is
> specified much lower for the RK3588J variant. [1][2]
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Remove overdrive-mode OPPs from RK3588J SoC dtsi
      commit: e0bd7ecf6b2dc71215af699dffbf14bf0bc3d978

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
