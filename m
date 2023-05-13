Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 328B3C7EE24
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 May 2023 16:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hAvOAZ+5qC5fbcer0EDsM2oxHx60cASSd08uasqrJtE=; b=CPyukhQdDuPwhe
	2mBvBKGdazthKOyZw7E2MfIKOYbR3Jm8KOLHdMYmnLQlkaA2Q0K+j8dXrD8mxgv1mRBfHeRaavuh2
	DceSt6xZN6gpUEDA2ewOLnQWSQJafVIgYtBh0JycWFn6BX8GIn57/AvfSzxI192q+mow+6gPjlYHk
	3zAK4qXwEY7pa4KWS0QeN42Yz3uhUx6xNwQmt71GJjzONdaIUkL2fA+UfMZjbLZGqccqmuz54Ex6E
	Y9RynWt58xas4lLyBGgs6gttI9rbw0tvmr5g7zV/B7CCZ4VDBLZwr3yyOW5SzNgZiVUZ6g5/s7ECl
	6vbP4CZ0AOy9SRPnfxsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxsRC-00FQUb-2M;
	Sat, 13 May 2023 16:49:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxsR9-00FQSH-0f;
	Sat, 13 May 2023 16:49:40 +0000
Received: from p508fce4f.dip0.t-ipconnect.de ([80.143.206.79] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pxsR1-0000Vh-GY; Sat, 13 May 2023 18:49:31 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Shreeya Patel <shreeya.patel@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	kernel@collabora.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/8] Add RK3588 OTP memory support
Date: Sat, 13 May 2023 18:49:26 +0200
Message-Id: <168399655509.610817.6649297823886958542.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230504200648.1119866-1-cristian.ciocaltea@collabora.com>
References: <20230504200648.1119866-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230513_094939_253834_B9E688DB 
X-CRM114-Status: GOOD (  13.57  )
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

On Thu, 4 May 2023 23:06:40 +0300, Cristian Ciocaltea wrote:
> This patch series adds OTP memory support for Rockchip RK3588 SoC,
> while also providing a few improvements to the existing rockchip-otp
> driver, in addition to converting the bindings to dt-schema.
> 
> Changes in v2:
>  - Renamed rockchip-otp.yaml to rockchip,otp.yaml and removed clock's minItems
>    in PATCH 1/8, according to the review from Krzysztof
>  - Updated commit message in PATCH 2/8, per Heiko's suggestion
>  - Renamed rockchip_data's clocks to clks in PATCH 3/8, per Heiko's review
>  - Preserved clocks order/names from older SoC variants in PATCH 2/8, according
>    to Krzysztof's review; updated accordingly patches 7/8 and 8/8
>  - Added Tested-by tags from Vincent
>  - Added Reviewed-by tags from Heiko
>  - v1: https://lore.kernel.org/lkml/20230501084401.765169-1-cristian.ciocaltea@collabora.com/
> 
> [...]

Applied, thanks!

[8/8] arm64: dts: rockchip: Add rk3588 OTP node
      commit: bcac467b7ca045224bd0f35e245b8edfcb1c452e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
