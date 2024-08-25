Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBD9BC5320E
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Aug 2024 14:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aYnqDEIES4Bn1yUnXiiGkj3W4/BD4JLSCtApWG5hXSo=; b=cFDYse1v7DWAv8
	XRFoRx8vlkDrZ8iIpG3gFJEHS+nSOGQ+nFu75ww90Ondg/uoiJVvnl/yidCNtG0omd+CGXkGDFSk2
	3/thISEIAv8aVvTkOHIDD0c1+oaGjNRA0T2rYRbC+rM74OvfywmYgVw8Z6PQmG3tDJOu9mm3edCVT
	zc78Z/biRJxsXP1C1B9OIexFA/DRQRAOlPjiu74kyVSCBQuVV33nGrdp3/gDPPFweiN9QOG8Npzp/
	0rkF80aiNya8pL1sijDcuFDg8QzlEYXfPQcw7i4pEx6nRKTqB7jTfcNYOtjloMQXFrTUwmVg9g7i7
	o25t9NoxyPY4gcKcSlqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siDxw-00000004Rth-3eMh;
	Sun, 25 Aug 2024 14:11:36 +0000
Received: from mail-m6039.netease.com ([210.79.60.39])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siDxs-00000004RsM-33FK;
	Sun, 25 Aug 2024 14:11:35 +0000
Received: from amadeus-Vostro-3710.lan (unknown [58.61.141.165])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 50DE87E014E;
	Sun, 25 Aug 2024 22:08:40 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: detlev.casanova@collabora.com
Cc: airlied@gmail.com,
	alchark@gmail.com,
	amadeus@jmu.edu.cn,
	andi.shyti@kernel.org,
	andyshrk@163.com,
	broonie@kernel.org,
	cl@rock-chips.com,
	conor+dt@kernel.org,
	daniel@ffwll.ch,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	dsimic@manjaro.org,
	efectn@protonmail.com,
	finley.xiao@rock-chips.com,
	gregkh@linuxfoundation.org,
	heiko@sntech.de,
	honyuenkwun@gmail.com,
	jagan@edgeble.ai,
	jamie@jamieiles.com,
	jic23@kernel.org,
	jirislaby@kernel.org,
	jonas@kwiboo.se,
	jszhang@kernel.org,
	kernel@collabora.com,
	krzk+dt@kernel.org,
	lars@metafoo.de,
	lee@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-i2c@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-serial@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	linux@roeck-us.net,
	maarten.lankhorst@linux.intel.com,
	macromorgan@hotmail.com,
	megi@xff.cz,
	michael.riesch@wolfvision.net,
	mripard@kernel.org,
	robh@kernel.org,
	tim@feathertop.org,
	tzimmermann@suse.de,
	ulf.hansson@linaro.org,
	wim@linux-watchdog.org
Subject: Re: [PATCH v2 11/12] arm64: dts: rockchip: Add rk3576 SoC base DT
Date: Sun, 25 Aug 2024 22:08:24 +0800
Message-Id: <20240825140824.200453-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <23624422.6Emhk5qWAg@trenzalore>
References: <23624422.6Emhk5qWAg@trenzalore>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZQkxIVk9DSUNIGhlPShpKT1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlOQ1VNSlVKT0pVSk1OWVdZFhoPEhUdFFlBWU9LSFVKS0hKTkxOVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a9189de204f03a2kunm50de87e014e
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MQg6ARw5NzIxEhkzMVE8OBgK
	HB8wCU5VSlVKTElPTkJPQklKQkJJVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWU5D
	VU1KVUpPSlVKTU5ZV1kIAVlBSExMSzcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240825_071133_043231_E7321270 
X-CRM114-Status: UNSURE (   8.29  )
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

Hi,

> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> ...
> +		opp-1416000000 {
> +			opp-hz = /bits/ 64 <1416000000>;
> +			opp-microvolt = <725000 725000 950000>;
> +			opp-microvolt-L1 = <712500 712500 950000>;
> +			opp-microvolt-L2 = <700000 700000 950000>;
> +			opp-microvolt-L3 = <700000 700000 950000>;
> +			opp-microvolt-L4 = <700000 700000 950000>;
> +			opp-microvolt-L5 = <700000 700000 950000>;
> +			clock-latency-ns = <40000>;
> +		};
> ...

I'm curious if these frequencies work properly. On the bsp kernel,
'opp-microvolt-L<name>' is used by the PVTM driver, I don't know
if it works on the upstream kernel. Sorry but have you tested it
with mhz (https://github.com/wtarreau/mhz)?

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
