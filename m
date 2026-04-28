Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09511FF8867
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 01:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n2YNWlLA/7l8+mxYJO/3AFkA8Mw4sXCbEoVY79yVezA=; b=PujeZrgduzRR0x
	tkWufUHIbqyhKq6xK1Q4WNRDOTmVUlCdK+Ga1f8VvbL+uz6tBj5c1hpDT8enL1AjW+xw9vRylwKf4
	R13SLmRqRiTI5YgfuYB2nKK5AgiI88goK6M4es52SqycjnNlP0YQGRLAmP53zrQ85Jpve8fKn8QZ+
	cUxNKioNqkwvWRbJf5csLNNtHC7Af2CxZT3Jd5cDDe6sa2ZJeTQTwJr9gO8dg4hw2KkBg+ZYyXB+q
	OEh09tJClVfStV5G/gdbTFAsVL50cP1e+eI/j/FRrz0/B6my3rlYCLWVxx8py1pmDPaOvxKo3Jjm2
	YsbgPFls5RJsQjH8MvkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHXPj-00000000Ok5-1dBy;
	Tue, 28 Apr 2026 01:39:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHXPg-00000000Ojk-26Dd
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 01:39:02 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63RHw9F21237549
	for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 01:38:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nWIuhtTnSOOO+EJPLQ/Z3e2V
	GAvB8dMsWLtw8kLNA4Q=; b=ZE7Jxa6zY/J5NRjnjLqmS3KAgac7KugGrvwzAz+5
	3xkZSCXfZ/zKkrVVQx+mLzqAYRKPLxwHdH3rhYnv6fZl+Nw1u78E0FeS1a9ugr5F
	LW26faX52MyoEkp8yPRQkVUAWrK3bOZWkkBSq17FSs677fk0yBX0wMGMT9hKUYOA
	roUmxx8dfnD+TiYI40w+QCz6qe6piANPuwsEPh9aw0eDiVBblt/j0xO81ddewSUb
	a+mggwo+OMZNuDKmfIwDUI1iCDE3Xm+geEO88dwwBB1PIEM/crvp+dDXChuwg11h
	qmQ/+oFtsGKXl4GxioX+c7//1pN+nny+np+IZe3ci5QX8Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dt6n4k17k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 01:38:59 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50d8e8c47a3so295589361cf.0
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Apr 2026 18:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777340339; x=1777945139; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nWIuhtTnSOOO+EJPLQ/Z3e2VGAvB8dMsWLtw8kLNA4Q=;
        b=iFYFZXnh28HISvaoqlTr6zbVOYKklfIugwNif9Il4btNFAWMjjuNQNAeZG7HOcSK0q
         q2Z0x9bQy7xYBDROAnS9ELAiSN35UdWhsihfjzj4oniDOssCSuXdGswIm4LaHIiGt7AE
         9j5vgIFRaMi7hSeeV06PLzAYYiVW/d65nvrvHW/sRhkLuewLpDqgN+yXJMNb046djpXa
         IaDhSFoxfyhgx7hjSOPLG2U5tBpq+TJiNtJg56c8Ur8bDCKvLxOekAzXnQvROfkFVudM
         M47dloCD2bYtXpzMGXlA90j+sMXv7QJ4KgPsW4xQwufrLZQSwgYPhAaTASlv0xoPpb4w
         zkrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777340339; x=1777945139;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nWIuhtTnSOOO+EJPLQ/Z3e2VGAvB8dMsWLtw8kLNA4Q=;
        b=rDSyhd4NuuLkWVxvG6/dlTwkQTDwaMVF79zwlXVPfUIQ1Y7J8+h9yZL1K2veGCVHQr
         JynoUmZt4ZVsRLrO+78YIQ5dTNosdCPfxxrDHIvcPL+0QpWHGH2kZ4o9Py1j/nBkX7cb
         nu7pNPg8YSw3d/7ar0//xZFGKS4pbAcH8UXDY5hdVTUxQ/jef84rT76tanfXyetKVwdW
         EjKl8zVASCVNmydmrEbj8Qrh0nJFFvsUQeXa1xtilUnU0NO5A84ce38cJGidytgN0HgS
         /XbqhDn9O4Z4P4R9g82YLFecNf21OAHzAgwdA7/Ny2SVrvGeTU5nBxMTPNj7DKkLCOKr
         P9xQ==
X-Forwarded-Encrypted: i=1; AFNElJ+KAnr5t6gOIS4aVR8OVB8OiKnR7cbaxWb56IOT68OWhSIHnPsp8ntIZqOjFkXpP+/VyfWwHfwQVqa6nF/1XQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzz1wzs1IL130hZcjJsca/+iZNJaAxEUQrE4AxebTeM1+sRfdLC
	uqddbGm3XbGnOErJK10rnc1r3oiUSP8eAsDqIMcYLR6fwlSvzXryMNGC6eO1IEnbAaZzd10MKwq
	XiGI5bYteDSB0wEDsNSJ1E2FsYJT+GreWTaPL1C+8TSuwNzvUoTRIpA2E1Ho6cwSrmSwLCtiXEC
	Y=
X-Gm-Gg: AeBDietu6b5Iqpftybuf6QY+Wqo7SIPbqDaxHRhPdhGyROwSUx/Gh5r6nRh/HKAvcc9
	sy6+uVxHjGBKneHyTjuw32tnOpvvqzM45t0ZSXrIp++XfuCdykQFAjKZey3YZ0DMUzyj/VJZGgf
	CtC29Z/7gFCy83QzWGaONFZjqL+WiltCG2//iRUEnz5popjPz9f5dXoMXBBJ9mSW9wS7Y3PdIdq
	85qEMl5LcWIsjeaXk6EG3r1OXqoPIQoot0tdFM8+lA12QFJDh5eYhdioDZqXqUydBuT0ksHpYJN
	X0x3iDdkUihCgohyE1lMqDKc3gae8xHoVGDqOIXeM1HUD4swJxwXhc9od8Qj7YZton0AJd/KH3Z
	R7zfvr7VLyNUFT8JG58RFHiyZ/0aakfLnicW8IgAAM/d26qEs3Chzg1DgXNvC1rLsZzM+rddDTC
	PrxYfJl3zhM+e+OQUCJ1IYqeTAb4ocC1OKqp+eTropZCsOnA==
X-Received: by 2002:a05:622a:251a:b0:50b:4e4e:1a20 with SMTP id d75a77b69052e-5100e207f59mr14422921cf.59.1777340338191;
        Mon, 27 Apr 2026 18:38:58 -0700 (PDT)
X-Received: by 2002:a05:622a:251a:b0:50b:4e4e:1a20 with SMTP id d75a77b69052e-5100e207f59mr14422521cf.59.1777340337621;
        Mon, 27 Apr 2026 18:38:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a7463f5e8csm206789e87.45.2026.04.27.18.38.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2026 18:38:56 -0700 (PDT)
Date: Tue, 28 Apr 2026 04:38:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
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
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, kernel@collabora.com,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Diederik de Haas <diederik@cknow-tech.com>,
        Maud Spierings <maud_spierings@hotmail.com>
Subject: Re: [PATCH v5 05/10] drm/bridge: dw-hdmi-qp: Add HDMI 2.0 SCDC
 scrambling and high TMDS clock ratio support
Message-ID: <m5fxlfktxtvki5yaxhkx4h3hsjj5266stwvfdykhqkgcjbz5bk@s5gggcd45abm>
References: <20260426-dw-hdmi-qp-scramb-v5-0-d778e70c317b@collabora.com>
 <20260426-dw-hdmi-qp-scramb-v5-5-d778e70c317b@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260426-dw-hdmi-qp-scramb-v5-5-d778e70c317b@collabora.com>
X-Proofpoint-ORIG-GUID: x_eqbqeCv5-NWiXspI42-xPehDV2hmTp
X-Authority-Analysis: v=2.4 cv=Xba5Co55 c=1 sm=1 tr=0 ts=69f00fb3 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=MTERcTr8AAAA:8
 a=69EAbJreAAAA:8 a=QX4gbG5DAAAA:8 a=O3J9tk_ShrB6Bh0k5JEA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=1w2Y23rLpnaGpkO2nlKf:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: x_eqbqeCv5-NWiXspI42-xPehDV2hmTp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI4MDAxMyBTYWx0ZWRfXydAfz7+l3yzR
 3y+jeE5oyGMisA5Ndktjy57MNL7aZg55xSj4VTBUkQmj4MPTui8xAtueUi18dbktv0XwG2dR9Rb
 8jFYeV8gWYAV1UxDQzdXkVCvq/dUOICqPoXGXZ4edsv6HiWlMRnvRkjz9af3L44QMLrDuzRJSGN
 JC3NfppuIEiL+Yj5XnXEhxlf6ac7wvnBq12vVZPVs9Wkl+8PAXpISpDfmoMeUm4ZKZiopYfcFfu
 9kDxMpuWbHzguuPjN2pXwwWLxtHdkBMVYsfqP6TLNRSzeEJIXZn52QN1IVzRoISEplTZIhJQpAe
 QVsQ6lyxBOSDEdSIh1ajC7jkc+6csoWtfbtWoQvVCDb5PwEIe0Qj1e3Jh5+LTEevPoZEm8j4BfN
 6BicitiL5RSKpqemy9QSWbt4FJRcbNWGDJCGmgquHcta2oq6mhm8YHWztmCAOZj9sgy5rJbzTnE
 Eru7cqdzMoghC2CTCEQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_04,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 suspectscore=0 phishscore=0 adultscore=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604280013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_183900_689158_BD6E3FAC 
X-CRM114-Status: GOOD (  31.38  )
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

On Sun, Apr 26, 2026 at 03:20:17AM +0300, Cristian Ciocaltea wrote:
> Enable HDMI 2.0 display modes (e.g. 4K@60Hz) by adding SCDC management
> for the high TMDS clock ratio and scrambling, required when the TMDS
> character rate exceeds the 340 MHz HDMI 1.4b limit.
> 
> A periodic work item monitors the sink's scrambling status to recover
> from sink-side resets.  On hotplug detect, if SCDC scrambling state is
> out of sync with the driver, trigger a CRTC reset to re-establish the
> link.
> 
> Reject modes requiring TMDS rates above 600 MHz, as those fall in the
> HDMI 2.1 FRL domain which is not supported. In no_hpd configurations,
> further restrict to 340 MHz since SCDC requires a connected sink.
> 
> Tested-by: Diederik de Haas <diederik@cknow-tech.com>
> Tested-by: Maud Spierings <maud_spierings@hotmail.com>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 188 ++++++++++++++++++++++++---
>  1 file changed, 172 insertions(+), 16 deletions(-)

My main issue with this patch (sorry) is that this adds yet another copy
of SCDC-related helpers into the driver which already OP_HDMI and other
helpers.

> @@ -39,7 +42,9 @@
>  #define DDC_SEGMENT_ADDR	0x30
>  
>  #define HDMI14_MAX_TMDSCLK	340000000
> +#define HDMI20_MAX_TMDSRATE	600000000
>  
> +#define SCDC_MAX_SOURCE_VERSION	0x1
>  #define SCRAMB_POLL_DELAY_MS	3000
>  
>  /*
> @@ -164,6 +169,11 @@ struct dw_hdmi_qp {
>  	} phy;
>  
>  	unsigned long ref_clk_rate;
> +
> +	struct drm_connector *curr_conn;
> +	struct delayed_work scramb_work;
> +	bool scramb_enabled;

s/scramb/scrambler/

Can we move those two to the drm_connector_hdmi

> +
>  	struct regmap *regm;
>  	int main_irq;
>  
> @@ -749,28 +759,124 @@ static struct i2c_adapter *dw_hdmi_qp_i2c_adapter(struct dw_hdmi_qp *hdmi)
>  	return adap;
>  }
>  
> +static bool dw_hdmi_qp_supports_scrambling(struct drm_display_info *display)
> +{
> +	if (!display->is_hdmi)
> +		return false;
> +
> +	return display->hdmi.scdc.supported &&
> +		display->hdmi.scdc.scrambling.supported;
> +}
> +
> +static int dw_hdmi_qp_set_scramb(struct dw_hdmi_qp *hdmi)
> +{
> +	bool done;
> +
> +	dev_dbg(hdmi->dev, "set scrambling\n");
> +
> +	done = drm_scdc_set_high_tmds_clock_ratio(hdmi->curr_conn, true);
> +	if (!done)
> +		return -EIO;
> +
> +	done = drm_scdc_set_scrambling(hdmi->curr_conn, true);
> +	if (!done) {
> +		drm_scdc_set_high_tmds_clock_ratio(hdmi->curr_conn, false);
> +		return -EIO;
> +	}
> +
> +	schedule_delayed_work(&hdmi->scramb_work,
> +			      msecs_to_jiffies(SCRAMB_POLL_DELAY_MS));
> +	return 0;
> +}
> +
> +static void dw_hdmi_qp_scramb_work(struct work_struct *work)
> +{
> +	struct dw_hdmi_qp *hdmi = container_of(to_delayed_work(work),
> +					       struct dw_hdmi_qp,
> +					       scramb_work);
> +	if (READ_ONCE(hdmi->scramb_enabled) &&
> +	    !drm_scdc_get_scrambling_status(hdmi->curr_conn))
> +		dw_hdmi_qp_set_scramb(hdmi);
> +}
> +
> +static void dw_hdmi_qp_enable_scramb(struct dw_hdmi_qp *hdmi)
> +{
> +	int ret;
> +	u8 ver;
> +
> +	if (!dw_hdmi_qp_supports_scrambling(&hdmi->curr_conn->display_info))
> +		return;
> +
> +	ret = drm_scdc_readb(hdmi->bridge.ddc, SCDC_SINK_VERSION, &ver);
> +	if (ret) {
> +		dev_err(hdmi->dev, "Failed to read SCDC_SINK_VERSION: %d\n", ret);
> +		return;
> +	}
> +
> +	ret = drm_scdc_writeb(hdmi->bridge.ddc, SCDC_SOURCE_VERSION,
> +			      min_t(u8, ver, SCDC_MAX_SOURCE_VERSION));
> +	if (ret) {
> +		dev_err(hdmi->dev, "Failed to write SCDC_SOURCE_VERSION: %d\n", ret);
> +		return;
> +	}
> +
> +	WRITE_ONCE(hdmi->scramb_enabled, true);
> +
> +	ret = dw_hdmi_qp_set_scramb(hdmi);
> +	if (ret) {
> +		hdmi->scramb_enabled = false;
> +		return;
> +	}
> +
> +	dw_hdmi_qp_write(hdmi, 1, SCRAMB_CONFIG0);
> +
> +	/* Wait at least 1 ms before resuming TMDS transmission */
> +	usleep_range(1000, 5000);
> +}
> +
> +static void dw_hdmi_qp_disable_scramb(struct dw_hdmi_qp *hdmi)
> +{
> +	if (!hdmi->scramb_enabled)
> +		return;
> +
> +	dev_dbg(hdmi->dev, "disable scrambling\n");
> +
> +	WRITE_ONCE(hdmi->scramb_enabled, false);
> +	cancel_delayed_work_sync(&hdmi->scramb_work);
> +
> +	dw_hdmi_qp_write(hdmi, 0, SCRAMB_CONFIG0);
> +
> +	if (hdmi->curr_conn->status == connector_status_connected) {
> +		drm_scdc_set_scrambling(hdmi->curr_conn, false);
> +		drm_scdc_set_high_tmds_clock_ratio(hdmi->curr_conn, false);
> +	}
> +}

All of these feel like generic helpers.

> +
>  static void dw_hdmi_qp_bridge_atomic_enable(struct drm_bridge *bridge,
>  					    struct drm_atomic_state *state)
>  {
>  	struct dw_hdmi_qp *hdmi = bridge->driver_private;
>  	struct drm_connector_state *conn_state;
> -	struct drm_connector *connector;
>  	unsigned int op_mode;
>  
> -	connector = drm_atomic_get_new_connector_for_encoder(state, bridge->encoder);
> -	if (WARN_ON(!connector))
> +	hdmi->curr_conn = drm_atomic_get_new_connector_for_encoder(state,
> +								   bridge->encoder);
> +	if (WARN_ON(!hdmi->curr_conn))
>  		return;
>  
> -	conn_state = drm_atomic_get_new_connector_state(state, connector);
> +	conn_state = drm_atomic_get_new_connector_state(state, hdmi->curr_conn);
>  	if (WARN_ON(!conn_state))
>  		return;
>  
> -	if (connector->display_info.is_hdmi) {
> +	if (hdmi->curr_conn->display_info.is_hdmi) {
>  		dev_dbg(hdmi->dev, "%s mode=HDMI %s rate=%llu bpc=%u\n", __func__,
>  			drm_hdmi_connector_get_output_format_name(conn_state->hdmi.output_format),
>  			conn_state->hdmi.tmds_char_rate, conn_state->hdmi.output_bpc);
>  		op_mode = 0;
>  		hdmi->tmds_char_rate = conn_state->hdmi.tmds_char_rate;
> +
> +		if (conn_state->hdmi.tmds_char_rate > HDMI14_MAX_TMDSCLK)
> +			dw_hdmi_qp_enable_scramb(hdmi);
>  	} else {
>  		dev_dbg(hdmi->dev, "%s mode=DVI\n", __func__);
>  		op_mode = OPMODE_DVI;
> @@ -781,7 +887,7 @@ static void dw_hdmi_qp_bridge_atomic_enable(struct drm_bridge *bridge,
>  	dw_hdmi_qp_mod(hdmi, HDCP2_BYPASS, HDCP2_BYPASS, HDCP2LOGIC_CONFIG0);
>  	dw_hdmi_qp_mod(hdmi, op_mode, OPMODE_DVI, LINK_CONFIG0);
>  
> -	drm_atomic_helper_connector_hdmi_update_infoframes(connector, state);
> +	drm_atomic_helper_connector_hdmi_update_infoframes(hdmi->curr_conn, state);
>  }
>  
>  static void dw_hdmi_qp_bridge_atomic_disable(struct drm_bridge *bridge,
> @@ -791,14 +897,49 @@ static void dw_hdmi_qp_bridge_atomic_disable(struct drm_bridge *bridge,
>  
>  	hdmi->tmds_char_rate = 0;
>  
> +	dw_hdmi_qp_disable_scramb(hdmi);
> +
> +	hdmi->curr_conn = NULL;
>  	hdmi->phy.ops->disable(hdmi, hdmi->phy.data);
>  }
>  
> -static enum drm_connector_status
> -dw_hdmi_qp_bridge_detect(struct drm_bridge *bridge, struct drm_connector *connector)
> +static int dw_hdmi_qp_reset_crtc(struct dw_hdmi_qp *hdmi,
> +				 struct drm_connector *connector,
> +				 struct drm_modeset_acquire_ctx *ctx)
> +{
> +	u8 config;
> +	int ret;
> +
> +	ret = drm_scdc_readb(hdmi->bridge.ddc, SCDC_TMDS_CONFIG, &config);
> +	if (ret < 0) {
> +		dev_err(hdmi->dev, "Failed to read TMDS config: %d\n", ret);
> +		return ret;
> +	}
> +
> +	if (!!(config & SCDC_SCRAMBLING_ENABLE) == hdmi->scramb_enabled)
> +		return 0;

Also please check the high TMDS clock ration bit.

> +
> +	drm_atomic_helper_connector_hdmi_hotplug(connector,
> +						 connector_status_connected);

I don't see a forced hotplug event in the existing drivers. Why is it
necessary? This function is being called from the detect() path.

> +	/*
> +	 * Conform to HDMI 2.0 spec by ensuring scrambled data is not sent
> +	 * before configuring the sink scrambling, as well as suspending any
> +	 * TMDS transmission while changing the TMDS clock rate in the sink.
> +	 */
> +
> +	dev_dbg(hdmi->dev, "resetting crtc\n");
> +
> +	return drm_bridge_helper_reset_crtc(&hdmi->bridge, ctx);
> +}
> +
> +static int dw_hdmi_qp_bridge_detect_ctx(struct drm_bridge *bridge,
> +					struct drm_connector *connector,
> +					struct drm_modeset_acquire_ctx *ctx)
>  {
>  	struct dw_hdmi_qp *hdmi = bridge->driver_private;
> +	enum drm_connector_status status;
>  	const struct drm_edid *drm_edid;
> +	int ret;
>  
>  	if (hdmi->no_hpd) {
>  		drm_edid = drm_edid_read_ddc(connector, bridge->ddc);
> @@ -808,7 +949,20 @@ dw_hdmi_qp_bridge_detect(struct drm_bridge *bridge, struct drm_connector *connec
>  			return connector_status_disconnected;
>  	}
>  
> -	return hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
> +	status = hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
> +
> +	dev_dbg(hdmi->dev, "%s status=%d scramb=%d\n", __func__,
> +		status, hdmi->scramb_enabled);
> +
> +	if (status == connector_status_connected && hdmi->scramb_enabled) {
> +		ret = dw_hdmi_qp_reset_crtc(hdmi, connector, ctx);
> +		if (ret == -EDEADLK)
> +			return ret;
> +		if (ret < 0)
> +			status = connector_status_unknown;

Ideally this should go to the drm_atomic_helper_connector_hdmi_update().
And once it goes, I don't think we'd need the detect_ctx() callback for
bridges.

> +	}
> +
> +	return status;
>  }
>  
>  static const struct drm_edid *
> @@ -832,12 +986,12 @@ dw_hdmi_qp_bridge_tmds_char_rate_valid(const struct drm_bridge *bridge,
>  {
>  	struct dw_hdmi_qp *hdmi = bridge->driver_private;
>  
> -	/*
> -	 * TODO: when hdmi->no_hpd is 1 we must not support modes that
> -	 * require scrambling, including every mode with a clock above
> -	 * HDMI14_MAX_TMDSCLK.
> -	 */
> -	if (rate > HDMI14_MAX_TMDSCLK) {
> +	if (hdmi->no_hpd && rate > HDMI14_MAX_TMDSCLK) {
> +		dev_dbg(hdmi->dev, "Unsupported TMDS char rate in no_hpd mode: %lld\n", rate);
> +		return MODE_CLOCK_HIGH;
> +	}
> +
> +	if (rate > HDMI20_MAX_TMDSRATE) {
>  		dev_dbg(hdmi->dev, "Unsupported TMDS char rate: %lld\n", rate);
>  		return MODE_CLOCK_HIGH;
>  	}
> @@ -1197,7 +1351,7 @@ static const struct drm_bridge_funcs dw_hdmi_qp_bridge_funcs = {
>  	.atomic_reset = drm_atomic_helper_bridge_reset,
>  	.atomic_enable = dw_hdmi_qp_bridge_atomic_enable,
>  	.atomic_disable = dw_hdmi_qp_bridge_atomic_disable,
> -	.detect = dw_hdmi_qp_bridge_detect,
> +	.detect_ctx = dw_hdmi_qp_bridge_detect_ctx,
>  	.edid_read = dw_hdmi_qp_bridge_edid_read,
>  	.hdmi_tmds_char_rate_valid = dw_hdmi_qp_bridge_tmds_char_rate_valid,
>  	.hdmi_clear_avi_infoframe = dw_hdmi_qp_bridge_clear_avi_infoframe,
> @@ -1287,6 +1441,8 @@ struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platform_device *pdev,
>  	if (IS_ERR(hdmi))
>  		return ERR_CAST(hdmi);
>  
> +	INIT_DELAYED_WORK(&hdmi->scramb_work, dw_hdmi_qp_scramb_work);
> +
>  	hdmi->dev = dev;
>  
>  	regs = devm_platform_ioremap_resource(pdev, 0);
> 
> -- 
> 2.53.0
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
