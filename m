Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A95E8C30653
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jun 2024 19:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CrNUMmP/P7OdCiR5c6mwH54LKEnbtGinVFdCXFgX1cQ=; b=p3p/PMdt9Ksi/a
	BGiRWx5u4eFKqV/7Z506ybkN8z3Rp9EHX6PFdFcbCb3x0xHyE0DQf/xE3R4eymk/e3Ih5wvc2201a
	zfb47TLSDyhaBR63mNLgw07qLFbl1FM0Pv/1vcNNJ6eCLA0RETupO56yv95FVASJKyau5sqf7ejsh
	rFizs8dAHRrwhBlGYbCtoE54lJhbf/FP/270zztzzvYu2HhertSc4WeXoupoG+4cjfxUQAQVtHT2t
	r+HRn8K95HQczSH49nO1UibJAtnKSUMYX1M2FGJKyE+sR0AXVM2xFottGHkI0yTKK66dNaatX4qPM
	0nwm0z8OsCNb0GmARmjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMumb-0000000BV8W-3c6Z;
	Thu, 27 Jun 2024 19:27:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMumT-0000000BV5i-0apH;
	Thu, 27 Jun 2024 19:27:42 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sMumL-0000wK-Jz; Thu, 27 Jun 2024 21:27:33 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1] ARM: dts: rockchip: rk3036: add #sound-dai-cells to hdmi node
Date: Thu, 27 Jun 2024 21:27:28 +0200
Message-Id: <171951643515.1057727.8654296483792075000.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <55d302e5-c018-4b93-84c1-8cf75162e939@gmail.com>
References: <55d302e5-c018-4b93-84c1-8cf75162e939@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_122741_199135_639E1AEF 
X-CRM114-Status: UNSURE (   9.65  )
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

On Mon, 24 Jun 2024 19:43:29 +0200, Johan Jonker wrote:
> '#sound-dai-cells' is required to properly interpret
> the list of DAI specified in the 'sound-dai' property,
> so add them to the 'hdmi' node for 'rk3036.dtsi'.
> 
> 

Applied, thanks!

[1/1] ARM: dts: rockchip: rk3036: add #sound-dai-cells to hdmi node
      commit: d45db4fcd3ae0d13191c8db00583f0bc49d9795d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
