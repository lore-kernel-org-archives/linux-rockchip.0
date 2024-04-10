Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18BC2CD1299
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 05:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MIFc6b/3v9lyDw1VmfFMBzZednapXolIrGnBkQ5AkHY=; b=PcLcZIi6X47rpi
	a5FXrynX+KARS/utuZrs2MOyrYQlIVsTegZrAWznS0UegZDhLY5Ys2xx/bHg69TwLiKRFlYmRSNWl
	kgr2RrjA3SdmIf583b+tkZfg6ObxH+iMwqHQ2c+oMY2oa3Ht3zIoRVrf0kDWRZeXJ2jhAM+A+iNX0
	lsJUqbitONNHy+bUpAmvO2WHnUrpLnBfE0D+zfY6mArmxQkXrpPAurtRwGLVQu6psKnQLi1wWzucI
	fh4EWF4xbiyP2qpt0peRBmaBJa56s8aJTfHnUsiYOMSudtKKeYe8gkXvw6dsjmw4SfI+1s0pWCfVb
	H36cH8/KiBNj4BnxuHNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruQJG-000000059Ae-1GCB;
	Wed, 10 Apr 2024 05:15:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruQIq-000000058pP-45Ct;
	Wed, 10 Apr 2024 05:15:22 +0000
Received: from ip-185-104-138-50.ptr.icomera.net ([185.104.138.50] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruQIl-0008Ut-Sa; Wed, 10 Apr 2024 07:15:16 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	David Jander <david@protonic.nl>
Subject: Re: [PATCH 0/2] clk: rockchip: clk-rk3568.c: Add missing USB480M_PHY mux
Date: Wed, 10 Apr 2024 07:15:05 +0200
Message-Id: <171272604794.1867483.1180962337998524101.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240405-clk-rk3568-usb480m-phy-mux-v1-0-6c89de20a6ff@pengutronix.de>
References: <20240405-clk-rk3568-usb480m-phy-mux-v1-0-6c89de20a6ff@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_221521_133353_89046EB2 
X-CRM114-Status: UNSURE (   8.85  )
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

On Fri, 05 Apr 2024 09:38:35 +0200, Sascha Hauer wrote:
> This series adds a missing clock for the Rockchip RK3568.
> 
> 

Applied, thanks!

[1/2] dt-bindings: clock: rockchip: add USB480M_PHY mux
      commit: 575bc7b477e3f6c505f49c3d99d7be965594d640
[2/2] clk: rockchip: clk-rk3568.c: Add missing USB480M_PHY mux
      commit: 007bd99669eae90f23817023dc78dbb38e76437d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
