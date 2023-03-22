Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68B46C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Mar 2023 23:41:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7x+fIskTJF38g3uMmplT8mv/4DgDbrYRRn7d6WlhDaM=; b=gCr0MmkjEHRuYJ
	xs0QW1q6cmRpqDixZFsdT+bFfnHKPExoGx7c9VkCfVqCceMid0wGKVZZ5sIfE1BbE+6/86ScIoY5f
	BPxjBxXVumFG71T6sfcYIDzbSYUcYtaKRAlS1RsZaKSiM+uKgcSTLZneeI+O3tYzFR6pAG/6uyBEh
	58/v43TAu6TpJR4lxBJzAYT5Ll8+4tI7+ZgHX+oZLqtHwUhBTXHKSseoG5lhyQUWC2k/9/YOGZrm+
	B4hwYpeG8o3OGzMhA3L7HQlHNQnTstaUEwV4DPpFi2HkjJeQsDGoIuVn8EH9fh8WqREKr8RSbKhfG
	xqAI0x9jrrOMxtxGakFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pf84k-000BOG-2u;
	Wed, 22 Mar 2023 23:41:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pf84a-000BJc-17;
	Wed, 22 Mar 2023 23:40:53 +0000
Received: from p508fd58e.dip0.t-ipconnect.de ([80.143.213.142] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pf84R-0005ZV-Td; Thu, 23 Mar 2023 00:40:43 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	Robert Foss <rfoss@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	jonas@kwiboo.se,
	neil.armstrong@linaro.org,
	alim.akhtar@samsung.com,
	gregkh@linuxfoundation.org,
	devicetree@vger.kernel.org,
	sw0312.kim@samsung.com,
	philippe.cornu@foss.st.com,
	linux-rockchip@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org,
	kyungmin.park@samsung.com,
	hjc@rock-chips.com,
	jernej.skrabec@gmail.com,
	linus.walleij@linaro.org,
	inki.dae@samsung.com,
	robh+dt@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	daniel@ffwll.ch,
	linux-usb@vger.kernel.org,
	airlied@gmail.com,
	andrzej.hajda@intel.com
Subject: Re: (subset) [PATCH v6 01/17] dt-bindings: display: rockchip: convert rockchip-lvds.txt to YAML
Date: Thu, 23 Mar 2023 00:40:40 +0100
Message-Id: <167952842636.1588125.15379043637737791314.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_164052_408510_F15A1FF4 
X-CRM114-Status: UNSURE (   9.55  )
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

On Thu, 22 Dec 2022 15:22:14 +0100, Johan Jonker wrote:
> Convert rockchip-lvds.txt to YAML.
> 
> Changed:
>   Add power-domains property.
>   Requirements between PX30 and RK3288
> 
> 
> [...]

Applied, thanks!

[09/17] ARM: dts: rockchip: rk3288: fix dsi node
        commit: ea2d16f90629e3158307d0183cad5c40aa55c995
[10/17] ARM: dts: rockchip: rk3288: fix lvds node
        commit: 8a19e4c74d17ed8d1e6bc06b32c5b7b7c3b9fcfb
[11/17] ARM: dts: rockchip: rk3288: fix dp node
        commit: 95e2ac6ae9f2330557a6aef70bf15173e1dd9714
[12/17] arm64: dts: rockchip: px30: fix lvds node
        commit: 0d5e24918976edffffee006e07730434a36d264a
[13/17] arm64: dts: rockchip: px30: fix dsi node
        commit: 30322f812d4e0e75e2488c1d45aba94e51dd19bb
[14/17] arm64: dts: rockchip: rk3399: fix dsi node
        commit: f82fe7ad31530b38d2f61aa6ae68bd35c33f4ad0
[15/17] arm64: dts: rockchip: rk3399: fix dp node
        commit: d94024bd6342c6f3e88c5fac785a685c1974d48e
[16/17] arm64: dts: rockchip: rename vbus-supply to phy-supply in rk3566-box-demo.dts
        commit: fc440ea1732abb714150bb8f3d90672ccc679e2d
[17/17] arm64: dts: rockchip: rk356x: remove hclk from dsi node
        commit: cadda005961cd6a202ae6f8ff99f2bba35a31dc8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
