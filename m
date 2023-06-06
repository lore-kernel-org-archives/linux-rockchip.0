Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A78F9C77B7A
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jun 2023 17:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ddY71sfFi+2rgCb/EdSMVydtFmKqYm2/m7GjrhitmJM=; b=K+vzi/mj0oR2Cb
	BfhcJ78N1Sz7AgQHiQ2bIWHRJvNqRcl48pnBX2UhtVZM54AKSe7JeXfnYitiIW5A08wCVpHDiVT0P
	u7KHm8wmyeIbbFUrdmtK1pZddbGqEmekqMcFF9F0fN8Ht3e29OrxRTEquaL+6HZ28yWVHisJObkkW
	RfOp8Ln/SNyXQPrF3+V1cJS8sJKkZrhHym6TJGTMeOddbXVeYOmtWBokgTmjKcDjEiZkL3upUjK4Q
	oLb2X31bANTP/na4e4q9QPp77w4lhV1IxR5r6NlPkjjqXhpYDvFLNYSJSIxOBPpHN4RksKc8YlxK8
	WEZhZLAxEQM5fRpiTvfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6a9W-002XIb-2Z;
	Tue, 06 Jun 2023 17:07:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6a9S-002XF3-1G;
	Tue, 06 Jun 2023 17:07:24 +0000
Received: from [91.65.34.120] (helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1q6a9N-0001ED-P3; Tue, 06 Jun 2023 19:07:17 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Peter Geis <pgwipeout@gmail.com>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	stable@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Ondrej Jirman <megi@xff.cz>,
	linux-kernel@vger.kernel.org,
	Andrew Powers-Holmes <aholmes@omnom.net>
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk356x: Fix PCIe register and range mappings
Date: Tue,  6 Jun 2023 19:07:10 +0200
Message-Id: <168607097307.1436521.10713496866831894596.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230601132516.153934-1-frattaroli.nicolas@gmail.com>
References: <20230601132516.153934-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_100722_424606_2AB21548 
X-CRM114-Status: GOOD (  10.54  )
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

On Thu, 1 Jun 2023 15:25:16 +0200, Nicolas Frattaroli wrote:
> From: Andrew Powers-Holmes <aholmes@omnom.net>
> 
> The register and range mappings for the PCIe controller in Rockchip's
> RK356x SoCs are incorrect. Replace them with corrected values from the
> vendor BSP sources, updated to match current DT schema.
> 
> These values are also used in u-boot.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rk356x: Fix PCIe register and range mappings
      commit: 568a67e742dfa90b19a23305317164c5c350b71e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
