Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2219C41513
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jul 2023 18:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k1pQopeD9Il++IPeUuHFAmO3YdmR81cECWdkt1FIMmQ=; b=G6auEnu2dDj7EK
	bsIM/yMBOXHLZbijMoGwQ46EGznm8ZPdz145bf+axQawQX4EkRtHZFR26niOPNQpzXH6unqRMJ/Qc
	FQODoXywkV+RgpOMgqCNNEr8hhvYy9g2krosRG2ZpSvBc8GDX5wLWrq+lwz5Lfl1jCrC4oNx00nni
	Lwp9e7hMy1uvMciEyN471fVPWdztsMTjnXIFpsZWLgRYE+i1CR1s7YCnluuZuLOvMotC4yO6+WoaE
	TWWd3JjibacEfAuLrilRTu6A1k9CiOuYTbmEK/UsWqeiWjxn63agivgrxAkVMwdpdEYOusJPncTy0
	IUMyJmSqfYvTsEXQGY/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOMqL-008GAE-26;
	Tue, 25 Jul 2023 18:33:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOMqJ-008G9n-0v;
	Tue, 25 Jul 2023 18:33:08 +0000
Received: from [185.230.175.137] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qOMqD-0006Er-Pt; Tue, 25 Jul 2023 20:33:01 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: rk3399: switch to enable-gpios
Date: Tue, 25 Jul 2023 20:32:59 +0200
Message-Id: <169030979754.2939984.15402031320478531435.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230725142616.157405-1-krzysztof.kozlowski@linaro.org>
References: <20230725142616.157405-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230725_113307_325959_536A0062 
X-CRM114-Status: UNSURE (   9.41  )
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

On Tue, 25 Jul 2023 16:26:15 +0200, Krzysztof Kozlowski wrote:
> The recommended name for enable GPIOs property in regulator-gpio is
> enable-gpios.  This is also required by bindings:
> 
>   rk3399-gru-bob.dtb: ppvar-sd-card-io: Unevaluated properties are not allowed ('enable-gpio' was unexpected)
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: rk3399: switch to enable-gpios
      commit: fcedb69be2700d5d07634bcdf06ca98e20a19677
[2/2] arm64: dts: rockchip: px30-engicam: switch to enable-gpios
      commit: a02913e886351f039b9d5346be7926c1b05a3eef

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
