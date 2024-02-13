Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E06F7C4829A
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 19:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=riIpczQf+xao5m1p0BC93MRJR/oVYW/aTpQp46frzBU=; b=xrP8lJwhU/6ici
	P4ecg5KdhWBWECzELz4pBKZ3FTuyOMGLXb+jI5Y/J4rFdBZcZSO5hjp2Ixm+e6Osp4tVzwedns8/o
	ftZl6ktj2LlP0nM7JcZ4Ysp0JoAjSL0e/Q7FlFEkyIr3pVNSjyAM3A6ewOAycn+aaWnvbbTe1T+Ll
	OlbuZB1E3i9ndNDiIGIuM2GuVuUxa6XVXzQ9qd9xVYbD1Hu+zYhBmtr2cb1ygSTIK75KUC6iqAQZQ
	rlXHkw7uAAELeQFTV+8BgmTW+P0mObWM13smPRXAYe3F0tpEZPrGCWoQ8Oa4sonUSjJnYT5+t1ogY
	BCSbM5aKqj5QWVF5Xm8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyba-0000000AV1E-0WaR;
	Tue, 13 Feb 2024 19:38:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZybX-0000000AUz5-1BRK;
	Tue, 13 Feb 2024 19:38:08 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rZybL-0008Re-Bt; Tue, 13 Feb 2024 20:37:55 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: robh+dt@kernel.org,
	Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	hjc@rock-chips.com,
	tzimmermann@suse.de,
	conor+dt@kernel.org,
	mripard@kernel.org,
	dri-devel@lists.freedesktop.org,
	maarten.lankhorst@linux.intel.com,
	linux-kernel@vger.kernel.org,
	airlied@gmail.com,
	krzysztof.kozlowski+dt@linaro.org,
	linux-rockchip@lists.infradead.org,
	andy.yan@rock-chips.com,
	devicetree@vger.kernel.org,
	markyao0591@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	daniel@ffwll.ch
Subject: Re: (subset) [PATCH v2 1/6] dt-bindings: display: rockchip: rockchip,dw-hdmi: remove port property
Date: Tue, 13 Feb 2024 20:37:51 +0100
Message-Id: <170785305473.3362031.5919338158795795118.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <a493c65e-7cf9-455f-95d5-8c98cad35710@gmail.com>
References: <a493c65e-7cf9-455f-95d5-8c98cad35710@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_113807_364935_8F1734DA 
X-CRM114-Status: GOOD (  12.40  )
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

On Wed, 31 Jan 2024 22:14:29 +0100, Johan Jonker wrote:
> The hdmi-connector nodes are now functional and the new way to model
> hdmi ports nodes with both in and output port subnodes. Unfortunately
> with the conversion to YAML the old method with only an input port node
> was used. Later the new method was also added to the binding.
> A binding must be unambiguously, so remove the old port property
> entirely and make port@0 and port@1 a requirement as all
> upstream dts files are updated as well and because checking
> deprecated stuff is a bit pointless.
> Update the example to avoid use of the removed property.
> 
> [...]

Applied, thanks!

[3/6] ARM: dts: rockchip: fix rk3288 hdmi ports node
      commit: 585e4dc07100a6465b3da8d24e46188064c1c925
[4/6] ARM: dts: rockchip: fix rk322x hdmi ports node
      commit: 15a5ed03000cf61daf87d14628085cb1bc8ae72c
[5/6] arm64: dts: rockchip: fix rk3328 hdmi ports node
      commit: 1d00ba4700d1e0f88ae70d028d2e17e39078fa1c
[6/6] arm64: dts: rockchip: fix rk3399 hdmi ports node
      commit: f051b6ace7ffcc48d6d1017191f167c0a85799f6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
