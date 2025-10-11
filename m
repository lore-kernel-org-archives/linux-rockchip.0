Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88097CCD184
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Oct 2025 16:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/dUDpuBFeJEP7UZb6CiUF3jPgjg3L2islZmnxiVaZmw=; b=Y4Q9JX7RYQBV5J
	n885cwdhTiL8a9rKp6BcVfzUpcUX5QXDNGNFUjRQ9SCjuB7XR7u7mTTuGA03bv3DP4oJNRd4pWmst
	ct1FpYDI6IMqEzD2LQ94TwhNYhdD4i+dNnbwwcpS0Ztf/UKlni8XqEXdrxbknSZDhx19aBBD51omO
	BoVzzqBDh/ZHO2a4ElGAYdRSG0tj4hf5a3nqmqYv0c/3S0V7mqoDjKgsXoEEbdBg8VnT8QgHv2ymf
	HwzCAKiaJndONVx+Mltm0AJ3+mlYWogJaTyWfkgDd+CUXy8tItnhuVN+NQ7DmUZB5/Ze5edEfyS5S
	UVMmQSECXHesonWIj4Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7cuB-0000000AMEP-17YZ;
	Sat, 11 Oct 2025 16:57:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7cu8-0000000AMD8-0wFL
	for linux-rockchip@lists.infradead.org;
	Sat, 11 Oct 2025 16:57:14 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59B4Bg7K024774
	for <linux-rockchip@lists.infradead.org>; Sat, 11 Oct 2025 16:57:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Xy1TDfM9Hn+Ss3qcAnJ0/lo5
	9/hSSLBS4fspMrOt/L4=; b=CFtwP9UfiZHiCGMUOw1deU4fP4xpIF+oTXGJDPPE
	tIL89PvjLtTf/YbkszSYepRnEDxvkn3PVliVw4u4TAkGO3LUgC/Q9jdUNZLTdGwo
	gmqHB9xnY0fbHRymvvggtm+gwEPtfxmvem0N1+J5zGWuk/yAZ8j913d3wv9kfqCu
	znuNTU5DIfxEgKNV/JyFbG1dm0iQ8kEDixgK4WteCdzXVvJp/OSPlJHWMT3v+R9/
	ROSpe+5KfOguZ+K4VVqtIUghzCUQklTR8lLvDJ5jbRIERbz+7G+oGIRc8RvjdGJl
	wqvtgyUzuJ6JXTrmQZv4RdlrXbiRL+GtUJw8xbEOEC6jEA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0brvgw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 11 Oct 2025 16:57:11 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-85a0492b5feso2696558085a.0
        for <linux-rockchip@lists.infradead.org>; Sat, 11 Oct 2025 09:57:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760201830; x=1760806630;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xy1TDfM9Hn+Ss3qcAnJ0/lo59/hSSLBS4fspMrOt/L4=;
        b=MmIJ0MHBXlaNth4hv8Wx2gwIm1ojGatw9IMKYhqPBB8iMpYT++d578xQgNMOyQzNfm
         x41EYLniyL9369L2Rxg9I1oQf+8seaOUazmv52CkKjMAWHUhQ50xsUgOYxBNOFVqeTXG
         GY/ILMRetc3mynII3W0+MaQCTGun/UovMUY0I1PyAlnKL4OtB2wV22lis+m7wu++2jHw
         BnUb3Q8dGgJo3GczkPH7I4u3HTlW8qtEE7e2m0TftznRK7RBZ7EyglxBJ7LE3Vsv4QGR
         ZrxX1pBn8XJTr22NXQLCCSzlcQkV3YbNvZ81O9uGJJx8DjnhMk4XB81uFarIYMkUrkN5
         cuFA==
X-Forwarded-Encrypted: i=1; AJvYcCWtG/gDG/rt9qU9ByQWmC6BsENA4DNkAQIhrJ8MIXYjvZrfFVNZhMgiJAztXIPXYTLtR8/uPbwHR9CO66l9rQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5Vd9H9QoNu6xCJ/iH8RhsPhXKchZQn5HsYwQZc7u+c6eYHA7w
	lS5k8t3ecVkrAEUzyTnvoVpV+lZVMLpkjhVx0mxI9vScPVwjHBAmEn0eLh5FlkBZnLaDEqDCbme
	YKXrV8bplBI7pc69HVf619cucAZzrpcQkTJxeTQK1yUIloCVwG25+OAlrwidBMc8PFKVOG+oX/f
	I=
X-Gm-Gg: ASbGnct/JccDU3XnjoJ0KqktGIw5BUTuj3gmdzEgLU10q5uso+u5RtLbmoX5CrNilm1
	cg5vfP6QCWLGcyfifl/L6+5KXpZH75Cc59oOrXy6q+c7MTLwKxQHzQU/jzRQ/UCYWhwPtw5YLct
	VRyWiH26gP5mAvl8WI65pfJKVO8N495KMIzFhRo+2XTxq0igQGSDqhtH/AUVQleTRK6KJf4SUcc
	yZLEWDdsm2GIvD4ul3dejJZOPWnv2LNLv5QE05tcxPQKuLYKPwILtf8U8m//B33LnHUiboM/Ilo
	/dxdDG5cslS3gszcKbptShAC7h2RTyV24zYKOwzh+CzTbnWGfXOSBFIDKmE1G9k9xnGxvMX66u3
	RQALaR8hSdaz7aOh8OiuymwdHTX8XjzDOM9IuGwXjtXid20gzz3Y8
X-Received: by 2002:a05:620a:7116:b0:85f:82c1:c8b1 with SMTP id af79cd13be357-883525c06e8mr1943887285a.46.1760201830196;
        Sat, 11 Oct 2025 09:57:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGkyWtOfdJ+0TNDoUMTrOlJySqi8eotm+EQmXbUDmQfKpz1vM/MTeAx4339cLuXyfh1vmmWVQ==
X-Received: by 2002:a05:620a:7116:b0:85f:82c1:c8b1 with SMTP id af79cd13be357-883525c06e8mr1943885685a.46.1760201829687;
        Sat, 11 Oct 2025 09:57:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088577f2csm2081972e87.107.2025.10.11.09.57.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 09:57:08 -0700 (PDT)
Date: Sat, 11 Oct 2025 19:57:06 +0300
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
Subject: Re: [PATCH v5 3/8] phy: rockchip: phy-rockchip-typec: Add
 typec_mux/typec_switch support
Message-ID: <xbblw4jfte7re2pyroanvzqv4ddwhxbgcui5ubpnw7rwuo4s4d@gkph7jqzf33o>
References: <20251011033233.97-1-kernel@airkyi.com>
 <20251011033233.97-4-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251011033233.97-4-kernel@airkyi.com>
X-Proofpoint-GUID: tMS5D8uIx8QJ4hQ8Keg9ZvM3Avxq4FY3
X-Proofpoint-ORIG-GUID: tMS5D8uIx8QJ4hQ8Keg9ZvM3Avxq4FY3
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68ea8c67 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s8YR1HE3AAAA:8 a=MMthkAsgp7NQWkXk_3cA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX/7rc+K1z27hd
 uT8cn72vO9G3tqwfAa4Hbsk38p1kKArKw9rt7i40JlhqsVREVVqjOWJYuVHqVqkv2dwXFjbfJE9
 U0EZSSvjnnQZG82Ct4eMq09VvwBQUQrlLy3X5lMEpfSVfTeSGZyCpWc6U0gGPQBwrnhQSanMmYx
 lStzGjUkUOsvbq+59aloLvs2BLC/t0/FiLDvHuChyBggBDwZicZaOoqrJ70D2K3D1sHXUwR2Hj1
 gp8TdA6+/PRLNrSrFf4XQ+Znn+B18zQBxRVJPYD92JbthsbCUmtQUEcN5ok22t+ONM9FLU/8ziE
 0URqrO5t4hPxFwxcl0prgKXCcQLeXnGgWMILgGCIWKG1QJRbs9wH//BTz2vpApC9bOvDFCpA+Hz
 xBt+Fg0PUMy0k5AU9An1GwYm/qzMdw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-11_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251011_095712_300233_C31A44F1 
X-CRM114-Status: GOOD (  27.40  )
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

On Sat, Oct 11, 2025 at 11:32:28AM +0800, Chaoyi Chen wrote:
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
> (no changes since v5)
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

Carrying over unanswered(!) comment from the previous series:

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

> @@ -1037,6 +1251,89 @@ static const struct phy_ops rockchip_dp_phy_ops = {
>  	.owner		= THIS_MODULE,
>  };
>  
> +#if IS_ENABLED(CONFIG_TYPEC)
> +static int tcphy_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_state *state)
> +{
> +	struct rockchip_typec_phy *tcphy = typec_mux_get_drvdata(mux);
> +	struct typec_displayport_data *data;
> +	int hpd = 0;
> +
> +	mutex_lock(&tcphy->lock);
> +
> +	switch (state->mode) {
> +	case TYPEC_STATE_SAFE:
> +		fallthrough;
> +	case TYPEC_STATE_USB:
> +		tcphy->new_mode = MODE_DFP_USB;
> +		phy_set_bus_width(tcphy->phys[TYPEC_PHY_DP], 0);
> +		break;
> +	case TYPEC_DP_STATE_C:
> +	case TYPEC_DP_STATE_E:

You need to check that altmode->svid is DP before checking for these
modes.

> +		tcphy->new_mode = MODE_DFP_DP;
> +		data = state->data;
> +		hpd = !!(data->status & DP_STATUS_HPD_STATE);
> +		phy_set_bus_width(tcphy->phys[TYPEC_PHY_DP], hpd ? 4 : 0);
> +		break;
> +	case TYPEC_DP_STATE_D:
> +		tcphy->new_mode = MODE_DFP_DP | MODE_DFP_USB;
> +		data = state->data;
> +		hpd = !!(data->status & DP_STATUS_HPD_STATE);
> +		phy_set_bus_width(tcphy->phys[TYPEC_PHY_DP], hpd ? 2 : 0);
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	mutex_unlock(&tcphy->lock);
> +
> +	return 0;
> +}
> +

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
