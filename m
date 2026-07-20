Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D8F0C4452A
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 14:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pap8FlQG2SSHXDqxbqCuj1UxJ4RXVwOhM+VwAxHT2hQ=; b=B8qUWF1T3v2OEz
	+VdrTniEyJo29nx6+EyNUmDMS+mMKhCG9LvMaobkmZ4kY/G8m4EIDDJCGAIs6PcwwNqaCGQKOzi3O
	Lrz/Z4TTtBj9PaR6VKeULL/Rm4TL9BLaQhrr7AFi2A3StmYOx/b0WeFuBL/x1tpFHPEqj6GVT2aXu
	Wyrxi3Ee8Soc/Vq+h3QeUdu3XUsSk7eUoyIB3a+YhNTBg6ZvZs4PDTJlQH3LP3B7GSImH78uS2mq6
	6OSPGCuGDyeY7zgj+tjy/1zzyJhJ2nBP0u20vr/ohVrkuB97+VRxt4FeljatC4Fj5QEjgXOIbTZ8N
	a6XJeNMIuv2XqNFaZKJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlonx-00000006wFy-2uZB;
	Mon, 20 Jul 2026 14:17:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlonv-00000006wEt-1DbU
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jul 2026 14:17:12 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KDqhKE2499113
	for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 14:17:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XyZTxG7+Rkh2o9N/uSYU6cRoRSlOphjtgwLvLuA/HA0=; b=Ytn5/mj0JWhrVIWs
	cxPTq1K/nohSxW76BAh2IAcjy8DN+GzFEdiYTfifALhLJTtULkotM9bHes7Gagd0
	jmFf5Cun40sHSNeN9wiGBw5quHdHNGGYk61NI6wTcKbWn6vfbK/c3fCninX6DEoV
	GQB9J4ySQImyAeSyTOicbYkn4qAnhxFxSoPtpmKYT81zhBl1a1jYttOrV7Hgnj4I
	MVmJUKyirLHnrZCAVaXcLgbOlsyeyI/MDRDi/rXSpwKie+0//8eyj3CCgETKPbvr
	J3+RxG/81afFNWtdZrv/jCtA4vpjAuqXbqkO2L++1OeyGvAIEBgViWN+DtszcX5j
	JU5kjg==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhh5y16y2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 14:17:10 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-738e5b5ef68so4004667137.1
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 07:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784557030; x=1785161830; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=XyZTxG7+Rkh2o9N/uSYU6cRoRSlOphjtgwLvLuA/HA0=;
        b=D/ISd8LWpu5s+glA/PZ1LVf7ZMsWjWE/FzzfR6108jL0uuMdv5flm6sw2JvwKtDuul
         89QfErM0Knj6mwKaA/+E0TFMX7pA2T/xadkwkrB93zq/xyT7CI7hT1knpZTiy912BqDM
         oLbbOGXEHQfOiCoq+AHuFgGe8PrFi6buE3/x/30POmf7MSDWaOEbvghjadiAcGTVCW3w
         osYRjltifGrTNAGR6ZR0MAa7YrbPGxLwCZqjNbArFT9IJ3xFhLHgWWcxA1UDK89zJErt
         fq16HA3PFmE6J9mDBL+v/omYui3Nk4YhoRLPY2wsZ8QZlpA2iJ6Sgjj03ap3sJ4nI+gn
         XViQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784557030; x=1785161830;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=XyZTxG7+Rkh2o9N/uSYU6cRoRSlOphjtgwLvLuA/HA0=;
        b=GZ41Z5Cx4Ux1y59aCyiRXs7sqGcX5ycg/hQwpAXKMVqavVTW4M2IH0riYEzqdgGTsJ
         CeuCRw/h01UhObfghabhC5tYxdFEOmWqkwwgOPoedJcRXIh7KZbo6w1u9Q+spU1NhRxg
         1WfAL/TL1Ak1WjVFer7gZXCTWuJPw0im7Dzeu4Lrqow3SO22W6a9OLohgXCPjlenQEdP
         H62f0CWqOJvAzDB/JN+/0xHLDaMHQh1MKnhYrm774Lg8gHwxVLMxJx4YmzQ34Ynxy/KD
         /oFzS+w4g8VgQA4CBVxuObZ/gy/ez6ydrPR1JkHP2f4Iq0V+u7+UATNJsEaD78O9ZMbt
         yRhA==
X-Forwarded-Encrypted: i=1; AHgh+RqBmsgfM6JKWR350IXxWPRugocOSlJEVQomGDpVp4VEgp0ysKfoMW7dG6DkizEmBA640Io1KXcyzj2OeBDy0A==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywmd9FLhkBuN3fNghHpx0INUqOZD6OOT1ZzAjWvKbx8MKnkFIGu
	exd5D8V+5oq1QIIcJRYdpSxQgLvy2Y+AVcVsVvUttlMBXOQzxbWwUBIaA56pfL5CLsRNI8MeTNV
	Divf5j7DKnJfeT8Lg6ThxpyllIt2ivXGe2yLvxpKN0EhUtLVDYmRHoZfWEusvKLbqGdy1Bw1yPZ
	8=
X-Gm-Gg: AfdE7clhfCudiBIbuKU1ImY+RBntgy2K7QYjNJwMuluUnbOqlzXbLEUuz2NfsIQJAyz
	ClbzutWyj0SVqqHFxu66JtcDYinDMtJQNKcZomC9waCWtj6KKawMhpHalf5sXxYDQ6VB/jdNcoa
	AXa5IyTgS4pSYQBr2GKsDHVnrErMQTyZAaMT+k7hfwUTl3doDwHlKGZL+FqKhoC/0n0RaaW9GP/
	gTKyxNdlZgj3QTgWop/QZ7IxzAaYpbRlBteH551ASUJpOla0uCFG5uOyIHpIqPaKGE133SgiHm7
	OnYgDilmEiJVFkWreYJmr2ySQagNdsrj/ISTdEQXn9ZSOo2NMMbqB3fjuJmAyPanmAFA4RimXYs
	OiFL4elKxOiIrVmrb+D6EdlHgdFaL+7tNLxzQRXsuyvxNCbUMEU57Hn7//ldKf2QAoSA1ubpDUr
	axpHkce+Nr/4udHA==
X-Received: by 2002:a05:6102:3751:b0:73f:7bca:217d with SMTP id ada2fe7eead31-747536f091bmr3504166137.20.1784557029408;
        Mon, 20 Jul 2026 07:17:09 -0700 (PDT)
X-Received: by 2002:a05:6102:3751:b0:73f:7bca:217d with SMTP id ada2fe7eead31-747536f091bmr3504137137.20.1784557028783;
        Mon, 20 Jul 2026 07:17:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b291e189c7sm2365363e87.57.2026.07.20.07.17.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 07:17:07 -0700 (PDT)
Date: Mon, 20 Jul 2026 17:17:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
        Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Thomas =?iso-8859-1?Q?Niederpr=FCm?= <dubito@online.de>,
        Simon Wright <simon@symple.nz>
Subject: Re: [PATCH v4 4/8] phy: rockchip: samsung-hdptx: Handle uncommitted
 PHY config changes
Message-ID: <al4t4aN01iiUKff_@umbar.lan>
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
 <20260612-hdptx-clk-fixes-v4-4-ce5e1d456cda@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260612-hdptx-clk-fixes-v4-4-ce5e1d456cda@collabora.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE1OSBTYWx0ZWRfXwu2Wn5n/+2Yk
 8hBHjcZc/9atqfdJYQYBaEpJXcOSOKcRDg+NJ7tyRzydirkKMjarTjsQSNpPZGeOEjwrtvV7tWK
 Mf0Fn3xZq6BQTTuxXzGp6joFJPXLTrA=
X-Proofpoint-GUID: 4Z7GYMJFTW5kJUWMu6uenLlIp9qMvcML
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE1OSBTYWx0ZWRfX0uhi/Y4hfq6K
 2BBEEn8hABFwrSLcYNx/Ie4IaODGAtWrviDAdWpgGOztZyUBOt0lNlcZVOQIasYew+R2R479RYF
 /f4uj1CxcmVu42Nvt3b46B1o6w2OLgPWJmtrtcNmXOAHMi91P/faK9nPy7yqrh2eO6dd/Ot8fOi
 TE6sM781kM2L0r9YG6Sci+9H47xfFBFn4EZFILL4oJOWTnIcwZZukvvHm8ed66jx7TbdiC9XhER
 Ihf4aB3Vy+WFmR56MrqzYPRmSIshdMevtgKF7rZMxfeCSNl9/ccb/y5ZYW2DShRbrG2YqavCId4
 MGl9I2ajvluhviSZiYaGOawD91NFKoeDq+SHoE/35JTL6sjJuQJ1NGaJ0VIg8DypFIxj9+o+yYA
 YWE9caVoy8ZNQdEp0SdN2sz8zFPw7ej+qsOXZIV06vpF8NCcO2y2dyh7vjHP93Una3kR3FseZdQ
 Z5qyW0UzUQ4dr0B6vuA==
X-Proofpoint-ORIG-GUID: 4Z7GYMJFTW5kJUWMu6uenLlIp9qMvcML
X-Authority-Analysis: v=2.4 cv=f/x4wuyM c=1 sm=1 tr=0 ts=6a5e2de6 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=QX4gbG5DAAAA:8
 a=shz021jzHIKqnGQv9qIA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=gYDTvv6II1OnSo0itH1n:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_03,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_071711_324891_B9AD88E4 
X-CRM114-Status: GOOD (  28.67  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Jun 12, 2026 at 02:45:23AM +0300, Cristian Ciocaltea wrote:
> Any changes to the PHY link rate and/or color depth done via the HDMI
> PHY configuration API are not immediately programmed into the hardware,
> but are delayed until the PHY usage count gets incremented from 0 to 1,
> that is when it is powered on or when the PLL clock exposed through
> the CCF API is prepared, whichever comes first.

Why do you need either-of here? Can it be just one path?

> =

> Since the clock might remain in prepared state after subsequent PHY
> config changes, the programming can also be triggered via
> clk_ops.set_rate().  However, from the clock consumer perspective (i.e.
> VOP2 display controller), the (pixel) clock rate doesn't vary with bpc,
> as that is handled internally by the PHY and reflected in the TDMS
> character rate only.
> =

> As a consequence, changing the bpc while preserving the modeline may
> lead to out-of-sync issues between CCF and HDMI PHY config state,
> because the .set_rate() callback is not invoked when clock rate remains
> constant.  This may also happen when the PHY PLL has been pre-programmed
> by an external entity, e.g. the bootloader, which is actually a
> regression introduced by the recent FRL patches.
> =

> Introduce a pll_config_dirty flag to keep track of uncommitted PHY
> config changes and use it in clk_ops.determine_rate() to invalidate the
> current clock rate (as known by CCF) and, consequently, ensure those
> changes are programmed into hardware via clk_ops.set_rate().
> =

> Moreover, proceed with a similar fix in phy_ops.power_on() callback, to
> handle the scenario where the CCF API is not used due to operating in
> FRL mode, while the clock is still in a prepared state and thus
> preventing rk_hdptx_phy_consumer_get() to apply the updated PHY
> configuration.
> =

> Fixes: de5dba833118 ("phy: rockchip: samsung-hdptx: Add HDMI 2.1 FRL supp=
ort")
> Fixes: 9d0ec51d7c22 ("phy: rockchip: samsung-hdptx: Add high color depth =
management")
> Tested-by: Thomas Niederpr=FCm <dubito@online.de>
> Tested-by: Simon Wright <simon@symple.nz>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 84 +++++++++++++----=
------
>  1 file changed, 48 insertions(+), 36 deletions(-)
> =

> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/=
phy/rockchip/phy-rockchip-samsung-hdptx.c
> index b210c1a88b25..25bd821cd039 100644
> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> @@ -413,6 +413,7 @@ struct rk_hdptx_phy {
>  =

>  	/* clk provider */
>  	struct clk_hw hw;
> +	bool pll_config_dirty;

Which lock protects it?

>  	bool restrict_rate_change;
>  =

>  	atomic_t usage_count;

-- =

With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
