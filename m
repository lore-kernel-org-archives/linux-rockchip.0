Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 871EDC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Oct 2022 12:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kT1ETs/CD0Xh7SLFRthlgLV1LLdr5nRfhY8S9eGWFX8=; b=qeOyYiPIGuQRgb
	rHpGaBaESgMSexGtdO7Mzd6fDuZm7+XoKM9lMHt5GQVWCHbVSd5VqihS6ZB29nZ5AbBW7F22JD1aP
	bT9GjwG8BrY6fPkTyc9Bbr5LPc07nbSkhK/1qtlwvbgnSE5CAIoQWGB8AcpglrjpgQHWmiwygkHxg
	Vf/5BZOc963fa+D72UQwKOiAel/EZXRKtcZpvIH08Dx3ovpa5XdV65NqMSIuslO+b48kj2C9/wOFn
	DPTXjbtLUe+juUn5dtaEJXUWYG03LvLcbBKOKHw+0v4lO9ta3rmE/LQNmUdH/YBBGwd91hXCwjaHk
	FsCJZCsFkNexUhUJTK4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPKp-00BZU8-20; Mon, 17 Oct 2022 12:35:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPKT-00BZJj-9k; Mon, 17 Oct 2022 12:34:50 +0000
Received: from p508fc122.dip0.t-ipconnect.de ([80.143.193.34] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1okPKO-00087p-5E; Mon, 17 Oct 2022 14:34:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jensen Huang <jensenhuang@friendlyarm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Chris Ruehl <chris.ruehl@gtsys.com.hk>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Vinod Koul <vkoul@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: add enable-strobe-pulldown to emmc phy on nanopi4
Date: Mon, 17 Oct 2022 14:34:38 +0200
Message-Id: <166601006786.173248.18425643235756984622.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928091129.20597-1-jensenhuang@friendlyarm.com>
References: <20220928091129.20597-1-jensenhuang@friendlyarm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_053449_354098_3131FED0 
X-CRM114-Status: UNSURE (   9.95  )
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

On Wed, 28 Sep 2022 17:11:29 +0800, Jensen Huang wrote:
> Internal pull-down for strobe line (GRF_EMMCPHY_CON2[9]) was disabled
> by commit 8b5c2b45b8f0, which causes I/O error in HS400 mode.
> 
> Tested on NanoPC-T4.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: add enable-strobe-pulldown to emmc phy on nanopi4
      commit: 463be3cb357dab7d7e4d8dcc7c15c642e10c5bef

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
