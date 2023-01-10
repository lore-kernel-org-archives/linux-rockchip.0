Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0DD0C63797
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 14:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2gMfA0eqAHDLGwnu7cqcIF7RMTPtRMf2oL5nMpIZ/jI=; b=mA78qT9T4tufJl
	uyN6PxQ3js/5bNzJFN0vVXjYKquHFV0yN4DKpwKT4O0yuI/ynvbgFNLRPlRYzTJLIk5+3XwMKc4tz
	03h6pH2jOfCKalFe1Zgln5AVDyBQkV6rERzVD+jkKK3u4v86ELQ9mnorkr5i8jHxAbvFnek8HSeL6
	EzysF1CaAJhmS/sf4omQuKScr09Zktz2+ivaN4s17wcdhs2KvxAGI4gHBfNHVBM9RPfhSmTlOvnda
	NBEpTnJ3qS6rlCnPDp9AuqELZ3aoV5pvRp6y+Lip/TOVWlGiZebv8F0QHtvnIhpsXO1SdJUlL1hym
	zLEFA869yzo1LtYLpuNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFG1-007BjC-5u; Tue, 10 Jan 2023 14:05:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFF9-007BDR-Qd; Tue, 10 Jan 2023 14:04:50 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFFF4-0004vx-2X; Tue, 10 Jan 2023 15:04:42 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Jarrah Gosbell <kernel@undef.tools>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	phone-devel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rk3399-pinephone-pro: reduce thermal limits
Date: Tue, 10 Jan 2023 15:04:36 +0100
Message-Id: <167335938206.2550251.13143254102555744501.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221207113212.8216-1-kernel@undef.tools>
References: <20221207113212.8216-1-kernel@undef.tools>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_060447_891969_922B1C21 
X-CRM114-Status: GOOD (  11.49  )
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

On Wed, 7 Dec 2022 11:32:13 +0000, Jarrah Gosbell wrote:
> While this device uses the rk3399 it is also enclosed in a tight package
> and cooled through the screen and back case. The default rk3399 thermal
> limits can result in a burnt screen.
> 
> These lower limits have resulted in the existing burn not expanding and
> will hopefully result in future devices not experiencing the issue.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rk3399-pinephone-pro: reduce thermal limits
      commit: 33e24f0738b922b6f5f4118dbdc26cac8400d7b9

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
