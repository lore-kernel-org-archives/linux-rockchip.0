Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7B31EB64DD
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jul 2023 18:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0v6fTgNcsCE4Q6kQaBcvUC+u1FLex+vZZjQMnk+ecT4=; b=QC11ufHFnMbLMJ
	0GyN+Nkex5xCcjnc2hlOhpLNv/bPJt4smGJ5LM9PvKC/0f3z6POhVAqlUDuU94/mxFeyLaLfhi2OX
	hvpiWfFp+dsIcaFWYmxVVdmwubwZjFSSe3134neyXgkugKLETUwubtLjiFJcyY3VoG65/ejeVyHnh
	8bTsE+tlJIHmxCpaDw8iECDao5q9ozcax41UM3ijJL2R8PuFZZacFCGnF5X1LB1DZzJaloYbgAfsv
	wIBWamOdPtKbk4c4VEW+t84mTtdM2vtw9Kk64dvwGu67u0hA65BnoPsc3DXrw1SpajxXHoAxq+yMK
	ptlHuyubxJuv41IkFKIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOMqU-008GCT-1D;
	Tue, 25 Jul 2023 18:33:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOMqP-008GAh-2Q;
	Tue, 25 Jul 2023 18:33:14 +0000
Received: from [185.230.175.137] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qOMqD-0006Er-BR; Tue, 25 Jul 2023 20:33:01 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix regulators and enable SATA on Radxa E25
Date: Tue, 25 Jul 2023 20:32:58 +0200
Message-Id: <169030979754.2939984.9282914456412331786.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230724145213.3833099-1-jonas@kwiboo.se>
References: <20230724145213.3833099-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230725_113313_790621_46A67B15 
X-CRM114-Status: GOOD (  13.20  )
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

On Mon, 24 Jul 2023 14:52:16 +0000 (UTC), Jonas Karlman wrote:
> Despite its name, the regulator vcc3v3_pcie30x1 has nothing to do with
> pcie30x1. Instead, it supply power to VBAT1-5 on the M.2 KEY B port as
> seen on page 8 of the schematic [1].
> 
> pcie30x1 is used for the mini PCIe slot, and as seen on page 9 the
> vcc3v3_minipcie regulator is instead related to pcie30x1.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Fix PCIe regulators on Radxa E25
commit: a87852e37f782257ebc57cc44a0d3fbf806471f6

[2/2] arm64: dts: rockchip: Enable SATA on Radxa E25
commit: 2bdfe84fbd57a4ed9fd65a67210442559ce078f0

As you can see, I've split them in two. Please check that I didn't
mess anything up. Having an "and" in the commit subject is always a
very strong indicator that a split is probably a good thing ;-)


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
