Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8307EC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Feb 2022 01:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:Cc:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WShyfZ+0FM+LIWSjvCLs4xtV5x3xim6YyR0VPuGzLqg=; b=1KIX3azCXJ06tu
	9tJ3fcBEvTgOCsicn/wtS/o07JksvNH8rbON85DCEQm6E1zDIi6ckanQzFBEVSn5WFB8FZIl8IQxJ
	e2bvxbv295gfwjNLRSc1ohSrXr1N2IdUkE2nCeYw2a0KJML6WgIFSW/q8eRZisvoP24xYNFEZXxH3
	1isp38FhLEKrAjpTcD+WWGRm4h3UqDgAoe6BpA87l57gTAtxxdwUXOTodoLbtoBRy4Kjyqya0E6YF
	oOedj8gCZX1yA9naR76X+YvwTskL4phFCH+//g8Xu2E77w5zmTDU+LAL0VVTc3DSSlbLWWE0BpANd
	VnuPO6BTHNRvBSv/My6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFnW3-003DOC-GO; Fri, 04 Feb 2022 01:35:59 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFnVo-003DKZ-MN
 for linux-rockchip@lists.infradead.org; Fri, 04 Feb 2022 01:35:48 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20220204013540epoutp03e947b608fab26bf8e1bf85569ad25de0~QcWSafV560356003560epoutp03G
 for <linux-rockchip@lists.infradead.org>; Fri,  4 Feb 2022 01:35:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20220204013540epoutp03e947b608fab26bf8e1bf85569ad25de0~QcWSafV560356003560epoutp03G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1643938540;
 bh=s5bBJJKpwvQaFDJJwqoqljzz6YIugD/evOylhy/zgB0=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=JU2T4nCio0jNjxzAK5tjrkhgMZu49fRm6EZ6XShWwfBL8H6J0ETn6i9sAEyLYITnM
 4p0HvxWgz+D6svAkCfA/kKT5wVbute1dkI7CidUrB4yM1Cn6hDtmVslhHCa2CJkpPP
 YRL57ZOTz5fm9pDt1kknyeDygksGC3h3zqC2fkKc=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20220204013540epcas1p3d62fe2de665a4b3945364ce186fb5158~QcWSFMaFy2224722247epcas1p3J;
 Fri,  4 Feb 2022 01:35:40 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.38.237]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 4JqdQX6Xbyz4x9QP; Fri,  4 Feb
 2022 01:35:32 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 41.E1.28648.3E28CF16; Fri,  4 Feb 2022 10:35:31 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20220204013532epcas1p1bb7acbbf276dfc9ac3a955c242651979~QcWKZir6k1775217752epcas1p1P;
 Fri,  4 Feb 2022 01:35:32 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20220204013532epsmtrp133d52c0c2ecce46487ca71e1a3ec6b26~QcWKYlu0v2264322643epsmtrp1x;
 Fri,  4 Feb 2022 01:35:32 +0000 (GMT)
X-AuditID: b6c32a39-003ff70000006fe8-84-61fc82e34d9c
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 EF.F5.08738.4E28CF16; Fri,  4 Feb 2022 10:35:32 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20220204013532epsmtip2e16bc88bf503f3247f61a38e43fac0d0~QcWKI4v3g0540205402epsmtip2A;
 Fri,  4 Feb 2022 01:35:32 +0000 (GMT)
Subject: Re: [PATCH v2 03/15] dt-bindings: devfreq: rk3399_dmc: Fix Hz units
To: Brian Norris <briannorris@chromium.org>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Rob
 Herring <robh+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Lin
 Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Derek
 Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <e495b6f3-f772-0dd2-b9fb-27c179e57cfe@samsung.com>
Date: Fri, 4 Feb 2022 10:59:22 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <20220127150615.v2.3.I9341269171c114d0e04e41d48037fd32816e2d8c@changeid>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrDJsWRmVeSWpSXmKPExsWy7bCmru7jpj+JBrsWWlts+vie1eLV5j1s
 FvOPnGO1+P/oNavFjw2nmC3ONr1ht9j0+BqrxeVdc9gsPvceYbT49OA/s8XtxhVsFq17j7A7
 8HjMbrjI4rFpVSebx+Yl9R5/Z+1n8ejbsorRY/u1ecwenzfJBbBHZdtkpCampBYppOYl56dk
 5qXbKnkHxzvHm5oZGOoaWlqYKynkJeam2iq5+AToumXmAB2qpFCWmFMKFApILC5W0rezKcov
 LUlVyMgvLrFVSi1IySkwLdArTswtLs1L18tLLbEyNDAwMgUqTMjOmLvvIGvBGfmK7Qv3sjQw
 3pfoYuTkkBAwkdg58zpbFyMXh5DADkaJ5z/OMkM4nxglrs15zgjhfGaUWPN/KhtMy9/zjewQ
 iV2MEl+Pr2OBcN4zSmxbd44JpEpYwEeidcMSsFkiAksZJSY9/wRWxSwwgUmid+0lFpAqNgEt
 if0vboDN5RdQlLj64zEjiM0rYCex7twKdhCbRUBF4svEu6wgtqhAmMTJbS1QNYISJ2c+AZvD
 KRAq8XPXWrDNzALiEreezIey5SW2v53DDHH3GQ6JlkcuXYwcQLaLxJSlwhBhYYlXx7ewQ9hS
 Ei/728BekxBoZpRoeHGbEcLpYZQ4+qyPBaLKWGL/0slMIIOYBTQl1u/ShwgrSuz8PZcRYi+f
 xLuvPawQu3glOtqEIEqUJS4/uMsEYUtKLG7vZJvAqDQLyTezkHwwC8kHsxCWLWBkWcUollpQ
 nJueWmxYYAqP7+T83E2M4GSsZbmDcfrbD3qHGJk4GA8xSnAwK4nwZk/7nSjEm5JYWZValB9f
 VJqTWnyI0RQYvhOZpUST84H5IK8k3tDE0sDEzMjYxMLQzFBJnHfVtNOJQgLpiSWp2ampBalF
 MH1MHJxSDUxb7UPajPadPl3apqYiuseY+btBiMrM+1OuuopVPHcLrLLnOHHff4ugzy6rLfuO
 fZq988JPjm1S7en6Qoy/LzZcmm4+t2DGknOMf1ICKl629zwo1OF3NWaeHFoiHnowt/PT8Xox
 ZeF24dhZ11jcN7cX7ZFfX/vOgoE76V1UzYy4pfbxe1827V5y6sbOZTx/HlRe831y/rOz3Osr
 Wg+VdS79ffUs6HldAn+lQ27h1RKFtwxiO5oPmRZ3aoQLtZ+I4k5kEbFxklx3y+/zRLOA0J9v
 90VXmJuGdqywN9RM31d1XJr7pVeFoLiubeGMNOndJm9Zy1If8eyLmFo/yYVVXFg4M6XNkld9
 QUqxRn+iEktxRqKhFnNRcSIAxGbBRE8EAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKIsWRmVeSWpSXmKPExsWy7bCSvO6Tpj+JBvf+iVts+vie1eLV5j1s
 FvOPnGO1+P/oNavFjw2nmC3ONr1ht9j0+BqrxeVdc9gsPvceYbT49OA/s8XtxhVsFq17j7A7
 8HjMbrjI4rFpVSebx+Yl9R5/Z+1n8ejbsorRY/u1ecwenzfJBbBHcdmkpOZklqUW6dslcGXM
 3XeQteCMfMX2hXtZGhjvS3QxcnJICJhI/D3fyA5iCwnsYJSY9i0eIi4pMe3iUeYuRg4gW1ji
 8OHiLkYuoJK3jBL7tv9lBqkRFvCRaN2whBkkISKwlFHixI4WMIdZYAKTxIPVc6Cm3mOUmLBR
 GMRmE9CS2P/iBhuIzS+gKHH1x2NGEJtXwE5i3bkVYPUsAioSXybeZQWxRQXCJHYuecwEUSMo
 cXLmExYQm1MgVOLnrrVgcWYBdYk/8y4xQ9jiEreezIeKy0tsfzuHeQKj8Cwk7bOQtMxC0jIL
 ScsCRpZVjJKpBcW56bnFhgVGeanlesWJucWleel6yfm5mxjBMamltYNxz6oPeocYmTgYDzFK
 cDArifBmT/udKMSbklhZlVqUH19UmpNafIhRmoNFSZz3QtfJeCGB9MSS1OzU1ILUIpgsEwen
 VAMTq8jOWFl7xrk+P853anYu/JQ2p+vw3f+uK6ZynfB8+KlZNSTU6rNC5BU1j1sOq/Vm6e42
 mHV3j4wCv5oJs091+qvTr16dEBacvni2TMYrzunK2tET2jU0sx/Y8H66zmH3fIV5YEHurtal
 GeLaqXzlt2awHlV+9mfS39N1P/UvBm2u/BPgI9u/fMvUR59VJghzp5jFxxx6oygn0HizwaxD
 bLvE3Z5qZuUCncb80KYfPgeWcMQW8y3rcPgtz7Qk3LGJLYEtPnZzzAkJrpp3KXIZJRv3+HW9
 /fHL5GGUQL7g+tg1VTt5eRkCWUuEH/+p+l+QVxdVktY83/W/wJzLV18kfsxROld591aodM/S
 1UosxRmJhlrMRcWJAIP24J44AwAA
X-CMS-MailID: 20220204013532epcas1p1bb7acbbf276dfc9ac3a955c242651979
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220127230838epcas1p407910e790cf0d4d3cf1e8f8905553b93
References: <20220127230727.3369358-1-briannorris@chromium.org>
 <CGME20220127230838epcas1p407910e790cf0d4d3cf1e8f8905553b93@epcas1p4.samsung.com>
 <20220127150615.v2.3.I9341269171c114d0e04e41d48037fd32816e2d8c@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_173545_106187_F8371EAD 
X-CRM114-Status: GOOD (  25.88  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 1/28/22 8:07 AM, Brian Norris wrote:
> The driver and all downstream device trees [1] are using Hz units, but
> the document claims MHz. DRAM frequency for these systems can't possibly
> exceed 2^32-1 Hz, so the choice of unit doesn't really matter than much.
> 
> Rather than add unnecessary risk in getting the units wrong, let's just
> go with the unofficial convention and make the docs match reality.
> 
> A sub-1MHz frequency is extremely unlikely, so include a minimum in the
> schema, to help catch anybody who might have believed this was MHz.
> 
> [1] And notably, also those trying to upstream them:
> https://protect2.fireeye.com/v1/url?k=0a7de78e-55e6dec8-0a7c6cc1-0cc47a3003e8-4f0969a9fa7b496e&q=1&e=6129c5df-8bd2-4072-86ef-79b79b36ec89&u=https%3A%2F%2Flore.kernel.org%2Flkml%2F20210308233858.24741-3-daniel.lezcano%40linaro.org%2F
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> 
> (no changes since v1)
> 
>  .../bindings/devfreq/rk3399_dmc.yaml          | 24 +++++++++----------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
> index fd62a8cd62d5..8bb778df92ae 100644
> --- a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
> +++ b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
> @@ -116,11 +116,11 @@ properties:
>  
>    rockchip,ddr3_odt_dis_freq:
>      $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 1000000  # In case anyone thought this was MHz.
>      description:
>        When the DRAM type is DDR3, this parameter defines the ODT disable
> -      frequency in MHz (Mega Hz). When the DDR frequency is less then
> -      ddr3_odt_dis_freq, the ODT on the DRAM side and controller side are both
> -      disabled.
> +      frequency in Hz. When the DDR frequency is less then ddr3_odt_dis_freq,
> +      the ODT on the DRAM side and controller side are both disabled.
>  
>    rockchip,ddr3_drv:
>      deprecated: true
> @@ -160,11 +160,11 @@ properties:
>  
>    rockchip,lpddr3_odt_dis_freq:
>      $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 1000000  # In case anyone thought this was MHz.
>      description:
>        When the DRAM type is LPDDR3, this parameter defines then ODT disable
> -      frequency in MHz (Mega Hz). When DDR frequency is less then
> -      ddr3_odt_dis_freq, the ODT on the DRAM side and controller side are both
> -      disabled.
> +      frequency in Hz. When DDR frequency is less then ddr3_odt_dis_freq, the
> +      ODT on the DRAM side and controller side are both disabled.
>  
>    rockchip,lpddr3_drv:
>      deprecated: true
> @@ -204,11 +204,11 @@ properties:
>  
>    rockchip,lpddr4_odt_dis_freq:
>      $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 1000000  # In case anyone thought this was MHz.
>      description:
>        When the DRAM type is LPDDR4, this parameter defines the ODT disable
> -      frequency in MHz (Mega Hz). When the DDR frequency is less then
> -      ddr3_odt_dis_freq, the ODT on the DRAM side and controller side are both
> -      disabled.
> +      frequency in Hz. When the DDR frequency is less then ddr3_odt_dis_freq,
> +      the ODT on the DRAM side and controller side are both disabled.
>  
>    rockchip,lpddr4_drv:
>      deprecated: true
> @@ -287,7 +287,7 @@ examples:
>        rockchip,sr_mc_gate_idle = <0x3>;
>        rockchip,srpd_lite_idle = <0x4>;
>        rockchip,standby_idle = <0x2000>;
> -      rockchip,ddr3_odt_dis_freq = <333>;
> -      rockchip,lpddr3_odt_dis_freq = <333>;
> -      rockchip,lpddr4_odt_dis_freq = <333>;
> +      rockchip,ddr3_odt_dis_freq = <333000000>;
> +      rockchip,lpddr3_odt_dis_freq = <333000000>;
> +      rockchip,lpddr4_odt_dis_freq = <333000000>;
>      };
> 

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
