Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30106C0219E
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Feb 2025 07:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KcXNcqQyGoe/55paV0AW+maW1RwTRWPJVhXvrabwalI=; b=PR/GQLHfsbC88Y
	tHMjvA5Hf4J8wPGnhqH3Z1UdH65fM56RNf0E83FKQ0FrL8MQx03kfkbMvTiZk0V/Mn7mGzaxHeS7J
	bGi2htmu6a/TYKu03u+8N/POIyeNKz4qDnUcqL6lhUdc30+yRfxUYETLOLIME85o9/4uKK6r8El29
	fsXMJrVofamKlJLE2c7Sf37DxuDj+NcxhzhEfXQsYoJNCEzKKWovRBmSeEYGzGukGX30FToaLyPcg
	ZLTRkLA7Bc34/3fc/VSdWMX1RCOXVY3YmOsfpXuGScgTDfcuSehZiCfsC66oTLsiLqB0aPGsU/njY
	FZ7cWqQRln3zX8Qo68EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thknp-00000002qVm-3nN6;
	Tue, 11 Feb 2025 07:35:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thknb-00000002qSh-0a06
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Feb 2025 07:35:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=d4N+Vq1mmXR208oNNBf7yHJutNb21W6I422ugkccxyA=; b=1NDE5ocL6knHGG6yjZDhUjrUm0
	QN4Y684vOahSwZqaJ8faSSNtbVzIqnJ7hjqxWc08plNKdHir5yNrSOMpy0Yi6KQC05L3nIlpsD2La
	AfJKrZQV8OKTrU/L1Eh5kF6Jo2K+c59C/GIwqaEWkXeqXR7SVgtE9U4bxEcFptLaEbICEtdwPv4vs
	GYWznnC1bpVIKcMRChdvWzEgF/p65ht5oYgfwhywkXAVZuWkV4t5+QTu+mpM/h1RZi2GqR6crHxwj
	h7J6PKw8fy2qMk7cqMb7EKHix7YxyNXRjxMRfo7kUeSDpfhwrBvsgLF2Pif9C+kWeJtghzlltQ5+a
	7MZhhaAw==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1thknO-0004nK-Qm; Tue, 11 Feb 2025 08:35:02 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 "James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, YiFeng Zhao <zyf@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v7 2/7] soc: rockchip: add header for suspend mode SIP interface
Date: Tue, 11 Feb 2025 08:35:01 +0100
Message-ID: <5762938.0VBMTVartN@diego>
In-Reply-To: <1738736156-119203-3-git-send-email-shawn.lin@rock-chips.com>
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
 <1738736156-119203-3-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_233515_190787_4ECB987F 
X-CRM114-Status: GOOD (  15.77  )
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

Am Mittwoch, 5. Februar 2025, 07:15:51 MEZ schrieb Shawn Lin:
> Add ROCKCHIP_SIP_SUSPEND_MODE to pass down parameters to Trusted Firmware
> in order to decide suspend mode. Currently only add ROCKCHIP_SLEEP_PD_CONFIG
> which teaches firmware to power down controllers or not.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Acked-by: Heiko Stuebner <heiko@sntech.de>

> ---
> 
> Changes in v7: None
> Changes in v6: None
> Changes in v5: None
> Changes in v4: None
> Changes in v3: None
> Changes in v2: None
> 
>  include/soc/rockchip/rockchip_sip.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/include/soc/rockchip/rockchip_sip.h b/include/soc/rockchip/rockchip_sip.h
> index c46a9ae..501ad1f 100644
> --- a/include/soc/rockchip/rockchip_sip.h
> +++ b/include/soc/rockchip/rockchip_sip.h
> @@ -6,6 +6,9 @@
>  #ifndef __SOC_ROCKCHIP_SIP_H
>  #define __SOC_ROCKCHIP_SIP_H
>  
> +#define ROCKCHIP_SIP_SUSPEND_MODE		0x82000003
> +#define ROCKCHIP_SLEEP_PD_CONFIG		0xff
> +
>  #define ROCKCHIP_SIP_DRAM_FREQ			0x82000008
>  #define ROCKCHIP_SIP_CONFIG_DRAM_INIT		0x00
>  #define ROCKCHIP_SIP_CONFIG_DRAM_SET_RATE	0x01
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
