Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D525F54ADA
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 16:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1H2etEREMf65Kd+ZeHxTTvaHTpSt0L72cr2HoLdOho=; b=Gm7ggVLj3AHXr6
	7CvMd7chsb9AfczxOC3suLTYBZh+wshcKfjDwcpi2RK2DPvc4XNYJoCwg4MdVmkXH6TvEqasmpk7i
	AK6j4R77/o1ZpevKWeN/LFGIPuftxgECDGIPooGmlMSuS63IcUht/qLdIu+oAUA4R4GQFN4R8b0GI
	fyUUMcQXPhmhs7Sel0eaThODY4TnCoxbsovrldFjLAE+lqqiTUrlz5GlSE2+9mAiL2sfK4sy3i9yR
	t+SdoCCc5oeUWsjedXQpvdDM4i7FNMh5Ev6NdwfyhbS192t7Y6qeEU+MOoqZj3nOmP9F2sI7bltVR
	+SZedtdqUD5IFbfJsREQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w54sz-00000001vFl-3iv1;
	Tue, 24 Mar 2026 16:45:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w54sr-00000001vBG-1s5y;
	Tue, 24 Mar 2026 16:45:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ws8gnjoF4i5AoJRWVzVh7quYkJpi5YBeM5lgd/FTWtM=; b=ZUgozKg+7/Ozw0MZAj14bc2Mud
	RF250v2ZZZ/QL2u7ThWUQe8+i8EmqBpQtFcZaIcv/t/abW96jZMbv/NmXcD1jxvhABmY3RtJCbUcU
	9vj5ZzFoTeQRHrHpTw0vVnwXDR0qQRgJy80AWAqtxytOtoFueLqKncqSIoaxFdpaiTnj9Gph5GjOr
	SwcGzRj6LWnpudS/GZp9si6m4cT1TZJhmrrXAGDTTLUY0NcPz98xGlAUACP7zOEqJ1LKroru4uPmR
	G3Zsj3oE5DdSYUjsgRqYCCH7fmnYLS/+H4oDGM9GsOFN6sgS/JkCC/lpKkgh07wf0twJ/bAFkaTRx
	JddF3CJA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	shawn.lin@rock-chips.com,
	Fabio Estevam <festevam@nabladev.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v7 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
Date: Tue, 24 Mar 2026 17:45:30 +0100
Message-ID: <177437057319.780275.6126712599317976655.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313131058.708361-1-festevam@gmail.com>
References: <20260313131058.708361-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_094537_480285_E069FD97 
X-CRM114-Status: UNSURE (   9.72  )
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


On Fri, 13 Mar 2026 10:10:55 -0300, Fabio Estevam wrote:
> Add the PMU GRF and IOC compatible strings for the RV1103B SoC.
> 
> 

Applied, thanks!

[1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
      commit: 25c2721f18ff97226a6561aedc9f8f76a51fe2e8
[2/4] ARM: dts: rockchip: Add support for RV1103B
      commit: b4dc241c68f5a2a6e312259bf23885d693f91960
[3/4] dt-bindings: arm: rockchip: Add Omega4 Evaluation board
      commit: 2ea01fbb1d29d2349aa489eb884938898f10a84d
[4/4] ARM: dts: rockchip: Add Onion Omega4 Evaluation Board
      commit: 683192d7d5b47e89d920867f7c6997d2c0d1a0ad

Now that the adapted mmc binding went in, this is also ready.

I've reordered some properties according to documented preference
= largely { compatible, reg, [alphabetical], status }

And dropped the watchdog node for now.

Please resubmit that one, once the watchdog compatible went
into the watchdog tree (and drop the status=disabled from
the wdt node, as the watchdog is not dependent on supplies
from the board dts)


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
