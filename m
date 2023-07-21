Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CB71EB64DD
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jul 2023 14:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:From:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=btDO41ko0u5iqkpTrL4wkM5mhAlHbOnN22IwJTjnPSo=; b=l72kSQhjoDTZu2
	Nwp3C6Orhhpe+y6WrLrMkIZwmySTbudItuD05WbAac5oGdcfaaSUlbPnN10qYkhYPVbTJ5b9IBxA0
	ghihhtaTTGiK+Qi08YSPCQCgC2MBd+yUvan0j1Uiffyjy5KxNV4HylxJsuQnFlVcd7LC2h2FJ9Eh4
	mrigr1QzOQY72dz9D8f5gs1Xzs9I1QdjieeqoPRNk/dsEIULy+ApScXEnndDxlNPxeyGBu+HgXG19
	qhUNvBj+sy0VXrkIkCguQVgIBkeENR9Gggjk+/4UsySS4YtDsqnsmezYny0PCQ9tfRlEgfePF04Jf
	1LtMJD6Mnq0jwJyeQWAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMrVv-00ELd9-2T;
	Fri, 21 Jul 2023 14:53:51 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMrVs-00ELcR-2h
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jul 2023 14:53:51 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20230721145343euoutp01750044377508f2913e4128e1021a1c97~z6a8B6Thw1462914629euoutp01S
	for <linux-rockchip@lists.infradead.org>; Fri, 21 Jul 2023 14:53:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20230721145343euoutp01750044377508f2913e4128e1021a1c97~z6a8B6Thw1462914629euoutp01S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1689951223;
	bh=Rrfb/5CKnXgwUVjftv6KwY1EDaIM4ynA7oZzfhedB9E=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=hn99Q7LOHpT7R1zLQTFNqIrozav5Yq376DDTNRBZhUHxoDYi9Mka0MXpVUWrUx9G7
	 Nl3vxwiVHY4n1ALfJhMLG9bZATxgG1GMsBpx211IDVmuJ/ktOagwEXPOozMQm8jKY3
	 QZkXBYe9RJPeNinxJa4VDbJ+lhbyDzslsoEioL/Q=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTP id
	20230721145342eucas1p23fd6df809ed2412ff05863ff67460c74~z6a76U5mS1410514105eucas1p28;
	Fri, 21 Jul 2023 14:53:42 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
	eusmges2new.samsung.com (EUCPMTA) with SMTP id 01.90.11320.6FB9AB46; Fri, 21
	Jul 2023 15:53:42 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20230721145342eucas1p12e658a54d36d985b2811e2c21f7810ee~z6a7pa41t2668226682eucas1p1-;
	Fri, 21 Jul 2023 14:53:42 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
	eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20230721145342eusmtrp123604735d480923a48c9203f4226e478~z6a7o17XY2368823688eusmtrp1Z;
	Fri, 21 Jul 2023 14:53:42 +0000 (GMT)
X-AuditID: cbfec7f4-993ff70000022c38-38-64ba9bf6ba2a
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
	eusmgms1.samsung.com (EUCPMTA) with SMTP id F6.99.10549.6FB9AB46; Fri, 21
	Jul 2023 15:53:42 +0100 (BST)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20230721145341eusmtip14705932957219d7009f3d7205e4c2852~z6a6_GjNt3038230382eusmtip1V;
	Fri, 21 Jul 2023 14:53:41 +0000 (GMT)
Message-ID: <c2bba4df-da1f-5666-89aa-28c6700575ca@samsung.com>
Date: Fri, 21 Jul 2023 16:53:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0)
	Gecko/20100101 Thunderbird/102.13.0
Subject: Re: [RFC PATCH 2/2] regmap: Reject fast_io regmap configurations
 with RBTREE and MAPLE caches
Content-Language: en-US
To: Guenter Roeck <linux@roeck-us.net>, Mark Brown <broonie@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J . Wysocki"
	<rafael@kernel.org>, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Andy
	Yan <andy.yan@rock-chips.com>, Sascha Hauer <s.hauer@pengutronix.de>
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20230720032848.1306349-2-linux@roeck-us.net>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGKsWRmVeSWpSXmKPExsWy7djPc7rfZu9KMbg1w9Si//xNRoupD5+w
	WTQvXs9m8f/Ra1aLy7vmsFl8evCf2eLJwjNMFnO/TGW2+Lt9E4sDp8emVZ1sHvvnrmH32Lyk
	3qP/r4HH31n7WTx2fm9g99h+bR6zx+dNcgEcUVw2Kak5mWWpRfp2CVwZM6+uYSx4z1ex4N4W
	1gbG79xdjJwcEgImEksa5zN2MXJxCAmsYJR4unwhlPOFUeLEpgdsEM5nRokpN04yw7T0zG5g
	gUgsZ5Q43v+DGcL5yCixfsI9FpAqXgE7id7tB8BsFgFVid+L25kg4oISJ2c+AYuLCqRK7Lg9
	gRXEFhbIkLi07hQjiM0sIC5x68l8sHoRAXeJn18boeKTmCQe70oDsdkEDCW63naxgdicAlYS
	BycdZIOokZfY/nYO2EESAv85JG71XmSCONtF4s/6ZVC2sMSr41vYIWwZidOTe1ggGtoZJRb8
	vs8E4UxglGh4fosRospa4s65X0ArOIBWaEqs36UPEXaU2Df7HBNIWEKAT+LGW0GII/gkJm2b
	zgwR5pXoaBOCqFaTmHV8HdzagxcuMU9gVJqFFCyzkLw/C8k7sxD2LmBkWcUonlpanJueWmyU
	l1quV5yYW1yal66XnJ+7iRGYtE7/O/5lB+PyVx/1DjEycTAeYpTgYFYS4U1P35UixJuSWFmV
	WpQfX1Sak1p8iFGag0VJnFfb9mSykEB6YklqdmpqQWoRTJaJg1OqgWn1p1/vBd/v3NZZfafW
	XL460Uhj25/J03le2U1bsedToOSTgGpvYX/uoCuO3JpPeaPNjdau3xck8eZ3TFZlWER/kfm/
	eQKL9tiIFZ8N2NJ9Kmj/loC6Up0vAccSlY78yz7iwlyqlnSt4E3ODZ87R3nfeasLXu5IWemk
	4xtSveDfNdWX8YYGJWL2txO9XiWLcBe13JvUHdB86fxON8ttsm4ndzuxp3522iI4iTWeU+Hy
	wkW81s8ruO5o8sUy32i37bZtVTc6Ipmh/zPlFuvuD5YfbJvXzIvy2TDPrXVNTujKG+eWizG+
	P567uLrX7MSH35nuzPPsjp3LnxYRbOSnss70XXrh9bXvnKJeH2SLUGIpzkg01GIuKk4EAL/r
	UCbJAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrOIsWRmVeSWpSXmKPExsVy+t/xu7rfZu9KMbj8RNGi//xNRoupD5+w
	WTQvXs9m8f/Ra1aLy7vmsFl8evCf2eLJwjNMFnO/TGW2+Lt9E4sDp8emVZ1sHvvnrmH32Lyk
	3qP/r4HH31n7WTx2fm9g99h+bR6zx+dNcgEcUXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaW
	eobG5rFWRqZK+nY2Kak5mWWpRfp2CXoZM6+uYSx4z1ex4N4W1gbG79xdjJwcEgImEj2zG1hA
	bCGBpYwS718yQcRlJE5Oa2CFsIUl/lzrYuti5AKqec8o0bJoMliCV8BOonf7AbBmFgFVid+L
	25kg4oISJ2c+AYuLCqRK/GrYBVYvLJAh0fNtFZjNLCAucevJfLB6EQF3iZ9fGxlBFjALTGKS
	uLd2EyvERZkSd/YtAxvEJmAo0fUW5ApODk4BK4mDkw6yQQwyk+ja2sUIYctLbH87h3kCo9As
	JHfMQrJvFpKWWUhaFjCyrGIUSS0tzk3PLTbUK07MLS7NS9dLzs/dxAiM0W3Hfm7ewTjv1Ue9
	Q4xMHIyHGCU4mJVEeNPTd6UI8aYkVlalFuXHF5XmpBYfYjQFBsZEZinR5HxgksgriTc0MzA1
	NDGzNDC1NDNWEuf1LOhIFBJITyxJzU5NLUgtgulj4uCUamDi1P33yPW7bFp5/0mun42m7rox
	VUsSQpa/vZJTkx3n2t6z8cSu2xum/vo5+6y67PvXvIfrZ7xmLMxg6phf155y7/OaRLY3k1aL
	HH38aushntbX5UY/I3W6/z5Q/TjnwbUF4edn2qWe8hPQvDTby/7O9dmrTBvVZ39y1itvFupX
	cTdqCdm/xiwoRnFmephkZMiUpov+3ArTPK+/zp6z4rA/Wzl/9wK1wyeO8fudqq5MUuFeseXo
	HevZhbbXvXeev6/6TEx6a0zv+2zr1taK0BV2QbE+h6QsZ94pEv4tWXRnu3buDCPvmbKS280/
	/j793F1//uJd2ntfrbrifldhOeOeC7+aBISX77qafXf9vPatSizFGYmGWsxFxYkAVrBfb1oD
	AAA=
X-CMS-MailID: 20230721145342eucas1p12e658a54d36d985b2811e2c21f7810ee
X-Msg-Generator: CA
X-RootMTR: 20230721145342eucas1p12e658a54d36d985b2811e2c21f7810ee
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20230721145342eucas1p12e658a54d36d985b2811e2c21f7810ee
References: <20230720032848.1306349-1-linux@roeck-us.net>
	<20230720032848.1306349-2-linux@roeck-us.net>
	<CGME20230721145342eucas1p12e658a54d36d985b2811e2c21f7810ee@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_075349_135747_AD1F1F21 
X-CRM114-Status: GOOD (  21.67  )
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

Hi,

On 20.07.2023 05:28, Guenter Roeck wrote:
> REGCACHE_RBTREE and REGCACHE_MAPLE dynamically allocate memory for regmap
> operations. This is incompatible with spinlock based locking which is used
> for fast_io operations. Reject affected configurations.
>
> Signed-off-by: Guenter Roeck <linux@roeck-us.net>
> ---
> This seems prudent, given that accesses will be protected by spinlock
> but may allocate memory with GFP_KERNEL. Another option might be to use
> WARN_ON instead of rejecting the configuration to avoid hard regressions
> (and I think both drivers/net/ieee802154/mcr20a.c and
> sound/soc/codecs/sti-sas.c may be affected, though I can not test it).

This patch, which landed in today's linux-next, breaks operation of the 
RockChip's VOP2 DRM driver 
(drivers/gpu/drm/rockchip/rockchip_drm_vop2.c). I'm not sure what is the 
proper fix in this case. Should one change the cache type to REGCACHE_FLAT?


>   drivers/base/regmap/regmap.c | 9 +++++++++
>   1 file changed, 9 insertions(+)
>
> diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
> index 89a7f1c459c1..b4640285c0b9 100644
> --- a/drivers/base/regmap/regmap.c
> +++ b/drivers/base/regmap/regmap.c
> @@ -777,6 +777,15 @@ struct regmap *__regmap_init(struct device *dev,
>   	} else {
>   		if ((bus && bus->fast_io) ||
>   		    config->fast_io) {
> +			/*
> +			 * fast_io is incompatible with REGCACHE_RBTREE and REGCACHE_MAPLE
> +			 * since both need to dynamically allocate memory.
> +			 */
> +			if (config->cache_type == REGCACHE_RBTREE ||
> +			    config->cache_type == REGCACHE_MAPLE) {
> +				ret = -EINVAL;
> +				goto err_name;
> +			}
>   			if (config->use_raw_spinlock) {
>   				raw_spin_lock_init(&map->raw_spinlock);
>   				map->lock = regmap_lock_raw_spinlock;

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
