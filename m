Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38AB7CA0FF9
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Aug 2025 17:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wcvMBAsg4I9IZwLkTitu/n1n7dnq90zHS/suxGLGPP0=; b=Dl7+A8pCd452Il
	ZnbCL/wLbx3Ru+JpBWd2OIQ443XO4z7hoqbJ3flTTC3FvUUgb42uyWOHC+FJ9T6IOA8cVadugzPT9
	s7Ar8dqbWrQ21RVAxf3PV4eK5q4IndwOH3PbV1NecnlvhBjysFp4GkRo8OI3H5+dZL16kPCCCPvbw
	bR4ts6xirp0eNZMBNawNn05AKWSGsTGlc6W/aJ21yRlQedxIACeppTVY+8Co35N+1aFSAvzXGc2K0
	BG0UsjcrFMW1ybacDhPrLvQp8VUorqgqJtaD4wpQPfTZ17hfwcnwRApnfem4RW2AmelUVzOaUAYzg
	4DxTOI7vG7Zy2eQbKZmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urgNs-00000002SgF-2Rlz;
	Thu, 28 Aug 2025 17:26:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urc6d-00000001cgy-1wO2
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Aug 2025 12:51:56 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57SBL4bU028921
	for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 12:51:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Tfd9haVIEplY3fZh8UFTDF44fFE4kBR445IEmKqTe9U=; b=ZrFl0OVkLaHoo7aQ
	7+aD+VZtRnu8N817LDxDuYkmmvpgecjqD3xjzeXK8zxdrHtVhKhBBV3HtAq2C7m6
	BvaDagOQfMowtCAlbn9Vq5j8o24PzP+nAKknsqYmOcAi1jfAqaDqNJTiWctNk4yE
	0DTDyTdCZzYLKHWR3MfS9+k+73aj+WcGWE7t62qPPi5mNr01q6XEBGXiPK5tncW0
	k5mRIP0JtYijbDoUVh5Svjk/Oqw3pyysNmtFnnqwLXRuV6VlrRe3BLKiZ/j1THsc
	CZk58IodJhZ0KzW0rdnc6GQ0VhDI6UJCR0fxoa9kJ8MqRMCaM7Ly23MhAnzDPT+M
	RH0/hA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48tp5k06yx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 12:51:55 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70dfd87a763so1905656d6.2
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 05:51:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756385514; x=1756990314;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tfd9haVIEplY3fZh8UFTDF44fFE4kBR445IEmKqTe9U=;
        b=EBrWE1x4wZLcHRN6FofcG8/ZTFkSNis30yI3I6DQDz80O73XAG11yvXeBsHAe/mFsd
         GPQp86eSY82W44SE6H4KCvl8EMN55y7a1vHqJzPQtBBNLzOpkG/+hAdcFgPuXbP8WtbW
         jab7teogS4wMHNUjSn6gBTcqE/Nfujx41CzYO1N1sdT6CmP0+bLz0wgzfH/4K10pRfAA
         vvZ0cCdCBxSmmUidQjsOpc2O5czgI0u9JT5qjf9kA5xfe2CMoOiDIg+B/TZKHNbUTv+q
         QXWf6S/Rj91HjWvruZsDgEN3yEWr/CbzqffaKBlTCtRmJvvrkL4AJVkkugbOetFRZg4Q
         qcHg==
X-Forwarded-Encrypted: i=1; AJvYcCV1m9fw3QFkHv8q3CQRKIE2uGcPk7m0L5hq/Ngi9fwpC4F71HchOtNXj1D46ZvGOMkgaqdWdev+oZ/gopI1kQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzV4bSOJOtvxaeqmhU6UqPw4BWEkUJX2eMJevlqbqn6y2PhCwnn
	tOboJ5LLTqWlvy0NCmqZ9kG4hmE2XcAb4r+BG4GTa0uVT4KAtDrYTyutsQS8Kv8gXPFV8wtLNk0
	i1UnsoelpNleIGT9mYCHlZIecLOvolmd4pGjwgaoS8QbK+tW0qr9OU7QZXt6RtdPnmq4XKXmKS0
	4=
X-Gm-Gg: ASbGncsmlGNPykrlmmTXQOi41xcUMlzCNSqQfDK+x/guHuWZ6/Ume7fb/2D9GrhdAHl
	Fwu8VhFXR4IataDb/ogMIFLemThF/pJVfMyj7KSML7ZPmx0JgeQcGN3Ly6Wb8dgb1Ak0B1xVk7b
	f47fHv6AFlkEP8+LW7LuDJVjnr/ukqZNoE6oGPMxhBOUjQv7F5sv+oVfuLxW2KhwJIWhwBij04w
	sOPYqmjGcM8K9bQbLxIMjnzoQZlmXBaInDgGpqkmmwEqA81ZdlxSL2PEusCn6mctKatip1FlNWo
	qkXsKpa2/1C4o9soFuX+RojK0132GX3pVjyiJD9/7FMvQY09SMUrC7HXUNgD9SPWPqOTrRq/i/4
	9aWVtlnF43JcRbPvS5Nc/GssMyRVz32S8hghaF4Qrxd5B0fRQRgJ0
X-Received: by 2002:a05:6214:4e84:b0:70d:cb0a:51a4 with SMTP id 6a1803df08f44-70dcb0a5584mr139047596d6.67.1756385513571;
        Thu, 28 Aug 2025 05:51:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFmlfk41J1Q4Xm0qZ0A0YrWOLqz/9Wocie0W7tu8ccOHfhHHejewxQGjgn8RGDCYKRuo/fz6Q==
X-Received: by 2002:a05:6214:4e84:b0:70d:cb0a:51a4 with SMTP id 6a1803df08f44-70dcb0a5584mr139047336d6.67.1756385512930;
        Thu, 28 Aug 2025 05:51:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35bffafcsm3316070e87.17.2025.08.28.05.51.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 05:51:52 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: heiko@sntech.de, Andy Yan <andyshrk@163.com>
In-Reply-To: <20250822063959.692098-1-andyshrk@163.com>
References: <20250822063959.692098-1-andyshrk@163.com>
Subject: Re: (subset) [PATCH v7 00/10] Add support for RK3588 DisplayPort
 Controller
Message-Id: <175638551173.1202.7687103827759188815.b4-ty@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 15:51:51 +0300
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=V9F90fni c=1 sm=1 tr=0 ts=68b050eb cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=s8YR1HE3AAAA:8 a=td1j7nzBk3E7ehaXNNAA:9 a=QEXdDO2ut3YA:10
 a=0lgtpPvCYYIA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI4MDA5NSBTYWx0ZWRfX9xyldXp1unup
 UldaihOz2NuyQBFOvvvS0HhlPUMRpTI4w5/cZLe7p8Y7LjhiBeXnpAzT8Hj6bXbrJ7etPNeQEs5
 a/MIxzSE22N/A2Xl4iwcWgDKod8Q19R0lT7HrT6px8WPdLQ79WET7+zy26/L2qUKhAuQ9CnU9TN
 XYEPEZwHiF4Y/0sMizyIVygoDxx2yTibF82VABrRuhleHze1/GycUFiz0xI32oyG4rMdMW7yfH6
 KJRFOF50tHjtSWqbw/Xh1B9ssS+JRv7MGcPS7bpYhWMC5dbyN96RZM0+l5U7hDCsYOfq+/MjxOq
 FVujezbmCFmAjKzQE6NsRnTamSUdM75fcTR0TaB90Wbvr3V8V3OY8jucEN+1Ax3xGQ/v2yaye0y
 1Ole5rQp
X-Proofpoint-ORIG-GUID: kfzaHyHcUG6XF3YJkVDG_SIld02xKw-p
X-Proofpoint-GUID: kfzaHyHcUG6XF3YJkVDG_SIld02xKw-p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015 suspectscore=0
 phishscore=0 malwarescore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508280095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_055155_502162_7CDE4D28 
X-CRM114-Status: GOOD (  11.01  )
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
Cc: neil.armstrong@linaro.org, sebastian.reichel@collabora.com, stephen@radxa.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, yubing.zhang@rock-chips.com, naoki@radxa.com, Laurent.pinchart@ideasonboard.com, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 22 Aug 2025 14:39:44 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> 
> There are two DW DPTX based DisplayPort Controller on rk3588 which
> are compliant with the DisplayPort Specification Version 1.4 with
> the following features:
> 
> [...]

Applied to drm-misc-next, thanks!

[01/10] dt-bindings: display: rockchip: Add schema for RK3588 DPTX Controller
        commit: 2b036b13c8c2cadf7a27036f911ec99742504fce
[02/10] drm/bridge: synopsys: Add DW DPTX Controller support library
        commit: 86eecc3a9c2e06462f6a273fcd24150b6da787de
[03/10] drm/rockchip: Add RK3588 DPTX output support
        commit: d68ba7bac9555d05e2f5b310c898b2a5c7eff174
[04/10] MAINTAINERS: Add entry for DW DPTX Controller bridge
        commit: 0b6da6d3a8d5391ff9da2358ac5afd8b7badd943

Best regards,
-- 
With best wishes
Dmitry



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
