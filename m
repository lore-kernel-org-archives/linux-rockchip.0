Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B103FC2BB3F
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 15:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8LlFqSuOFwgn9LhcE/uXaMbC5PWFbwkOd1373ncXJU=; b=rR5o462uIVII8U
	kYgMZhY1uqW6j+rJW4AzX+e9oXtY5IY+B0jLZluBHjp7KcBrEhxz+2DCo1jsYTS2a/YPpLqWFoOfn
	nLvHoaHO+9JZuXVUadoEguwMHLtrFSYZdj2nnnl6svCY/hUQyFSXQQOOS9JBXJdCNMxnaaqiuB1K3
	0+HLE3usR6rh1bxtGqiVxPqU9z52igSqWxckI806ubWMQHCe9m1klcaz/SsVn6Yu74aT/SMuaPjXw
	YsXGqcH1TqlgiAr+T1dni0e4Y+NjzdW6fAdTbHiQZ/G/TMbcDrLVWL9InA/8cj3zP49byx/cA/TAv
	nLrpRKWGuWQZnvPxfllQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r56Ft-00Cgey-1n;
	Mon, 20 Nov 2023 15:32:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r56Fq-00Cgbp-0E
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Nov 2023 15:32:07 +0000
Received: from [194.95.143.137] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r56Fo-0008VB-0z; Mon, 20 Nov 2023 16:32:04 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	daniel@ffwll.ch,
	Chris Morgan <macromorgan@hotmail.com>,
	devicetree@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	dri-devel@lists.freedesktop.org,
	conor+dt@kernel.org,
	neil.armstrong@linaro.org,
	sebastian.reichel@collabora.com,
	sam@ravnborg.org,
	airlied@gmail.com,
	robh+dt@kernel.org
Subject: Re: (subset) [PATCH V4 0/6] rockchip: Add Powkiddy RK2023
Date: Mon, 20 Nov 2023 16:31:53 +0100
Message-Id: <170049419903.1671702.16288351074631545361.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231117202536.1387815-1-macroalpha82@gmail.com>
References: <20231117202536.1387815-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_073206_176269_17A09235 
X-CRM114-Status: UNSURE (   8.63  )
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

On Fri, 17 Nov 2023 14:25:30 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Powkiddy RK2023, which is extremely similar to
> existing Powkiddy RGB30 device.
> 
> Changes since V3:
>  - Corrected commit subject lines.
> 
> [...]

Applied, thanks!

[4/6] dt-bindings: arm: rockchip: Add Powkiddy RK2023
      commit: 213615d742f0c039ab73f8946ae18000cf2c7b65
[5/6] arm64: dts: rockchip: Update powkiddy,rgb30 include to rk2023 DTSI
      commit: 46d84ceb7eec85b60e8a5eb0dfb2fae6a1bf4166
[6/6] arm64: dts: rockchip: Add Powkiddy RK2023
      commit: e926380ea2a2b10d01069917e6d678ca818f6ad8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
