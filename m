Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9ECCCAC592
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Sep 2025 09:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D3d9PukJETwsKavpuM/uHnguS/H7tKjEKoNkTNTmoIk=; b=csRnheNUM7jBmF
	VOU9ir5u1v3YPTKUAQ9qT9jr7kNVjwFe1Z8t/TBeByGIcsYwb7k3IyrWtnUqDa/xJcj8yCrCIahsM
	/z5uG8e46xO5EWBmJsHneQZtZyDasR9VnzZ+hgjHXtLvOWKP3SttyD5UzAUO7KTFO+lpVxNllJ3vw
	Oj0J5SFzcg9AqBn7QMUDQBW/rn2yZthe3KpFezLEsprVHRYKYHd0IF3c4y+2DmVYBnahlGwhcAjXn
	dVGSCKYwmsAE/a1GOTBsKZUxQCD4jOviiNQajeWfUdpzJaVW6E/G+Sbm/UV64a+GytKpydLnKS5QI
	38rnmw3onB8x6+v0UIhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0dJp-00000009xkK-0rO4;
	Mon, 22 Sep 2025 09:58:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0dJm-00000009xiA-049z
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Sep 2025 09:58:47 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M91Zl2002083
	for <linux-rockchip@lists.infradead.org>; Mon, 22 Sep 2025 09:58:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IW9nZTpAUTWb9o/++g/7GLgt
	nAqVsaz6ptGNBZO+z5Y=; b=Qq4XOYHGcj5UjpfNhhWI+pS57JToMKI3A3wZj8UI
	e8VxbtMbKQqcnO3vgHJjiI1PtRXRLcdpXP8THPDyHLUVRfVFCnbLkmNwHpu89D86
	Tmx+/g5eHlLvK5Y+fdgcwQV9Hd0yvJ9Dm2vPkwNP6Eb3iblyKwO533H97yiCsNT5
	DjFscqzWPziW45E7jsvjglu4Eh0VVhx833W3X1UJFtZy7TbNCNrv0zXds+vCOiF0
	6OVB6ZsjxP+3gY5A2r3OnsuUzzWhe2z6In7YHB8EI9fzhifCEfeBHGnDJHLgswT3
	4DVBAqOwZYt0Rmw69CVPr681jEzwGz1pS0tM9EmEUndu8g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fc7g4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 22 Sep 2025 09:58:45 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b5eb7b2c05so98239311cf.0
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Sep 2025 02:58:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758535124; x=1759139924;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IW9nZTpAUTWb9o/++g/7GLgtnAqVsaz6ptGNBZO+z5Y=;
        b=jhu4rh4ACrozZMARNOggeaBoWyovhzgXi5I9NueCcGZSfkIWO83PIJzYXEmJ++gdXG
         5YvZkJtzZjKDftmG5/PII+y0pgKxACaM/G8QVQkvGwHnWHa/YBqdY/x70pjrNg0HRpOa
         RnO6KE9jWZ+LG4x4Y6oxYW/tqBuwkLRTQRrDT5ct0HF1chSo5iT7gUzJpN961HSgR2J3
         zMjUhsuE7YFDLlWUgGmjlpq2Lzvn49Ah3/hcyWSaVbEoYNawd7gYktZpTzIqrEL+yDhq
         bDgZzrNE90PHHTWQKYs1NL1o3bp6fHeGJDdfpQeMW9KanVGXK9+QeQF16IjHPo11zEKE
         wGng==
X-Forwarded-Encrypted: i=1; AJvYcCXet0lmk2ehJVqUEhqByUGgeDcdpUgbJ7DRgYSD7/yvgF0A6ZuEhEO4cK23YHUzlXUVGf63e2/mb9WAk8G8GQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6cwu8e6FPbTAfrl8Laq8tuJC8ByRP50YhIfhfqJ0KYoHR+e8Q
	j5M6pUm2mLyk67siq5av30jV56LgMRGgNb7/eF0/HLOyd8Yn0XembChrlPqQKSpvDuJ1Sp3OCLe
	7iG5OvudW9PRrMOwxvz93VYB6JtvhhxnqzKx3x8i27kJLBn93rKxY1ZRGf/T+RvSn67eo8ztg/F
	E=
X-Gm-Gg: ASbGncv3qQVadKPbiAq+RzV+sxl+oE+3f4ol9pJwtzyQ6g9AoMf9tD50Czsx50rOlnS
	65XtRxfUIEfZ8OaiPOQdCKTJ1AvM3I/kuO2efTzQK7qgoFS1Wd51DRsWjlU7f/lXBQSXR57+ywo
	hdBE9ebaJguft0EzPne8YsHOUP/IZgyPUZ3S5wByXEDe8rIkdeTRruBoxS9HlIDkzswFY4/7sLh
	OEDBKYOj3DS7QnVAgzR8KglWbzcEPowLE6yplGu3vsbHtHZsW4BKDv0Rp9gnkGjfAsh8Y/kQVHG
	ENJRPbNaa+q7jWBHDKQxp0jUO7VShobPHOoL/Ruut8g11ztYLLa9gB51nJ6VfzPot8EoG5xkTFH
	lPoXGFyVTxlGfXcgMaAJ2jnNwLdqyg0zM/o+EVvvAqG9LiU7/dHj2
X-Received: by 2002:a05:622a:5c17:b0:4b0:edba:5a47 with SMTP id d75a77b69052e-4c073e88e08mr153125001cf.53.1758535124057;
        Mon, 22 Sep 2025 02:58:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZrkbJMOE8oi3lEYxkgH7mxWyV4vRf+Ti294a6hd808l4xFyp1mQDl/IreW2vbGpM6xLJBJA==
X-Received: by 2002:a05:622a:5c17:b0:4b0:edba:5a47 with SMTP id d75a77b69052e-4c073e88e08mr153124541cf.53.1758535123374;
        Mon, 22 Sep 2025 02:58:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a5f44b29sm3181298e87.24.2025.09.22.02.58.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 02:58:42 -0700 (PDT)
Date: Mon, 22 Sep 2025 12:58:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>,
        Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 3/7] phy: rockchip: phy-rockchip-typec: Add
 typec_mux/typec_switch support
Message-ID: <75xs2vy4pt7c6qtc4tmk6j7jdh6hdmbz73pkbv5e2ndid2gj63@nla3q6qdb43h>
References: <20250922012039.323-1-kernel@airkyi.com>
 <20250922012039.323-4-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250922012039.323-4-kernel@airkyi.com>
X-Proofpoint-ORIG-GUID: 37YMQHosV7XxkDiXc0kybmWK_Dn_on-G
X-Proofpoint-GUID: 37YMQHosV7XxkDiXc0kybmWK_Dn_on-G
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d11dd5 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=E19HVUzDLkS-Nl9glC0A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX8+F5XXQeynTK
 Pijm1huC0yGz5+zFpPv8d9gj/RcoUaiU1n5d3TFZiuRFLV2CFhCPwVoFslERvdk60kNcUEkTbBP
 HRpG7m3pGzg3faWzfY62g2hnKCfAME2qY/i6tVUV+Pp2o9EkTq4gsKo/sgiMpg/0mZ7Z1T4cfNI
 s3wFITcSJVb1YQDzrrIxqeeDMLVeVbHUMSWkEqsqd0Rn5irJ7XIOFO0ZhG88uw2etAD26bUUjXm
 CRpYLK5qhCaHXu2uIEQfxSLlq3org5XMrS99Xmgwl8w+0MyBF++Ql1tr0cg8LnayX0bSaMgAoFA
 TVCelBk9GqnDPHv5chKlC01t8GjGFciyPK5IX0uaURqwYa6UVne+Q5+JX2zTD+QW8LoBMNyaTQL
 SVNSf2hO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_025846_076197_26165662 
X-CRM114-Status: GOOD (  26.00  )
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

On Mon, Sep 22, 2025 at 09:20:35AM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> This patch add support for Type-C Port Controller Manager. Each PHY
> will register typec_mux and typec_switch when external Type-C
> controller is present. Type-C events are handled by TCPM without
> extcon.
> 
> The extcon device should still be supported.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
> 
> Changes in v4:
> - Remove notify DP HPD state by USB/DP PHY.
> 
> (no changes since v3)
> 
> Changes in v2:
> - Fix compile error when CONFIG_TYPEC is not enabled.
> - Notify DP HPD state by USB/DP PHY.
> 
>  drivers/phy/rockchip/phy-rockchip-typec.c | 365 +++++++++++++++++++++-
>  1 file changed, 349 insertions(+), 16 deletions(-)
> 
> @@ -850,6 +998,72 @@ static int tcphy_get_mode(struct rockchip_typec_phy *tcphy)
>  	return mode;
>  }
>  
> +#if IS_ENABLED(CONFIG_TYPEC)
> +static int tcphy_orien_sw_set(struct typec_switch_dev *sw,
> +			      enum typec_orientation orien)
> +{
> +	struct rockchip_typec_phy *tcphy = typec_switch_get_drvdata(sw);
> +
> +	mutex_lock(&tcphy->lock);
> +
> +	if (orien == TYPEC_ORIENTATION_NONE) {
> +		tcphy->new_mode = MODE_DISCONNECT;
> +		goto unlock_ret;
> +	}
> +
> +	tcphy->flip = (orien == TYPEC_ORIENTATION_REVERSE) ? true : false;
> +	tcphy->new_mode = MODE_DFP_USB;

I don't think it is correct. Orientation defines only the cable (plug)
orientation. You should be getting the mux events for the mode
selection.

> +
> +unlock_ret:
> +	mutex_unlock(&tcphy->lock);
> +	return 0;
> +}
> +
> +static void udphy_orien_switch_unregister(void *data)
> +{
> +	struct rockchip_typec_phy *tcphy = data;
> +
> +	typec_switch_unregister(tcphy->sw);
> +}
> +

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
