Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EA94C7EE29
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jun 2023 17:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vABA+9Y0bFjjBxytmYYWwew54VVqpVGbSgmzLif2Jd8=; b=mV/MZAauXKsdo8
	2qUXCfO+Vko74fg6U9q8uDSHj/q5zCYgOBUPqrCmUHUg2+yWGOj8Nl3zF0TJARKUG5DDTqrEfKO2x
	MZeTejrplAbYFm94drZ67o7VbF/duG22TGyLFO5xGgVcavQ4m4at/aWoC3M3ex5Z9GxnP8VjrqGMr
	xm6ZVC7oY3dy922lo7bURXhu69jRl8T9VecOyU+kdyn20nYdR2ET/BEIKeivoVUh0++h9tTu3Z1KM
	gcqQo4tcy1tUEMJgiPqGVQBw0L6Kon4N5Ixaj8RcxJZ/oea5u3agSz3sbBsXniqwSx4jJ9V8yyVXT
	LYEuzXGz2gm5zC9fL3sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6a9c-002XLp-12;
	Tue, 06 Jun 2023 17:07:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6a9V-002XHT-2L;
	Tue, 06 Jun 2023 17:07:26 +0000
Received: from [91.65.34.120] (helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1q6a9P-0001ED-U6; Tue, 06 Jun 2023 19:07:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: jic23@kernel.org,
	robh+dt@kernel.org,
	Shreeya Patel <shreeya.patel@collabora.com>,
	sebastian.reichel@collabora.com,
	lars@metafoo.de,
	krzysztof.kozlowski+dt@linaro.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	gustavo.padovan@collabora.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	kernel@collabora.com,
	linux-iio@vger.kernel.org,
	serge.broslavsky@collabora.com,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v3 0/8] RK3588 ADC support
Date: Tue,  6 Jun 2023 19:07:15 +0200
Message-Id: <168607097303.1436521.9380771933631987701.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230603185340.13838-1-shreeya.patel@collabora.com>
References: <20230603185340.13838-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_100725_763195_AB27B2B1 
X-CRM114-Status: GOOD (  13.11  )
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

On Sun, 4 Jun 2023 00:23:32 +0530, Shreeya Patel wrote:
> This patch series adds ADC support for RK3588 and updates
> the DT bindings for the same.
> 
> To test ADC support on Rock 5B board, a voltage divider circuit
> was created using the gpio pin 22 ( SARADC_IN4 ) and few more
> tests were ran for testing the buffer and trigger support using
> the iio_generic_buffer tool.
> 
> [...]

Applied, thanks!

[7/8] arm64: dts: rockchip: Add DT node for ADC support in RK3588
      commit: ec084cbddbbe3a778ee06ccc0c59cee23b5cbaf4

I've moved the node to its correct position (by @address)
and also renamed the node to a more generic adc@...

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
