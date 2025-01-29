Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3C4AC0218D
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jan 2025 08:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oTTS6ojHSlM3ZKWoxiH7hNiFr5aIh6J8kxgPHrY1Ck8=; b=tZRTlNHZ0LlcUe
	Aq4ONXgTmuIldVSf+B4cNmHpP1yGOM8+tsRyjYxdy0X3et3NHsQ+HqR/NMIy7GNZ4/d8oamhO/7xu
	/UfBwen+5EgyQwDEqS8KQEBaLq284Ho/4bJdU1LsMpT5CTcaQ2Tqn08nHoRnoFuDXYdsU5snYPc79
	KFGitnVD72TxkjdWI4v2IGKeaBOPAuI0h1aBj/j+vbIHBpKkP+DXOzU6N0bja+fi4OTKkTvnUlwBR
	9u/scSSBLzTgm9au52J+4+w0KiEPdyxSqfWCOQwh5biRsc/nhamfAIjkdlikPoVnRImabGFqj1m9O
	Yt2QXWOkhFJ0p3Nk6ACw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1td3qo-00000006auu-0itX;
	Wed, 29 Jan 2025 08:55:10 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1td3ql-00000006atq-1GlI;
	Wed, 29 Jan 2025 08:55:08 +0000
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50T70PFW009524;
	Wed, 29 Jan 2025 09:53:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	K4w3bUSNuMoGr2Kig4zaKtlQZ0vMGzt2g+mK00D8dss=; b=tMvjzHGTjT58kuPG
	X0FNR92wGAnCeJMLNfeQFLG0aDfxwj/uiGbml2Ii/aOgWYwPzqCvNSKYu4GqOQB1
	q1zub79jG4YxfVTmRzRjhsB+0NFWyp48k9O6ZEYsIMKxNY2J/mhhgIeJ6OrLvqo3
	XiabZikb1wAXVUlZonEdRkJ7cBZsOTPLe9GSPXYeYVWaleVh0N8Kj77R2pgesZ7X
	Ga/mTCjDbvKDu4U8caR4kWuElNBbKqk0rjZNvInU3YgFQoW7db0zqsD8Ws6CJOHt
	kG5vTlESpG9lepXzb7FzZ9WgFpxyOQLUtHyCGovn59v9A9BRx26SxRnrp2kjgeKl
	zKhhZA==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 44eyew3g58-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 29 Jan 2025 09:53:58 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 249F740058;
	Wed, 29 Jan 2025 09:50:17 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8E0912ACA61;
	Wed, 29 Jan 2025 09:47:36 +0100 (CET)
Received: from [10.129.178.211] (10.129.178.211) by SHFDAG1NODE2.st.com
 (10.75.129.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Wed, 29 Jan
 2025 09:47:34 +0100
Message-ID: <5131c24e-fb8d-45f1-9b1b-e65b2613e85f@foss.st.com>
Date: Wed, 29 Jan 2025 09:47:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/14] drm/stm: move to devm_platform_ioremap_resource()
 usage
To: Anusha Srivatsa <asrivats@redhat.com>, Joel Stanley <joel@jms.id.au>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard
	<mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Andrew Jeffery
	<andrew@codeconstruct.com.au>,
        Stefan Agner <stefan@agner.ch>, Alison Wang
	<alison.wang@nxp.com>,
        Xinliang Liu <xinliang.liu@linaro.org>,
        Tian Tao
	<tiantao6@hisilicon.com>,
        Xinwei Kong <kong.kongxinwei@hisilicon.com>,
        Sumit
 Semwal <sumit.semwal@linaro.org>,
        Yongqin Liu <yongqin.liu@linaro.org>,
        John
 Stultz <jstultz@google.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp
 Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Neil
 Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl
	<martin.blumenstingl@googlemail.com>,
        Marek Vasut <marex@denx.de>, Shawn Guo
	<shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix
 Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?=
	<heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, Orson Zhai
	<orsonzhai@gmail.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Chunyan
 Zhang <zhang.lyra@gmail.com>,
        Alain Volmat <alain.volmat@foss.st.com>,
        Raphael Gallais-Pou <rgallaispou@gmail.com>,
        Yannick Fertre
	<yannick.fertre@foss.st.com>,
        Philippe Cornu <philippe.cornu@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Mikko Perttunen <mperttunen@nvidia.com>,
        Jonathan Hunter
	<jonathanh@nvidia.com>,
        Alexey Brodkin <abrodkin@synopsys.com>,
        Dave
 Stevenson <dave.stevenson@raspberrypi.com>,
        =?UTF-8?Q?Ma=C3=ADra_Canal?=
	<mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance
	<kernel-list@raspberrypi.com>,
        Jonathan Corbet <corbet@lwn.net>
CC: <linux-aspeed@lists.ozlabs.org>, <dri-devel@lists.freedesktop.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-mediatek@lists.infradead.org>,
        <linux-amlogic@lists.infradead.org>, <imx@lists.linux.dev>,
        <linux-rockchip@lists.infradead.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-tegra@vger.kernel.org>, <linux-doc@vger.kernel.org>
References: <20250128-cocci-memory-api-v1-0-0d1609a29587@redhat.com>
 <20250128-cocci-memory-api-v1-10-0d1609a29587@redhat.com>
Content-Language: en-US
From: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
In-Reply-To: <20250128-cocci-memory-api-v1-10-0d1609a29587@redhat.com>
X-Originating-IP: [10.129.178.211]
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-28_04,2025-01-27_01,2024-11-22_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250129_005507_633197_01003BA6 
X-CRM114-Status: UNSURE (   6.45  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Ck9uIDEvMjgvMjUgMjM6MjksIEFudXNoYSBTcml2YXRzYSB3cm90ZToKPiBSZXBsYWNlIHBsYXRm
b3JtX2dldF9yZXNvdXJjZSArIGRldm1faW9yZW1hcF9yZXNvdXJjZQo+IHdpdGgganVzdCBkZXZt
X3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2UoKQo+Cj4gVXNlZCBDb2NjaW5lbGxlIHRvIGRvIHRo
aXMgY2hhbmdlLiBTbVBsIHBhdGNoOgo+IEBydWxlXzFACj4gaWRlbnRpZmllciByZXM7Cj4gZXhw
cmVzc2lvbiBpb3JlbWFwX3JlczsKPiBpZGVudGlmaWVyIHBkZXY7Cj4gQEAKPiAtc3RydWN0IHJl
c291cmNlICpyZXM7Cj4gLi4uCj4gLXJlcyA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZShwZGV2LC4u
Lik7Cj4gLWlvcmVtYXBfcmVzID0gZGV2bV9pb3JlbWFwX3Jlc291cmNlKC4uLik7Cj4gK2lvcmVt
YXBfcmVzID0gZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKHBkZXYsMCk7Cj4KPiBDYzog
WWFubmljayBGZXJ0cmUgPHlhbm5pY2suZmVydHJlQGZvc3Muc3QuY29tPgo+IENjOiBSYXBoYWVs
IEdhbGxhaXMtUG91IDxyYXBoYWVsLmdhbGxhaXMtcG91QGZvc3Muc3QuY29tPgo+IENjOiBQaGls
aXBwZSBDb3JudSA8cGhpbGlwcGUuY29ybnVAZm9zcy5zdC5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
QW51c2hhIFNyaXZhdHNhIDxhc3JpdmF0c0ByZWRoYXQuY29tPgoKCkhpIEFudXNoYSwKCgpUaGFu
a3MgZm9yIHlvdXIgd29yayAhCkFja2VkLWJ5OiBSYXBoYWVsIEdhbGxhaXMtUG91IDxyYXBoYWVs
LmdhbGxhaXMtcG91QGZvc3Muc3QuY29tPgoKClJlZ2FyZHMsClJhcGhhw6tsCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
