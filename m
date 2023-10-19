Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B1ECCDB465
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 11:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IOoG5ElrPz4rPs+ujxEuJ7zZ/jlZyRbcvkJZEvl5Oac=; b=Jgt1Tv9PjL9XaC
	aK9irZYBAWbnhYPuB0M5A4hRF8cG7mylAXzEFKIEhcLazMj5dh4aiwhIqNrVbP1VP8otnOZXqW834
	Ss1YKFcwZecmLWpQZXpPsj++egkSJP3Q0icxV+M0apDaQMadZ4avY1sOZPmWlE7rmbWqOmLc2vURA
	AznB6vy1e+cXqVDof3Pq1lgpodZHSBSiLSEen5NQmuCUF2k3brNVXV9dxwMJs/kGu7zDN2DSGAwWW
	n8/zbgX9Lw9v303leHZgigsydN1DrZ3qVvPOeL2h706aGQT0FOFop6LfgxLn9Zbw3PbQQFz/sMyNT
	2xq22qaTosrw2tfWIUVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtRLc-00HBYT-15;
	Thu, 19 Oct 2023 11:37:52 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtRLZ-00HBXG-0q
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Oct 2023 11:37:51 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20231019113746epoutp034c5eb254afa8c968bf3413402cfffded~Pfzi9QefX0470604706epoutp03Q
	for <linux-rockchip@lists.infradead.org>; Thu, 19 Oct 2023 11:37:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20231019113746epoutp034c5eb254afa8c968bf3413402cfffded~Pfzi9QefX0470604706epoutp03Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1697715466;
	bh=nA9NwooCLV1zRj115RojQInqhJTyoYBvk5U5nWxx+Sc=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=ZiW2IPIFeaZAn/OSqk7hHFZaE6UiW7meRQx6mAiWqBm1LYBF5y8CPES/7aMMFCD3R
	 1Qybw4XOXFx0O54yxM7yERAE8gQHRsBCtYkajV04CILo1atEoVvR5Lth0qi4IFm6kI
	 P8ur/i62ueCni1FhBI0m/7M/Ny9mEu8aRdPDZidE=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas1p3.samsung.com (KnoxPortal) with ESMTP id
	20231019113745epcas1p3e9baa3975a2bc96bdab7704e03ed25aa~PfziUipUX0720707207epcas1p3C;
	Thu, 19 Oct 2023 11:37:45 +0000 (GMT)
Received: from epsmgec1p1.samsung.com (unknown [182.195.36.135]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4SB5LJ4KyCz4x9Py; Thu, 19 Oct
	2023 11:37:44 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
	epsmgec1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
	DC.9C.08572.80511356; Thu, 19 Oct 2023 20:37:44 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20231019113744epcas1p136981f23fda1dd74a2de41039abf2969~Pfzg8tD3K2437624376epcas1p1i;
	Thu, 19 Oct 2023 11:37:44 +0000 (GMT)
Received: from epsmgmc1p1new.samsung.com (unknown [182.195.42.40]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20231019113744epsmtrp193f39fcb03dc5d2018b82b7311a3f339~Pfzg7oIVb1064910649epsmtrp10;
	Thu, 19 Oct 2023 11:37:44 +0000 (GMT)
X-AuditID: b6c32a33-cefff7000000217c-83-653115089472
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgmc1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	69.48.07368.70511356; Thu, 19 Oct 2023 20:37:43 +0900 (KST)
Received: from cw00choi03 (unknown [10.113.111.106]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20231019113743epsmtip2346a2fa7640bfb4c7701712e8f457493~PfzgkeIAT2788827888epsmtip2D;
	Thu, 19 Oct 2023 11:37:43 +0000 (GMT)
From: "Chanwoo Choi" <cw00.choi@samsung.com>
To: "'Chanwoo Choi'" <chanwoo@kernel.org>, "'Sascha Hauer'"
	<s.hauer@pengutronix.de>, <linux-rockchip@lists.infradead.org>
Cc: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<linux-pm@vger.kernel.org>, "'Heiko Stuebner'" <heiko@sntech.de>, "'Kyungmin
 Park'" <kyungmin.park@samsung.com>, "'MyungJoo Ham'"
	<myungjoo.ham@samsung.com>, "'Will	Deacon'" <will@kernel.org>, "'Mark
 Rutland'" <mark.rutland@arm.com>, <kernel@pengutronix.de>, "'Michael
	Riesch'" <michael.riesch@wolfvision.net>, "'Robin	Murphy'"
 <robin.murphy@arm.com>, "'Vincent Legoll'" <vincent.legoll@gmail.com>, "'Rob
	Herring'" <robh+dt@kernel.org>, "'Krzysztof Kozlowski'"
 <krzysztof.kozlowski+dt@linaro.org>, "'Conor Dooley'" <conor+dt@kernel.org>,
 <devicetree@vger.kernel.org>, "'Sebastian Reichel'"
 <sebastian.reichel@collabora.com>
In-Reply-To: <99477a81-08d1-4e5d-8b20-22da58921041@kernel.org>
Subject: RE: [PATCH v8 07/26] PM / devfreq: rockchip-dfi: introduce channel
 mask
Date: Thu, 19 Oct 2023 20:37:43 +0900
Message-ID: <000e01da0280$acc3e640$064bb2c0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: ko
Thread-Index: AQFYMiMsP3soeW2GlDsie1R9CxInBwIEdyp7AhkPerkB0r+rhbElGsDw
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrEJsWRmVeSWpSXmKPExsWy7bCmri6HqGGqQesXeYuJN66wWKzZe47J
	Yv6Rc6wW/x+9ZrVYNXUni0Xfi4fMFmeb3rBbbHp8jdXi8q45bBafe48wWnx68J/ZYun1i0wW
	BxeqWNxuXMFm0br3CLvFwQ9PWC3+bt/EYnH3tZ/F8bXP2Cxa7pg6iHismbeG0WPH3SWMHjtn
	3WX32LSqk83jzrU9bB6bl9R79P818OjbsorRY/u1ecwenzfJecz//ZgxgDsq2yYjNTEltUgh
	NS85PyUzL91WyTs43jne1MzAUNfQ0sJcSSEvMTfVVsnFJ0DXLTMH6EElhbLEnFKgUEBicbGS
	vp1NUX5pSapCRn5xia1SakFKToFpgV5xYm5xaV66Xl5qiZWhgYGRKVBhQnbG2TdzmQo+KlRs
	vfeJtYFxn1QXIyeHhICJxJxN85m6GLk4hAR2MEqcv3KAFSQhJPCJUWJ5fxFE4hujRNuH18ww
	HRMWXmGFSOxllOi9vBCq/SWjxJqdUxi7GDk42AR0JBb8CAVpEBGokXjefR+sgVngPKvEwjcL
	wVZwCthJXF71kRHEFhYIkpj8cB6YzSKgKnG2Yzo7iM0rYCnxYcZnKFtQ4uTMJywgNrOAvMT2
	t3OgLlKQ+Pl0GStEXERidmcbM8RiN4lbXReZIGrmc0rMeWAHYbtIdM14CdUrLPHq+BZ2CFtK
	4mV/GzvIoRICkxklLr4GeRnEWc8osXFlC1SHscT+pZOZQL5kFtCUWL9LHyKsKLHz91xGiCP4
	JN597WEFKZEQ4JXoaBOCKFGWuPzgLtQ9khKL2zvZJjAqzULy2iwkr81C8s4shGULGFlWMYql
	FhTnpqcmGxYYwmM7OT93EyM48WsZ72C8PP+f3iFGJg7GQ4wSHMxKIryqHgapQrwpiZVVqUX5
	8UWlOanFhxhNgYE9kVlKNDkfmHvySuINTSwNTMyMjE0sDM0MlcR5FSfMThESSE8sSc1OTS1I
	LYLpY+LglGpgSg7Vf1juWnr+i3yL5SGruaf2PTAv6C8of+XIU/Nu2a2ul2nCO4qOvJOcLPIr
	QvWYNLeP07P5q2fV8sTY5n90n/pQlMvTMDOSwavMKnbvHLPbPapX/95ulFjw7W0Bd2GZnbnB
	NzXny+9r/PUiK5plpRzn151yU9kbsiDxYOkT27CradOtuK/HPP+5h+ndHf80DtPyLS5sYqnz
	nq/b2vW58KStZ3btrzy9f3tknjEK/9iaWZ3xt/JiKbt6ybGyQ/6v7A15tv54mHkl7GErD5NV
	Kn/eec3NfBnXP51MPWkmI3N33kTlbS9kjhbzV5p9rlhr8nHZXflgxvtSKq4P3LrP18sG/e+1
	j6m3tDVxr1RiKc5INNRiLipOBADB/VFKhQQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrLIsWRmVeSWpSXmKPExsWy7bCSvC67qGGqwdmzphYTb1xhsViz9xyT
	xfwj51gt/j96zWqxaupOFou+Fw+ZLc42vWG32PT4GqvF5V1z2Cw+9x5htPj04D+zxdLrF5ks
	Di5UsbjduILNonXvEXaLgx+esFr83b6JxeLuaz+L42ufsVm03DF1EPFYM28No8eOu0sYPXbO
	usvusWlVJ5vHnWt72Dw2L6n36P9r4NG3ZRWjx/Zr85g9Pm+S85j/+zFjAHcUl01Kak5mWWqR
	vl0CV8bZN3OZCj4qVGy994m1gXGfVBcjJ4eEgInEhIVXWLsYuTiEBHYzSky8/pMJIiEpMe3i
	UeYuRg4gW1ji8OFiiJrnjBLPT65iA4mzCehILPgRClIuIlAnMbl7FxtIDbPAbVaJhdN/MUM0
	fGaUWNdxgxmkilPATuLyqo+MILawQIDEyk0/wWwWAVWJsx3T2UFsXgFLiQ8zPkPZghInZz5h
	AbGZBbQlnt58CmXLS2x/O4cZ4lAFiZ9Pl7FCxEUkZne2MUNc5CZxq+si0wRG4VlIRs1CMmoW
	klGzkLQvYGRZxSiZWlCcm56bbFhgmJdarlecmFtcmpeul5yfu4kRnAK0NHYw3pv/T+8QIxMH
	4yFGCQ5mJRFeVQ+DVCHelMTKqtSi/Pii0pzU4kOM0hwsSuK8hjNmpwgJpCeWpGanphakFsFk
	mTg4pRqYjI7Ubmta2X+wb+Kx/U/+qF74YRMnpbRz0az5WzbwH1dibZ6YsKzkwIma7rfKh0vT
	bq56dCvudjD38Zcb1ByL96/QOKeYvcM/0vv4rlZla87kP/vVD5Tt+fwkjf/n+gtPfA52qPWd
	2hP9tWdf9LS1jYs3NOg8Mf6/iG2ZVI9JorH2fLHDjVtbf5U/eRsvF5Yg80e0tSkjoCOvan3C
	L43Or4euBN9eIMsn+clZ9+T6Sxob9ue1zT3GtzkzzmbHp9ha/bTAdb1bDghnSv6aULbn7lGB
	l//f+ApFJhx3O3lw+4HzrXNX1MfNeDnx+pPg1x23bXpO8p2sKpqjruneL3T9eIxppKFAcF6z
	4qdTu4VCRJRYijMSDbWYi4oTAb6Ih4ZwAwAA
X-CMS-MailID: 20231019113744epcas1p136981f23fda1dd74a2de41039abf2969
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20231018150545epcas1p1894352c75255fabd2377593bd09fc9af
References: <20231018061714.3553817-1-s.hauer@pengutronix.de>
	<20231018061714.3553817-8-s.hauer@pengutronix.de>
	<CGME20231018150545epcas1p1894352c75255fabd2377593bd09fc9af@epcas1p1.samsung.com>
	<99477a81-08d1-4e5d-8b20-22da58921041@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_043749_637944_6C3EF519 
X-CRM114-Status: GOOD (  30.13  )
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
> From: Chanwoo Choi <chanwoo@kernel.org>
> Sent: Thursday, October 19, 2023 12:06 AM
> To: Sascha Hauer <s.hauer@pengutronix.de>; linux-
> rockchip@lists.infradead.org
> Cc: linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> linux-pm@vger.kernel.org; Heiko Stuebner <heiko@sntech.de>; Kyungmin Park
> <kyungmin.park@samsung.com>; MyungJoo Ham <myungjoo.ham@samsung.com>; Will
> Deacon <will@kernel.org>; Mark Rutland <mark.rutland@arm.com>;
> kernel@pengutronix.de; Michael Riesch <michael.riesch@wolfvision.net>;
> Robin Murphy <robin.murphy@arm.com>; Vincent Legoll
> <vincent.legoll@gmail.com>; Rob Herring <robh+dt@kernel.org>; Krzysztof
> Kozlowski <krzysztof.kozlowski+dt@linaro.org>; Conor Dooley
> <conor+dt@kernel.org>; devicetree@vger.kernel.org; Sebastian Reichel
> <sebastian.reichel@collabora.com>
> Subject: Re: [PATCH v8 07/26] PM / devfreq: rockchip-dfi: introduce
> channel mask
> 
> On 23. 10. 18. 15:16, Sascha Hauer wrote:
> > Different Rockchip SoC variants have a different number of channels.
> > Introduce a channel mask to make the number of channels configurable
> > from SoC initialization code.
> >
> > Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >
> > Notes:
> >     Changes since v7:
> >      - Loop only over channels present on a SoC
> >
> >  drivers/devfreq/event/rockchip-dfi.c | 25 +++++++++++++++++++------
> >  1 file changed, 19 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/devfreq/event/rockchip-dfi.c
> > b/drivers/devfreq/event/rockchip-dfi.c
> > index 126bb744645b6..28c18bbf6baa5 100644
> > --- a/drivers/devfreq/event/rockchip-dfi.c
> > +++ b/drivers/devfreq/event/rockchip-dfi.c
> > @@ -18,10 +18,11 @@
> >  #include <linux/list.h>
> >  #include <linux/of.h>
> >  #include <linux/of_device.h>
> > +#include <linux/bits.h>
> >
> >  #include <soc/rockchip/rk3399_grf.h>
> >
> > -#define RK3399_DMC_NUM_CH	2
> > +#define DMC_MAX_CHANNELS	2
> >
> >  /* DDRMON_CTRL */
> >  #define DDRMON_CTRL	0x04
> > @@ -44,7 +45,7 @@ struct dmc_count_channel {  };
> >
> >  struct dmc_count {
> > -	struct dmc_count_channel c[RK3399_DMC_NUM_CH];
> > +	struct dmc_count_channel c[DMC_MAX_CHANNELS];
> >  };
> >
> >  /*
> > @@ -61,6 +62,8 @@ struct rockchip_dfi {
> >  	struct regmap *regmap_pmu;
> >  	struct clk *clk;
> >  	u32 ddr_type;
> > +	unsigned int channel_mask;
> > +	unsigned int max_channels;
> >  };
> >
> >  static void rockchip_dfi_start_hardware_counter(struct
> > devfreq_event_dev *edev) @@ -95,7 +98,9 @@ static void
> rockchip_dfi_read_counters(struct devfreq_event_dev *edev, struct dm
> >  	u32 i;
> >  	void __iomem *dfi_regs = dfi->regs;
> >
> > -	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
> > +	for (i = 0; i < dfi->max_channels; i++) {
> > +		if (!(dfi->channel_mask & BIT(i)))
> > +			continue;
> >  		count->c[i].access = readl_relaxed(dfi_regs +
> >  				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
> >  		count->c[i].total = readl_relaxed(dfi_regs + @@ -145,9
> +150,14 @@
> > static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
> >  	rockchip_dfi_read_counters(edev, &count);
> >
> >  	/* We can only report one channel, so find the busiest one */
> > -	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
> > -		u32 a = count.c[i].access - last->c[i].access;
> > -		u32 t = count.c[i].total - last->c[i].total;
> > +	for (i = 0; i < dfi->max_channels; i++) {
> > +		u32 a, t;
> > +
> > +		if (!(dfi->channel_mask & BIT(i)))
> > +			continue;
> > +
> > +		a = count.c[i].access - last->c[i].access;
> > +		t = count.c[i].total - last->c[i].total;
> >
> >  		if (a > access) {
> >  			access = a;
> > @@ -185,6 +195,9 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
> >  	dfi->ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
> >  			RK3399_PMUGRF_DDRTYPE_MASK;
> >
> > +	dfi->channel_mask = GENMASK(1, 0);
> > +	dfi->max_channels = 2;
> > +
> >  	return 0;
> >  };
> >
> 
> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
> 


Applied it. Thanks.

Best Regards,
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
