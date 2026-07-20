Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1DFFC44515
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 14:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jsvWgSoPZBjY/aK8n++8ZRydr+bDVelfQlD7daHgG1I=; b=r6k6EKm7eNT0Rp
	8ZFEfaLWApsa7W2Yw819cWcSqd/HPY2ZSFf1sBqXzMbKJSbL7ENPRTIGtu9TuvjHxhnYktSMk5tqN
	tB3RhewFGFYvBQXsqdIvZSSCwxYoA2a4E8b7kwKq1tkaQRb6/hxuTc7bbzdkZ8Nekn8F3l7N8LGl9
	RbaZ5LKr9yRyR6ccajuImUfFnmfB+hsfeEBZ7X/DHUxMt6YiyrQqZ0dqU7oLqqEpF+gtZaSErciyN
	yAJwd+3edmTKhvPYZWsrnyZbBiZFq1GnXwdaVNcaX585BgGlCLKZs890KRL0sOGtGKopzdJCw9C5g
	WHtEHd2RzbhHOEY3NPtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlojo-00000006veO-2F8x;
	Mon, 20 Jul 2026 14:12:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlojm-00000006vcy-0kSB
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jul 2026 14:12:55 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KDrFEN2807741
	for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 14:12:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lF8karFkg0wDdEIf59u76yME
	jWKKdqIYaXBpJmFfZtY=; b=P9jylU1OWDZDvCUMZurHCGquKJfn9Kz1PKdfu3/9
	PbZOR0XqFH+7RQtryW4etriqR3XYE0+vSv3xdgvr3SGaF9oRIVvybAor4ItxulnO
	qrMfVAUf6OK+TxRDuBYuAPHUIHGIsiC6EeQwZvX7NQqRqV8JAgBfNJLb03dlXH75
	uyY7QEPw6LuBFdw13JvcnHzUKQ77EIooJJHYvJQKeKI8sVl2R9xR45SG/fb6BW2s
	Rw+mCBs5itpzAbAyJzo309xdII/bR3R2TXLa05LQTjf1hu+6+8+1JrsS3VCW6+Nk
	loRRhHr7TTsCNocwtg/XJH5rKNwLoWX3vEBvuvCtEwU/Hw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhgre9a79-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 14:12:52 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-92e5fc4c7e9so861694985a.3
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 07:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784556772; x=1785161572; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=lF8karFkg0wDdEIf59u76yMEjWKKdqIYaXBpJmFfZtY=;
        b=Z6KyAl19g2uE686V6JaPXUx4DhOZAF8YlpyUq1Z0w3Tp62zWOak0uPIA9Y9Blr+yaW
         BXjBs1BPe/3GTUHi2V4wlW5lsy2WEsA2ad7WyHvv6pw0t2HeF8vQGIewrpBGaW+1t7HX
         RsdvnVGgT3SSCwKFHTbNq0D1qJoLu8JGn/84b7lkRYXy7ssZAAMmZd4ch0W//WrUfphs
         sXqGeaOfXJJrshCiD9zzMfIPJLsbrPQjjnVlPYnTboH/2cnDF3FAgsaGZwbzf8z5uwoK
         SOAFSSwEffiHZl+5JiHB7M+tsR8Kxu6h204hBPITvth5iNv8I75ZUs9W2ZFBOULFf7UD
         CQ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784556772; x=1785161572;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lF8karFkg0wDdEIf59u76yMEjWKKdqIYaXBpJmFfZtY=;
        b=dfNPjW5GkQE7j23QdFXYaLDXMJSc9NmpjF3+JPHr81FF4Hc7rI+6hm4m5X1439hOkr
         At2tqRzu8uw+sPSJfXP1ECaeZg+Fx2NufqPWPvwcW+g5M7r9sGrnn6hxHqD+prX1HH3f
         MUKjjOOyvLYKPZOCmEU5JiAV3PR26A2vc9/Gw1aEc7kZfSbF5tS9lXFEo6200+L5oZv6
         9kaDDDCjFFM4VabpBS57AyCKIvjVC9D7I3HO4+4Gfvghyv0CnDp3zF07U8vOgiPyIXSN
         KTr2y874Hv6PD2qIFKCWkN/J+SLS5FZn3mmcAjhHI+0ULVZbqW7ZZo3CJ3084D8kOMiB
         xWSg==
X-Forwarded-Encrypted: i=1; AHgh+RqDeF7lS7Rgse/dXGylSiXFsYFbCvbgsSvggTWTKu0jy+HWi5tdMENJnOoHrOdOeBgNBI+dXuT7p7G8bJJebg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxm1zL5PUC+cbm/1shWcGf4INrOBY/W0nZWHcMxENvXZxySntY0
	C2kOV54r0mP0LdiSO8nX1iJXkFEZLjchnPz3LQAa/58YgZn0sgyOckKkyXWCXoT0/o82pTJB2NM
	NzPTFb22dVVinErQp3y0X2VxVw9kw1uhmlsknVaF3D6dQ3jdNySboKjWLShKGysOe3aQ6bMyUMQ
	E=
X-Gm-Gg: AfdE7cncLXZZaeqCAkH79nM5O9+1jxJ/RSsJzzBzdKinB4QEIFitdAFVVpbeB/ANdSU
	L4kUp7Gjtve8uSjM/wUGKHcvcGE1AyH5GDWjzHN90Zt/7aeIcRf8VYJ86IbjN2+kXMyCb289wBR
	4AX/yJRtyJDsYLLTbUctTLgSuGYRhpSiG7moMwc8L48kGRdMsuNLliBazS2D7iL0wGyelRl+z5A
	4fZW4HxKWvlUYvwa47FpzOP83l2dutF4LAhdzFGLzBJC9JJbGDrfECahe8fYtiHmaRxD4ZiB0+D
	eza/qcISbOnYCcDzuRGVZ9TJHQ2hIJcPlP8L/ksCXnt/Wbd5ue2f2McMaeuMkp+7P7kCiygxbte
	plooYX5gFkPSUFoGWIPQqRG7QAi4opfEGEOKJ7wgw5ziKLvK/ZO6ig7ooYt0QV+UQAns8iVePTD
	tbJnUP3IUYnIqcnQ==
X-Received: by 2002:a05:622a:2b0f:b0:51c:b8fa:395b with SMTP id d75a77b69052e-5213eb7cb5amr135131541cf.66.1784556772380;
        Mon, 20 Jul 2026 07:12:52 -0700 (PDT)
X-Received: by 2002:a05:622a:2b0f:b0:51c:b8fa:395b with SMTP id d75a77b69052e-5213eb7cb5amr135130821cf.66.1784556771698;
        Mon, 20 Jul 2026 07:12:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b291e25290sm2371565e87.73.2026.07.20.07.12.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 07:12:50 -0700 (PDT)
Date: Mon, 20 Jul 2026 17:12:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
        Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Sashiko <sashiko-bot@kernel.org>
Subject: Re: [PATCH v4 3/8] phy: rockchip: samsung-hdptx: Fix rate
 recalculation for 3.2GHz FRL
Message-ID: <al4s4LH2Om9bZ-X9@umbar.lan>
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
 <20260612-hdptx-clk-fixes-v4-3-ce5e1d456cda@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260612-hdptx-clk-fixes-v4-3-ce5e1d456cda@collabora.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE1OCBTYWx0ZWRfX2pfEkj2/jRiN
 7bsglY0qKoHKypzTKBv30ccrDNQO4XQhBvfMPdhm4DXI4ys0yhp+j1yf3sab71T76PvePlli5IY
 vBUWbHi4dB/03MuhCkfoiIT6ik/9QWc=
X-Proofpoint-GUID: 8mVz6JDWb56EbMMF-hGJtJXxvWvNuCty
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE1OCBTYWx0ZWRfX/vzs5Sz3a/np
 tTDQM0YnE52xpXsMns3SFnvr4I+TCsNiS68lJlAFe6+dulUpEjQHqwvRrVRz8m8PMweo2j4gmjB
 U8wDAcO8+80hmo6qWknAyFXe3WtfwvOU950forbbB9YxfqQiMk134wdE4RuHGUu15V0ne2/EONt
 rLJq7Tz6dulQ+77ZRwawNflRij89ArLfr2yA6dn2vS2vt4/uaR6hOlJg5nvdjOoIFNZH0lsozpd
 +czyJlmK5939j5tM2MQDo+ELdcV7B0jbr6ku+n8/TY1IztMz0L5YU6KsazYRTOYLh+6dym4PxWD
 IWx3c3WYOCNTAHsuLxS6VQz+BVA7EaK6ww+omkgjDAlnF8yMaWjGg4xZiO3YfbQqHjY3BKGm/0e
 qzzdNlUYJxlNxJ1LuJdHWiiXXSxP95baYslDAyJGW1yk8vnp73CeKDuFzW2yJ8aguPS24C5rORC
 lGbxJfwLmH9CAUXkDHw==
X-Proofpoint-ORIG-GUID: 8mVz6JDWb56EbMMF-hGJtJXxvWvNuCty
X-Authority-Analysis: v=2.4 cv=foLsol4f c=1 sm=1 tr=0 ts=6a5e2ce5 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=c92rfblmAAAA:8
 a=QX4gbG5DAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=6btzFAMt-cuNwz31USQA:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=GvGzcOZaWPEFPQC_NcjD:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_03,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 priorityscore=1501 spamscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 malwarescore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_071254_331520_0A27C455 
X-CRM114-Status: GOOD (  14.33  )
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

On Fri, Jun 12, 2026 at 02:45:22AM +0300, Cristian Ciocaltea wrote:
> rk_hdptx_phy_clk_calc_rate_from_pll_cfg() is currently unable to handle
> cascade mode for the 3.2GHz FRL operating mode, as it relies solely on
> LCPLL_LCVCO_MODE_EN_MASK to determinate the rate from the
> rk_hdptx_frl_lcpll_cfg array.  Since there is no entry for this
> particular rate, the function returns 0.
> 
> This is the only rate which requires LC_REF_CLK_SEL to be set in
> GRF_HDPTX_CON0, hence extend the FRL matching accordingly.
> 
> Reported-by: Sashiko <sashiko-bot@kernel.org>
> Closes: https://sashiko.dev/#/patchset/20260611-hdptx-clk-fixes-v3-0-67b1b0c00e16@collabora.com?part=1
> Fixes: de5dba833118 ("phy: rockchip: samsung-hdptx: Add HDMI 2.1 FRL support")
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 33 ++++++++++++++++-------
>  1 file changed, 24 insertions(+), 9 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
