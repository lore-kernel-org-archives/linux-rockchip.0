Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3296AC678D5
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Mar 2023 23:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FU8Qyb+ddlPDzOJPIFXle6AyLyUf2c83IqLfYsU0OII=; b=V0DotDxFL/H7Dm
	nbnwy35ieWamoEbXIjxX+wucb0XikFwcr0GNY2PypNvU6iWRVHOCG5jUCKVoB2p2W8lv8vHl8AaFK
	um1M1zXg7V8Mo5rC2FVadoAxVeeNY7RIvQpNMOZRdwC3OjtDTZ83xdiYYs9HK1RykPNxVp3VVCk+n
	W9yI+yNYVmS1kb4nx7EFcehah0Y/CXK7hP10GDYHB3sJxDh4wn/QHHAOe36HfTl5yoNtJq0NcTKft
	y70JRSXJBbyBwpTKgTSnuh2dhqzhVf+WztWtd0M45CvgwPgs2R0tgzQg5ZXuFGn2eRaJsQugCBvFA
	nBjJ5l2HWMK3Tr6ruqaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZgr4-002tRa-EJ; Tue, 07 Mar 2023 23:36:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZgqb-002tDI-Q4
	for linux-rockchip@lists.infradead.org; Tue, 07 Mar 2023 23:35:58 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pZgqQ-00025h-FU; Wed, 08 Mar 2023 00:35:46 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Dan Johansen <strit@manjaro.org>,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dragan.simic@gmail.com>,
	JR Gonzalez <jrg@scientiam.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Lower SD card speed on
Date: Wed,  8 Mar 2023 00:35:39 +0100
Message-Id: <167823207784.205469.14298910264023031585.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230305104730.15849-1-strit@manjaro.org>
References: <20230305104730.15849-1-strit@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_153557_869758_97452487 
X-CRM114-Status: GOOD (  10.81  )
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

On Sun, 5 Mar 2023 11:47:31 +0100, Dan Johansen wrote:
> MicroSD card slot in the Pinebook Pro is located on a separate
> daughterboard that's connected to the mainboard using a rather
> long flat cable.  The resulting signal degradation causes many
> perfectly fine microSD cards not to work in the Pinebook Pro,
> which is a common source of frustration among the owners.
> 
> Changing the mode and lowering the speed reportedly fixes this
> issue and makes many microSD cards work as expected.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Lower SD card speed on
      commit: 78aedee18a86abb0bb8e31d994467c46656e9b5d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
