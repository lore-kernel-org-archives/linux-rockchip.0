Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6371DCDB483
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 11:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8fgNcyTNySNwGxLwDd/WRFQhbNCwDFcuCjZsyaJAsI=; b=pL8m955JER3iFH
	OeoglmPCCoJwKKgZHyoG1+KHoV5bsxt2dTRB02KGMNHG8bbS/65mM/F/SZqiAKFKFsYgLufSlPAxS
	wAxU7vFannj8yYd3O0Nmwxse4kgZATRRU5TElgtqmc4TkZldZ0qLBgjA0pctvvgcYR5Mur+C8lwTW
	J1XeaGJUY3gM1rwIvBw3mZhU35uQiuyHe93OmfpMwN64ZXf63JAqxeZ+ixuGWbgy6h7FjtCu7e3NS
	wvYj8p5XimmWGTJ2WNu1McpHh4CWfscSGPfOKnHalIkr1CCn3FB8J4bbpaLHw/+zLn8wF6/FJPxrs
	PJkZ2XZJWKS9kUbHfBEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtRgP-00HEjt-1q;
	Thu, 19 Oct 2023 11:59:21 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtRgL-00HEic-2E
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Oct 2023 11:59:19 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20231019115915epoutp04b0262cdd42735f4d5b06a1a7f07b7c89~PgGUFq6p50631606316epoutp043
	for <linux-rockchip@lists.infradead.org>; Thu, 19 Oct 2023 11:59:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20231019115915epoutp04b0262cdd42735f4d5b06a1a7f07b7c89~PgGUFq6p50631606316epoutp043
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1697716755;
	bh=etxmksFg/ulfOn3J2o7CamkOha9gpHkvB+dHibgmjd0=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=tMwjYVhGNk6A5HKD8UsBMWg32kyhnxpsqEs3VsFIZGwTUflKfDX/e6sPJ2aAFu+lD
	 /SrT6VjqBAp8MevO6qlymyIUPrD07ejfQr2VWIAdo32IAJZTB8fVCM3IOGchfDdDN2
	 qBD5szdsEIt1WU6zOKfM2ingxBdP+h2/fbPeyK8U=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
	epcas1p4.samsung.com (KnoxPortal) with ESMTP id
	20231019115915epcas1p4830a09e4aebce1c19013d88df13ea941~PgGTbtWQi3097630976epcas1p45;
	Thu, 19 Oct 2023 11:59:15 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.36.133]) by
	epsnrtp4.localdomain (Postfix) with ESMTP id 4SB5q61zypz4x9Pv; Thu, 19 Oct
	2023 11:59:14 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
	epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	CC.DE.09739.21A11356; Thu, 19 Oct 2023 20:59:14 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
	20231019115913epcas1p385331b759d2cf54ed17985a857e0ee5a~PgGR-srwb2825428254epcas1p31;
	Thu, 19 Oct 2023 11:59:13 +0000 (GMT)
Received: from epsmgmc1p1new.samsung.com (unknown [182.195.42.40]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20231019115913epsmtrp272e140470691f8d9a65bf905d33dd1e6~PgGR_1rnY1154311543epsmtrp2R;
	Thu, 19 Oct 2023 11:59:13 +0000 (GMT)
X-AuditID: b6c32a37-e67fa7000000260b-83-65311a12ee9e
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgmc1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	B5.F8.07368.11A11356; Thu, 19 Oct 2023 20:59:13 +0900 (KST)
Received: from cw00choi03 (unknown [10.113.111.106]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20231019115912epsmtip11ca80a8487ff39c2d0c3b85d04450a8c~PgGQ2OOXV0204702047epsmtip1K;
	Thu, 19 Oct 2023 11:59:12 +0000 (GMT)
From: "Chanwoo Choi" <cw00.choi@samsung.com>
To: "'Sascha Hauer'" <s.hauer@pengutronix.de>,
	<linux-rockchip@lists.infradead.org>
Cc: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<linux-pm@vger.kernel.org>, "'Heiko Stuebner'" <heiko@sntech.de>, "'Chanwoo
 Choi'" <chanwoo@kernel.org>, "'Kyungmin Park'" <kyungmin.park@samsung.com>,
	"'MyungJoo	Ham'" <myungjoo.ham@samsung.com>, "'Will Deacon'"
	<will@kernel.org>, "'Mark Rutland'" <mark.rutland@arm.com>,
	<kernel@pengutronix.de>, "'Michael Riesch'" <michael.riesch@wolfvision.net>,
	"'Robin Murphy'" <robin.murphy@arm.com>, "'Vincent Legoll'"
	<vincent.legoll@gmail.com>, "'Rob Herring'" <robh+dt@kernel.org>,
	"'Krzysztof Kozlowski'" <krzysztof.kozlowski+dt@linaro.org>, "'Conor
	Dooley'" <conor+dt@kernel.org>, <devicetree@vger.kernel.org>, "'Sebastian
	Reichel'" <sebastian.reichel@collabora.com>
In-Reply-To: <20231018061714.3553817-16-s.hauer@pengutronix.de>
Subject: RE: [PATCH v8 15/26] PM / devfreq: rockchip-dfi: give variable a
 better name
Date: Thu, 19 Oct 2023 20:59:12 +0900
Message-ID: <001a01da0283$ad746a30$085d3e90$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: ko
Thread-Index: AQFYMiMsP3soeW2GlDsie1R9CxInBwHV6+97AZGQ0VixOWcW4A==
X-Brightmail-Tracker: H4sIAAAAAAAAA01TbUxTVxjO6b29XDRsdxXkyLJRL4MIo9AChYMTEEW8G7IxCSNDN2zaG2DQ
	D9ti5hLDR4BJMwQ0klAVJcoEBMxKHR/abVYUFhmbsDHGKEM+VGCSDqYDlDDKxY1/z/vkfc77
	PO85h8QEdsKDzFDpWa1KlkUTG/Cvb/kGigQeElY89guJygd+xlGDpYeHznf08NHy6DQf1Z9u
	w9GJR/cx9EP+n07INNbPR33tZwk0V9IB0OzIMoZqfr3HQzer30C/59USqNDS4YRu2sf5aKnF
	hCPb9Luos/EBgQqGpDtdmYaqBsC02i4Bps1oc2JM9cUEM9R/g2CaL+UwpUti5oS5HjAt/VUY
	M2d6nTn/bAwkbEzJ3JHOyhSsVsiq5GpFhiotgo5LTN2dKg0VS0SScBRGC1UyJRtBx+xLEMVm
	ZK0EpIVHZFnZK1SCTKejAyN3aNXZelaYrtbpI2hWo8jSSDUBOplSl61KC1Cx+u0SsThIutJ4
	KDN9sCmPpyl87dOK9jIiF/S6GwBJQioEtnQmG8AGUkC1AlhdU8TnilkAi9utPK54CqDB0IS/
	UJT1+nK8BcBui2mtaRLAxYcdfEcTQfnDC/NJBuBMulJJsLSrlefAGPWUD+3LbzuwMxUF/7k4
	hTnwJioZ/m19tHo+TnlDky3ZQbtQ4TB/uRbn8Cvw+8pxnDvGE7Y8PrsqhZQQLkx8yed4V3im
	uAjjxu6Cky0PMYc1SJ1xhrftAzxOEAPt3ZcBhzfBqU6zE4c94NyMheAEpwC8Nz29pr4K4Fd1
	BWvjguG3Nad4DqcY5Quvtgdy9FbY9uwc4Fy8BGeefMHnluUCjxcJuBYv2DdiW/OwBV78vJgo
	A7RxXTbjumzGdXmM/w+7APB6sJnV6JRprE6iCf7vruVqpQmsPn2/sFZQ8dgeYAU8ElgBJDHa
	1cWbEbMCF4Xs6GesVp2qzc5idVYgXVl2OebhJlev/B2VPlUSEi4OCQ0KDkGSUAnt7jL4oEQh
	oNJkejaTZTWs9oWORzp75PKirgf31zd4k/tsxsnnW5tD2uXviFp/lHs9X8BFFHk/Ze/tpm5P
	841X/+o4YD40kBD0Vu1i9UGVsU7pP3690Se+omv/zM7Mjw66bY42+E2+p4W/vbx4azx7rEIx
	6ozE4qTmN4f1idu3xR+I0ZdHQq9jdbyTp7dV9nn/FF86e80ujxZII5g7kbnW7650Fl5ZGhwa
	7vLc02M6GbultuTunsSN/tF/fMO4h5Gh5/KE4ruaKsUHbvlR8H35/OidgvkjlZ6WmL0j47uU
	mLApJ39qRhTxYW/O0WOf+ByeNDcNBys8zT4L1xpGGP1+r4nRvji80XCcTamRfNw4ZJ0YPUxc
	fpIbF0vjunSZxA/T6mT/AjqAtBqDBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrBIsWRmVeSWpSXmKPExsWy7bCSnK6glGGqwa5rShYTb1xhsViz9xyT
	xfwj51gt/j96zWqxaupOFou+Fw+ZLc42vWG32PT4GqvF5V1z2Cw+9x5htPj04D+zxdLrF5ks
	Di5UsbjduILNonXvEXaLgx+esFr83b6JxeLuaz+L42ufsVm03DF1EPFYM28No8eOu0sYPXbO
	usvusWlVJ5vHnWt72Dw2L6n36P9r4NG3ZRWjx/Zr85g9Pm+S85j/+zFjAHcUl01Kak5mWWqR
	vl0CV8atdY1MBa2yFdN2TWBrYLwk3sXIwSEhYCIx4ZJmFyMXh5DAbkaJs4+nMncxcgLFJSWm
	XTzKDFEjLHH4cDFEzXNGia1rD4PF2QR0JBb8CAUpFxEIleg/sYMJpIZZoIVNYteyz2wQDYcY
	JR7s3scEUsUpYC/xffErsGZhoI55D8FMFgFViU13w0EqeAUsJZr+r2CBsAUlTs58wgJSwiyg
	J9G2kREkzCwgL7H97RyoKxUkfj5dxgoRF5GY3dnGDHGOk8TL7c+ZJzAKz0IyaRbCpFlIJs1C
	0r2AkWUVo2RqQXFuem6yYYFhXmq5XnFibnFpXrpecn7uJkZw5Gtp7GC8N/+f3iFGJg5GoAc5
	mJVEeFU9DFKFeFMSK6tSi/Lji0pzUosPMUpzsCiJ8xrOmJ0iJJCeWJKanZpakFoEk2Xi4JRq
	YIpiDv9YvnGj0JwOI46Y8xUpZjsDLjzod1hu0c2c47RxT6z2pJ9NB7WPTPHZuLxMu/yNf27r
	LK2DfxY3v+Xvarn8i6nt+cWsrq1nPsyc1CmjzTtJ/k7Um+/TetY13FA0F0mRW7usuNGsYZ73
	itNn3Gp+ZR44r5+x8Pe8d5U2e1/vfNLRoHps/cegzrUTPr1jvqF8XvWWpdvJzNMibp87E75a
	iYV99fm2qOJkxUKfk/t07X03rrpw5lD1YsY2nvf507QmLV80p3Pdsa6WcpOzmhs3KN6//r1F
	O7rRI3MJbyjjjtdye2ZlHVMR3qt916xNWuXh4Z3aOed/v2he2TJT/f2mPwUrzszRnNm1ffoM
	C1VZJZbijERDLeai4kQADGZRYGsDAAA=
X-CMS-MailID: 20231019115913epcas1p385331b759d2cf54ed17985a857e0ee5a
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20231018063755epcas1p4ce57f4b2fd0bd82dcf1cd912f2cd89bb
References: <20231018061714.3553817-1-s.hauer@pengutronix.de>
	<CGME20231018063755epcas1p4ce57f4b2fd0bd82dcf1cd912f2cd89bb@epcas1p4.samsung.com>
	<20231018061714.3553817-16-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_045918_074702_C2AD7B8C 
X-CRM114-Status: GOOD (  31.16  )
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



> -----Original Message-----
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Sent: Wednesday, October 18, 2023 3:17 PM
> To: linux-rockchip@lists.infradead.org
> Cc: linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> linux-pm@vger.kernel.org; Heiko Stuebner <heiko@sntech.de>; Chanwoo Choi
> <chanwoo@kernel.org>; Kyungmin Park <kyungmin.park@samsung.com>; MyungJoo
> Ham <myungjoo.ham@samsung.com>; Will Deacon <will@kernel.org>; Mark
> Rutland <mark.rutland@arm.com>; kernel@pengutronix.de; Michael Riesch
> <michael.riesch@wolfvision.net>; Robin Murphy <robin.murphy@arm.com>;
> Vincent Legoll <vincent.legoll@gmail.com>; Rob Herring
> <robh+dt@kernel.org>; Krzysztof Kozlowski
> <krzysztof.kozlowski+dt@linaro.org>; Conor Dooley <conor+dt@kernel.org>;
> devicetree@vger.kernel.org; Sebastian Reichel
> <sebastian.reichel@collabora.com>; Sascha Hauer <s.hauer@pengutronix.de>;
> Chanwoo Choi <cw00.choi@samsung.com>
> Subject: [PATCH v8 15/26] PM / devfreq: rockchip-dfi: give variable a
> better name
> 
> struct dmc_count_channel::total counts the clock cycles of the DDR
> controller. Rename it accordingly to give the reader a better idea what
> this is about. While at it, at some documentation to struct
> dmc_count_channel.
> 
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c
> b/drivers/devfreq/event/rockchip-dfi.c
> index 7a4f1901314d4..3d5c6d737ccd9 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -46,9 +46,14 @@
>  #define DDRMON_CH1_COUNT_NUM		0x3c
>  #define DDRMON_CH1_DFI_ACCESS_NUM	0x40
> 
> +/**
> + * struct dmc_count_channel - structure to hold counter values from the
> DDR controller
> + * @access:       Number of read and write accesses
> + * @clock_cycles: DDR clock cycles
> + */
>  struct dmc_count_channel {
>  	u32 access;
> -	u32 total;
> +	u32 clock_cycles;
>  };
> 
>  struct dmc_count {
> @@ -151,7 +156,7 @@ static void rockchip_dfi_read_counters(struct
> rockchip_dfi *dfi, struct dmc_coun
>  			continue;
>  		count->c[i].access = readl_relaxed(dfi_regs +
>  				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
> -		count->c[i].total = readl_relaxed(dfi_regs +
> +		count->c[i].clock_cycles = readl_relaxed(dfi_regs +
>  				DDRMON_CH0_COUNT_NUM + i * 20);
>  	}
>  }
> @@ -183,29 +188,29 @@ static int rockchip_dfi_get_event(struct
> devfreq_event_dev *edev,
>  	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
>  	struct dmc_count count;
>  	struct dmc_count *last = &dfi->last_event_count;
> -	u32 access = 0, total = 0;
> +	u32 access = 0, clock_cycles = 0;
>  	int i;
> 
>  	rockchip_dfi_read_counters(dfi, &count);
> 
>  	/* We can only report one channel, so find the busiest one */
>  	for (i = 0; i < dfi->max_channels; i++) {
> -		u32 a, t;
> +		u32 a, c;
> 
>  		if (!(dfi->channel_mask & BIT(i)))
>  			continue;
> 
>  		a = count.c[i].access - last->c[i].access;
> -		t = count.c[i].total - last->c[i].total;
> +		c = count.c[i].clock_cycles - last->c[i].clock_cycles;
> 
>  		if (a > access) {
>  			access = a;
> -			total = t;
> +			clock_cycles = c;
>  		}
>  	}
> 
>  	edata->load_count = access * 4;
> -	edata->total_count = total;
> +	edata->total_count = clock_cycles;
> 
>  	dfi->last_event_count = count;
> 
> --
> 2.39.2


Applied it. Thanks

Best Regards,
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
