Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4672C54E67
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 17:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mca7vsfDUfTm2hfxKdfRstKIZsBS7MDVtNFz0UFQydk=; b=y3WJXMMHjiLM8J
	yY6Ij4Jk9mOxv2cpcAjRhpAYk4ZoBt7QuAFauM1W+BcsMBtEO8EGHkrxfGdwBXrf8565ruPJScLz1
	w4RrtDFBBBdlNqNh+psuR6spDdK+9c53JzFRoOkIh+VAv9MteZWP+oRiyBL5RiBPVpFmtUwz3IkGz
	NOXheZEDjr15JpzI4molv3/BvFROxs10PkhvNbmrz+IXatDkqKWuwMyZMCnM0S0kLLqj6ve8tw/7a
	zNsc1+gAZLN8Y8fqwjzIlGXdY2+aXOvFSWMNhej48DftTPKEFISC14S2BSw5RSG0ajtFoga22EHKS
	AN3sRKabCtPQVU2emHWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpAYm-00000005iVN-03Ud;
	Tue, 26 Mar 2024 17:26:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpAYf-00000005iRM-46QJ;
	Tue, 26 Mar 2024 17:26:00 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rpAYb-000658-AE; Tue, 26 Mar 2024 18:25:53 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 0/4] arm64: dts: rockchip: add wolfvision pf5 mainboard
Date: Tue, 26 Mar 2024 18:25:51 +0100
Message-Id: <171147393347.1162935.10169333694073762099.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240325-feature-wolfvision-pf5-v1-0-5725445f792a@wolfvision.net>
References: <20240325-feature-wolfvision-pf5-v1-0-5725445f792a@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_102558_045836_08691A5D 
X-CRM114-Status: GOOD (  12.21  )
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

On Mon, 25 Mar 2024 15:22:30 +0100, Michael Riesch wrote:
> Habidere,
> 
> This series adds the device tree for the WolfVision PF5 mainboard, which
> serves as base for recent WolfVision products. It features the Rockchip
> RK3568 and can be extended with several different extension boards.
> 
> The WolfVision PF5 IO Expander is one example of such an extension board.
> The corresponding device tree overlay is also included in this series.
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: add wolfvision vendor prefix
      commit: 37a6d5864fb8226c97eefa59a79de57571e1fee8
[2/4] dt-bindings: arm: rockchip: add wolfvision pf5 mainboard
      commit: 6be2ad17acb76c47e544864467680a7b738d7eb8
[3/4] arm64: dts: rockchip: add wolfvision pf5 mainboard
      commit: 0be29f76633a447e15fc58066ea47688974e68d9
[4/4] arm64: dts: rockchip: add wolfvision pf5 io expander board
      commit: 28799a7734a0e1a38d01b511ca08d33d8cf91b6c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
