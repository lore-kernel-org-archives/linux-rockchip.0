Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78E53CD1297
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 05:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3YjJiJ2uQD0n7fqS3AkEb7JRVihQMS6tCfah+eSJSI=; b=dMbw4Mwyo3HhdE
	2HEk8t6oi9vC4NlLPoEt+qwIBzVmL7sZvbkM5Amw8w032mliTLJt8aOHH1yhFbDCE9jfHZ7qCWfjX
	UwFJpC63NzCm+5w+crr2w17Lh3jsNe2clPm5W5h9lfCBTbiBG2EHgEJ/spbjpuIVNGlKxYaeMBnq4
	aiW2tjzgUVYzfRH8mBe3EB6T8T6HJZO3D6dN13f7NqoAK2M+guMlG5+k5gQzg0GxLSyXlmanvB9Gg
	KGtklU7YchHvaEpRbB/nbcuyVw4/Kb+1FUJiVGBjKYOBEoZR+igks5IutVTNzBYC/cMnUNPK8OkX4
	qk3LGuwkBfXgQvxunLTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruQJl-000000059XW-33Ay;
	Wed, 10 Apr 2024 05:16:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruQIy-000000058ui-2ZAC;
	Wed, 10 Apr 2024 05:15:30 +0000
Received: from ip-185-104-138-50.ptr.icomera.net ([185.104.138.50] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruQIo-0008Ut-9s; Wed, 10 Apr 2024 07:15:18 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: hverkuil-cisco@xs4all.nl,
	mchehab@kernel.org,
	Shreeya Patel <shreeya.patel@collabora.com>,
	sebastian.reichel@collabora.com,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	p.zabel@pengutronix.de,
	dmitry.osipenko@collabora.com,
	nicolas.dufresne@collabora.com,
	krzysztof.kozlowski+dt@linaro.org,
	hverkuil@xs4all.nl,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	shawn.wen@rock-chips.com
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-media@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arm@lists.infradead.org,
	kernel@collabora.com
Subject: Re: (subset) [PATCH v3 0/6] Add Synopsys DesignWare HDMI RX Controller
Date: Wed, 10 Apr 2024 07:15:07 +0200
Message-Id: <171272604798.1867483.3380752860192123035.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240327225057.672304-1-shreeya.patel@collabora.com>
References: <20240327225057.672304-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_221528_814849_B3A053F8 
X-CRM114-Status: GOOD (  11.65  )
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

On Thu, 28 Mar 2024 04:20:51 +0530, Shreeya Patel wrote:
> This series implements support for the Synopsys DesignWare
> HDMI RX Controller, being compliant with standard HDMI 1.4b
> and HDMI 2.0.
> 
> Features that are currently supported by the HDMI RX driver
> have been tested on rock5b board using a HDMI to micro-HDMI cable.
> It is recommended to use a good quality cable as there were
> multiple issues seen during testing the driver.
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: reset: Define reset id used for HDMI Receiver
      commit: ca151fd56b5736a7adbdba5675b9d87d70f20b23
[2/6] clk: rockchip: rst-rk3588: Add reset line for HDMI Receiver
      commit: 7af67019cd78d028ef377df689ac103d51905518

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
