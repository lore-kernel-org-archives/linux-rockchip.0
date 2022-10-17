Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 230D1C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Oct 2022 12:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=allwoAtca9JExFC87mlF4fXkBI4EeGS3GDMwhroTm6E=; b=m5HVxuVuzy3hBE
	iM7wKkMeNKjear6t8XMWqc+tMdjvJSYdFvQ+MCRrApHjS88aky9ynUB1ISEWLmu125fUZwLf+JL2v
	qJSmkuk4aDxUbUT+JJleHqNo3mH40Ps+hyT1stUGmjNEw1y0zkFNlpIihuS2uq4co6bKP3PBVtEBh
	SXT9BxK+oKszcMN1dM0LbdaV3C3e1M6PGZ6WX7QJxSZIdh+fp6y3NuDQPrZe/UgpLrOd4lAKTCUWn
	i4H6i/IrzyInAfza8RbRBSX/weAik1S2ezwpwPr2/2o1AovowCUpIUXQ57+up0H/85ULlXYru0r57
	pX/wGEiKsjC5M1GSu3yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPLb-00BZvV-KE; Mon, 17 Oct 2022 12:35:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPKV-00BZKp-M0; Mon, 17 Oct 2022 12:34:53 +0000
Received: from p508fc122.dip0.t-ipconnect.de ([80.143.193.34] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1okPKO-00087p-VC; Mon, 17 Oct 2022 14:34:45 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Ondrej Jirman <megi@xff.cz>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	phone-devel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: add BT/wifi nodes to Pinephone Pro
Date: Mon, 17 Oct 2022 14:34:41 +0200
Message-Id: <166601006785.173248.11280967580490159718.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221002092809.451501-1-tom@tom-fitzhenry.me.uk>
References: <20221002092809.451501-1-tom@tom-fitzhenry.me.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_053451_735547_803425AC 
X-CRM114-Status: UNSURE (   9.12  )
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

On Sun, 2 Oct 2022 20:28:09 +1100, Tom Fitzhenry wrote:
> Pinephone Pro includes a AzureWave AW-CM256SM wifi (sdio0) and
> bt (uart0) combo module, which is based on Cypress
> CYP43455 (BCM43455).
> 
> The CYP43455 datasheet ("Power-Up Sequence and Timing") documents:
> * needing to wait 10ms between consecutive WL_REG_ON toggles
> * needing to wait 110ms between power-on and SDIO access.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add BT/wifi nodes to Pinephone Pro
      commit: a7e6dbd6ac034480d7fde95ecf2259d27e5655b1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
