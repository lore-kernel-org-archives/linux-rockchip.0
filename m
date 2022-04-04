Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05C06C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 09:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vgYHDX7xB6fHZj/ubH4jWx3JA4GDbAV4p8LOzLYIVqE=; b=taG7zGEaIgO6WF
	9LW823wVk4lSkHIJw98vPYN0zwhj58qI8epaiTGD3t0Wwz39XPndYLRFfEfaxkW9Tad4AnuhfwVmy
	gUk0BCIfzx72y4Kjdpl4bVT/cIt5QEzg3eF9c7vPrRpYY3Ylgblz69KSs3z/yE2jY6RACx9cbE9MU
	HqDI7ViVwfIIXUO+z7wtI0nv8QjnPySkLkyYemIxn6sZSWTOjVgw1V4cryMBbQWFetcuCOjGNtpc2
	o2Sjlitp+mYamcq6ovEfvwaOgTyGVGKOhWmmC69QVBWqO2D0ajaMn+JUhtSMyvWG/SrtnEyzV+Sq4
	JWSxBlQeukHhltsH0jEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbIZY-00Dzp2-Va; Mon, 04 Apr 2022 09:00:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbIZJ-00DzcO-Mr; Mon, 04 Apr 2022 09:00:15 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nbIZB-0008Ew-GN; Mon, 04 Apr 2022 11:00:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Frank Wunderlich <linux@fw-web.de>
Cc: Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v1 0/2] Change Bananapi-R2-Pro board to match V1.0
Date: Mon,  4 Apr 2022 10:59:59 +0200
Message-Id: <164906273049.1398682.587469799631775473.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220402110045.104031-1-linux@fw-web.de>
References: <20220402110045.104031-1-linux@fw-web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_020013_838803_DCB42F65 
X-CRM114-Status: GOOD (  11.16  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Sat, 2 Apr 2022 13:00:43 +0200, Frank Wunderlich wrote:
> Mainline Devicetree was created for v00 prototype that was not in
> public sale and only shipped to few developers. V1.0 of the board
> has some changes in io-domain and gmacs are swapped.
> 
> Change mainline DTS to match the current hardware.
> 
> Frank Wunderlich (2):
>   arm64: dts: rockchip: Change io-domains of bpi-r2-pro
>   arm64: dts: rockchip: Add gmac1 and change network settings
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Change io-domains of bpi-r2-pro
      commit: 34fc952867aa2a2e257bf2bcbbaac97ac91f8bd1
[2/2] arm64: dts: rockchip: Add gmac1 and change network settings
      commit: 5c8e82ed3a4a5c8023b2959d8f3292f7291e7227

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
