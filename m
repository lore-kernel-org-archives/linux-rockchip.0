Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A599EFCE54
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 23:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4mxnVt81ZI2twRfu/kW21ltLqh3jq2is5XhVnEe/Co=; b=VXm6t8VuogBwkD
	zTWGFjs2hISQLvbhQxjjiQ4g8ulwMT1b4jkXhMel2JrEP2qPqJYwyOF6uV1YWW5QiP3WTb0ZmCW9H
	Ol4VX/XLRO3N1EmQ7uXCuhVaVP9T2A/zF5f4Qug0CjKe3oTyFXBFtp7Nj9U1QrXvR+aJoYd9/xMTF
	mLZMEcQXW82JevW+dlIRhRaIFQ/Tl1K/uDl9TBDrkJVYkqbsnyFnEi+dAd/1qhMW70v7f/7PjZ+Nc
	r2x36vasNHe7ZvmuDzlTCqFDvsMAzQC+GnK+QbBB3wqkgFz2UdBz5JSIPkArzAr0SP3QAY193t4fJ
	+lc5CN2+MjR5mIEs/B0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxw57-00000000f7Y-17Lt;
	Wed, 04 Mar 2026 23:56:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxw54-00000000f68-3zst
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Mar 2026 23:56:44 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624HFrTB1456003
	for <linux-rockchip@lists.infradead.org>; Wed, 4 Mar 2026 23:56:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EbLJv2J9kPBGNa5oq1GyOOHM
	jtzn/aJKqBG/UtKmSDw=; b=px9zWiSdVRBjjzNYUaw0oeny/GHhyRKP7xnlLFdl
	mqsmRZBdQr5BS11VgzyT00uk7CDQJxVDyaOXcB9Ls3O9bOz+J7ORwzp34aFygZ/v
	W5jKE9g0yahVQ3SP76yjOwaDCM1PNzaownz+CA3mVt6CgLiJoPjGmp5zyGGhqGr0
	PhYgMs4VlqTN5f4UnIQ3o7Q9fXzAtJjh6iK1qsMZB4KAEZFOdnwggI863piJrQrt
	JNfLcwzBN1QECqgxTNiKM1wHcjr4ZymUNW5mXDQRdiyWahXteJDpr/KHIkKNvV9n
	KWdAXnCpZWuEP03yZIgWEWf+kG2eJSWvO1xktrJlxIzCGw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpj182gg3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 23:56:41 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70ed6c849so1243984785a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 15:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772668601; x=1773273401; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EbLJv2J9kPBGNa5oq1GyOOHMjtzn/aJKqBG/UtKmSDw=;
        b=hEVstMlTtKWo8bp7bf2wLETxfBwmaQAxL8lOTm0PATkeJvk69e15UyrR9Qcbyu7TmT
         rR84fiuKnnAgZhu7XdXYW0E/4Kimli/Syq24Ns39sCjn1Gq+akdaXO+iJl8GDP24Wfh9
         RLgbrX48ditxg8mVcW28xNMX1gLt5qlQDAkXBKlYp9HaTwdDRhHCp4W1zGCTMl3WqYu1
         RBA2Tj6kVj74kipwacx6luHTJ6Z60FvwQFXw1PYkKXTtQgu0knOjXxAFWu2EYj6WcdZU
         VveGyMgtM8jb5Bqif/7F/Y9b8sSbJGJGkNbGb7mFOiefoOZndI3loDXzVLXe8LSNnKq0
         dAPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772668601; x=1773273401;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EbLJv2J9kPBGNa5oq1GyOOHMjtzn/aJKqBG/UtKmSDw=;
        b=nro2hQWgTeTyq9jYPlYPnOFmieZAbsLKKVBvgJM5zS0PYwT8jRb9hApn7FnFgAlfvZ
         eLJGTGPjIdlGP+E+K4rBJgXenLTAzaOVAaC1iA30jl7DlbhIn+LwEDj85jZ3VawasJv/
         a9eLd7nx1JiuKWdZHB1U8edjsOztkCshxXrQg+S/x0FD6e9NXsEIA8+7+0a7cpc3hB0u
         b8Wc3pYaCC5o8wtMwOUykpXZLCNX93luaJSY9IVvIlnqY0fiGffnDUrl0rogRrzfJ7/9
         8sXOVq3npinx6h63Tli7zoiF+a4ddRchpMd+0rKKz93oZkM4XwmkT3soL6UphLS/65iE
         hiIg==
X-Forwarded-Encrypted: i=1; AJvYcCUVu/Z43qRry4Njvnf/m479qI9ov7O9raRHa+/DdADPcknsAUhpsDNOinMqHh4hwtfTB9rwJMdj5J1/FLy4UA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+Xhu1js/VDzd0kcv8JHb5XAA5CeN2PbNHUAATJvG0jy41hJQ6
	boTWgDwhjy8ROKxt2jP+FybHGqw/M7FngIefYUSFm+X4e3+DHqDBm7UEisMKMpjf0KUIdQQE2hL
	qdM3JVLlSGufBRXRwbW/DA0s917kkSSy7KCLuXiH4gHsyMK3khcuX0ZGC3G7Ks/tgYo8mmY9pXD
	I=
X-Gm-Gg: ATEYQzxvhdIQlTmmZhMDrJo/jAktTNT6qt5E4UmYin7QTvN9Vh88LcqJO9Y7TzZylum
	G1rCVoQzSuxLhI5TSTzvuXRKhaj+sZoFiuZYmRl/d3mJNLVIIEauNbrpwmaHWU/7xwM5e2p6GAh
	UxQyOLmyTR1+WiiN3L4oa59kanztFdrP1Yt97gIKDBWa1nRRWAFiNADYSgQ6Xmh/9TSnQSfCms3
	ty+nK+nKPnW5krPUABiDiY+ZDoKRwJnuLAolpLXla+Ur0xPAwxfyAprO61o2KAWFCMGhj2NtWay
	ONN8UebWPP8sDi1NZaApg7MBz0znEYqGYUv2Abc3OmFiKOjik1KiQOM2VijQce6YIj11ZCECc+e
	fK2J4xF77QeKIwdWpvgL0NVmaiGbcRkeMbDYlnaef97vKC4VO1be5o5fw7YkwQppQvrDvkfR4GV
	AQlDN4PyWUR1UmV4EMKlqecgKh2+wfDrMTlrk=
X-Received: by 2002:a05:620a:1a29:b0:8b1:2fab:30a8 with SMTP id af79cd13be357-8cd5afceee6mr495521085a.74.1772668601146;
        Wed, 04 Mar 2026 15:56:41 -0800 (PST)
X-Received: by 2002:a05:620a:1a29:b0:8b1:2fab:30a8 with SMTP id af79cd13be357-8cd5afceee6mr495517685a.74.1772668600503;
        Wed, 04 Mar 2026 15:56:40 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a125ceeafbsm1231277e87.85.2026.03.04.15.56.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 15:56:39 -0800 (PST)
Date: Thu, 5 Mar 2026 01:56:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-can@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
        linux-usb@vger.kernel.org, netdev@vger.kernel.org,
        spacemit@lists.linux.dev, UNGLinuxDriver@microchip.com
Subject: Re: [PATCH phy-next 20/22] phy: include PHY provider header
Message-ID: <c6rtwgrwhqnkc7pomesjlmtqoj5pwsitvteolmf3t4spemysb2@rvcuyqqrj67s>
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-21-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260304175735.2660419-21-vladimir.oltean@nxp.com>
X-Proofpoint-GUID: pj3n4Bl5o8V-WNsMHmb212_6e61tXMNx
X-Proofpoint-ORIG-GUID: pj3n4Bl5o8V-WNsMHmb212_6e61tXMNx
X-Authority-Analysis: v=2.4 cv=Ed7FgfmC c=1 sm=1 tr=0 ts=69a8c6b9 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=8AirrxEcAAAA:8
 a=EUspDBNiAAAA:8 a=6HcPSIi93OwE2-2V8-kA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE5OCBTYWx0ZWRfX7zqMYDcdmy6i
 ybePjcy83zYw+92sqBfqo2XysE915rdsein9wHojAE6AeJ7N02+QV9WNWQfpJqdmCQoag/82mdc
 m5k0vzawfV0jhlCVstnRdL/If2uRJDX5a53wefe97uDTAPu1lsmbwOuw5oWMJOZYNPz8v89EyY6
 v0daEjVM8wmilVVM6F4JMcrlOGb0L8N53AkZXdIkIjUXNF402c4hytN4wk1Yi3WQW9Ewd5Zu2vk
 ln3tfnhVhiUtori/K754mOu+nQdjE2n3FC1tYLQ9PX66efOWkU/m23le5PRagyVdAFHcr7ZXq8Z
 Gd0fqx4nbea6VK1JiAL6AtuGVpj/prZplCe9aGR9L3zkovD68GYNIrnRrIIIS3Fx538AKxGoDQK
 fl0kA5wM1D8VaSCLPF/kGiPS2kT4TnW0BD7r3dlRblt3qAxYrSDGwnc3AxaVZyf+9Hni2PJ1uKL
 3rzscy+4fY/WxdpthiQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_09,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040198
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_155643_139108_DFAA674A 
X-CRM114-Status: GOOD (  14.70  )
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

On Wed, Mar 04, 2026 at 07:57:33PM +0200, Vladimir Oltean wrote:
> The majority of PHY drivers are PHY providers (obviously).
> 
> Some are providers *and* consumers (phy-meson-axg-mipi-dphy,
> phy-meson-axg-pcie). These are the Amlogic AXG SoCs, which split the
> physical layer into two chained PHYs: the digital layer and the analog
> layer. The DSI or PCIe controller interacts only with the digital PHY,
> presumably for simplicity.
> 
> The rest of PHY drivers which include <linux/phy/phy.h> do so because
> they call phy_set_bus_width(), a consumer function.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
>  drivers/phy/allwinner/phy-sun4i-usb.c                 | 3 ++-
>  drivers/phy/allwinner/phy-sun50i-usb3.c               | 3 ++-
>  drivers/phy/allwinner/phy-sun6i-mipi-dphy.c           | 4 ++--
>  drivers/phy/allwinner/phy-sun9i-usb.c                 | 3 ++-
>  drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c         | 2 ++
>  drivers/phy/amlogic/phy-meson-axg-mipi-pcie-analog.c  | 3 ++-
>  drivers/phy/amlogic/phy-meson-axg-pcie.c              | 2 ++
>  drivers/phy/amlogic/phy-meson-g12a-mipi-dphy-analog.c | 3 ++-
>  drivers/phy/amlogic/phy-meson-g12a-usb2.c             | 2 ++
>  drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c        | 3 ++-
>  drivers/phy/amlogic/phy-meson-gxl-usb2.c              | 3 ++-
>  drivers/phy/amlogic/phy-meson8-hdmi-tx.c              | 3 ++-
>  drivers/phy/amlogic/phy-meson8b-usb2.c                | 3 ++-
>  drivers/phy/apple/atc.c                               | 3 ++-
>  drivers/phy/broadcom/phy-bcm-cygnus-pcie.c            | 3 ++-
>  drivers/phy/broadcom/phy-bcm-kona-usb2.c              | 4 +++-
>  drivers/phy/broadcom/phy-bcm-ns-usb2.c                | 3 ++-
>  drivers/phy/broadcom/phy-bcm-ns-usb3.c                | 3 ++-
>  drivers/phy/broadcom/phy-bcm-ns2-pcie.c               | 3 ++-
>  drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c             | 3 ++-
>  drivers/phy/broadcom/phy-bcm-sr-pcie.c                | 3 ++-
>  drivers/phy/broadcom/phy-bcm-sr-usb.c                 | 3 ++-
>  drivers/phy/broadcom/phy-bcm63xx-usbh.c               | 3 ++-
>  drivers/phy/broadcom/phy-brcm-sata.c                  | 3 ++-
>  drivers/phy/broadcom/phy-brcm-usb.c                   | 2 +-
>  drivers/phy/cadence/cdns-dphy-rx.c                    | 3 ++-
>  drivers/phy/cadence/cdns-dphy.c                       | 4 ++--
>  drivers/phy/cadence/phy-cadence-salvo.c               | 3 ++-
>  drivers/phy/cadence/phy-cadence-sierra.c              | 3 ++-
>  drivers/phy/cadence/phy-cadence-torrent.c             | 3 ++-
>  drivers/phy/canaan/phy-k230-usb.c                     | 3 ++-
>  drivers/phy/eswin/phy-eic7700-sata.c                  | 3 ++-
>  drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c        | 3 ++-
>  drivers/phy/freescale/phy-fsl-imx8m-pcie.c            | 4 ++--
>  drivers/phy/freescale/phy-fsl-imx8mq-usb.c            | 3 ++-
>  drivers/phy/freescale/phy-fsl-imx8qm-hsio.c           | 6 +++---
>  drivers/phy/freescale/phy-fsl-imx8qm-lvds-phy.c       | 3 ++-
>  drivers/phy/freescale/phy-fsl-lynx-28g.c              | 3 ++-
>  drivers/phy/hisilicon/phy-hi3660-usb3.c               | 3 ++-
>  drivers/phy/hisilicon/phy-hi3670-pcie.c               | 3 ++-
>  drivers/phy/hisilicon/phy-hi3670-usb3.c               | 3 ++-
>  drivers/phy/hisilicon/phy-hi6220-usb.c                | 3 ++-
>  drivers/phy/hisilicon/phy-hisi-inno-usb2.c            | 4 +++-
>  drivers/phy/hisilicon/phy-histb-combphy.c             | 3 ++-
>  drivers/phy/hisilicon/phy-hix5hd2-sata.c              | 3 ++-
>  drivers/phy/ingenic/phy-ingenic-usb.c                 | 3 ++-
>  drivers/phy/intel/phy-intel-keembay-emmc.c            | 3 ++-
>  drivers/phy/intel/phy-intel-keembay-usb.c             | 3 ++-
>  drivers/phy/intel/phy-intel-lgm-combo.c               | 4 ++--
>  drivers/phy/intel/phy-intel-lgm-emmc.c                | 3 ++-
>  drivers/phy/lantiq/phy-lantiq-rcu-usb2.c              | 3 ++-
>  drivers/phy/lantiq/phy-lantiq-vrx200-pcie.c           | 4 ++--
>  drivers/phy/marvell/phy-armada375-usb2.c              | 3 ++-
>  drivers/phy/marvell/phy-armada38x-comphy.c            | 3 ++-
>  drivers/phy/marvell/phy-berlin-sata.c                 | 3 ++-
>  drivers/phy/marvell/phy-berlin-usb.c                  | 3 ++-
>  drivers/phy/marvell/phy-mmp3-hsic.c                   | 3 ++-
>  drivers/phy/marvell/phy-mmp3-usb.c                    | 3 ++-
>  drivers/phy/marvell/phy-mvebu-a3700-comphy.c          | 3 ++-
>  drivers/phy/marvell/phy-mvebu-a3700-utmi.c            | 3 ++-
>  drivers/phy/marvell/phy-mvebu-cp110-comphy.c          | 3 ++-
>  drivers/phy/marvell/phy-mvebu-cp110-utmi.c            | 3 ++-
>  drivers/phy/marvell/phy-mvebu-sata.c                  | 3 ++-
>  drivers/phy/marvell/phy-pxa-28nm-hsic.c               | 3 ++-
>  drivers/phy/marvell/phy-pxa-28nm-usb2.c               | 3 ++-
>  drivers/phy/marvell/phy-pxa-usb.c                     | 3 ++-
>  drivers/phy/mediatek/phy-mtk-dp.c                     | 3 ++-
>  drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c            | 1 -
>  drivers/phy/mediatek/phy-mtk-hdmi.h                   | 3 ++-
>  drivers/phy/mediatek/phy-mtk-mipi-csi-0-5.c           | 2 +-
>  drivers/phy/mediatek/phy-mtk-mipi-dsi.h               | 3 ++-
>  drivers/phy/mediatek/phy-mtk-pcie.c                   | 2 +-
>  drivers/phy/mediatek/phy-mtk-tphy.c                   | 2 +-
>  drivers/phy/mediatek/phy-mtk-ufs.c                    | 2 +-
>  drivers/phy/mediatek/phy-mtk-xfi-tphy.c               | 2 +-
>  drivers/phy/mediatek/phy-mtk-xsphy.c                  | 2 +-
>  drivers/phy/microchip/lan966x_serdes.c                | 4 ++--
>  drivers/phy/microchip/sparx5_serdes.c                 | 2 +-
>  drivers/phy/motorola/phy-cpcap-usb.c                  | 3 ++-
>  drivers/phy/motorola/phy-mapphone-mdm6600.c           | 4 +++-
>  drivers/phy/mscc/phy-ocelot-serdes.c                  | 3 ++-
>  drivers/phy/nuvoton/phy-ma35d1-usb2.c                 | 3 ++-
>  drivers/phy/phy-airoha-pcie.c                         | 2 +-
>  drivers/phy/phy-can-transceiver.c                     | 3 ++-
>  drivers/phy/phy-core-mipi-dphy.c                      | 4 ++--
>  drivers/phy/phy-core.c                                | 2 ++
>  drivers/phy/phy-google-usb.c                          | 3 ++-
>  drivers/phy/phy-lpc18xx-usb-otg.c                     | 3 ++-
>  drivers/phy/phy-nxp-ptn3222.c                         | 3 ++-
>  drivers/phy/phy-pistachio-usb.c                       | 4 ++--
>  drivers/phy/phy-snps-eusb2.c                          | 2 ++
>  drivers/phy/phy-xgene.c                               | 3 ++-
>  drivers/phy/qualcomm/phy-ath79-usb.c                  | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-apq8064-sata.c          | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-edp.c                   | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c        | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c           | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-ipq806x-sata.c          | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c           | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-m31-eusb2.c             | 2 ++
>  drivers/phy/qualcomm/phy-qcom-m31.c                   | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-pcie2.c                 | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c             | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c      | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c              | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c               | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c        | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c               | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c              | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-qusb2.c                 | 4 ++--
>  drivers/phy/qualcomm/phy-qcom-sgmii-eth.c             | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c         | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c      | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c           | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-usb-hs.c                | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-usb-hsic.c              | 3 ++-
>  drivers/phy/qualcomm/phy-qcom-usb-ss.c                | 3 ++-
>  drivers/phy/ralink/phy-mt7621-pci.c                   | 3 ++-
>  drivers/phy/ralink/phy-ralink-usb.c                   | 3 ++-
>  drivers/phy/realtek/phy-rtk-usb2.c                    | 3 ++-
>  drivers/phy/realtek/phy-rtk-usb3.c                    | 3 ++-
>  drivers/phy/renesas/phy-rcar-gen2.c                   | 3 ++-
>  drivers/phy/renesas/phy-rcar-gen3-pcie.c              | 3 ++-
>  drivers/phy/renesas/phy-rcar-gen3-usb2.c              | 3 ++-
>  drivers/phy/renesas/phy-rcar-gen3-usb3.c              | 3 ++-
>  drivers/phy/renesas/phy-rzg3e-usb3.c                  | 3 ++-
>  drivers/phy/renesas/r8a779f0-ether-serdes.c           | 3 ++-
>  drivers/phy/rockchip/phy-rockchip-dp.c                | 3 ++-
>  drivers/phy/rockchip/phy-rockchip-dphy-rx0.c          | 3 ++-
>  drivers/phy/rockchip/phy-rockchip-emmc.c              | 3 ++-
>  drivers/phy/rockchip/phy-rockchip-inno-csidphy.c      | 3 ++-
>  drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c      | 4 ++--
>  drivers/phy/rockchip/phy-rockchip-inno-hdmi.c         | 2 ++
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c         | 3 ++-
>  drivers/phy/rockchip/phy-rockchip-naneng-combphy.c    | 3 ++-
>  drivers/phy/rockchip/phy-rockchip-pcie.c              | 2 +-
>  drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c     | 3 ++-
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c     | 2 ++
>  drivers/phy/rockchip/phy-rockchip-snps-pcie3.c        | 3 ++-
>  drivers/phy/rockchip/phy-rockchip-typec.c             | 4 ++--
>  drivers/phy/rockchip/phy-rockchip-usb.c               | 3 ++-
>  drivers/phy/rockchip/phy-rockchip-usbdp.c             | 2 ++
>  drivers/phy/samsung/phy-exynos-dp-video.c             | 3 ++-
>  drivers/phy/samsung/phy-exynos-mipi-video.c           | 3 ++-
>  drivers/phy/samsung/phy-exynos-pcie.c                 | 3 ++-
>  drivers/phy/samsung/phy-exynos4210-usb2.c             | 3 ++-
>  drivers/phy/samsung/phy-exynos4x12-usb2.c             | 3 ++-
>  drivers/phy/samsung/phy-exynos5-usbdrd.c              | 2 ++
>  drivers/phy/samsung/phy-exynos5250-sata.c             | 3 ++-
>  drivers/phy/samsung/phy-exynos5250-usb2.c             | 3 ++-
>  drivers/phy/samsung/phy-s5pv210-usb2.c                | 3 ++-
>  drivers/phy/samsung/phy-samsung-ufs.c                 | 2 +-
>  drivers/phy/samsung/phy-samsung-ufs.h                 | 3 ++-
>  drivers/phy/samsung/phy-samsung-usb2.c                | 2 ++
>  drivers/phy/samsung/phy-samsung-usb2.h                | 3 ++-
>  drivers/phy/socionext/phy-uniphier-ahci.c             | 3 ++-
>  drivers/phy/socionext/phy-uniphier-pcie.c             | 3 ++-
>  drivers/phy/socionext/phy-uniphier-usb2.c             | 3 ++-
>  drivers/phy/socionext/phy-uniphier-usb3hs.c           | 3 ++-
>  drivers/phy/socionext/phy-uniphier-usb3ss.c           | 3 ++-
>  drivers/phy/sophgo/phy-cv1800-usb2.c                  | 3 ++-
>  drivers/phy/spacemit/phy-k1-pcie.c                    | 4 ++--
>  drivers/phy/spacemit/phy-k1-usb2.c                    | 3 ++-
>  drivers/phy/st/phy-miphy28lp.c                        | 4 ++--
>  drivers/phy/st/phy-spear1310-miphy.c                  | 3 ++-
>  drivers/phy/st/phy-spear1340-miphy.c                  | 3 ++-
>  drivers/phy/st/phy-stih407-usb.c                      | 3 ++-
>  drivers/phy/st/phy-stm32-combophy.c                   | 3 ++-
>  drivers/phy/st/phy-stm32-usbphyc.c                    | 2 ++
>  drivers/phy/starfive/phy-jh7110-dphy-rx.c             | 3 ++-
>  drivers/phy/starfive/phy-jh7110-dphy-tx.c             | 3 ++-
>  drivers/phy/starfive/phy-jh7110-pcie.c                | 3 ++-
>  drivers/phy/starfive/phy-jh7110-usb.c                 | 3 ++-
>  drivers/phy/sunplus/phy-sunplus-usb2.c                | 3 ++-
>  drivers/phy/tegra/phy-tegra194-p2u.c                  | 3 ++-
>  drivers/phy/tegra/xusb-tegra124.c                     | 2 +-
>  drivers/phy/tegra/xusb-tegra186.c                     | 2 +-
>  drivers/phy/tegra/xusb-tegra210.c                     | 2 +-
>  drivers/phy/tegra/xusb.c                              | 2 +-
>  drivers/phy/ti/phy-am654-serdes.c                     | 3 ++-
>  drivers/phy/ti/phy-da8xx-usb.c                        | 3 ++-
>  drivers/phy/ti/phy-dm816x-usb.c                       | 3 ++-
>  drivers/phy/ti/phy-gmii-sel.c                         | 3 ++-
>  drivers/phy/ti/phy-omap-usb2.c                        | 3 ++-
>  drivers/phy/ti/phy-ti-pipe3.c                         | 3 ++-
>  drivers/phy/ti/phy-twl4030-usb.c                      | 3 ++-
>  drivers/phy/xilinx/phy-zynqmp.c                       | 4 ++--
>  include/linux/phy/phy-sun4i-usb.h                     | 2 +-
>  include/linux/phy/ulpi_phy.h                          | 2 +-
>  189 files changed, 363 insertions(+), 193 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> #phy/qualcomm


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
