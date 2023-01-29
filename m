Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E1C5C636CD
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Jan 2023 13:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6SFThQLzLS+0OVSEqk26bwF7WGRMIcHKAXC9SDpPmtU=; b=dqogwdcT6QWw+W
	SKzppKGzbcCVZ+W/VyGzrIEwi6PbDAvjSMiXEpP1AF/NXpbZ7YiAnpVNN9ntY6qs4eNmSbml4/lHu
	n1ryesywLaJ2MXg3vrgPsmdualGmLsTuydOkUUXgVXdGtUFmelcP01Nt1cd0RUfhw5+0jTT8onHuy
	cTTx9gcUDyRT98AzUmz5fp2+E5bHh48UoW1jN8KT5XuPsAbtYaTquNvTjvY6ssm95JP3kTm3ElFRM
	cwGkDHgjluQJfqObumGV5tECwWyKnfB1XMv9fldsAc07tIVzXQP6mieeQKUZYkn6f1V1B10eRLmQ5
	R38ROHeaD1SBEBEUaObQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM7uJ-001VyI-9f; Sun, 29 Jan 2023 13:39:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM7tx-001Vqa-Fk; Sun, 29 Jan 2023 13:39:23 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pM7ts-0003rM-T7; Sun, 29 Jan 2023 14:39:16 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Sascha Hauer <sha@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Daniel Vetter <daniel@ffwll.ch>
Subject: Re: (subset) [PATCH v3 0/6] drm/rockchip: vop2: add support for the rgb output block
Date: Sun, 29 Jan 2023 14:39:11 +0100
Message-Id: <167499930025.3595793.9316815837713750123.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230124054706.3921383-1-michael.riesch@wolfvision.net>
References: <20230124054706.3921383-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_053921_561764_88690D9E 
X-CRM114-Status: GOOD (  13.46  )
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

On Tue, 24 Jan 2023 06:47:00 +0100, Michael Riesch wrote:
> This series adds support for the RGB output block that can be found in the
> Rockchip Video Output Processor (VOP) 2. Version 2 of this series
> incorporates the feedback by Dan Carpenter and Sascha Hauer. Version 3
> fixes a dumb mistake pointed out by Sascha :-) Thanks for your comments!
> 
> Patches 1-4 clean up the code and make it more general.
> 
> [...]

Applied, thanks!

[6/6] arm64: dts: rockchip: add pinctrls for 16-bit/18-bit rgb interface to rk356x
      commit: 381b6d432f6eb00e1faff763f55e67519af9fa23

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
