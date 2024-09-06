Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9BA1E6FE4B
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hsR33k/Z/1YgpMFIZuYERH79WvjJZ+d0dN8bfbDo7bk=; b=w3vRv669oPp6iE
	/AjhCfWsoM1Ertf++Jg5eMwzxONcRheINp14oADoOjyTiTpgWtq4jGHkTGCCwVAbbl66Xe3Rt5HnC
	kaZ+TM+KYVu9n/VELJJnzj73Oqv3Tg0iqYEflFZvtwLmyJzjXQuooWbif55lh39hU2qekvvvXShQp
	zZIopZMu4vFs7n75mIHaNYBLbgnYThjtiV8UmUmLVf98P1gSAkrV3fOI4dEPhzdqYMZUIzvBryVQb
	z1BCwkOqquVTW/vw7fC3Y+/BDAgBATYmTqvX39LUkC1+9v0+Xq+jPs6CWLpS61Ik3Oje+NQddM9yG
	K9d303FD0JD160nQ2nWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smiDU-0000000DqhK-49AJ;
	Fri, 06 Sep 2024 23:18:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smiDS-0000000DqgF-0L75;
	Fri, 06 Sep 2024 23:18:11 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 486La20Q021851;
	Fri, 6 Sep 2024 23:17:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8hUy3HkO73n8a8kkpNa8JB3SE4UQn54cODui1RapG3E=; b=gPjr+MT7wInQfINa
	RTmVGsvD5ouyNMbUcb//XbEFNDNR5h6d/CWaTAj04NEoY5Lb0n71/Sf0McS/Lcs9
	WogDGji8t1UNn1CqfjETXQ2GXu+qmhGqccJTAaFZbhFlEBO8XI/RA25uP4FaaeDl
	1SKgo65aCUZpgAVw3fRYo9R6MgHyCDgRaHs0iY03cNYh2w1DkkXqXXltFR5OPIrX
	dPoPhXVHMS/B/VPsXJjAJJF94zb/zoDBTNz9uZ4sazWl3KCAvXe286t8Ll2Qhln0
	SirwxnbuluhuuabVeymAlYxmmsvn8EsAPCRuT165kpRGBcF9miv/iypqjSNhM8LX
	GOLf8g==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41fhws3k06-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 06 Sep 2024 23:17:35 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 486NHXB8019247
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 6 Sep 2024 23:17:34 GMT
Received: from [10.111.181.108] (10.49.16.6) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 6 Sep 2024
 16:17:32 -0700
Message-ID: <6f3f79f2-5755-4286-98f6-9950e7e994c8@quicinc.com>
Date: Fri, 6 Sep 2024 16:17:31 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 00/12] net: Convert using
 devm_clk_get_enabled()/devm_clk_get_optional_enabled()
To: Li Zetao <lizetao1@huawei.com>, <florian.fainelli@broadcom.com>,
        <andrew@lunn.ch>, <olteanv@gmail.com>, <davem@davemloft.net>,
        <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
        <wens@csie.org>, <jernej.skrabec@gmail.com>, <samuel@sholland.org>,
        <heiko@sntech.de>, <yisen.zhuang@huawei.com>, <salil.mehta@huawei.com>,
        <hauke@hauke-m.de>, <alexandre.torgue@foss.st.com>,
        <joabreu@synopsys.com>, <mcoquelin.stm32@gmail.com>,
        <wellslutw@gmail.com>, <radhey.shyam.pandey@amd.com>,
        <michal.simek@amd.com>, <ajay.kathat@microchip.com>,
        <claudiu.beznea@tuxon.dev>, <kvalo@kernel.org>,
        <u.kleine-koenig@pengutronix.de>, <jacky_chou@aspeedtech.com>
CC: <netdev@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-sunxi@lists.linux.dev>, <linux-rockchip@lists.infradead.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-wireless@vger.kernel.org>
References: <20240831021334.1907921-1-lizetao1@huawei.com>
From: Jeff Johnson <quic_jjohnson@quicinc.com>
Content-Language: en-US
In-Reply-To: <20240831021334.1907921-1-lizetao1@huawei.com>
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01c.na.qualcomm.com (10.47.97.35) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: U38JrxGFfwZBLXAiBMSQPWd5WdbUh_11
X-Proofpoint-GUID: U38JrxGFfwZBLXAiBMSQPWd5WdbUh_11
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_08,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 spamscore=0
 impostorscore=0 mlxlogscore=849 adultscore=0 bulkscore=0 clxscore=1011
 suspectscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409060173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_161810_231403_04B51D80 
X-CRM114-Status: GOOD (  12.99  )
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

On 8/30/2024 7:13 PM, Li Zetao wrote:
> There are many examples[1][2] of clk resource leakage in LTS. The
> reason is that developers need to maintain the allocation and release
> of clk resources themselves, but this will increase the burden on
> developers. Using the API related to devm_clk_get_*_enable ensures
> that the life cycle of clk is consistent with that of the device,
> reducing the risk of unreleased resources like clk.
> 
> Several other developers are also working on converting to more
> secure interfaces, and this patch set is in principle the same as
> theirs.

...

>  drivers/net/dsa/bcm_sf2.c                     | 28 ++----
>  drivers/net/ethernet/allwinner/sun4i-emac.c   | 13 +--
>  drivers/net/ethernet/arc/emac_rockchip.c      | 34 ++-----
>  drivers/net/ethernet/ethoc.c                  | 18 ++--
>  drivers/net/ethernet/faraday/ftgmac100.c      | 27 ++---
>  drivers/net/ethernet/hisilicon/hisi_femac.c   | 17 +---
>  drivers/net/ethernet/lantiq_xrx200.c          | 17 +---
>  .../stmicro/stmmac/dwmac-dwc-qos-eth.c        | 98 ++++---------------
>  drivers/net/ethernet/sunplus/spl2sw_driver.c  | 18 +---
>  .../net/ethernet/xilinx/xilinx_axienet_main.c | 15 +--
>  .../net/wireless/microchip/wilc1000/sdio.c    | 10 +-
>  drivers/net/wireless/microchip/wilc1000/spi.c |  5 +-

note the wifi driver changes go through the wireless tree and not the net tree
so those should be split out separately


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
