Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DA31C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Dec 2023 21:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UxTth1TVeuMPTGSbSdJrXB8o/m3u+SsWgRpNTbyHvgA=; b=WGY1FpkRbWQMOj
	p2j7E4q2upGgEpEvnmqbrAGjhnAjBnfVrd8z73INCuwCm5/fEvyPFK2ncC/U6mNEc4Cxa6Z5cp4NP
	+aqbiMzatKT0I6HTSGGrF3Y83KanGtJ3IzWXWQc744kufZesjRrFqLzTQHvh+dP8w6l/IbsZzc4DD
	btvquKJzMbjnZi7yL7mv5N2V5j2ZVBJchlfyv+CLbBzieDFPwIdnwcNByRinXy8MYxLCrPuKAFZb4
	JPODVL5lYrFrYa6liHSwsw13byAHv6vI1W0xDGBqnOpFbj6fM1rFwa2aDJrE20/uyKin8EglpC7FO
	BJRGWrJNFp3maWyp1unQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEFSI-004Ztn-0h;
	Fri, 15 Dec 2023 21:10:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEFS9-004Zqw-25;
	Fri, 15 Dec 2023 21:10:38 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rEFS1-0005kk-Rb; Fri, 15 Dec 2023 22:10:29 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org,
	sre@kernel.org
Subject: Re: [PATCH v4 0/5] Add 2 rk3588 based boards from Cool Pi
Date: Fri, 15 Dec 2023 22:10:25 +0100
Message-Id: <170267443962.1167098.11212690692568621616.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231212124202.1897238-1-andyshrk@163.com>
References: <20231212124202.1897238-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_131037_684177_FEF0E9CB 
X-CRM114-Status: GOOD (  12.22  )
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

On Tue, 12 Dec 2023 20:42:02 +0800, Andy Yan wrote:
> This series add support for rk3588s based SBC Cool Pi 4B
> and rk3588 based board Cool Pi CM5 EVB
> 
> Changes in v4:
> - split pi-cm5 as a dtsi
> 
> Changes in v3:
> - drop ununnecessary property status = "okay" for rtc
> - reorder some nodes alphabetical
> - remove disabled node
> - Add compatible "coolpi,pi-cm5" for CM5
> - drop ununnecessary property status = "okay" for backlight
> - reorder some nodes alphabetical
> - drop ununnecessary blank line
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: vendor-prefixes: Add Cool Pi
      commit: 40488a16e455ae6000ae1525bdc7e49fcf71d1a4
[2/5] dt-bindings: arm: rockchip: Add Cool Pi 4B
      commit: 473aa86338489daa332933f158f1bb03dcc2c8ee
[3/5] arm64: dts: rockchip: Add support for rk3588s based board Cool Pi 4B
      commit: 2d55c73a407a0e5cec0e97273dc1bf7b4d28cc02
[4/5] dt-bindings: arm: rockchip: Add Cool Pi CM5
      commit: 3b79d71c73c35001205556f9360c3afa4ef6d02d
[5/5] arm64: dts: rockchip: Add support for rk3588 based board Cool Pi CM5 EVB
      commit: aba89738bf7d83e47e5b6e5a4c9f452464746bbb

I've updated both board devicetrees somewhat.
Both in terms of sorting of properties and also to make the dtbs-check happy
and the board conformant to the yaml binding.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
