Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 047F8C44508
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6A14IhZez9hZc9kugbF7VZtfwQr8LGqkIu15xafq8Cw=; b=Lx7itd5qMNIqw9
	TUtLtoHtVfpcZjByrkCnOqVbZ2cE/WYWOzlkSBbkyJ53J6chPqxKgemGr76OB2b4vbKwf3ucaABBM
	QYE8DDg4ovaNrvj2//eJXFX2CfSbcClpTAHwvt7Q7gRQsTkb2w7o2a1RSc7unVi0jy3H7PjQ5hx2B
	EjMXzDBu9DpnBjqCQCW94IsuGZV9Vqzxcap9St09MjifJT1dRcpi8TwHNXLMZll45c/aGtrNtPEzz
	uBIMsJXwAYt1qVcdUhXUqqxwvRRzTzorZ8/gsU3bGW1751gNsE3DJQEoGBDrUuTAvVYJYFoEniy30
	hpKiPSw1DD4pSI4M5Dsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkVf-00000001bOz-1xh3;
	Thu, 09 Jul 2026 08:53:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN9bO-00000002kFq-1tQm
	for linux-rockchip@lists.infradead.org;
	Wed, 13 May 2026 13:26:20 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64DC29Mu2965186
	for <linux-rockchip@lists.infradead.org>; Wed, 13 May 2026 13:26:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1A2JIuivfxTHNE33J+4ZfrSn
	HuAPEzqRV86Vt32AWoc=; b=k2+sVBYmVZ6IQNmSNTSEz1M1qd4wswCJFFvnyNxc
	kR7lMnI/qoifc5tBfwJtdRKCTTiGgdsMz53yoebwClcfnY4u2z7KDVV8N0s5w8pM
	W8cKzo6Pyw49XSwLNl/sGtES8RtxR5OCVPg+6l6DrndShstRX+wLtSHhICzhmews
	uiyfDo5q4si49V20xzR96tc/NOXPeH4eyVCo+zdiJIPFh4emrffgdjOMqnK6ZoGV
	oJ9ZRRaP4uFdbrNL+30g4uuGP9zSrK3seLT8SuPK1egfaPDPK2XirOkRWhQ/qoyn
	8L7rD/LIjoc0YeAGlxRJ2/m/+QPHuV5C/YWW/sNOMVpgvg==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e4ma59gc7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 13 May 2026 13:26:17 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-6326fc1256aso5443754137.1
        for <linux-rockchip@lists.infradead.org>; Wed, 13 May 2026 06:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778678777; x=1779283577; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1A2JIuivfxTHNE33J+4ZfrSnHuAPEzqRV86Vt32AWoc=;
        b=j4KeZZIY5yZrB0+GEK07DLtSYpDwtyAWJvlzt2PQZ8WWJtvWHedk1yagFsoTfmsEQs
         75YiN8GH87YZJBQhL/wHd7UJpEFT5Fmr98pDJdGiX1F/HzHUUeyzfiF9/+BLhwq9XopN
         jBWIxJEFYWkdMcVFXu3cGwozOZhYIzg+hrWHgkErvXnar6DZuTOeSeyJKkQDhb39Rmgx
         QzWoHyF79VQlYkugJ67C37JX7FPtT/5lXvFbCBqLswBEAjmV1Z36qcLaaTMqKRolOYQ8
         Z4XDRT8QN3ypKDoV8EtIlfbUAuYDSzj1Apc5JXyGmFptyFc93d6J9kY57Wdkp9mYkMxv
         PXtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778678777; x=1779283577;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1A2JIuivfxTHNE33J+4ZfrSnHuAPEzqRV86Vt32AWoc=;
        b=PQRkbpdImWJNK29QrzqWjhy92bNuT9JJiEzc67YAU9qftN06Al4FZOI3+WI5ksmw8Y
         DaWK7ipgkNLcDP35khUxr7uvM2mFJ+i/1pII5dIo8dxdJq4vsgMq+o7ggkxmzG/BeOsY
         fwe9+mrW30O5++M9yW5MqZEd4+0dBalnlJ2C1XVo0luy1bY3xuyZbavdKDpQ3jmUJWoT
         SJWZqpK7O+QUX2NlGBtTbgXf466QvWiWXIKx1DsHgQt28pfnq0xEBnlqXbLTzw+9dcxm
         MkfZi2IQpvgrJeV5eX4aH9sat6SsaEsDP05KIfBw7NTrPCalKc9c0BAvk6jRuZz1Oxpb
         KtXQ==
X-Forwarded-Encrypted: i=1; AFNElJ+tc/pG2RSqfG3C/W9OgC5rtGYeSWzKu9ZbazIljlqk7xKfUZr7MIlNxlrwIMJTxtsKFR0CqPYCZJmDlgxgIg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxYIsLeNy+esZRunL51CvM4X7hyrMXoLm072X8HhIRNmz/61zUd
	NdSpDpxXbmjsgFdRB1eAvX20FOOWs9tSx7YhYQTm/7IVDilwmsH8Bm7SUBaYNsEBpWsdcqMEQ1M
	3l0GryfWyMCfF74iY8wlAvR8fMWV5bQhYFWslOHPLAha5s6c6uAksRQeS4SqOOIa7fNJ7gsrcy1
	o=
X-Gm-Gg: Acq92OG/G4Pdcj+gGyOUlqCBku2YRML5RfdlUuPi4yvdMzXehumXLeyI/CUMtD3B+HF
	cB+o0T0ZrcZ3jwsiJD6jIKKnLjVkLlqGn2z93YJ7yjl4E7O7NghCT0VINWQm2UfnFIrLjHaMYFc
	8VqXjkJV3vLKO3DPkGOMQAhUH/53u/NT2YysbEM2UeNHX3NWx+o/093WuCHeS9KDj/ZYYU48s3J
	QlxgEQaq5es7RHHouiVHY3J88pCNZdETuF9fjgSJ000upnkzrCdxHMYJrI1BkwGNNpTyEYlXOcm
	wydouj0K03yhWWKhSEry+IKgzslf7Qg4Q8ICChI5x8C25F7OCVKpWDewfN9z+T1eCeXq7/J/G+W
	HhqqWp3r+YGpbdkbdmPyNWVo+a5ij0olf+JMzm5dz9a1OCxMOUAENoOsbNLGereXQaKORxScwUv
	KA40i8ReAf5NBl4AF+3T1eij8TGwse2vwtHoo=
X-Received: by 2002:a05:6102:c4c:b0:5fe:af0c:79f5 with SMTP id ada2fe7eead31-637733e73b9mr1509843137.5.1778678775989;
        Wed, 13 May 2026 06:26:15 -0700 (PDT)
X-Received: by 2002:a05:6102:c4c:b0:5fe:af0c:79f5 with SMTP id ada2fe7eead31-637733e73b9mr1509786137.5.1778678775359;
        Wed, 13 May 2026 06:26:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-393f60db2f3sm41011661fa.22.2026.05.13.06.26.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 May 2026 06:26:13 -0700 (PDT)
Date: Wed, 13 May 2026 16:26:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Liu Ying <victor.liu@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Vinod Koul <vkoul@kernel.org>, Nas Chung <nas.chung@chipsnmedia.com>,
        Jackson Lee <jackson.lee@chipsnmedia.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Mirela Rabulea <mirela.rabulea@nxp.com>,
        Detlev Casanova <detlev.casanova@collabora.com>,
        Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        Heiko Stuebner <heiko@sntech.de>,
        Hugues Fruchet <hugues.fruchet@foss.st.com>,
        Alain Volmat <alain.volmat@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, MD Danish Anwar <danishanwar@ti.com>,
        Roger Quadros <rogerq@kernel.org>,
        Parvathi Pudi <parvathi@couthit.com>,
        Mohan Reddy Putluru <pmohan@couthit.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Michal Simek <michal.simek@amd.com>, Mark Brown <broonie@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Linus Walleij <linusw@kernel.org>,
        Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>,
        "Andrew F. Davis" <afd@ti.com>, Hussain Khaja <basharath@couthit.com>,
        Suman Anna <s-anna@ti.com>, Ben Levinsky <ben.levinsky@amd.com>,
        Tanmay Shah <tanmay.shah@amd.com>,
        Erwan Leray <erwan.leray@foss.st.com>,
        Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        Roger Quadros <rogerq@ti.com>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        dmaengine@vger.kernel.org, linux-media@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com, netdev@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-spi@vger.kernel.org, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: Consolidate "sram" property definition
Message-ID: <ldpcnzvloffhiubmv6zxhfzqo4oz3ntkmav6zjprmbnsrxd46z@t72iga4xvaji>
References: <20260511165942.2774868-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260511165942.2774868-1-robh@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEzMDEzOCBTYWx0ZWRfX5WWIGlso1R8J
 of4Qj6x9vXb8bAMzdaN3oM1pcIJsUUD71SmsCE4dPIWvOcmLb7PQ5Y9EZWNo1ZVRbRncTC1KjVD
 BTiAuFIZStyImrAj1uEEhgwr9mNDWf8UUGZmvLE5kRlFhDbVZD6pQCTwLJT0rx0qDH1czg4GyWi
 tptb8iFvuSmukMy0KhVtoX4uSN0juCaw+7b5gmKrE9cZMerZ32c/7QH0EOUm7NrpvQG4OWzBZBP
 ro0xtj+3CZjduFz2GbPU8TWfSaYhJdhMC+ouzFUSkUlZ5T7/K570uYe92/Yyit/ucxuzWfVt3p6
 ByY+WG7qU+q1WCyKiHRMbIX3Q88fMMjr2tYZvp+R2NnBc/teFHgkZFOiJA9hxquHJA/8XPnbUgY
 o6yxfjLyEx7ZDkDPn1AFjmoFU+F3NM1kyp4ObLk3GQy0BvILLwLc6kAcBTFGdAA6ylv87CPQ02V
 4GLYtyegNYa7rHMFFrg==
X-Proofpoint-ORIG-GUID: UCMhsz9uBLaSUQaHMKzcVEsNhCt-c54G
X-Authority-Analysis: v=2.4 cv=TJZ1jVla c=1 sm=1 tr=0 ts=6a047bfa cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=VwfjHJzzgIKQiJfiZN8A:9 a=CjuIK1q_8ugA:10
 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-GUID: UCMhsz9uBLaSUQaHMKzcVEsNhCt-c54G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-13_01,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 impostorscore=0 spamscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605050000 definitions=main-2605130138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_062618_487763_CE60AE27 
X-CRM114-Status: GOOD (  15.39  )
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:24 -0700
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

On Mon, May 11, 2026 at 11:59:36AM -0500, Rob Herring (Arm) wrote:
> The "sram" property has become a de facto standard property, so create a
> common schema for it and drop all the duplicated definitions.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../imx/fsl,imx8qxp-dc-command-sequencer.yaml |  2 +-
>  .../devicetree/bindings/display/msm/gpu.yaml  |  6 +----


Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> # display/msm


>  .../bindings/dma/stericsson,dma40.yaml        |  8 ++----
>  .../bindings/media/cnm,wave521c.yaml          |  2 +-
>  .../bindings/media/nxp,imx8-jpeg.yaml         |  6 ++---
>  .../bindings/media/rockchip,vdec.yaml         |  5 ++--
>  .../bindings/media/st,stm32-dcmi.yaml         |  6 ++---
>  .../devicetree/bindings/net/mediatek,net.yaml |  3 +--
>  .../bindings/net/ti,icssg-prueth.yaml         |  2 +-
>  .../bindings/net/ti,icssm-prueth.yaml         |  2 +-
>  .../remoteproc/amlogic,meson-mx-ao-arc.yaml   |  7 +----
>  .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  |  8 ------
>  .../bindings/remoteproc/ti,k3-r5f-rproc.yaml  |  8 ------
>  .../remoteproc/xlnx,zynqmp-r5fss.yaml         |  9 +------
>  .../devicetree/bindings/spi/st,stm32-spi.yaml | 10 +++----
>  .../bindings/sram/sram-consumer.yaml          | 26 +++++++++++++++++++
>  16 files changed, 48 insertions(+), 62 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sram/sram-consumer.yaml
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
