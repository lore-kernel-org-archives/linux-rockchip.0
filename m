Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85F17F364CA
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Apr 2026 22:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5guGsP+ZOn8g9CggpG4TP512kvDsg1nSh0UjXwGmdno=; b=ecPeKIUs6Lob7B
	coHvmRO66aTprxKt5EB9WF2v2fXrFRPyXjrNzmBgNfMsdaJ7Pyh1Nn/izWRXVyGLjHoUDLkp0yukC
	t4rm2RVCYm6TlpD11LZowk0QK64EbmN+vULgMX86S4QpAynt6/H1PRqMnXMrQyUFzpP/q1EA23iZu
	exU6eDHpYtntKXp4E7Rmp2zpNUB9IQLmrokbPHeT/rADEhtTfmz1RtXWvFggKWQMyELfinlOqROty
	sohIGisCOeWmxZSlX6MQCVO0Rg8fUqBmaADxP2p905M255LOady00hN07YtAJpCtA+buU2YJjA2e2
	+x7YqCjQ6jI8/Cp+2xYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAxZR-0000000BGrI-2HtH;
	Thu, 09 Apr 2026 22:09:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAxZN-0000000BGq1-0OYX
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Apr 2026 22:09:52 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 639LSTQr1972717
	for <linux-rockchip@lists.infradead.org>; Thu, 9 Apr 2026 22:09:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YfJuQz9x8+CxrVM73ltVMfSV
	gvGLqNbpnCkk5PUIX9Y=; b=PuUUUvjCOM0tKgt7LJ1qBH0p9464Id/g2CTihUW6
	mnvl4XVrXpir4kmhZe6PEPhrY2LifZYgKW5Vs6EsQpcBSOYHXg1Qj1pNpTXcde6f
	kqC/0hxc1bmbaxZJk12lYAGyEepI0VUL17eWKI2HMN1YEO69Rxk/+NhpmD2mbKdC
	RAn+udXOl93lD6VCGjwj5gToRo3qW4hyn8RAS5ABwmpJZRNcsk+6BcKVIIqneCNv
	Fds3WuLPfhtdaaE+dZgGvxowXegESy2mTHichE0SN4+JbaDt2MaedRKV6E7N1F95
	e6bJUc+D8gDeAN0BRI9zadJ/LlMYm84sRag3GrQIXXQIcw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4decms1uat-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 09 Apr 2026 22:09:48 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50d826ed6f9so32616931cf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Apr 2026 15:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775772588; x=1776377388; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YfJuQz9x8+CxrVM73ltVMfSVgvGLqNbpnCkk5PUIX9Y=;
        b=YYkAGYKbeJI/Y1hV/8o4jvG11stlbzXW2wfmUIvCzpQgKesuJZFz/oW+kxuPLj5k1f
         P/I64IsWjp4oB+D4PB5wgwlO+6F9iWtWAqBs3SMkdQML9WNoWMy07AjecH7u9b/SMalN
         Z/0xwj4Q+yaNbVOngXqBjc0515bmbUeHAYOxltNhYN3DOihHNhLW8U+HFSjuLFYLW+iD
         D0sQ4z3zspenmOYI7TzBdUaGaZQA1hTCphNuue4RvKigLHG9tqKosBjELIR3T0b7OrlR
         n8QIY2QkkT1TwWGcNuZM1xshTPU3GUj+FC016S5PXRTJQJsaeLjeqQjGv1vYdKR4J+jP
         Pm7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775772588; x=1776377388;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YfJuQz9x8+CxrVM73ltVMfSVgvGLqNbpnCkk5PUIX9Y=;
        b=MSwI08t9lBI8Y0rzpGoU/tZlM8DcUhXG2qHwiUWo/n8WPuYF7uMXdgxQgUClTy9f0j
         6TlxQvnj3K4pXpGQHps3yMspNuTiRtubulhrg4lDcA4H34K8fqyApxPxgjdfr9Fys4Eb
         M8WF19amGFbFBlJgs8aZmmI2Z7Gbg7reP5Xa9+Hz5WalN3To2L8f2kw6//L0Zw0UJa1r
         RwepxEixCJwqPkG5ccNXFUUwZwK7dnCujhqXCrRQpisBLAnGRSzu34DWygbVbEMGKoZw
         iY0u8z3mLPl+IiwlIa9d+m1aj9aV0Jy/aZdFFa08yGuEkDbunlYIvvQ7JnRm+HY6mF4L
         H0HQ==
X-Forwarded-Encrypted: i=1; AJvYcCUGkZicNxEwpNFoeiEqr6hLnnhfKFbxmMgbHUZ+32i6DI53TcmES8IuJRQ6iFqkE2/ZRelZ67mR0xLmiQSVfw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyR36T4H+3/zNzH9YbGdSGhW0TP7i0lLV9FGD5Wolf8wz19xomj
	nypnmZ7PveRCwdOLVzbd1Rqex0aL/USegN13yDxs3ZW7iPSXLYnvSs5uazwQZ60KBAW3XTkBEff
	kBr33dtdWtfIx36JNHYqPTs6t44ylgpiO/HDXX4ABjzzExnWrD4d7kUwgS2cmAQ3RZ6PuAY5djS
	0=
X-Gm-Gg: AeBDiev1uYfmb2wC8EBYlYy8xVZbarE/4Oi2U0W+Qx7LV8iztYMJPmYa1FQzThaslap
	+3QmgWygldqgPR1m8l0UYHRbCUksywGvU5p5Uemg4eagElavzmW2vfAGVG7WwyTiojc9NwYe54P
	6LfYI44yn92BP+cZ0Zsb+aboeyQ1EPHsEz31y0INTkil5R8c+PTyUZb2agrZ/5krlGcGCg2UBfD
	Uw6uRUc4GTayVXsnNwajsnLdZC6N/MTI6S6ctSP7ofllO+3qB9304PEf9kmwHWb6WKke7eLCqPm
	t93a3N3BXHDTzIOS44rANuF6AFcBFZpY7NlJxtR+OkiCK17V+CGgzaaxlbSDxwUk+PyN2ykxQ9f
	RXjPoHntrDD4I+h+EYdy3RSsMjm+Q94pDTNHCU3n14W5cw23LVXti8q1R9Pc4QyaN/rA6GbKLj2
	oJ/X6xBlUKEw47tOtR4dulRv3YWDz5mG/QPe8=
X-Received: by 2002:a05:622a:1181:b0:509:1657:a19d with SMTP id d75a77b69052e-50dc1a1ae94mr71687031cf.15.1775772587599;
        Thu, 09 Apr 2026 15:09:47 -0700 (PDT)
X-Received: by 2002:a05:622a:1181:b0:509:1657:a19d with SMTP id d75a77b69052e-50dc1a1ae94mr71686661cf.15.1775772587156;
        Thu, 09 Apr 2026 15:09:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a3eeefbb10sm195693e87.67.2026.04.09.15.09.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Apr 2026 15:09:44 -0700 (PDT)
Date: Fri, 10 Apr 2026 01:09:41 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
        Rodrigo Siqueira <siqueira@igalia.com>,
        Alex Deucher <alexander.deucher@amd.com>,
        Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        Tvrtko Ursulin <tursulin@ursulin.net>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Shuah Khan <skhan@linuxfoundation.org>, kernel@collabora.com,
        amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org,
        intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH v12 19/25] drm/connector: Register color format property
 on HDMI connectors
Message-ID: <kbbkbobybjismej7wiogvmpjdju5zyfkbbwyuafxeajmasuzzv@3ksrtmmvsa4d>
References: <20260409-color-format-v12-0-ce84e1817a27@collabora.com>
 <20260409-color-format-v12-19-ce84e1817a27@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260409-color-format-v12-19-ce84e1817a27@collabora.com>
X-Proofpoint-ORIG-GUID: qHVwobk9LVtAtV_mrXI8fh6YeoMvzp7i
X-Proofpoint-GUID: qHVwobk9LVtAtV_mrXI8fh6YeoMvzp7i
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA5MDIwNCBTYWx0ZWRfX/zsLOJEyM3ih
 VPbkPavRlTjUdz1bwrmw7gowi6iP7zjcEPHZ+FkxybTm6WZg+CbBJpH+zGtYYqp2qF8WB5MKYda
 Rq2N8MmpMNxpy8dyY1FeYu9j0JNP8jQDN1XdGJHCOcRL86nVBOmJU/IYn7sJyxESOr+RAHP9lZk
 jqMo0eapNS7nO7iAZbzi//72H6Wty8cThmrRdqf9D0u8e5+Lv5jE24b2oCKA5eD1iGKw5p1zueh
 4DeEElfXAw2+RhI+qDpxyz9LeVXtKu+hHOUsrHqJD1+UVAdxO3B5hLgcaKH/lxi4mBrvJffMbhX
 TBZ4enOfH2fTY9MIDxqXptPd2DLsxAoMj4PJJ/Br2eYt1iz5+iUI9sXdeBqqD4ehwgmpyXcdquz
 MedkwIUk4An4/14LfRlOz2uFxql21k7cvNotaR+Ls5XNZvob9UDlhksSCCKunudLCnegslPdSj+
 RhRnK258TWi2jVpDEnw==
X-Authority-Analysis: v=2.4 cv=N/sZ0W9B c=1 sm=1 tr=0 ts=69d823ac cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=VwQbUJbxAAAA:8
 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8 a=ZrIce4Gfb_NoB2EXF1MA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-09_04,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 malwarescore=0 bulkscore=0 adultscore=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604010000
 definitions=main-2604090204
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_150949_134234_318EB203 
X-CRM114-Status: GOOD (  14.79  )
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

On Thu, Apr 09, 2026 at 05:45:09PM +0200, Nicolas Frattaroli wrote:
> The drmm_connector_hdmi_init function can figure out what DRM color
> formats are supported by a particular connector based on the supported
> HDMI format bitmask that's passed in.
> 
> Use it to register the drm color format property.
> 
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/drm_connector.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
