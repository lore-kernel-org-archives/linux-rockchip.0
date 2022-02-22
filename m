Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6033DC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Feb 2022 23:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C1p/MQMA1ErkCc5P1J/UpHUug4n2ll5KyixOfyPz0DM=; b=S4M05ujURzkQzd
	ZUvjk/nWCqN2Z3a4Pc2sw/A1LBE/cB15wBsPNtPkIt7tD2n8R/SHklaSgPXHrzCdxnuUBXsPOGcUi
	+N1tzxcwXjYVe1xt7+PctfjBy7icd0aHwNlg3XOSgylx6J61qocEyfpb1QNAWGwKc4nCl52K+rWCe
	PFUgUm1epAkbZQqUtFRbt0R6mDCRXd2WH7D3sbG7V9ueAI7V5hXRfk1rU/0REgxEsiapuRCKAS3ru
	ghaqZVrPd6wtKxfrT8KGXIBPk3XyQHNb4WGmlGnxg82oDHiIhMauk5aYx8Q6RWb8n7dgr33tan9BI
	IGgEmPIm8y2uJF6m4p6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMeZ6-00BuYD-7R; Tue, 22 Feb 2022 23:27:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMeYw-00BuUk-Sh; Tue, 22 Feb 2022 23:27:24 +0000
Received: from [185.156.123.69] (helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nMeYp-0006wl-RD; Wed, 23 Feb 2022 00:27:11 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-mediatek@lists.infradead.org,
 Douglas Anderson <dianders@chromium.org>, Lee Jones <lee.jones@linaro.org>,
 linux-pwm@vger.kernel.org,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Benson Leung <bleung@chromium.org>,
 linux-arm-msm@vger.kernel.org, chrome-platform@lists.linux.dev,
 devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Guenter Roeck <groeck@chromium.org>, linux-kernel@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: (subset) [PATCH 0/4] mfd/pwm: dt-bindings: google,
 cros-ec: include generic pwm schema
Date: Wed, 23 Feb 2022 00:27:08 +0100
Message-Id: <164557235424.1264579.14486504733557463529.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
References: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_152718_954228_7945AB19 
X-CRM114-Status: GOOD (  11.78  )
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

On Mon, 14 Feb 2022 09:19:12 +0100, Krzysztof Kozlowski wrote:
> DTS patches are independent. Not tested, but I really hope no downstream kernel
> depends on pwm node naming... If it does, please change it to compatible. :)
> 
> Best regards,
> Krzysztof
> 
> Krzysztof Kozlowski (4):
>   dt-bindings: pwm: google,cros-ec: include generic pwm schema
>   arm64: dts: mt8183: align Google CROS EC PWM node name with dtschema
>   arm64: dts: qcom: align Google CROS EC PWM node name with dtschema
>   arm64: dts: rk3399: align Google CROS EC PWM node name with dtschema
> 
> [...]

Applied, thanks!

[4/4] arm64: dts: rk3399: align Google CROS EC PWM node name with dtschema
      commit: 474a84be692d893f45a54b405dcbc137cbf77949

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
