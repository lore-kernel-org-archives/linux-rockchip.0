Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F4ADE95A96
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7yRjI/yKp/oy9MXZkLImJzxtR8X9f9bEeyoDjTx2BBc=; b=RPS7edZPfHSNuA
	eQsKAeATtvW/rzM3O93+/9mXBPK/kUGAqKAtG7hFDcU+G2eliCiPOpjsi6846WjYabF7mkOnfPBcz
	6g15nyRFYhs5vAlmAId4y/aRVFs/VVxy5jsr7HsaHrPvsaW8mLu6ZFmvaf/zfJ8or1xMvcVlUKyYH
	NhoYPnbcKlXLGnIrGfhNFZ9rvqVUh69wsZeKpF7bLtroJVDxq7hVgApmfQVxLQK6i1G8tgTVboZYU
	pNgfQBM9rtC8TcZYcwlhLH9ecKb3/0mzRhZXONxLgrgPMduiQdQhgS3Mx+2BXaUXPmzQtJjIeKB1l
	TtCBrl3lMoEkFsJyXGqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qplgQ-009ykK-1v;
	Mon, 09 Oct 2023 08:32:10 +0000
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qplgK-009yjW-2Y;
	Mon, 09 Oct 2023 08:32:08 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3998Ns1d003054;
	Mon, 9 Oct 2023 03:31:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=PODMain02222019; bh=4MULa8LIRZTV5cI
	iahOJgFs1cV3PfMr3tjK0c8f3GSE=; b=H43PPY3zCVBdf0vPDwEGXiKLlM9HDYb
	pV+PuJsdYW5fsV5FZNri3Oi2KHTBJf++lnEHX6h6VcYfVUvVtaCZMQQPBb7vw1l0
	jQXamdETdZPKveOQxCtMKf5JPK7TwCJIDNMMYDeJvp1Cvfz5e0eb9yH6TJ2TWM/T
	knltDk6ZBuzEdb9rCaJfTO3jyGj0mdwyMV+Fkqq68LpOKNFJLijQByj92atLVoti
	x5aUALB3lTBscn0mDG5cJKawJBs9vL4P9lErVKxxPEVatNs2syXn3CqhGt2FIn26
	juwEDXs28eGa4CuKTajeUsIVf/KKqCRqldYlvKOf2x6odatLP4HXvew==
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3tkhhah27e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 09 Oct 2023 03:31:03 -0500 (CDT)
Received: from ediex02.ad.cirrus.com (198.61.84.81) by ediex02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.37; Mon, 9 Oct
 2023 09:31:01 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by
 anon-ediex02.ad.cirrus.com (198.61.84.81) with Microsoft SMTP Server id
 15.2.1118.37 via Frontend Transport; Mon, 9 Oct 2023 09:31:01 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id BD1C811AC;
	Mon,  9 Oct 2023 08:31:01 +0000 (UTC)
Date: Mon, 9 Oct 2023 08:31:01 +0000
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: Rob Herring <robh@kernel.org>
CC: Richard Fitzgerald <rf@opensource.cirrus.com>,
        Michael Turquette
	<mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, David Lechner
	<david@lechnology.com>,
        Sekhar Nori <nsekhar@ti.com>, Andy Gross
	<agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        "Krzysztof
 Kozlowski" <krzysztof.kozlowski@linaro.org>,
        Sylwester Nawrocki
	<s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi
	<cw00.choi@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Tero Kristo
	<kristo@kernel.org>, <patches@opensource.cirrus.com>,
        <linux-clk@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>,
        <linux-samsung-soc@vger.kernel.org>, <linux-omap@vger.kernel.org>
Subject: Re: [PATCH] clk: Use device_get_match_data()
Message-ID: <20231009083101.GS103419@ediswmail.ad.cirrus.com>
References: <20231006213959.334439-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231006213959.334439-1-robh@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-ORIG-GUID: FlYp9zqwQvX4Bbg0m_XlIGcUY-KCFqlB
X-Proofpoint-GUID: FlYp9zqwQvX4Bbg0m_XlIGcUY-KCFqlB
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_013204_995870_A95840B5 
X-CRM114-Status: GOOD (  10.93  )
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

On Fri, Oct 06, 2023 at 04:39:58PM -0500, Rob Herring wrote:
> Use preferred device_get_match_data() instead of of_match_device() to
> get the driver match data. With this, adjust the includes to explicitly
> include the correct headers.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

For the Lochnagar bit:

Acked-by: Charles Keepax <ckeepax@opensource.cirrus.com> 

Thanks,
Charles

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
