Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74B16C44506
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jfkgLKmNndMgzxOqpZjFAkyFWRGw8G9DsgQ0qpZosjQ=; b=VypwEWVVzRjZd5
	hXxl7Maw9cdqr2YDmkW6Om36gCHsC6tFFvIbtBrnPTJWvWfIHN2tYvvQxm8TgW7HzoUgm0W0GTBR3
	FZhEiA/wbq8F42Lf2PI5PdBgB+KYsh1g0FZ0UPMISaDf4gnCVE+T7l9nsow8Ph4LWN2ZnkPSbavGY
	OPSAQZOYlyq9P6WhxnJUkdjKh2D1W6qgkABjFXYxHquqkg3E8z0q72sON3nFZry7w/cBb+JdACbJY
	efnrpe46J5auIX6fcnWDAGV4kXR+AoG4PwATQXRs1NimsjS1sxzWPhTXx+5RbsE53l8z5hagHjzyQ
	fTe8aYXOKrrOhiHCNMMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkRk-00000001XeV-28JT;
	Thu, 09 Jul 2026 08:49:28 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFtQs-0000000Bfuf-2vLQ
	for linux-rockchip@bombadil.infradead.org;
	Thu, 23 Apr 2026 12:45:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=dRf9flM23evHV+dCjZ11/3wAeY0NjlVmUaCb2MHl7Rc=; b=I6W4lhWpVav9ucF5rgwgMLEGj9
	3VsLtm8E/ks89dAs/ATJeOnp6oWyfiySp29Jc/mHJy7Xs32XoJILjSEVmuoW+ZJiZyFf/mu2Fb0ff
	h46+AsjCKVCWIW985TgFqo0p2O3lrZ45+dJJhbDvML2w2KX6NPo01N4dlyt+7w35kqzxyNPlS4nlA
	f0MBVjJusi1+nSuQJInJYynsyrNSEbguGM5w756aUR24DWXY8x7o2qIxSB/QgSat95iUKgujex7wk
	n4dQ0wA0iVoEQQjJ3IwANmLbXoImm57Wv9nEnPrMKGTZ5uj/7KQY0CLjGMaOWlZ71saBnaxx2pLtH
	63e7k41A==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFtQn-0000000DSKt-05WL
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Apr 2026 12:45:25 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63N8tpLs179253
	for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2026 12:45:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dRf9flM23evHV+dCjZ11/3wA
	eY0NjlVmUaCb2MHl7Rc=; b=f4KeQ6v7smM+6vkjRyPOX9wXEYAtm4U3Svh9O4LA
	F+Ut9ODMjODxPNbgXzx8vYsDdabudfLWLc0zHnFv+oEKiz89nUOO2sQPOHS/+ZM3
	zQT6oMIVkCq5Wp4R3VTgnkYwX6xePFRT1MC0rIMz32csoNRax4q/mT6Yr/+zL+9C
	7OuvYNvRF7g+TmXzCH7lNo60EkNeNnDFHwVPY44uYX+2fEK1axSGxBuE/TKbVwb/
	fm24A7Rzdi8ERqvvgbrmTj90vCgNjVgjSS7A0elPrw1hQn9gGEzfn8Ty8iz4A8An
	nqvE0T5Xjg8h9sNYtk4IJbU+TIpW+LIBNd98FbPRTRXSOQ==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dqe62hgcw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2026 12:45:18 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-56f1fe60919so11761451e0c.2
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2026 05:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776948317; x=1777553117; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dRf9flM23evHV+dCjZ11/3wAeY0NjlVmUaCb2MHl7Rc=;
        b=BkFNMR3ZF1oscSg6Lh8HDxjO/tOgFLs3NArYG2QJZJKEUm6VjhIqacWDYeQMzhPAAV
         bVhSFZxJCbWLE381Edj1C1Mc053MoT0cqAxO+aPoZ/VRKEZGGtGpNaf4IswctwTJFFt5
         LfFU8lRaNpcl1Xq1oXMsWoxJzD2CPl0DMXhQRYtvD+0qQTxloJEUc0Siybi2evNVZJoc
         XoghhoJxzb+uYJ8O8nYz4Akk5S/Z0IeWkG5ARywQu5Mhjyvg4K+x02LFC3UDH9HrY6JI
         HPffqn96XlJ7Fm2EWP2/8KVIrMmIwkyHLXm8FhWIulPs/DNL8hTR0mBhMUmVurb1mOhC
         XMhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776948317; x=1777553117;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dRf9flM23evHV+dCjZ11/3wAeY0NjlVmUaCb2MHl7Rc=;
        b=EX0HrSkqHtm74tu/vP2yygYiN99oE0RHFGA0dkE/uGJGDFYJE3Ud6bAj7AM2CHEQYK
         MrQFXo25bRsHm8XzGWkvio10FJuD6Q9vVX88M4n2tLUDckV8/SSgCb117RakrrF5Ddco
         Ok6JdIn/agPDFaj89xdOeuM665UjpC9+LtWGTQXsZ3GGGnxYl87rrdbj/Vz9sh0Dj4Oi
         61wzeVIt9AqvxcSmS5CF+eyfdMUJfMn+8xdqkeg67Ja6F7gINTsKIzpLtfIGfTOPw9w/
         PZ7Q8NvFAOb6Le1krOop/pzCnGqh7zL4xYR/X1LvR/DyHvz8zo+6R9HkZeR16659aHic
         Zuow==
X-Forwarded-Encrypted: i=1; AFNElJ91L9gwXXTVEZSFN7ZPAI9q14SHRF4QgSk2GDSDwDKqpD3rTsT7rlmdE98d9thFETauKxPvPv5qIxnIoecCyA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0/KO2OPBhc/nlfcXyf/FrnP8RLqQxG/VEqB+qmyFJXEnd/ViD
	cvdeSy1wnR+u4zpBIDfdWfPo/Ev/VYb4P8uVJRhbB36kX9PZYau9CkELvoYml9NfQIHe7zTSQZP
	hFEpdw4+pHN8OKH/ozy8GObkyUQwimEe5YXybnrQsToFZyT/WrWO/R0JpxWRyOHerLoaT6NwvWp
	4=
X-Gm-Gg: AeBDievJ5fD3E0DFek/XJ2CtjIT/YU32hmpmcgOu9y9sJFwdxkjsrzti/ASfs0Bg9oL
	x9Al6SQjDrJ4l6ZgbC6NQrQey5XtUKB2wuX0vT7s5pq1CnhJzJBrXz5pk8G5CxLTwPF4FokFKtB
	e0iqYdHXFM68QPi+4bcB1XNeRzUPPuhriE9PBgIKPjljnDN0h0NpOjsCnMOz2/RkD1Z1LhOCRD3
	rXC9jW8nUMChWWqsbhfN2hgMPkvaJIMYfsOF2AscUP1wmAk6mMdSz2sgvM9mMbvirSn/Qaj9bRJ
	nyhGKldyoaUo6XX0DJWfbJ7D+1oeyLT+I3Ze39qbZd0eLGhIogJzJUD705HGjuuO6j9vph+Un44
	rWEHZL3V4bSvcPYpqL6DNk4nHX7vZJpqxFYEcxJL0Z6t90dkNc3904QKHEfFnRWiYsL7IV00Pw7
	4K3a12/0OqLQ9d80pkN75N/EMyktboTFEmExB73sF6wX6auQ==
X-Received: by 2002:a05:6102:3e0f:b0:605:19ce:9ccf with SMTP id ada2fe7eead31-616f58af7d9mr13838570137.13.1776948317050;
        Thu, 23 Apr 2026 05:45:17 -0700 (PDT)
X-Received: by 2002:a05:6102:3e0f:b0:605:19ce:9ccf with SMTP id ada2fe7eead31-616f58af7d9mr13838537137.13.1776948316554;
        Thu, 23 Apr 2026 05:45:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38ecb75b033sm41855241fa.39.2026.04.23.05.45.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2026 05:45:15 -0700 (PDT)
Date: Thu, 23 Apr 2026 15:45:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sasha Finkelstein <fnkl.kernel@gmail.com>, Janne Grunau <j@jannau.net>,
        Liu Ying <victor.liu@nxp.com>,
        Douglas Anderson <dianders@chromium.org>,
        Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Paul Cercueil <paul@crapouillou.net>,
        Anitha Chrisanthus <anitha.chrisanthus@intel.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Mikko Perttunen <mperttunen@nvidia.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Icenowy Zheng <zhengxingda@iscas.ac.cn>,
        Jingoo Han <jingoohan1@gmail.com>, Inki Dae <inki.dae@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>,
        Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Biju Das <biju.das.jz@bp.renesas.com>, Marek Vasut <marex@denx.de>,
        Stefan Agner <stefan@agner.ch>, Jyri Sarha <jyri.sarha@iki.fi>,
        Michal Simek <michal.simek@amd.com>, Hui Pu <Hui.Pu@gehealthcare.com>,
        Ian Ray <ian.ray@gehealthcare.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        asahi@lists.linux.dev, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v2 00/41] drm/display: bridge-connector: attach encoder
 to the connector
Message-ID: <wanzalswb3lez6kyklprqojcnidab5fkxgu57lfka45w2rt4ic@xdatq5o7yiub>
References: <20260423-drm-bridge-connector-attach_encoder-v2-0-2ae6ca69b390@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260423-drm-bridge-connector-attach_encoder-v2-0-2ae6ca69b390@bootlin.com>
X-Proofpoint-GUID: D4zDKU9_GM5GI7pvGgRXIkjoVR1jSRRE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIzMDEyNyBTYWx0ZWRfX0pLhdqVJdqtC
 mFkBS6SPiuAWK1VG+YLJMSe6uBnuyzdkXSqySEleAR9fNTW1vZkMDf+WbLkW01EfuZxpRAa5uQu
 JnPwvQ+b4GbbaGUJPJHVDbhx7d35erRpu/xTs0rPNUhgnsDfjG4PUy2S+qBjJy56zTla5ID+tOe
 1OTqlEPT37hBSjHwmx2xyz54CNeuGgb+dFZTOHUmmc8vd1hxK1II5VtAXa92fSgBcemTRlJ+Bgy
 UxwYaJxUdNG/wVS1mkt+uQPqP07spjB/yXLRnUqz8aTFrBnPHnoR7TpJlDpRhddKPgikbaRBFkS
 5EYt0PXlYDIRFXWl2IuuYfRlCKnEK4KSYWi7gW5Yjw43Ezk9ARrkG/VzApU6owOtc/IQa7KhnSl
 qRUYa76wvR+sP+4bMqvabWg3Q2XBXKlzoEu0F0rxTfqYIKXHkApQJDPEGBILjg8NNuX2I/6Mwd3
 NHliLvVoPntC1pVm5iw==
X-Proofpoint-ORIG-GUID: D4zDKU9_GM5GI7pvGgRXIkjoVR1jSRRE
X-Authority-Analysis: v=2.4 cv=Nv7htcdJ c=1 sm=1 tr=0 ts=69ea145e cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=SkVVgs_SJVxU13IceqMA:9 a=CjuIK1q_8ugA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-23_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 clxscore=1015 bulkscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604230127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260423_134521_440163_EC5B1A23 
X-CRM114-Status: GOOD (  16.70  )
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

On Thu, Apr 23, 2026 at 11:16:54AM +0200, Luca Ceresoli wrote:
> This series simplifies using the bridge-connector by removing the need to
> attach the newly created connector to the encoder.
> 
> == Series description
> 
> Currently all users of the bridge-connector must call
> drm_connector_attach_encoder() immediately after a successful
> drm_bridge_connector_init().
> 
> This is an unnecessary burden for users. Move the call to the end of
> drm_bridge_connector_init() so all callers can be simplified.
> 

I don't know which one is more correct in this situation, but let it be
R-B for the series:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Feel free to take the msm patches through drm-misc-next (A-b).

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
