Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C0D2FF8868
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 12:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=96XcCd3Fs92xA+dHebqI5oJUILJB4ejSnCqVeQmXTww=; b=PaDifevo7H4ftT
	WID3Dx4RxmogKRXODhPpST3+b71MK8fWe+PxaAQ2MJqD0blJo4DSX2K+Dq7BqNjlWZtkdVDIxglNv
	xNdNm5XdneVQJYutbWr5M+0Ylg41R28p9FlD0UUB5WtGOCGGO4y3LzW22hl3X+LVyzce0gzEvZou4
	NyfDYYRkuiFy3MIbruHoegF6veJ63QWF67lIgzo9aJE0aKN6dNsjI1R2uI2zPL81y/tff9rZf5xlT
	iLSMlUsnOqdBe0G1rn/9aVby6xyeWPny+DQ/pIXxljKUtz+SAiitHKSzl3Dh1/mWWRjtFIuQ0v/Gs
	sd6lQIXAxGUiXQX5bUSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHhhz-00000001Rpz-1gXY;
	Tue, 28 Apr 2026 12:38:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHhhx-00000001RpS-0VsQ
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 12:38:34 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63SAEf0S1329549
	for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 12:38:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IgHL9+K1Yx+1ojCGhO4CLldT
	N1xaEUCJGfLjuyuMNp0=; b=eE0IdpUoZVbtLFkJmhaL51E79FPijtjtgTZk3hB/
	+xyXFCfEwQBrzcXJ5Mt35WHeXvJ1NfGlyQKKOsudm8jrCtd0GoJzDW1iItrSyBDN
	AEK3U0TwEsD8ktK0O80mcAxd8oGsie4lXej1A5c1jwsy8NiUX/qu8N213wolB0k1
	6BRbeTv6YRRLE2ZJW21ULv8gFghSvWLtTMekT5RW2S/usVKKRdDRFRYmtWxbCYJI
	woC/aaJfSqiWkzfdoMTo62Vau3fzijrMw5/OFr7qsqPOGDL4DVoqn2HERuNEpblI
	i+nNXncHAr0DqnYteUPiFdfVpPuUXD8VUUbXKR3QjMujyw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dtnhahuda-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 12:38:31 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50b220c72bbso281355891cf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 05:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777379911; x=1777984711; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IgHL9+K1Yx+1ojCGhO4CLldTN1xaEUCJGfLjuyuMNp0=;
        b=QkPTDB9M5Gf2cmZeWIOJa1fLUFqHaaYAuDZx+nHLgh5gFGIpEgQ31+ElOAm1fAKYy7
         DFPs+Bf1yMoyUX65hU4fPAu052jMeY7YZJMG5slm8CUEilez9n9vPvlnrDC5FPdFfSAb
         wZsaTzcKraq1k8lNyfrNlpBm9FN7tZwXm+g18jBb7Pu65E/gvYlh4gx3VuV6i5v3grPM
         pqTqUBIONubYSTDTb1B2vqlRXDOKXvFtd2C6MTBlHl/fVJjAPSrj8pqGfw4Gs7gy+w0/
         Z9xOlHTYfaJ/NUe7P0g9ewhmWqaPMxL9hPHechxLR/zB/r4vUvZ+z5BOXlu0YMe7WoFq
         DovQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777379911; x=1777984711;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IgHL9+K1Yx+1ojCGhO4CLldTN1xaEUCJGfLjuyuMNp0=;
        b=Uv5Nb8hkGUoLl1WNfV1hou8YGOB5XcNnzPPdJEjZVIuPmcIZOEIahtgRIAaWwhGOG2
         Vaxy+IAcl2872+h6mxEGZYRk93f9pZxoaXzOM+wVKRytznShGJe7vWdo2AnyFpdzwtKT
         vQtke6aDSK29B7qIkzJVLKefpY2E/gYmElNDIBISLJM03ETOualP6aZ0s1WQUV2F59eq
         9TMS6jKXZsm3rEd+La4Mr+kM1k+bgzoYldzXJPxpUZpyaYvFUFbERkLol/um+LeYqhjK
         NAmb+XcKjnJtLgO58GHS0GixkflqbHINgSeawqbrv9fHCa+xnHcSPMGZHnQcmZF24y/k
         JJ2Q==
X-Forwarded-Encrypted: i=1; AFNElJ/QJCBfpG5F4jvHFBRqQs/y7EmHyavfelukk8r2BJE91VpdV9VA1YJM8a3dINeQv4QeUR8/pixQ3uye50ROVw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwupcCu1c27vdFm9iObj7vuA8t7Mo4eZ/hn025/0rth+KFwtEOJ
	L1bM4mUmXyyISmJa83L5nYF023FkEWPy0GmjTK4LtLrhZvbDk5NZ8qyYNOMypIy9/G0sB5J7jb9
	kcG0OapA5Nkerqndx7smhfwS10CG0D9IWkzHRLclFTSwSlZE7xzwW5FEVCt8SiVWtbVpTixs37n
	s=
X-Gm-Gg: AeBDietmRI4LbncUfOR3W8wZfSMokzinSVIXnyoxo4t2FtIUBkxe/kyV9BQrdymfXvm
	MKtlDbM7bFNOUwlpbTuQgkv9c+nYtYRruykp7NhIRjGsrxFdSpxShbmN/oTuZO+BXnA+yMJUYeD
	l25UiOOXx/2kKGO2zzt/gqmaBu6YYycxnsdgR+BJ10Og9Jgzc9WjjYN3bAbnefkSVENvvsPPZDA
	X+UfugGEPhHXxMr2ZjEg+ti6k5MKKqD0p+EHD3EXep81fcQcBU34/T48Peuf4cBlz+w1OzBlPoY
	UwiqMglgVCguMOieX78o60nCIRA3nL4onyoeOOwi+GVrZExEXiE6RRPOclRE7oT0KJ44f5rrHo4
	6zXdVpAqSUxmMMLRymMff6tUbNfE6GREuaQpSwtGjyj2/Ag/lNFARApL7piz/YLH9fy/8L9VwTI
	YSx500A2N6zwvXUjCQJqGopavCfSBZTYw9eJR1Y4Ql7FTeQA==
X-Received: by 2002:a05:622a:a11:b0:50e:61c1:685f with SMTP id d75a77b69052e-5100e1f7748mr40176781cf.50.1777379911253;
        Tue, 28 Apr 2026 05:38:31 -0700 (PDT)
X-Received: by 2002:a05:622a:a11:b0:50e:61c1:685f with SMTP id d75a77b69052e-5100e1f7748mr40175411cf.50.1777379910267;
        Tue, 28 Apr 2026 05:38:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a7463f5f4bsm596170e87.49.2026.04.28.05.38.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2026 05:38:29 -0700 (PDT)
Date: Tue, 28 Apr 2026 15:38:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Christian Hewitt <christianshewitt@gmail.com>,
        Diederik de Haas <diederik@cknow-tech.com>,
        dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 09/13] drm: bridge: dw_hdmi: Use delayed_work to
 debounce hotplug event
Message-ID: <go5i5iiwra426hydnvc5thhgtknv3fa7ti35q3et6frroxag2n@tfbfiyjmtzkk>
References: <20260403185303.80748-1-jonas@kwiboo.se>
 <20260403185303.80748-10-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260403185303.80748-10-jonas@kwiboo.se>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI4MDExNyBTYWx0ZWRfX01OHvRx94CRq
 P/xtfGTKOcEIZLeYyfEKNDpbfKLkmw/9C/7FfwhlTcBROPn/B/I5f+9CMc7IqnhK1VM/ZFROCsF
 t62WsiUPl54JNhXBLT0f0BGVEUCBlOyEHO+5XHHirSDm1KmFyVvahdT2PVgS65UkAWpXV1O/105
 KRBrKeYQCbD1jc+e6sXnB69xRRLyssXNCvAABf8Q/Mup0q/lpTuIPwnjXUPVZ234BILUBamhQUr
 iagRwqOnn57BHKnEMv7lHDPUMMEe3lNNjuniapLn3+G9gu+lh6RY2IlnyGraoZzL2Ae+sQNBk8q
 kwrIQRdlxoJq8kxgm39gkcj0AEHQMg3MUPPhWkeMEO+GznFVlTVcKTrvkI8HWokV//BME6ZWDAx
 e7WBUFFSula3VCXf169RWhDkNDjECWVlKEmpcBi+AgwcLbkb9OWzQS+g44gkJz6/FOSZk4Kl9ql
 Ru/fLtOAlPpH9t4SAaw==
X-Authority-Analysis: v=2.4 cv=JoDBas4C c=1 sm=1 tr=0 ts=69f0aa47 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=pekZB1wqKdmBCcXpRF0A:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: U5DHL5_3FdXI-H2pIiDugNcZy34j0u3m
X-Proofpoint-ORIG-GUID: U5DHL5_3FdXI-H2pIiDugNcZy34j0u3m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-28_03,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 clxscore=1015
 adultscore=0 phishscore=0 malwarescore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604280117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_053833_306992_09E5D95B 
X-CRM114-Status: GOOD (  30.62  )
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

On Fri, Apr 03, 2026 at 06:52:55PM +0000, Jonas Karlman wrote:
> HDMI Specification Version 1.4b chapter 8.5 mentions:
> 
>   An HDMI Sink shall not assert high voltage level on its Hot Plug
>   Detect pin when the E-EDID is not available for reading.
> 
>   A Source may use a high voltage level Hot Plug Detect signal to
>   initiate the reading of E-EDID data.
> 
>   An HDMI Sink shall indicate any change to the contents of the E-EDID
>   by driving a low voltage level pulse on the Hot Plug Detect pin. This
>   pulse shall be at least 100 msec.
> 
> Use a work queue to debounce reacting on HPD events to better handle a
> HPD low voltage level pulse when a sink changes the EDID.
> 
> The 1100 msec hotplug debounce timeout was arbitrarily picked to match
> other drivers using same const, and testing using a Raspberry Pi Monitor
> seem to use a 200-300 msec pulse when going from standby to power on
> state.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> v3: New patch
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 24 +++++++++++++++++++----
>  1 file changed, 20 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index f3f8144ae98e..4d079b689b3b 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -51,6 +51,8 @@
>  
>  #define HDMI14_MAX_TMDSCLK	340000000
>  
> +#define HOTPLUG_DEBOUNCE_MS	1100
> +
>  static const u16 csc_coeff_default[3][4] = {
>  	{ 0x2000, 0x0000, 0x0000, 0x0000 },
>  	{ 0x0000, 0x2000, 0x0000, 0x0000 },
> @@ -192,6 +194,7 @@ struct dw_hdmi {
>  	hdmi_codec_plugged_cb plugged_cb;
>  	struct device *codec_dev;
>  	enum drm_connector_status last_connector_result;
> +	struct delayed_work hpd_work;
>  };
>  
>  const struct dw_hdmi_plat_data *dw_hdmi_to_plat_data(struct dw_hdmi *hdmi)
> @@ -2528,6 +2531,7 @@ static void dw_hdmi_connector_force(struct drm_connector *connector)
>  
>  	mutex_lock(&hdmi->mutex);
>  	hdmi->force = connector->force;
> +	hdmi->last_connector_result = connector->status;
>  	dw_hdmi_update_phy_mask(hdmi);
>  	mutex_unlock(&hdmi->mutex);
>  }
> @@ -3046,6 +3050,16 @@ void dw_hdmi_setup_rx_sense(struct dw_hdmi *hdmi, bool hpd, bool rx_sense)
>  }
>  EXPORT_SYMBOL_GPL(dw_hdmi_setup_rx_sense);
>  
> +static void dw_hdmi_hpd_work(struct work_struct *work)
> +{
> +	struct dw_hdmi *hdmi = container_of(work, struct dw_hdmi, hpd_work.work);
> +
> +	if (hdmi->bridge.dev) {
> +		drm_helper_hpd_irq_event(hdmi->bridge.dev);

Nit: please consider this for the followup cleanup. The
drm_helper_hpd_irq_event() is not very effective: we already know which
bridge (and thus connector) caused the HPD event.

Moreover, the call should be redundant as drm_bridge_hpd_notify will
call the registered callback, which normally would be
drm_bridge_connector_hpd_cb(). Internally, this function calls
drm_kms_helper_connector_hotplug_event().

> +		drm_bridge_hpd_notify(&hdmi->bridge, hdmi->last_connector_result);
> +	}
> +}
> +
>  static irqreturn_t dw_hdmi_irq(int irq, void *dev_id)
>  {
>  	struct dw_hdmi *hdmi = dev_id;
> @@ -3097,10 +3111,8 @@ static irqreturn_t dw_hdmi_irq(int irq, void *dev_id)
>  			status == connector_status_connected ?
>  			"plugin" : "plugout");
>  
> -		if (hdmi->bridge.dev) {
> -			drm_helper_hpd_irq_event(hdmi->bridge.dev);
> -			drm_bridge_hpd_notify(&hdmi->bridge, status);
> -		}
> +		mod_delayed_work(system_percpu_wq, &hdmi->hpd_work,
> +				 msecs_to_jiffies(HOTPLUG_DEBOUNCE_MS));
>  	}
>  
>  	hdmi_writeb(hdmi, intr_stat, HDMI_IH_PHY_STAT0);
> @@ -3420,6 +3432,8 @@ struct dw_hdmi *dw_hdmi_probe(struct platform_device *pdev,
>  		goto err_res;
>  	}
>  
> +	INIT_DELAYED_WORK(&hdmi->hpd_work, dw_hdmi_hpd_work);
> +
>  	ret = devm_request_threaded_irq(dev, irq, dw_hdmi_hardirq,
>  					dw_hdmi_irq, IRQF_SHARED,
>  					dev_name(dev), hdmi);
> @@ -3552,6 +3566,8 @@ EXPORT_SYMBOL_GPL(dw_hdmi_probe);
>  
>  void dw_hdmi_remove(struct dw_hdmi *hdmi)
>  {
> +	disable_delayed_work_sync(&hdmi->hpd_work);
> +
>  	drm_bridge_remove(&hdmi->bridge);
>  
>  	if (hdmi->audio && !IS_ERR(hdmi->audio))
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
