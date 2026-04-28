Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04F54FF8868
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 12:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=62rZoBbe3pJaSPxBCCMFOdMjO2jBJDtg0zRN29G54Og=; b=qi/I+i5aKGeGZO
	3b1iokLTorI4fJJ+qZDxfVf7sH0/poDuAf+wpk5j/wJ9/qaFvHuzJVKGRj7cSrOG5DtKfiIJ4Cph8
	VuTn0HAeqeeeE/q2xcleMLLj80NSIkxQgR7p6YNOD2Zsi9ZfaACFxIVOn8/Drjl5J+Hbt987ofSv9
	2EMZ01NsIYvWnaIA8htcinTNJDChOm8vfgbIlv4FgW3s+4LMwqNWZcBSe93GLI1Waa4r8EcmCcmQC
	+tD4cY89sGmDQKqYTWisrjHjh1VIhJtUKyopidFNYN4xla0YHnaBlJIQXQwrmvOxu2BPWSS+00PWf
	G9RT7zw48juk/7rUF1AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHhjt-00000001Rvm-3J5S;
	Tue, 28 Apr 2026 12:40:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHhjr-00000001RvN-25It
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 12:40:32 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63SAhOkq818799
	for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 12:40:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Uhjj67hXf7BIeABzuefc/MGP
	fZZbHy7JAto/bctTxR4=; b=CKsIJOx1lRXbdaahx4+TZJq+jpJ4bTFxUYjB5k97
	XBZYMJTHX+W2DjoOctzm/SMzYrzPqoBNdltYsEYYVsiQ8+xOPETf5WP+6cq/hBVg
	IeEi011yBoJI64/nuV5/UlQ2LGJWlybcOgpB2xSaG9BFQT10VIKfnaBq0O0Sf3m9
	zrmyU+n9qjF/1/GJK5/AQbTj0OrpNnNKCcGkXsvqt8GBb25qQ/QVy+ZHsLOAAHon
	lQGMIcfi5VaoPRgnqP1WDWqKxuFPdqjLJlGj3ct2X2hmvA7T5lD+/2gmhUwGASbX
	UikQagn8zH50OqeX2mhKZ3/3LynvjkOaWk+Cs2aquFqcdg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dtud20cy8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 12:40:30 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50ff0bef198so66059751cf.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 05:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777380030; x=1777984830; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Uhjj67hXf7BIeABzuefc/MGPfZZbHy7JAto/bctTxR4=;
        b=OE8Ohjfd72hC8Isvfy0H72oGJKUqrZnHgOTO9kYBzt6KSPNgGJMWtBuJC6b8cjWdHn
         yC6ZHQ6gvNYRb/VnYbv54Eyyy6djU/JZFFjUBfTM+2dPKgJMkIvUYtlwlAJOiSyBoHxf
         CxSpTTfF9sziep4xL8TL3ZQFVz5++Klt1saywdOFhny0T6MP2WbD5rxT1mUWyr7ptgCI
         raCWYkNEzAgvzosEBtRAQmChZ9w8IkGNiOsJ1c7p5WZkCNBnARBdXpDHOB2nOnfqLla3
         l0H+G7vdHL4C3HiE23EOBkpZG4JK7evgGjOqhxp6+Z3uD1lXp8h+rbMAUs+n3WwBqh0R
         PiSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777380030; x=1777984830;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uhjj67hXf7BIeABzuefc/MGPfZZbHy7JAto/bctTxR4=;
        b=G+vmpYqds9/2x39NXeeC9gAA7It0rd9bbfDBLrkTnBhCaQKtPyAVG1s+JIzGA3tByV
         OSADu0HD1yy1Hcnp61EmwP/QISSMoPHWJdFHgg0ASd6iRmJmLMFCfphwsQPD+tXVycIc
         ll3KQEZA+vqFCaIHPpYzJcAKmp/SkRxtB3mwpL4TaPAyya7Ta88+ZwOSuah+xaBFVs0Z
         dvVOW5VR1qA3eDmPfY8vxYT+cLh16Cew8e9S0RE6QlWZJi6jZis12sjRE8aqOyAz9VRX
         deQl+0+zMmsP1zuz/eg0Uw9tM8gSd6/J5skWDXt620DkvHiUOQ46IR3JsOeHh/qi8OZA
         Lhrw==
X-Forwarded-Encrypted: i=1; AFNElJ9LPSYJiH93GgQhPzxhaMUWyhenKb0fl2r9yWZuQown/gSm5JzWmxy35VhvECxI/yyWlZAlOGzXV3paCw3qTg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzlgnDCeGRfhxzfokNfwLXQLXcWHdIZyS4UXpXd64FhT5xfk2Hk
	aY5WBDLe7QcByaa45B7ag8fYqhsr5B4D8T/0P1jANTDBzWF8OuOGoQGTgN7KZDDfnXgbzd8Nbd5
	g397tys/YmF5G2vSnQpJoAm6wsZV2aJZMzVf0q2avxoEgCJBF0U985xUgSExjR4AKJUCcXnbuET
	s=
X-Gm-Gg: AeBDieu/C4VRmTv4DsetFqqcxjePEHDreyrEzG6QDnqQc+GDmrgTiDuKYWVH9eHHzO3
	NMU9c9SP9qo83SflXvzN+PFTcNGLamEqoc5jbJkheYY1NqeFOZDuFBlBuPRRQ4u5taxs1w2ce6Y
	u9fBpbBdVg6eBH0AAnpVR+XDrjqdTWs8Zv4Nugv186n+AURRTgAb+mEqXN4IUog00kizrk2f32V
	tOHm1xA23wg9xho7ORrrW9UzGxwmEXEr3/KJzX4/FD/RHJNxzVVg11VtDHbK7eQDNiYK9eSBbN2
	J8gW5GaH7lhOey7HYYflTD+3xFS3KPxHsTOnA84HZ3m73LPzbgACEb2inBNW4QBCE7k2FIul37L
	IMAJXYGlmqJQ4GstCVjDR7n/LeYRtwsSXqSCQRXBZy6hkh9+Lte2HGM/ENetiP6+c8SglOZfudN
	fTHP5nyvp4xUQxtrYF4lYzXBmfArU6WcWJ9rq8IpAO5hzpbw==
X-Received: by 2002:ac8:5a55:0:b0:50e:6054:b4 with SMTP id d75a77b69052e-5100e0f3b1amr38739871cf.7.1777380029643;
        Tue, 28 Apr 2026 05:40:29 -0700 (PDT)
X-Received: by 2002:ac8:5a55:0:b0:50e:6054:b4 with SMTP id d75a77b69052e-5100e0f3b1amr38739331cf.7.1777380029169;
        Tue, 28 Apr 2026 05:40:29 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a7462cfef5sm596609e87.19.2026.04.28.05.40.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2026 05:40:28 -0700 (PDT)
Date: Tue, 28 Apr 2026 15:40:26 +0300
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
Subject: Re: [PATCH v3 10/13] drm: bridge: dw_hdmi: Use
 drm_connector_helper_hpd_irq_event()
Message-ID: <6n44goy63rcd44r3l3qliqgybd7f7kn7p3ktosrjdtphuid5hj@lkigypdzbn3q>
References: <20260403185303.80748-1-jonas@kwiboo.se>
 <20260403185303.80748-11-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260403185303.80748-11-jonas@kwiboo.se>
X-Authority-Analysis: v=2.4 cv=a/0AM0SF c=1 sm=1 tr=0 ts=69f0aabe cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=LKZhR2v9Hn7qEMR8X70A:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: 4qftgsMlPyMKvPFXLkh1uoL6UsxNdcjV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI4MDExNyBTYWx0ZWRfXyu25K1f8bN/p
 q52SW8QKEzr+PvvNqLnaqvNR1cUVW8bM1faOzrFmKYXW6iMo5Z7gZbtfNO01DrwsGX/3ijImYWm
 XuwSo5ddDAiPKj11v3nypMipS0wlT8PphGZCQrn79jvJ/HDWVqSCleR3YJza9wvTmEJY6wxDett
 a5EVM0hCQ2uTBP/uK6Xa9fRwerJdyf2vuPHI0PMxGilpXrm7JlF+SkCHVxTp9QOhUisaJ4p5Tey
 v63kOzGSrRA9chE1T7br1khZLHErUvjW/V2fFd0VgcNWXJJS01el7H+T8eYG/E5Wza4EkeTKYSC
 X6gIF5MiEPgz88+JR+xvln0Yx3rxeBpxxIBJP+dJzTqduvwe60NjcFVjmiliUnm8d9CSf+M8Tyn
 YFtIwgKdkLw0kwS8asBUU//XOpnbXKeFVm7yGNdB3bfvm9xcAwHsDLT0icvAbAZhhGOQsUnjWM0
 wPt/OMaZBWoAc3SSnvg==
X-Proofpoint-GUID: 4qftgsMlPyMKvPFXLkh1uoL6UsxNdcjV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-28_03,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 spamscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604280117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_054031_679820_8BF8F106 
X-CRM114-Status: GOOD (  22.17  )
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

On Fri, Apr 03, 2026 at 06:52:56PM +0000, Jonas Karlman wrote:
> Use drm_connector_helper_hpd_irq_event() or drm_helper_hpd_irq_event()
> depending on if a dw-hdmi connector or bridge is used.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> v3: New patch
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index 4d079b689b3b..4a0498922476 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -3054,10 +3054,13 @@ static void dw_hdmi_hpd_work(struct work_struct *work)
>  {
>  	struct dw_hdmi *hdmi = container_of(work, struct dw_hdmi, hpd_work.work);
>  
> -	if (hdmi->bridge.dev) {
> +	if (hdmi->connector.dev)
> +		drm_connector_helper_hpd_irq_event(&hdmi->connector);
> +	else if (hdmi->bridge.dev)
>  		drm_helper_hpd_irq_event(hdmi->bridge.dev);

Okay, following the comment to the previous patch it should rather
become:

	if (hdmi->bridge.dev)
		drm_bridge_hpd_notify(&hdmi->bridge, hdmi->last_connector_result);
	else if (hdmi->connector.dev)
		drm_connector_helper_hpd_irq_event(&hdmi->connector);


> +
> +	if (hdmi->bridge.dev)
>  		drm_bridge_hpd_notify(&hdmi->bridge, hdmi->last_connector_result);
> -	}
>  }
>  
>  static irqreturn_t dw_hdmi_irq(int irq, void *dev_id)
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
