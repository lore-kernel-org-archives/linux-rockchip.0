Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8530FC54EBE
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 14:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RXV+keSj9l/F89P0v8Af6oVuDR2GHGvfaOiM3FXNqwI=; b=WZKqTicETR2TE8
	EzY0Cn2xotgmaCSTmpMVr57PjSTaIX9k1+UkFQmi65CPJJN76CloFgRHWNfz6QSBh/cxrUXHkKmJj
	4vHLmjlb8uKvwiQT/8/TXOoI+nAC1bdtTXO8yPWZm2ck3Ipm0RTNkZVcmdY/7c3tyZ2x67A9aChqh
	fjSYmlwSPuSu4evZ9WECaxPwkNQKqtYClu+QTFNTrCaTZwHqlHbyzJCLm6CxeVHULxGiSC13I380E
	n/wRCMlXY+O/zDLjn8g2n8MyrXRWhd/XA2kRdqQTIV+DEYYeP1M/Ehrof6s5MCRAhP4m803nuIjO9
	PIMGXneUZgVZgaeai4Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFGF-007Bw2-Aa; Tue, 10 Jan 2023 14:05:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFFA-007BDY-3C; Tue, 10 Jan 2023 14:04:50 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFFF3-0004vx-Ht; Tue, 10 Jan 2023 15:04:41 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Andy Yan <andyshrk@163.com>,
	linux-arm-kernel@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	lasstp5011@gmail.com
Subject: Re: [PATCH v2 0/2] Add support for EmbedFire LubanCat 2.
Date: Tue, 10 Jan 2023 15:04:34 +0100
Message-Id: <167335938204.2550251.1765349953442710324.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20230108110708.2214718-1-andyshrk@163.com>
References: <20230108110708.2214718-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_060448_153084_0638AC63 
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

On Sun, 8 Jan 2023 19:07:08 +0800, Andy Yan wrote:
> Lubancat series are rk3566/8 based SBC from EmbedFire.
> So these Lubancat 2 patch should apply on top of Wenhao's
> series for LBC1 [0].
> 
> [0] https://patchwork.kernel.org/project/linux-rockchip/patch/Y6Ud9MhRjCVAYMCj@VM-66-53-centos/
> 
> Changes in v2:
> - keep only one blank line
> - Fix underscores in node pmic-int
> - Keep rockcip,pins of pmic-int in one line
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat 2
      commit: 7943a9ddb48c986008879b43342ac2bf81d5c3a3
[2/2] arm64: dts: rockchip: Add dts for EmbedFire rk3568 LubanCat 2
      commit: 49fda9e691c13fd4fb438b8290b064ef42e8b2a5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
