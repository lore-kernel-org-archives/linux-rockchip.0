Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C70AC43602
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 14:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hm4mFVId75cVPbpUSkSJN55s8tr2WZmTEMJU845MR6s=; b=sb9hY8rup3hmT9
	ponZ9Rmg905lzEeIJ6FcNvoPgOMrTXUxbPA63MyojAFyxDQ2sHJsKtqLA+3irqN7rJ80Gya+qHk1R
	MiflvwX5ekZrp5+pAOIHVG8qnmykxPJ3KnANvcgVHa1eAQ6z0XMFa2/5OPUxulsZM/ibzVo5kdmrF
	iPdqmmjvij394D1lwEEneqhFNDGlkrtfzJR8dckq95z0juVpGS7psVIdzGupkSTRW0aPf4b+Ya4DO
	yRF4N+bNP68xaFNvpdYLIqIpfb27g49GQio3jnnmAUNbKbZH01WpbI/EDdIn3jDb1xVYH4vDdtVgA
	xhf7QfHhHZY0y9JTBSgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfeyS-00000007HGq-1lsr;
	Fri, 03 Jul 2026 14:34:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfeyQ-00000007HFv-0oGM
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jul 2026 14:34:35 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 663BKAsq3136127
	for <linux-rockchip@lists.infradead.org>; Fri, 3 Jul 2026 14:34:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=F0aBhZc9WF+rFPlDXqAf/XhE
	72xCrYOeF47F21xku7w=; b=Gr8DXkkONkkq7N+aZz/zMERdhhLMnmXhh8Vg1ZTS
	bFCB3Tc4v/DBDvqjmU8d2yUGAEfebpaGuyysZ0KQVfulJFjDyruCzhsh71U/ay5m
	3io55qCtOgZcGNHA4iFjf1aCg+5AKnaOFrAWO9iIvUx6g+cWtc9LfnqOjggtwqNu
	wpoGFOT7PVUmPTtL+/QeojnKRB7OjFT3t+xxRMA7XnQUvGehcLW58NY8Y5vSWF4A
	OqAx8yxPgrEBo3MuLbVBkxXjCgDYoU5QnBl1ZKSKsamr+LzkaHsyQM6z8h0akRaW
	D9MF2t+ue2Eh5YRsBWMXIIFGZYnNUX5dR9nUqngMLHsOWA==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f64b5ar15-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 03 Jul 2026 14:34:33 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-9693b69c4f4so599511241.2
        for <linux-rockchip@lists.infradead.org>; Fri, 03 Jul 2026 07:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783089273; x=1783694073; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=F0aBhZc9WF+rFPlDXqAf/XhE72xCrYOeF47F21xku7w=;
        b=HAvaOvjA6GRb445uU5v3f39lT4ecWBfncMSSCI35ThJ4XR7KY5h53b3I2fWTsHrb80
         ONPaRaLRcU4rK3ZZoP4p9XiJNcFEz9tARhIHUaXYFpoXA1i2gxzr2sbdpEjB2GfXfB1J
         H24MJ8D9AVWRzz4faauwAaEhXkEYz7PiMTZiVvTfhxMXpFsHOj7jILD3/ys/T1kczuWu
         IlN8SAgUHB/4Nsis4rTTkgef9/QH9vAjU2xZESvxQaGQVZjE86TkRg11mk1hzPfkni3v
         +wTp4gTrZG1jPxEXdADhCOkzbRXE5wjf7x/F35PkQnV8xNsNpOSqes0Ts7+7d7Ib5cfa
         nnXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783089273; x=1783694073;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F0aBhZc9WF+rFPlDXqAf/XhE72xCrYOeF47F21xku7w=;
        b=qDNyhG5QqfWlrJ5i64fcdIEgBD/4YEVXwouKlb1CXoTzJM1f2KluirTuN3hKZ7xLiQ
         ohKAM1usywYToh2NamMaLOqMujYDiIf4OQh/CDe5GprgFA13iCWcZW7HkLQoSeJf/c6B
         uGMO5x15FfrPjrOBVOIj5TylPRo4J7QncFXR1Q/fZbLBj7aReP+s/STrl3OqDOf9bKnm
         28mgfGRMrK96qXPTT8urIVLR69uRtmn/x5LCDf3CxLGov5wXiunLvmT5aAJYoqkd19Pc
         tJLqi7pRR6sBvUeJyAgyDS33/0qQ9OtyTNwASu1VCUGTDKBr6Wyen/xJP+vxixmI2+/7
         ReMg==
X-Forwarded-Encrypted: i=1; AHgh+Rq5v8rGSUC4JJRWQ2wB+/DHR0BQmyOnwYXKB0mVi21XaUtSKfEDrV0KNGt0VM21NZs/BFAx8Si+G1Lfv7KW4A==@lists.infradead.org
X-Gm-Message-State: AOJu0YymuUF+k356CwHAE9b538sOgPsEBmLtl24eXezFGrnCD9hduBm3
	swJNimvyI3XH9X77VqlfRdDxF/4NqpLeRNOkoWUbHOd6K9h/CXHx87+1YpqMsiH3wjGs/IliTNA
	FGxRyKBr/hkrshoaVz0SgLcuDeUJTzBsPfCwIFxhcCp/jy6+L4n2MkkttTb+m7vpbU8yXnobwu+
	c=
X-Gm-Gg: AfdE7cni7GgZyFJu90HZ11JpgZM/MoIyRgvWSAdq4VXPEBZ8S1v1rP8SjhHS5rPUIFN
	97Q+NQL3ek40uY6HFRZpZnDXWuixI7EmUMluIzYWbeJFq/9SNXM0z69ooh1tmipV9yQ4x5rGVJV
	fK3TtugTXdl8x9XGE3uGx425I8k62cbinh4usV67S/Ua986PnMKfBatRh+a0LF+lIZBhN3JIYsW
	2bAtDZcd/Wdi5MAbkdfTRy6yUSS4gmD4karg1HcZWrfzAFdGSqAi9v45Rkfmuc2HoTYLpqikAyc
	eNZXNtrdxy4rHUP9HVHN+/3UFAvMYFqrNC9cK/q7BWEXx2l2fbfPVcRaETMR8JPWD1a7L9wELa8
	1RgU7onHvncYljTbfJ/vAL3rPRBxXkoNUVSPS6po1OtuPZLgmGCwpVkk5q88jJ9UOA07KgzS9Vt
	pbD58aShFEYpGcY+VtcupKkous
X-Received: by 2002:a05:6102:5349:b0:739:977f:c1ba with SMTP id ada2fe7eead31-741f650d784mr116908137.2.1783089272517;
        Fri, 03 Jul 2026 07:34:32 -0700 (PDT)
X-Received: by 2002:a05:6102:5349:b0:739:977f:c1ba with SMTP id ada2fe7eead31-741f650d784mr116889137.2.1783089271966;
        Fri, 03 Jul 2026 07:34:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed13c8b5bsm526521e87.80.2026.07.03.07.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 07:34:30 -0700 (PDT)
Date: Fri, 3 Jul 2026 17:34:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Luca Ceresoli <luca.ceresoli@bootlin.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Daniel Stone <daniels@collabora.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        kernel@collabora.com, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v8 04/39] drm/connector: Add HDMI 2.0 scrambler
 infrastructure
Message-ID: <tjsidlnvswo2rdhqa6jybxrnb47lxgmxdlfrfbasuh67wjbqoy@3a45n3zawvnf>
References: <20260702-dw-hdmi-qp-scramb-v8-0-d79890d00b6a@collabora.com>
 <20260702-dw-hdmi-qp-scramb-v8-4-d79890d00b6a@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260702-dw-hdmi-qp-scramb-v8-4-d79890d00b6a@collabora.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAzMDE0NCBTYWx0ZWRfXyT1BWfBt0rIY
 NBo+Kf5+UW6Nc3AwGiBfU5MTWP9CGSci1kF0U4xzr16o6wByw60+146iEuqK9pdwghjrxCc/f92
 R5d7FXWXdn4jYS8j9g13tgrJX8fQGZY=
X-Authority-Analysis: v=2.4 cv=FOQrAeos c=1 sm=1 tr=0 ts=6a47c879 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=QX4gbG5DAAAA:8
 a=GwlrSY-_3Y_gmMEHsFMA:9 a=CjuIK1q_8ugA:10 a=o1xkdb1NAhiiM49bd1HK:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: YlSzdxngQjGXF9MtjkZ2d1mtzSxq5yqi
X-Proofpoint-GUID: YlSzdxngQjGXF9MtjkZ2d1mtzSxq5yqi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAzMDE0NCBTYWx0ZWRfX0diXYc1OKmoL
 cxzJB+m/IoxvrGUUAmKeeyd4jqcwUJJHkGlegEogAXkr6HUPocOUltbmpR9Irg4xjuJinUnbs5I
 vlUJ6poQCeJtWkR0fGS+LFmA/RbTIL1JK8yi7/ltaAW3fqOJ1pkRPgi7nqLRJcHhwAG9rY/8DRD
 VVGndSXEf3+udJLzWzyYlYtl5Jxyfs6CabhN1bK5A7Ob83zPQC6vJLsc7FUwHr9J8B+Gs30jkEz
 z0mwMS0j3IcAxRr5o4AE/QMI18IieX6mgkmvpiFyBv5kT67og8PetcwuraRPoV3stKvMuW0xZFS
 3kp65yM7vBnMQfSnGep6RzzG8Vz3F97pevlgBNpMtu5naIQbYca/ggNf8lZ/kOesqim75p6SkS3
 Bkj5hK1Dgxa0z1MR2OzOL6nRbdEw0DKZSdrsmheXJxRTge0nBNyFYpfs0Cx9IYed7aQ5IKt1msG
 VpITQQawDHpxY+URJ7w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-03_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 adultscore=0 clxscore=1015 malwarescore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607030144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_073434_245220_791AF675 
X-CRM114-Status: GOOD (  35.24  )
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

On Thu, Jul 02, 2026 at 05:46:17PM +0300, Cristian Ciocaltea wrote:
> Add the connector-level infrastructure to support HDMI 2.0 scrambling:
> 
> - A scrambler_supported flag to indicate whether the source supports the
>   scrambling capability, in which case the newly introduced
>   .scrambler_{enable|disable}() callbacks in drm_connector_hdmi_funcs
>   are mandatory

Do we need a flag? What would it mean if the flag is set, but the
callbacks are not? Can we drop the flag and use the presence of the
callbacks as a way to identify that scrambler is enabled?

> - A scrambler_needed flag to be managed by the hdmi state helpers based
>   on the negotiated TMDS character rate and the source/sink scrambling
>   capabilities
> - A scrambler_enabled flag to track whether scrambling is currently
>   active
> - A delayed work item (scdc_work) with an associated callback (scdc_cb)
>   to monitor sink-side scrambling status and retry the setup if the sink
>   resets it
> 
> These are intended to be used by SCDC scrambling helpers to coordinate
> scrambling setup and teardown between the source driver and the DRM
> core.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/drm_connector.c | 26 ++++++++++++--
>  include/drm/drm_connector.h     | 77 +++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 100 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> index c7ce6b7bd8b0..deecfc582f09 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -220,6 +220,19 @@ void drm_connector_free_work_fn(struct work_struct *work)
>  	}
>  }
>  
> +static void drm_connector_hdmi_scdc_work(struct work_struct *work)
> +{
> +	struct drm_connector *connector;
> +	struct drm_connector_hdmi *hdmi;
> +
> +	hdmi = container_of(to_delayed_work(work), struct drm_connector_hdmi,
> +			    scdc_work);
> +	connector = container_of(hdmi, struct drm_connector, hdmi);
> +
> +	if (hdmi->scdc_cb)
> +		hdmi->scdc_cb(connector);
> +}
> +
>  static int drm_connector_init_only(struct drm_device *dev,
>  				   struct drm_connector *connector,
>  				   const struct drm_connector_funcs *funcs,
> @@ -285,6 +298,7 @@ static int drm_connector_init_only(struct drm_device *dev,
>  	mutex_init(&connector->edid_override_mutex);
>  	mutex_init(&connector->hdmi.infoframes.lock);
>  	mutex_init(&connector->hdmi_audio.lock);
> +	INIT_DELAYED_WORK(&connector->hdmi.scdc_work, drm_connector_hdmi_scdc_work);
>  	connector->edid_blob_ptr = NULL;
>  	connector->epoch_counter = 0;
>  	connector->tile_blob_ptr = NULL;
> @@ -624,12 +638,18 @@ int drmm_connector_hdmi_init_with_caps(struct drm_device *dev,
>  	 * inferred limit with the actual controller capability. A value of
>  	 * zero keeps the default limit inferred from supported_hdmi_ver.
>  	 */

Here we need to check that the driver doesn't set only one callback of
the pair.

> -	if (caps->supported_hdmi_ver >= HDMI_VERSION_2_0)
> +	if (caps->supported_hdmi_ver >= HDMI_VERSION_2_0) {
> +		if (!hdmi_funcs->scrambler_enable ||
> +		    !hdmi_funcs->scrambler_disable)
> +			return -EINVAL;
> +
> +		connector->hdmi.scrambler_supported = true;
>  		connector->hdmi.max_tmds_char_rate = HDMI_2_0_TMDS_CHAR_RATE_MAX_HZ;
> -	else if (caps->supported_hdmi_ver >= HDMI_VERSION_1_3)
> +	} else if (caps->supported_hdmi_ver >= HDMI_VERSION_1_3) {
>  		connector->hdmi.max_tmds_char_rate = HDMI_1_3_TMDS_CHAR_RATE_MAX_HZ;
> -	else if (caps->supported_hdmi_ver >= HDMI_VERSION_1_0)
> +	} else if (caps->supported_hdmi_ver >= HDMI_VERSION_1_0) {
>  		connector->hdmi.max_tmds_char_rate = HDMI_1_0_TMDS_CHAR_RATE_MAX_HZ;
> +	}
>  
>  	if (caps->max_tmds_char_rate) {
>  		if (caps->max_tmds_char_rate > connector->hdmi.max_tmds_char_rate)
> +
> +	/** @scdc_cb: Callback to be invoked as part of @scdc_work.
> +	 *
> +	 * Currently used to monitor sink-side scrambling status and retry
> +	 * setup if the sink resets it.
> +	 *
> +	 * This is assigned by the framework when making use of
> +	 * drm_connector_hdmi_enable_scrambling() helper.

No such helper. Also, please explain in the commit message, why do we
need to keep it configurable. Why the default is not enough?

> +	 */
> +	void (*scdc_cb)(struct drm_connector *connector);
> +
>  	/**
>  	 * @funcs: HDMI connector Control Functions
>  	 */
> 
> -- 
> 2.54.0
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
