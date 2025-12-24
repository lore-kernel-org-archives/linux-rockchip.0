Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4827E78498
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 22:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cufbdigmPsb3gm+3HcyyqPi+aTbgWAl37HGbzMLxrw=; b=aWyMVlS9umjt79
	aD1HUEmQ6FquSJ6g/BFKyhC/ftOwJzBqyVmkd6fu+aI6Yuqy9pVEJbLutsqHa8tly8uLhZrHaqsq/
	owXwdcmGef8ZQMa8zeY5NSInWE8SbJ+jtT+qqtiwy6OgvjI9N5HXX27bf6AliZfHov0PtynAmO5kk
	UzZ/NjAkpZ7m3GxT+exK7xZLSzOo0bEakmG1kSWt28H9Keb+zKPyFgjosVwp4ewHXlHqxuUFm7FFr
	USUM/0u+m5MAW3DWofUQtsb4ZgcC3cxrAEF/yCt32YsM9cbm+TqmaHx2slR3SQ3CqyC+69KxNcInV
	GxMSRlwutsTkVL/qCNOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYXPF-0000000HSXD-29d0;
	Wed, 24 Dec 2025 22:32:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYXPB-0000000HSW2-1wyW
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 22:32:31 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BOG2xmq3609962
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 22:32:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L0jPL7mGfIp00qPtZgEa30xxEWpNpT/MXZqO5NVIGKE=; b=PAW8iMZhAX/qVe6S
	UZgFEPbjtgKTrQorh+dhGw1pFjpabn/8S4IKfwAtLujfsLqTSAyiUrHtn5j8+VqM
	LtNq0BBIiBQGDej1WXSlw5O8oydvzuIpQnB+xZ6GUT4E1ZvXjMgddjQ5+IEJ7xGr
	us1fhP3HqW1WsME56PdNBM9i4mENErpHJqSLoi4I3JW6FN1pWFsnA5SsynOi9++p
	KnwCNVLn0Isv4Ozv4uEtlJitSTxSzIzW4BqsmE+iNRzvS/t6DLLwDEqGBIXi1CnT
	Ax6TNsiXP2QkVLdVSVWitkF9AEPeZloze+rTXspo9Alb+xymMxTubvBfN4G3WCmg
	Ytt/3g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b8kburhr4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 22:32:28 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed6ceab125so159315211cf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 14:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766615548; x=1767220348; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L0jPL7mGfIp00qPtZgEa30xxEWpNpT/MXZqO5NVIGKE=;
        b=fiSmDdg2ZmEoC2UoVaXS8j7GjMkWH8Fqn7qKvwj8ghFsLnfZj92o3/kdX2OqvvI4Wk
         Q3ADL35Puifv82AXMPcwipUJK/6g/Fw7RlrXJv7dbo1Pg5PowTj/k9z/h1Y+pDVUUkA6
         7/fF/BwbjaMl/8z3j/9s3WJTh4UAe3ACDLIV5++IyoTsGX/KAplFCOtlsrFj3vpmxsAP
         svvX0Osipc8Swqk0tOAD9ZNPkvkhQv5Dm8a6VcSfEikO/FH71OpU+ufP7emHKZICEUD8
         ph+DpRPkgmu/VHMS6muSzy4iKsvyfpX6DyVLNgKCpzAZMChPglst8/Ag7MkmxE13c2/B
         rkPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766615548; x=1767220348;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=L0jPL7mGfIp00qPtZgEa30xxEWpNpT/MXZqO5NVIGKE=;
        b=tqXppXRyedYBd5h8fSrLCfRocGGMkoSuj2gsWNRNojNyvr0dYQ1zweTuS0K3X0GcFD
         0LJHTI+7icVG2lqH5tIW/4TU/W09FYkkokwtUfc+S/tW01G0buBFkFALKfbdRdyUmFrr
         4ItTgZM+eBYQ3etsymVPYMduPH0GOZsBOa42v0UfI4+93/TllaNzi6/XC+o0j4W2Sr45
         1mivbTnpe/71djD44tHLQuIHfm1f6bs0k37VfhwSV87h+9r6T9bqp8l57n7IBGdvQnok
         F9hV3KsP8PcBiQt6CzA4gCW31cQc2yzjVpIBfk8MBrUnczU4QkORyKHrksl48/xI6Txa
         pKVg==
X-Forwarded-Encrypted: i=1; AJvYcCWsdh3gVEVBFrzOI7vHd04+pcwaIVrGEgcmta2/qhVxrehrlPRcvk+kK7aFYSSYIOXMS1XZ9OaQXIeszhDe9w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwJOPGNIoAJ9mighRmFIOrb2rJB1XD7njIiqvdwYmQ6Dhg16QJp
	IPrKffh+Ag4Z8h0eGaGm2bzFOSMJZFZeesDt2HXim/do6+H5FaXmREW4LN+26bZg59ea7JdyPju
	yz6wRM5iyP0GGqQdSCq2eKOOqHh+euiZTsCigBLz8U+98e+EPqM7CC/NPxzuUmayWK+kXmPjKTS
	U=
X-Gm-Gg: AY/fxX4fbBehil+9x5Tg+P/5UvLHHxcN8VISQW1vu1BlfCfuAnyQWLTjyFUUq1x2ldw
	/HyIknntX7LI3o3qjiBZ46SLFzyq3Q9GUNH2vgvDk3Htg7FIRRnDdIoK6m3zOvNy5itlYjhSezd
	DY3Hs0TKC/jw2yKCTw2+H6jbHK/u5/gfgbno6qtfZjtFihid+1TxdmrUpoDX5s0J0TyXdrUth5i
	oJu/kznAKnf6ab5qZsZQ6tMTLie4WVVgjcglAORA/JgIO4IqWmlSJVPqpSK86Zo37kzM3GGHWq2
	YCN6l9OQRIxWI+AgozFBolIEA+eecsscrIXtOe4difJz4bai966TYzFgm88qfG4Tuq6Osq2EXPw
	eAYitph2DWg16DEw6KZlvpubb3oIpEZ+GaPS1xkeFP204IkkGnSkHJkEMuZYHvrwbjcqi0jN+tc
	yYObPjVXTwP4kLntvvt+W67Gs=
X-Received: by 2002:a05:622a:1b92:b0:4ec:eecf:66fc with SMTP id d75a77b69052e-4f4abd799ccmr273103951cf.51.1766615547906;
        Wed, 24 Dec 2025 14:32:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG19rNmv0We3MFkyk6sQSUrSfINXHL2KxbCfoVrSCCgav+j8dPUIqzPwOReGX6y0l9q4HhyGA==
X-Received: by 2002:a05:622a:1b92:b0:4ec:eecf:66fc with SMTP id d75a77b69052e-4f4abd799ccmr273103711cf.51.1766615547520;
        Wed, 24 Dec 2025 14:32:27 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38122693ad3sm42746951fa.49.2025.12.24.14.32.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 14:32:25 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: heiko@sntech.de, Andy Yan <andyshrk@163.com>
Cc: mripard@kernel.org, neil.armstrong@linaro.org, andrzej.hajda@intel.com,
        jernej.skrabec@gmail.com, jonas@kwiboo.se,
        Laurent.pinchart@ideasonboard.com, maarten.lankhorst@linux.intel.com,
        rfoss@kernel.org, simona@ffwll.ch, tzimmermann@suse.de,
        knaerzche@gmail.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20251016083843.76675-1-andyshrk@163.com>
References: <20251016083843.76675-1-andyshrk@163.com>
Subject: Re: [PATCH v8 0/2] Convert inno hdmi to drm bridge
Message-Id: <176661554529.2411515.14933651749352627609.b4-ty@oss.qualcomm.com>
Date: Thu, 25 Dec 2025 00:32:25 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDIwMyBTYWx0ZWRfX+75eBsd6WCR3
 NOQqXoCmiVzIlt/lo3RGHI1z4Gt4HRf6t1MkgQOgJUnWOj+rE0URWJcOX7n57Itv1ybYws19S0m
 vJQpeh/Iz/odFVfCq+3H7yVMgX//Vx0EyWXpm+OjXnXRopiOOrpfU6IP80KNVEOLoVmrPX+d78l
 rcz+5HlEF0Eaq+Y6xg2o/XQb6n0N/8yGQKwssmb/mW63X3lb5pYnnkppgl4wHy6zNsTAWX6NfH+
 1duXW+b1gRtwx5DoEvt+Jb/9fnLsJj+7294oRGW5PheireJt22TWS/BhXOUOq2T4PTIra1sEX4C
 3p7SGuswXpi4pDHjjoL7YPzli4+Gerum060g6BxPeuuxYZC//nOUu80CGvTN2LVN9jssWuWysk3
 8oC2OW3bWHYiqNMlRrrqOhfYmrSsd7CTOwolRuzQULsH68VjauGH2lSEWcMKxVS1veVZQpGBWdk
 aRmTFFTkeaEy6xQ3MgQ==
X-Authority-Analysis: v=2.4 cv=Vtguwu2n c=1 sm=1 tr=0 ts=694c69fd cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=Byx-y9mGAAAA:8 a=nruGSBBzdhYNc4dVb74A:9 a=QEXdDO2ut3YA:10
 a=0lgtpPvCYYIA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: FoBN1RQ8-ieglwBkXjecRFBJTVKt2hQt
X-Proofpoint-GUID: FoBN1RQ8-ieglwBkXjecRFBJTVKt2hQt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 spamscore=0 bulkscore=0 phishscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240203
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_143229_712325_A93EF86C 
X-CRM114-Status: GOOD (  12.19  )
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

On Thu, 16 Oct 2025 16:38:30 +0800, Andy Yan wrote:
> Convert it to drm bridge driver, it will be convenient for us to
> migrate the connector part to the display driver later.
> 
> Patches that have already been merged in drm-misc-next are dropped.
> 
> 
> Changes in v8:
> - Rebase on latest drm-misc-next tag: drm-misc-fixes-2025-10-09
> - Link to v7: https://lore.kernel.org/linux-rockchip/20250903110825.776807-1-andyshrk@163.com/
> 
> [...]

Applied to drm-misc-next, thanks!

[1/2] drm/rockchip: inno-hdmi: Convert to drm bridge
      commit: 969325a2597ebc4cb001a92992f06f698ab2b467
[2/2] MAINTAINERS: Add entry for Innosilicon hdmi bridge library
      commit: 130343ee6bca9895c47d314467db7dd3dcc8bc35

Best regards,
-- 
With best wishes
Dmitry



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
