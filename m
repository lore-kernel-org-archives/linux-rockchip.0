Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BAFDC00A94
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 13:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tF8YxcA3a4t+8OMKcakoA8jEDDlHo5SA10/KukWg/P0=; b=zJaNMaeR5qpE8V
	oGCNtfmZnqtvz8nZEgYAmDOkRbTIYlUsBdJYkIrQQr2NoYCT860RaeYGOxcR8w96L8qkz5NHwcp9+
	dX0JCE8g2+wBi++oUC/IcVPGRDkq9igbtFThHhg03I1bCE+HL+dFnENaLRtIARMENYIW/GQBiUxoq
	Bf/qf2aWQsM23mFS4RotocNiTsdEaYFHVzxYNCO/CQd2b2TSwAmnnxVG/pS3ImU/8dEfzbdjjChFi
	pakWmHzDNvx/zg07fypIoFG9Kue+2Age6iJnnOhZCLNKsnQ3jR9YdEV6X29X0bgDs0RyuWSyJdsFT
	b8ClK2SHHhRDj3p6BFuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwMe1-00000008YTR-4BYs;
	Mon, 15 Apr 2024 13:45:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwMdv-00000008YNC-3Op7
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Apr 2024 13:45:09 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 43FDgHLp032713;
	Mon, 15 Apr 2024 13:45:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=qcppdkim1; bh=yhE0N2GTjzloNk8jSE6bL
	1E7cB8XApNZKK5EefZJ4P4=; b=Dy752KncX+0qPUtwl62xGFwJu/DOlByTMSyRV
	RwDnVwOE2JbPaOKtAnnuZ4KDvEtt96WpkJdEuSqG3Z81yMGtE1tR/JZg0/65ba+L
	uxKdfeWJY5EYSG7hct3G3MU/VXT0J5qwUObOKD72jcfdItNgQITAWAaQiyLD3wtU
	qTZa0QlwsrBItBOEfCjUkZos6vP8ZSmi37nZEqU/sC5G1kLjpyRWmFF4oeoVU9+u
	tZ6b38LS+iFCIGmf+tCxaaDJD/Hsiyzo7vaanv75QPxJjYuzAcmgMxIKlKlnH+e3
	zVS2p75tmrlqh/enbvxgsTGVThcfHpx2me1Ug9jnaB1kKNFJA==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xh5bsr05j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 Apr 2024 13:45:05 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 43FDj3v4031752
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 Apr 2024 13:45:03 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 15 Apr 2024 06:45:03 -0700
Date: Mon, 15 Apr 2024 06:45:02 -0700
From: Bjorn Andersson <quic_bjorande@quicinc.com>
To: Rob Herring <robh@kernel.org>
CC: <soc@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Florian Fainelli
	<florian.fainelli@broadcom.com>,
        Broadcom internal kernel review list
	<bcm-kernel-feedback-list@broadcom.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Tsahee Zidenberg <tsahee@annapurnalabs.com>,
        Antoine Tenart
	<atenart@kernel.org>,
        Khuong Dinh <khuong@os.amperecomputing.com>,
        Liviu
 Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo
 Pieralisi <lpieralisi@kernel.org>,
        Ray Jui <rjui@broadcom.com>, Scott Branden
	<sbranden@broadcom.com>,
        Robert Richter <rric@kernel.org>, Shawn Guo
	<shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>, Sascha Hauer
	<s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        "Paul J. Murphy"
	<paul.j.murphy@intel.com>,
        Daniele Alessandrelli
	<daniele.alessandrelli@intel.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Gregory
 Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth
	<sebastian.hesselbarth@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Thierry
 Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Andreas =?iso-8859-1?Q?F=E4rber?=
	<afaerber@suse.de>,
        Heiko Stuebner <heiko@sntech.de>, Orson Zhai
	<orsonzhai@gmail.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Chunyan
 Zhang <zhang.lyra@gmail.com>,
        Jisheng Zhang <jszhang@kernel.org>,
        Alim Akhtar
	<alim.akhtar@samsung.com>, <linux-fsd@tesla.com>,
        Michal Simek
	<michal.simek@amd.com>, <devicetree@vger.kernel.org>,
        <linux-rpi-kernel@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <imx@lists.linux.dev>, <linux-mediatek@lists.infradead.org>,
        <linux-tegra@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-realtek-soc@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>,
        <linux-samsung-soc@vger.kernel.org>
Subject: Re: [PATCH] arm/arm64: dts: Drop "arm,armv8-pmuv3" compatible usage
Message-ID: <Zh0vXinxy7woerJQ@hu-bjorande-lv.qualcomm.com>
References: <20240412222857.3873079-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240412222857.3873079-1-robh@kernel.org>
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01c.na.qualcomm.com (10.47.97.35) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: anep3cOZZbefLkEXjJhwpqdl-o9hjFoO
X-Proofpoint-GUID: anep3cOZZbefLkEXjJhwpqdl-o9hjFoO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-15_11,2024-04-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=522
 priorityscore=1501 spamscore=0 clxscore=1011 malwarescore=0 adultscore=0
 phishscore=0 bulkscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2404010003
 definitions=main-2404150089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_064508_048094_D162373F 
X-CRM114-Status: UNSURE (   8.95  )
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

On Fri, Apr 12, 2024 at 05:28:51PM -0500, Rob Herring wrote:
[..]
>  arch/arm64/boot/dts/qcom/qcm2290.dtsi                | 2 +-
>  arch/arm64/boot/dts/qcom/qdu1000.dtsi                | 2 +-
>  arch/arm64/boot/dts/qcom/sdm630.dtsi                 | 2 +-
>  arch/arm64/boot/dts/qcom/sdx75.dtsi                  | 2 +-

Acked-by: Bjorn Andersson <andersson@kernel.org>

Regards,
Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
