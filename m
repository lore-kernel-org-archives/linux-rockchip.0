Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84EA0C36018
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Apr 2025 19:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SEnluuRwj5+hLuS5RZ82pit6nlsphjxPx3XFx++IGS0=; b=D6KCDvXQnYKVP/
	uqexz47vE5f8noqs2YP95ysHOJWB6iRt1usqqCEsQdHgkQebwtlRnBWuK4qbaT01UjfZ32LwZcr3+
	eR9ACBdKj9V3wc4ekEEOK2WZMIpUETXgAiOTaF8vXzM9aSTaL53ffk+lj+DTWD7lnhcqPnN+eKEh9
	sJgLTk5iiSKLlYYBciAzMh9vfc4WjpH8sF2LIeSOaOOlZEIvbdSLs/rEKtSYEcGVodQAXtW8WS5+e
	giZSvfLY5CJY7BhBmMYOCZ+mY3tBP96xYZA7I3PhbLJe/HD487+V5SuO7uo3TshRBApchOhbKAITi
	3VLJLghTiVYexw38HhUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u03OA-000000070KY-28Db;
	Wed, 02 Apr 2025 19:04:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u03O8-000000070K1-1uTQ
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Apr 2025 19:04:37 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 532DR79J024628
	for <linux-rockchip@lists.infradead.org>; Wed, 2 Apr 2025 19:04:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gWBJkjjCygBm9fx50is0sIfTFnXUE+TQIDtlji3JDMM=; b=VWKsLfo4MC6PKo8q
	pz1Aw06MkdrWfhQSvrFnoRtooOhdVHe5D0uKDLMDDvcPd/Q934YVewQ4TO6YoIe4
	Vv0Sd841lWIQo8ayg7kDvADRq4bOWCKeXabuQYFDxEMQcmvjiSq2BajVlDIwjEAO
	p/0Fe4efK4RMD5fLAbOSAQXimMyBszuIeFNIj+qWaLMI7OzNTF88ZY11l7Zp7vZw
	EaETPZ/ymAcwMHGmjeDggea3FpN4l3wHgEeC1zFawFIl2t6iG4uyfGJB3Lmfum96
	kS91FpuBu0DVEAGfCzsMj84d4CGleOzIWYwHtI7/wdV7aFQd2Y8WQ5v5XDf3iOGZ
	WJ5jiA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45rbpywhk7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 02 Apr 2025 19:04:35 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c54e7922a1so16680485a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Apr 2025 12:04:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743620674; x=1744225474;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gWBJkjjCygBm9fx50is0sIfTFnXUE+TQIDtlji3JDMM=;
        b=SyZ3g5PFSETD9K8RN4cNtVN5ySQNozsrzSD6dVURyAdcKlKk9NJHPT+9d6s3652Evg
         FfLulJf0/1V4RS6HNIpTJUj6zwbx/Q5Bsjv05+SyjPLnSt//d3nYxkY0kUZodkgMS752
         DV6HGOS19mjykKni1Q7QQJqUD6npb+Vf7oneUNdwO34NiqPwlPo1UxHovwHHxCQJUF5X
         rBeQ8GM02d8Q4gDCd3tTabGOfU7MPlEm3zt1wW6ftRRHYiMOdm4yU7x+7fsQA+yGcnL/
         OGxE6PxXZyAHu63IDBc449jc1MopYHetu/fMR+tjUBqSxb9YxCbZcuUwa9y3Se5WQY/S
         N/mw==
X-Forwarded-Encrypted: i=1; AJvYcCVbx2h7Yb9M1Rr5ToO24ObsB2jbnyHUHyhPeYk1ao62/tqshLAAlvpfZMTPsa8s106yRlrhdvTKEASzMYao9w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1uxlckcklRXwWraYVwoHwdg4I8G01D2m7qRxo4jd+ptg2p2QZ
	dHfDAZ5VW5WtVtjpvnPxy2iv62UajqGiiNS54QqgXt4pt8Wicby7oBl9TIRXuPaT2QnfP03XdOz
	lQUiBFPV98CYvlSgwJyi0NQYw3cj5w6jwqmu52XWvF5Vf/XIyaM9rsimXnLw22Y+i+moKV+w=
X-Gm-Gg: ASbGncvRcXosZoUhUXFRbKTvJASDyOh6qNhgKJjar0U1F/h9WXBVgYRK2SmK7wIyH1j
	LbNqAI8Ere2LKDx2ZiRaT54lwXMg15YWZuq940AtOVP1uO4FtNe4gGPUENKT3Gy335xYHn48tQ9
	UO/VVnjOJXsquCrYfwfkQfSi33rB4MhuJ7Uf3ndQ0m1QWNe8wr9H9AJV1He41vypvhYS1pR+pWQ
	8+WGVelVfE4qxmrCytjmhuro3bJYJ6nS45PvTA/tZEvgqz9ocNtoO6oUs5/xeFN37OOHS1egesa
	6pLRM1SvBaFaQQf1NqDvX75hhMIs1oqKcv9PpqD1knh3iccRFn19ky63WyPftJOOSp0Z8B3Ai3c
	kxW4=
X-Received: by 2002:a05:620a:2a0b:b0:7c5:a2f8:e6e4 with SMTP id af79cd13be357-7c69072add2mr2438611085a.29.1743620674521;
        Wed, 02 Apr 2025 12:04:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHBur0fWjo7yOQcPuAucUs2xiLxZrEWFnw5KrVRkA8NKQ4OAfYtC7kDB0iXCG6T1nj+zDzWKw==
X-Received: by 2002:a05:620a:2a0b:b0:7c5:a2f8:e6e4 with SMTP id af79cd13be357-7c69072add2mr2438607585a.29.1743620674066;
        Wed, 02 Apr 2025 12:04:34 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b0957f9b7sm1730436e87.139.2025.04.02.12.04.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 12:04:33 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: lumag@kernel.org, Andy Yan <andyshrk@163.com>
Cc: mripard@kernel.org, neil.armstrong@linaro.org,
        dri-devel@lists.freedesktop.org, dianders@chromium.org,
        jani.nikula@intel.com, lyude@redhat.com, jonathanh@nvidia.com,
        thierry.reding@gmail.com, victor.liu@nxp.com, rfoss@kernel.org,
        linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org,
        Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20250318063452.4983-1-andyshrk@163.com>
References: <20250318063452.4983-1-andyshrk@163.com>
Subject: Re: [PATCH v2 1/5] drm/dp: Pull drm_dp_link_power_up/down from
 Tegra to common drm_dp_helper
Message-Id: <174362067146.2885153.4786307891834552899.b4-ty@oss.qualcomm.com>
Date: Wed, 02 Apr 2025 22:04:31 +0300
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: yYY61IDB-gkbcS4JQvxhSLAwzltQ63yr
X-Proofpoint-ORIG-GUID: yYY61IDB-gkbcS4JQvxhSLAwzltQ63yr
X-Authority-Analysis: v=2.4 cv=ZNLXmW7b c=1 sm=1 tr=0 ts=67ed8a43 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=3lv0NsTm8rjeSSnkhIQA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-02_08,2025-04-02_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 mlxscore=0 adultscore=0 mlxlogscore=966
 priorityscore=1501 bulkscore=0 suspectscore=0 malwarescore=0 phishscore=0
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504020121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_120436_506873_9CC31577 
X-CRM114-Status: GOOD (  10.38  )
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

On Tue, 18 Mar 2025 14:34:35 +0800, Andy Yan wrote:
> The helper functions drm_dp_link_power_up/down were moved to Tegra
> DRM in commit 9a42c7c647a9 ("drm/tegra: Move drm_dp_link helpers to Tegra DRM")".
> 
> Now since more and more users are duplicating the same code in their
> own drivers, it's time to make them as DRM DP common helpers again.
> 
> 
> [...]

Applied to drm-misc-next, thanks!

[1/5] drm/dp: Pull drm_dp_link_power_up/down from Tegra to common drm_dp_helper
      commit: 09cdda7a60f45784cebddf1fa2109d6279f9890b
[2/5] drm/bridge: cdns-mhdp8546: Switch to common helpers to power up/down dp link
      commit: 23ee8c6b34fdfed970e2fae2b2ac5635303d77b8
[3/5] drm/bridge: anx6345: Switch to common helpers to power up/down dp link
      commit: 4adde49ba497ebd376a164c517152670e4f8eedd
[4/5] drm/bridge: anx78xx: Switch to common helpers to power up/down dp link
      commit: 39f14a01994b5102bdc4632a339a59a03a2f89f3
[5/5] drm/bridge: it6505: Switch to common helpers to power up/down dp link
      commit: f09d9f921f2b7b78e73e9f192a9c08b534b8e5e5

Best regards,
-- 
With best wishes
Dmitry



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
