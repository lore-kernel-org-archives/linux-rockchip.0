Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31F47C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Nov 2022 11:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jyHvN4fRDETJIa2KJnE5WqwAm1QCfSDimP0ZBkPbWic=; b=4xKYcU4Jcqf33C
	zEpRzN5xbwQrzEKU+dS8jzSHr3wq/OZ4NZKtC9ii9mEfEnGDtj2IPD5NGoflO/n8xNEKoTYB1zOsj
	15ijS9Oafd70FO6CD7aHwTR+/6+eN49jEZmpDVNfEEVJL0GTiJ2dc3hVh0JkaOGDEhv9DAxy4T+1c
	HUm+g0sWorllGCbPFxYkeDJyj7O5gj3VOjkHFPA9lSa/nPgvKH2wFhlemqZSGaGkxyrMbqTCifYL2
	1P594d6cDfWcJii+KzttXlbkP7uAaWZYsfwGB/m5TjoWH0Z9JWZB8Snm8M71xgYd1tBm0huALElZO
	PpyJ4RXtm3/S1shbhQDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1outqz-00ANm0-FI; Tue, 15 Nov 2022 11:11:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1outpl-00AMub-Tp; Tue, 15 Nov 2022 11:10:31 +0000
Received: from wf0498.dip.tu-dresden.de ([141.76.181.242] helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1outpe-0007ai-Uv; Tue, 15 Nov 2022 12:10:23 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Peter Robinson <pbrobinson@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add HDMI supplies on Rock960
Date: Tue, 15 Nov 2022 12:10:18 +0100
Message-Id: <166851058435.863884.5331116398548373521.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221102143242.1126229-1-pbrobinson@gmail.com>
References: <20221102143242.1126229-1-pbrobinson@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_031030_014332_18F0C3C6 
X-CRM114-Status: GOOD (  11.35  )
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

On Wed, 2 Nov 2022 14:32:42 +0000, Peter Robinson wrote:
> Add the avdd-0v9-supply and avdd-1v8-supply regulators to
> hdmi node for Rock960 to silence the following dmesg warning.
> 
> [    6.582782] dwhdmi-rockchip ff940000.hdmi: supply avdd-0v9 not found, using dummy regulator
> [    6.583094] dwhdmi-rockchip ff940000.hdmi: supply avdd-1v8 not found, using dummy regulator
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add HDMI supplies on Rock960
      commit: ede9c902220036a7e18d753d2b2352b59757aa67

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
