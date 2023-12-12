Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14B58C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 20:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tw2ZDzSAe/mQkJQkiDw0uqG5XNePgMhSYa29IYKWBMc=; b=g7CupYO171R0Hg
	jPzC9EwIUGtvIZDnbNrALPIkCoQshEmAAIYomZ9ZzP2Y0kjW9iAcVl5zx3lyRG5u3NDnQbexOVIpK
	SW86+NnMyKc3hBmI+GnQBSqYsKNHU7wc8pkgb7S6FZclbKnTqXi2loJjeWJDosejtHrnA0L/zN+YQ
	HGLwdRNCg2jc+bEx8SrJdBDELERsQHMMNPqMZ4DTCXo/R6VpzQUlKrYk9H8JKMjIFVXF3xf4+svQX
	O9MW7EO7CY3fo3t8XlzHDAGFx7l4/6E2mzTaxze2CNphWMZ0HnNjx7H/G6lYok2fecTxF5z13cVzc
	LpCPU8LQuQn6bQOSYFPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rD9BC-00CgAL-1A;
	Tue, 12 Dec 2023 20:16:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rD9B6-00Cg88-2p;
	Tue, 12 Dec 2023 20:16:29 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rD9B0-0006LK-2c; Tue, 12 Dec 2023 21:16:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com,
	Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	linux-arm-kernel@lists.infradead.org,
	mripard@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v1 1/3] dt-bindings: drm: rockchip: convert inno_hdmi-rockchip.txt to yaml
Date: Tue, 12 Dec 2023 21:16:18 +0100
Message-Id: <170241214695.534713.7214465445904239057.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
References: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_121628_915060_C9D5FAD0 
X-CRM114-Status: UNSURE (   7.65  )
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

On Mon, 4 Dec 2023 18:39:03 +0100, Johan Jonker wrote:
> Convert inno_hdmi-rockchip.txt to yaml.
> 
> 

Applied, thanks!

[2/3] ARM: dts: rockchip: rk3036: fix hdmi ports node
      commit: 27ded76ef0fcfcf939914532aae575cf23c221b4
[3/3] ARM: dts: rockchip: rk3036-kylin: add hdmi-connector node
      commit: 569b26af7919c15a8ce231b4fae29cfbd811f144

And changed the connector-type to "a" :-)


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
