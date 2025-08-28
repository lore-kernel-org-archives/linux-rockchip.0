Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D71BDC8303F
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Aug 2025 17:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ejpIlGYSfZ3AqZPpNsav5Hz4fk04D1F7N7DdlrVrvfg=; b=x0J82u99LknVKW
	7rK7h8Y4M8JxV0vcsaURaLCr0QY6lAjMbHL6tAuW5e2yZBhxFE5a1r20b5KF+l6wKBRPyRKxCkq6e
	aIPlHWEWnKVNWAx4AXrJKkm4fk3SJxJT3G8pChs8zcYg16cgE0Gc+W8tOiDW9fdYi+XbvqJ/TNF8+
	kezx0rzM7HwLtASHm21iaxDwyZaqt1CF1Ar3h/M2nkYpox2t6BA7wpF8+f43o4Nb4ypLiJDLk5I67
	7qpx3r2t7skUFkjV261LQkrEw+XXoJ0AGJSDU8o2PNj/Y317XMQDA2Ct4er0K8+nZh1tjk7bIR7Z6
	5oisoFUblldUoymZyPeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urgOV-00000002TXY-3B5i;
	Thu, 28 Aug 2025 17:26:39 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urcWO-00000001hpF-3gCW
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Aug 2025 13:18:34 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-afcb72d51dcso131098266b.0
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 06:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756387111; x=1756991911; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ViZhgiI208mpprvGOd6oxNdz3FM6ZQalsGn/kG8/O+A=;
        b=bpYgX4zsKMXfihUWcgIHvXHi4TfDDeLljeLewAyi6FM6mSBSw2uA7de8UxyxBrWP1G
         GN8Y/s6w+T1GUlJwo+CmQNsZMYstMgPCkLaOXZwv7xsLvUwl+66+8s/pxP484eQYZGPd
         x6e2+gyz1dcN/e/7SU53v6zpYpsQBoWfVbp1gXyk3lm8tos4eAwVmb22ERj9uG0ykwyY
         gkB5ky+SF1h0hbTyPtcIAlOXWWmzzJTooG4wfrzkZCZrUtDbrqbxdFwwMwssfs+r6N15
         4CiKllDI/sfETOHPUVzbQqXLCECxnGPfWslE4YKzdfjPUuipCEv+6EIXDiWIB6C0wKlx
         720Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756387111; x=1756991911;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ViZhgiI208mpprvGOd6oxNdz3FM6ZQalsGn/kG8/O+A=;
        b=Q967BbTbru/DxWyxWITc1pCVUml2B6KJzon77PS/591KA3+nHbvQNYhK8h3CddDRef
         Ek2diCp0iA5EIWPio9D1PtqLOAo94MNSG3hbLu9Go/Png1SMlFkwZi9eiooTdvt8FXPj
         3zFPQSDMq1uwoH7YbzkaqZYPKzsG1KPOjVrShw77eEC+l2kIUzlDjauIkPfGH5tQS/8Z
         j7AXzYkISDEqSdRQ6a9euCAp1pO02B2jtk8Sd1KhAMQtIlubIsr98gAQcJPPI2z91pAf
         vxcdBa3HXhCEOL4G1ucp1yUj0VbQHJHsSs/x5EHnpDr+0zhR3/iBEhx/NgHy2YxE5pIq
         DUng==
X-Forwarded-Encrypted: i=1; AJvYcCXW6dIRGcpIimFAAXAHEVFNJrNp9ruYFbCXO4pXHuZu1fjJ8AMUGF61M7kOGm2nRAj/QgXHCWCxf8Z9uALCYQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0qeVNH80nADFXS8WX0p76SwvT6TqbSZz43Ve2KTj3MXvlVr1d
	I3uN5R4EPgP/zRgtkbjFbyE9ubVf9kgbB63pWLU5ey/cpbq2qn4DoWKZjZiWmixS8sI=
X-Gm-Gg: ASbGncvxm1Dr3U2BFoLjo1zb3w9YDokzRgHqEs1p2ucoNjGgQ/UbgD7QjtQrSFISWB5
	MP5e9eBSuh7v9BtmvbG5/EVnW6X4S7EzP8nfNUPPZTX3k4qVi22NanKx+kcOGx73BSFoVCp4fx4
	AnGYas05/X0dCtLi/3EDb2tqgchpeDJoQEU4oOhyZ3djDSURo+yPg0wueMtUKjSeDNbyhKbf1sJ
	txFy+UeFDNb6vorTHsbvCbZmDX6UendFVh3ldfr/YPzP1u/2zR0v5Y/XWOfPrbSNSeMJju0QMAH
	2OPZZnfBmyxzFgs4a4ZJB/1xIFObXyRzti4HTIByuRPU+/soqPIKwvgZkV0TFhd1UNlSZ0niiaw
	5BffIgrd3fbAlH5HjemXe1/k4f+761bVMZpjrdIBSZQDcVIbKk5wShjW1/0m9XjPe3HhrpLWqqJ
	6qfawS3inwg8hc
X-Google-Smtp-Source: AGHT+IEaSNs6TM+t6ZkGhDUEgtd04oIngPsTBonqSpot3F8/HKB8oZ6LSxQKQNPdYyIrbplDJe/VjA==
X-Received: by 2002:a17:907:7f90:b0:afe:82ef:5433 with SMTP id a640c23a62f3a-afe82ef59a0mr1449610066b.10.1756387110829;
        Thu, 28 Aug 2025 06:18:30 -0700 (PDT)
Received: from [10.41.150.230] ([77.241.232.9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afe790e382csm945788466b.79.2025.08.28.06.18.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Aug 2025 06:18:30 -0700 (PDT)
Message-ID: <1b00069b-e9b8-411f-9a66-de449ce4420d@linaro.org>
Date: Thu, 28 Aug 2025 15:18:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 09/13] arm64: defconfig: enable rockchip camera
 interface and mipi csi-2 receiver
To: michael.riesch@collabora.com, Mehdi Djait <mehdi.djait@linux.intel.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gerald Loacker <gerald.loacker@wolfvision.net>,
 Markus Elfring <Markus.Elfring@web.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Alexander Shiyan <eagle.alexander923@gmail.com>,
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20240220-rk3568-vicap-v10-0-62d8a7b209b4@collabora.com>
 <20240220-rk3568-vicap-v10-9-62d8a7b209b4@collabora.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20240220-rk3568-vicap-v10-9-62d8a7b209b4@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_061832_921231_36D00D04 
X-CRM114-Status: GOOD (  13.27  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 19/08/2025 01:26, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
> 
> The Rockchip Camera Interface (CIF) and the Rockchip MIPI CSI-2 Receiver
> are featured in many Rockchip SoCs in different variations.
> Enable the drivers for them in the default configuration.
> 
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>   arch/arm64/configs/defconfig | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 58f87d09366c..625cb5b47fb5 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -876,6 +876,8 @@ CONFIG_VIDEO_RENESAS_FCP=m
>   CONFIG_VIDEO_RENESAS_FDP1=m
>   CONFIG_VIDEO_RENESAS_VSP1=m
>   CONFIG_VIDEO_RCAR_DRIF=m
> +CONFIG_VIDEO_ROCKCHIP_CIF=m
> +CONFIG_VIDEO_ROCKCHIP_CSI=m
>   CONFIG_VIDEO_ROCKCHIP_RGA=m
>   CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=m
>   CONFIG_VIDEO_SAMSUNG_S5P_JPEG=m
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
