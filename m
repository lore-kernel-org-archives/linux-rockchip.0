Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26644CDB482
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 11:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g8BwgEqYHePAa81BzaPBgib5griLbTwDSep4kN2v2nY=; b=5E60UvRGHTQR35
	v6k8rWHcWVxnXQdUdrKt/YPx3DW3Eayjva2hHixYc83vkdMaUe8bNviOSuDsh6cAhPpm2wW6H9R6n
	35QX53EEj/SPqOn3UcOhO7Prtc0MKf0lQKlCKSJ1LAUkuzi6mmI+y0yYIXFE4DNSbBd5ZDIELZgdk
	SCV2/LUTcq1NSM7yCPbCRkjcQFDM5g3O+Qr/b49FDF0BvrFbh56Wg8nAZw4nOVvA30gztRA9qAdQ2
	DHcTYaHHXIX4YnhohLRwa6b+bQ2/8XEGo72RCILOjmv5VTM0SZVg4NxeE+9esutBq3uYxsZ82rj7T
	mQj5mqgwylVTuDY0VN/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtRaI-00HDwR-1D;
	Thu, 19 Oct 2023 11:53:02 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtRaE-00HDuF-35
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Oct 2023 11:53:00 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20231019115254epoutp041241b4e511424b7b569d4d8db20f99f0~PgAw9Dqdx0273902739epoutp04B
	for <linux-rockchip@lists.infradead.org>; Thu, 19 Oct 2023 11:52:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20231019115254epoutp041241b4e511424b7b569d4d8db20f99f0~PgAw9Dqdx0273902739epoutp04B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1697716374;
	bh=7nYi78akZxJGlPR7AD0Lcbjc+rS4P6o1BY5F1N31zEw=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=dN91DeHepkJkJWZrgZYQ05rC4Z/0U0oFrxo6Whnow/fabB52XwzO32vzpk3P6rnlA
	 uvzunh0GtxS37SVLOCtZ1fwLUUfYWsuiVx1k0Ji7BtQF8JImWGoc+3Zk8S9KOfeIHF
	 LzPe7O0abn4veJ4UGvKW2Iuo6aLG09Nf/Lpxm/Ho=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas1p3.samsung.com (KnoxPortal) with ESMTP id
	20231019115253epcas1p3d938907ed57357ec46916cbb3b2f0645~PgAwEfqIn1637816378epcas1p3Y;
	Thu, 19 Oct 2023 11:52:53 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.38.236]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4SB5gm5ByKz4x9Pr; Thu, 19 Oct
	2023 11:52:52 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
	epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
	7A.71.09744.49811356; Thu, 19 Oct 2023 20:52:52 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20231019115251epcas1p1344c160cc6eb49e43460c932991ad195~PgAuVm_o40809108091epcas1p1F;
	Thu, 19 Oct 2023 11:52:51 +0000 (GMT)
Received: from epsmgmc1p1new.samsung.com (unknown [182.195.42.40]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20231019115251epsmtrp1c3636b2641f3a4cc612957ee8c853220~PgAuUd6DX1920719207epsmtrp1E;
	Thu, 19 Oct 2023 11:52:51 +0000 (GMT)
X-AuditID: b6c32a35-eabff70000002610-11-653118943096
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgmc1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	19.C8.07368.39811356; Thu, 19 Oct 2023 20:52:51 +0900 (KST)
Received: from cw00choi03 (unknown [10.113.111.106]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20231019115251epsmtip19f1b1d4d9a7467a31fc9f17fc911add4~PgAuBgZ7_2933229332epsmtip1Q;
	Thu, 19 Oct 2023 11:52:51 +0000 (GMT)
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
In-Reply-To: <20231018061714.3553817-13-s.hauer@pengutronix.de>
Subject: RE: [PATCH v8 12/26] PM / devfreq: rockchip-dfi: Handle LPDDR4X
Date: Thu, 19 Oct 2023 20:52:51 +0900
Message-ID: <001601da0282$c9da9380$5d8fba80$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: ko
Thread-Index: AQFYMiMsP3soeW2GlDsie1R9CxInBwLYD361AKl8EtKxOJTTQA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Tf0wTZxjHee+u7aFhOWqFV0y03ISJs9BTii8LKGPE3JyZJIbFuDns4GxJ
	y7Vriz+QTGAMxQxrRTbtwOJAgh0IAzZ+ZDhEFI2O4JjIQAyCLNOCggyiMsZaDzf++zzPfb/3
	PN973yNx6YQ4gEzhLZyJV+tp8SLix8shCsVJyHDKF1eDka33NwJVtnRiyNHeKUJzQy4RchY2
	EejYn/dx9Ev2qATVDveIUHdzkRhN5rcD9HRwDkfn7tzC0KWzq1B/VoUYfdHSLkGXxh+I0GxD
	LYEGXO+jjqo/xCjnripGxlaeqQRs40AZYJvsAxK21pknZu/2/CRm68oOsdZZJXus3gnYhp4z
	ODtZu4J1zAyD+MU7dVFaTp3MmeQcn2RITuE10fR72xPfSVRFKBkFE4k20HJencpF03Fb4xWb
	U/TugLR8r1qf5m7Fq81mOmxjlMmQZuHkWoPZEk1zxmS9UWUMNatTzWm8JpTnLG8xSuU6lVu4
	W6cdnYgwjsn2O7+yYplg1Pco8CYhFQ5rfi2VHAWLSCnVCOCg7YpYKJ4C2JU5KfGopNQ0gHn9
	mleO4zWF86IWAKu+HiKE4iGANW1j7ickKabWwpJnCR6DjEqA1muNmIdxaloEx+fe9bA3tQk2
	vbjzcsASioXluZWEhwkqCLY1OUUe9qEi4XN7CSawL7x++gEhvGclbBgrwoWF5PD5SLlI6Mvg
	N3m5uDA3FnY5T2Ce3SBV6g3Hr5ycN8TBzx0d87wEPuqolwgcAB9acyWCoQDAWy4XLhTVAH5/
	PmfesR7+fK4A86TEqRBY3RwmtANh00wxELZ4DT6e+lLkkUDKBx7JlQqS12H34AAm8DJYejhP
	fBzQ9gXZ7Auy2Rfksf8/rAQQTuDHGc2pGs7MGJn/DjvJkFoLXt79NapGYBsbD20DGAnaACRx
	WuYTxCo5qU+y+kA6ZzIkmtL0nLkNqNxf24YHLE0yuH8e3pLIhEcqwyPWrQ9HTARD+/vgQ/nJ
	UkqjtnA6jjNyplc+jPQOyMR0CWtv8BkzFc2dYa0Jn+zaezmEG8n3yis7+O3y/kn5G4GBluyx
	bavCQx1Rj2z7xORnn3brZavlW7q7vKzpc4XbW+s2bTHdvJi0069+2/2oXZZBtLzq49bW2Q8z
	VqiKbxT+wwRrUmy9Q30hF1zkYsUTKV30UX1Q5hPRsqn+PrvivHXPY4cu+PeuOAeIPltXXK26
	ecH/u957q4kZ72d9e/btKI1X62I2/nAgy7H74Cnm4vV7rG0EZqVV9P2lvS3dUJw17dcdV5Jx
	7YO/M3Av//yrfr4xw9qYrelLQ1HUytj48py3DYduT4wcfjNTsSNiqmAzXzLpcuVkk/tHqSNT
	sbxRX8HRhFmrZtbgJrP6X1odmWKEBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrFIsWRmVeSWpSXmKPExsWy7bCSnO5kCcNUg0N/NSwm3rjCYrFm7zkm
	i/lHzrFa/H/0mtVi1dSdLBZ9Lx4yW5xtesNusenxNVaLy7vmsFl87j3CaPHpwX9mi6XXLzJZ
	HFyoYnG7cQWbReveI+wWBz88YbX4u30Ti8Xd134Wx9c+Y7NouWPqIOKxZt4aRo8dd5cweuyc
	dZfdY9OqTjaPO9f2sHlsXlLv0f/XwKNvyypGj+3X5jF7fN4k5zH/92PGAO4oLpuU1JzMstQi
	fbsErow3H80K3opUrJrWz9TA+Eawi5GTQ0LARGLChqlsXYxcHEICuxkl/n86wwSRkJSYdvEo
	cxcjB5AtLHH4cDFEzXNGiXPrZrGCxNkEdCQW/AgFKRcRCJXoP7GDCaSGWaCFTWLXss9QQw8x
	SpxfeJgZpIpTwF5i56/r7CC2sICHxLK2NSwgNouAqsShnatYQWxeAUuJn7MWMEHYghInZz5h
	AVnGLKAn0baRESTMLCAvsf3tHGaIOxUkfj5dxgoRF5GY3dnGDHGQk8SFVZOYJjAKz0IyaRbC
	pFlIJs1C0r2AkWUVo2RqQXFuem6yYYFhXmq5XnFibnFpXrpecn7uJkZw9Gtp7GC8N/+f3iFG
	Jg5GoBc5mJVEeFU9DFKFeFMSK6tSi/Lji0pzUosPMUpzsCiJ8xrOmJ0iJJCeWJKanZpakFoE
	k2Xi4JRqYJL15Fn17sD1Ky1/5zU8cnnwauWvqW63dXYLWQV22XrU5+54fLv65ZxQRY4bTjaH
	pfx3R/8MuBjq0jF/xbQiq5/N2WETLA9YHu/90qLw8+VfVlc5G7aT0gonfax1ixqM1tqkv2w8
	styU58RMqSfHp3yx+vVZ/MDT1REPdO/7K2dJ/Ld/dqxo+plFPcy/AzOrn69VkQ/UmcS5yWRR
	f1OmWseuBQ6TrDek7f9UMoXZUi58bbABE+uECwLrr6h9WDPXq6ClbFViaMW1Zz07UvImpctZ
	ib07GyZSOKdH0jTIb8aCrV4LuZxZ0lNXvl6j+uDOjrWLswzqzjctXhPMsLPqw4ziuMDJvl61
	GXk21292tCqxFGckGmoxFxUnAgCb52CXbQMAAA==
X-CMS-MailID: 20231019115251epcas1p1344c160cc6eb49e43460c932991ad195
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20231018063708epcas1p1a4fd8b17e305424fafd04e10ebb62d1a
References: <20231018061714.3553817-1-s.hauer@pengutronix.de>
	<CGME20231018063708epcas1p1a4fd8b17e305424fafd04e10ebb62d1a@epcas1p1.samsung.com>
	<20231018061714.3553817-13-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_045259_322006_304C35FC 
X-CRM114-Status: GOOD (  22.68  )
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
> Jonathan Cameron <Jonathan.Cameron@huawei.com>; Chanwoo Choi
> <cw00.choi@samsung.com>
> Subject: [PATCH v8 12/26] PM / devfreq: rockchip-dfi: Handle LPDDR4X
> 
> In the DFI driver LPDDR4X can be handled in the same way as LPDDR4. Add
> the missing case.
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 1 +
> include/soc/rockchip/rockchip_grf.h  | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c
> b/drivers/devfreq/event/rockchip-dfi.c
> index 8ce0191552ef1..bdf421b248df9 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -90,6 +90,7 @@ static void rockchip_dfi_start_hardware_counter(struct
> devfreq_event_dev *edev)
>  			       dfi_regs + DDRMON_CTRL);
>  		break;
>  	case ROCKCHIP_DDRTYPE_LPDDR4:
> +	case ROCKCHIP_DDRTYPE_LPDDR4X:
>  		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR4,
> DDRMON_CTRL_DDR_TYPE_MASK),
>  			       dfi_regs + DDRMON_CTRL);
>  		break;
> diff --git a/include/soc/rockchip/rockchip_grf.h
> b/include/soc/rockchip/rockchip_grf.h
> index dde1a9796ccb5..e46fd72aea8d1 100644
> --- a/include/soc/rockchip/rockchip_grf.h
> +++ b/include/soc/rockchip/rockchip_grf.h
> @@ -12,6 +12,7 @@ enum {
>  	ROCKCHIP_DDRTYPE_LPDDR2	= 5,
>  	ROCKCHIP_DDRTYPE_LPDDR3	= 6,
>  	ROCKCHIP_DDRTYPE_LPDDR4	= 7,
> +	ROCKCHIP_DDRTYPE_LPDDR4X = 8,
>  };
> 
>  #endif /* __SOC_ROCKCHIP_GRF_H */
> --
> 2.39.2

Applied it. Thanks

Best Regards,
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
