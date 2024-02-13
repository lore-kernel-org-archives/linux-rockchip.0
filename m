Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FE69C48260
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 19:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSD/2ZONPRbz+sfLkC5o3/+wam2T0K1yXu4R6+SDriQ=; b=Fl1Aq52eCEc+pY
	jitBQ2r+4cbLeWPWyE9p1hpX92KduwfiA87dx1bdtQdZuhupQnyGk4/8oGyODmkDS53/gqxCd4/bB
	bBGUVwBhHblqp57jU10Y5PM33Ks6zL7l44TgwZ/jClSpcYfHd0lSgFSfMTqKutsFjh3JUoNCwV83Z
	chgL9SETiUbnczWSsSIkubfszIAtW8fNeo5ZOgatoJdXgyZ+dERELTFLDgRaVHH5IWv0eJXULjAtH
	xGRHxa0u4X93wBk0UZBVPeBfGREggPXxiQ5WK9hUBL0QVHt52kF/ZximdHgBlj/ha8y3vMqyjCN3f
	wex7mUei55qMkQC6DkjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyGd-0000000AQWZ-0rtv;
	Tue, 13 Feb 2024 19:16:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyGZ-0000000AQT6-1D0H;
	Tue, 13 Feb 2024 19:16:28 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rZyGX-0008FY-2h; Tue, 13 Feb 2024 20:16:25 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	kernel@collabora.com,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>
Subject: Re: (subset) [PATCH v2 00/12] RK3588 USBDP support
Date: Tue, 13 Feb 2024 20:16:21 +0100
Message-Id: <170785172853.3347621.6269747485696963458.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240213163609.44930-1-sebastian.reichel@collabora.com>
References: <20240213163609.44930-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_111627_383070_29E51C20 
X-CRM114-Status: GOOD (  12.60  )
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

On Tue, 13 Feb 2024 17:32:34 +0100, Sebastian Reichel wrote:
> This adds Rockchip RK3588 USBDP PHY support, which is used for two of the three
> USB3 controllers in the RK3588 (the third one uses a different PHY, which is
> already supported). The USBDP PHY offers USB3 dual-role and DisplayPort. The
> driver and bindings being upstreamed contains the DP parts, but only USB3 has
> been tested by me (upstream does not yet have a DRM DP bridge driver for this
> platform).
> 
> [...]

Applied, thanks!

[01/12] dt-bindings: soc: rockchip: add clock to RK3588 VO grf
        commit: c110b7e2d6bdad21caab3f4706a969b05aff7f62
[02/12] dt-bindings: soc: rockchip: add rk3588 USB3 syscon
        commit: 85a33544afa8895803798553c7510658dcbd3546

again just grabbed the grf bindings for now :-)

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
