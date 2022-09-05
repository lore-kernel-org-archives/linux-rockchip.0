Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1C86ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Sep 2022 10:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZiFXv4L06HSeUJZkwNEb3w1glZq30KF4nP6IF26Wwr0=; b=0TEnNoRkGYThRR
	8W1JAfvRz7EE06NAWrFqeHIYtc7XWUsncckn87Gf0/xJKLNzx/1E0BMDGB2FszlhkK7W1huafDeKy
	5a1u7unWDEtr6sBLsPcQpSye9oxJ/hTt5zmP6LF8311F/3Fih1hsbyowizOYbaabcC80dG/KnKzcy
	eRZqrRGA0fkzZZXuNLpzhUV8jHzmedWl4cFfeu8jGXsI8QAenteH0NzLFMNMF0Cb/h92aJYeQHaVE
	z7MyZWpg6McsDWLYUrD1mrKfZh+zDr9ORCeM/RxgiS1eI7ludlgISROmmd+bRo3x7WbsO+k/KzoZP
	v47a5hWvAnT6c1veKEXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9m0-000jGH-Ie; Mon, 05 Sep 2022 10:56:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8v4-00HCgt-6V; Mon, 05 Sep 2022 10:01:35 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oV8v1-0005Fc-CW; Mon, 05 Sep 2022 12:01:27 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: fix property for usb2 phy supply on rock-3a
Date: Mon,  5 Sep 2022 12:01:26 +0200
Message-Id: <166237207205.2457878.7965584003024415305.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220905064335.104650-1-michael.riesch@wolfvision.net>
References: <20220905064335.104650-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_030131_937480_3181A412 
X-CRM114-Status: GOOD (  10.04  )
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

On Mon, 5 Sep 2022 08:43:34 +0200, Michael Riesch wrote:
> The property "vbus-supply" was copied from the vendor kernel but is not
> available in mainstream. Use correct property "phy-supply".

Applied, thanks!

[1/2] arm64: dts: rockchip: fix property for usb2 phy supply on rock-3a
      commit: 43e1d6d3b45c4e7e25171ec04a10d09969b0f889
[2/2] arm64: dts: rockchip: fix property for usb2 phy supply on rk3568-evb1-v10
      commit: 1988e3ef0544bbe54cffa4ec30a5883e5a08c2b6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
