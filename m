Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73E81C369C2
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Apr 2025 22:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qe7j4UKsyycLam7X53Q2O21EH1NHZhmPthO/7G7h5Fk=; b=vF8yCzl/Ug7GSR
	dwsISMdRK63sGXLI+sSDhYB3zJ/DdBKqMVIRwoF1FsyA2YO1GM2xUvpD39UnEMy1/DnETij9p9ara
	sVCaNTT52I2Ao1FTHNAyoMhZ9/+MqG6NAXwxMpWmrE2oXEdXvjOe/RPuIvOJmf+MsHtOKefc8CIH/
	bu0QHX0TlMfEdYXJ35q/kUnRIrBXXy32SK2mmv/CDOBa4a14EV0r7oUdgQ1poCp8DgHHKqI4rCTc4
	hO+Z66iuqBsGLbmBI/aV6L0uJs6xUNzHjyuatltl/Q+P6DI68XwvflDHTOcRGFdymIep8QmETXoRZ
	icnE1WKdr0z1eMqn1Adg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6dIR-000000037mU-3cl1;
	Sun, 20 Apr 2025 22:37:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6dGU-000000037fd-1K7a
	for linux-rockchip@lists.infradead.org;
	Sun, 20 Apr 2025 22:35:56 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53KLrdre006565
	for <linux-rockchip@lists.infradead.org>; Sun, 20 Apr 2025 22:35:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yWToxAdnI6Aa9yCRFIPR9W7z9KJYBd0BVcFA7/xQZy0=; b=VETGHU7ZdMmSPg1u
	mm6xJoxzR7diITNxdHOrVBiOWOsUjmYfdOv5dBArLmnkkTpXpazh41iBZ+6r3O78
	XoMjEw0sAZk06VoWWyMoi29CbaHKibMZZyvR+ESTeylwvDCKLuS0I3DXv+CsnDWL
	1BWeCOexNAveWvKhWNCr3xUNnM7EpNyR5OR3CRAAFcxPl5vY/v5CCNatdTdTY50s
	+6Voa1veAjLBGzoSYAAlt9CK9sWSYpFslAZ0rf3NiMoW9kJl4ckf5RTTJk4dORt8
	TT9f3y9b3/JVyC8DGlq4xi99+1CUA91D57lvEb2yi5gqg8A172g1luA4OpSb+J3m
	tEoeZw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 464478tg2n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 20 Apr 2025 22:35:53 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5d9d8890fso792345585a.1
        for <linux-rockchip@lists.infradead.org>; Sun, 20 Apr 2025 15:35:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745188549; x=1745793349;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yWToxAdnI6Aa9yCRFIPR9W7z9KJYBd0BVcFA7/xQZy0=;
        b=W8wPK/Lca4el/WXpwhyd8egeTzizV2xnF++bbShvq55fWXvR9EY8FGiN3EDXbWY1jB
         gVI9gKshy/AkX5hzyFJXV4v4xoq9XfCfh/18IBNDatxo/33k/Gnv/ajyPkXiy9RQmAIr
         fm+iTnLQfyFJpLU7EH9iaY+kTgyBPIikf7w7O+HDPbF++vHkdTtm0ZUwS57y1tCmzDvs
         IW0Rz/1fPKBGYOnX6+aY0dXWouwr5hJtm0KX1fiQYjx+DjnFB+T489X2Kb4fvI3UtI1s
         AmGrcH+TR8044FUaFzV/wBWN9gWopKyuL53h+WPTSoBm654OG0JOMIz7vQcmmsfIyt3s
         pEvg==
X-Forwarded-Encrypted: i=1; AJvYcCVt9Ce3ai1Rw+l9blY3id7EpeslQPhpdXINZcqNcm0bYRgynd4lMckHVxMAeAvIO9MjNB1gUIQUkf8XlajZiw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw4vRDwUQOTD8uAwCS2sMz5V8aj1Fy0x3YCekxLMsQY8f+O/c50
	dNKRYHa9IOivuJgeQQ5YGZz2fJgIa9Q312Y2XTuoLWDe86jR68F71u+gkOSj9upk/7F89YOEgDp
	QHpVRAiRGgiqCK9V/xckE6WVyi1/wPNfsetA0QUKKfqA3dWgS9Oh/anoswOTRKZlgGla1TjU=
X-Gm-Gg: ASbGncu5U4LscvJ7BS+THjbdnJM/DTs20oM9QCuftZjjf5lhc2hDPX72+zb3Mq64awg
	yuPzsGArsygyr4ejThQTPX4ArxBCAR3HlZZAPCOqVlY/T+OCXLt+L33N4jvyGKW6ClcWvw62LuB
	9Khc4Idrbso1Yx/ZiwDKzXcKZwSu2XxRCBTBlA0eUhqgvyp89s6Onnk6x/mWN8XNy5Iuy5EKYrt
	ofM6KEwOE33AHsXxhfmE3Gorkl9PQIMNmBclQagzIoCsVr49195K3iDEbiX3k5hYUI7DC+PnTCw
	9u8+tFOZhvYhuL+grg2PpEF/yGq388uVQIRZ2TCm7wtu3QThP9s8JYUYMoo1rdUwhxiwNO7YESU
	=
X-Received: by 2002:a05:620a:17a1:b0:7c5:93bd:fbf2 with SMTP id af79cd13be357-7c9257ef5e5mr1664106685a.19.1745188549568;
        Sun, 20 Apr 2025 15:35:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFBIsV9h73etG5RMWOHPnVmCLLh+xKK8HOQ3zsl0XthtAmLfRYE2wnVV4KjY87RqdCOwW2XyA==
X-Received: by 2002:a05:620a:17a1:b0:7c5:93bd:fbf2 with SMTP id af79cd13be357-7c9257ef5e5mr1664102385a.19.1745188549177;
        Sun, 20 Apr 2025 15:35:49 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-31090782facsm9022941fa.33.2025.04.20.15.35.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Apr 2025 15:35:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: heiko@sntech.de, Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <20250310104114.2608063-1-damon.ding@rock-chips.com>
References: <20250310104114.2608063-1-damon.ding@rock-chips.com>
Subject: Re: (subset) [PATCH v8 00/13] Add eDP support for RK3588
Message-Id: <174518854674.614969.14581984196577762340.b4-ty@oss.qualcomm.com>
Date: Mon, 21 Apr 2025 01:35:46 +0300
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: bhaGn3vTXDwMmusUXOdrWEJEIsSTLsoq
X-Authority-Analysis: v=2.4 cv=CYgI5Krl c=1 sm=1 tr=0 ts=680576c9 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=XGKhw0KbdVzlZrVxzTIA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: bhaGn3vTXDwMmusUXOdrWEJEIsSTLsoq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-20_10,2025-04-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 mlxlogscore=999 mlxscore=0 lowpriorityscore=0
 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504200187
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250420_153555_034436_B30DCCBB 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
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
Cc: dri-devel@lists.freedesktop.org, dianders@chromium.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, Dmitry Baryshkov <lumag@kernel.org>, hjc@rock-chips.com, linux-kernel@vger.kernel.org, boris.brezillon@collabora.com, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 10 Mar 2025 18:41:01 +0800, Damon Ding wrote:
> Picked from:
> https://patchwork.kernel.org/project/linux-rockchip/list/?series=936932
> 
> These patchs have been tested with a 1536x2048p60 eDP panel on
> RK3588S EVB1 board, and HDMI 1080P/4K display also has been verified
> on RK3588 EVB1 board. Furthermore, the eDP display has been rechecked
> on RK3399 sapphire excavator board.
> 
> [...]

Applied to drm-misc-next, thanks!

[01/13] drm/bridge: analogix_dp: Add irq flag IRQF_NO_AUTOEN instead of calling disable_irq()
        commit: efab13e7d13a641a22c7508cde6e1a5285161944
[02/13] drm/bridge: analogix_dp: Remove CONFIG_PM related check in analogix_dp_bind()/analogix_dp_unbind()
        commit: c71db051142a74b255cb61b84d8fedae3b70952f
[03/13] drm/bridge: analogix_dp: Add support for phy configuration.
        commit: 2c0883459ed62ac65784289e9236d673102eee68
[04/13] dt-bindings: display: rockchip: analogix-dp: Add support to get panel from the DP AUX bus
        commit: 46b0caaad3a5aed817a02b239d4cb4392c2a5dea
[05/13] drm/bridge: analogix_dp: Support to get &analogix_dp_device.plat_data and &analogix_dp_device.aux
        commit: fd073dffef041d6a2d11f00cd6cbd8ff46083396
[06/13] drm/bridge: analogix_dp: Add support to get panel from the DP AUX bus
        commit: e5e9fa9f7aad4ad7eedb6359baea9193531bf4ac
[07/13] drm/bridge: analogix_dp: Add support for &drm_dp_aux.wait_hpd_asserted()
        commit: c8f0b7cb01eadef03558b21245357683409da438
[08/13] drm/rockchip: analogix_dp: Add support to get panel from the DP AUX bus
        commit: d7b4936b2bc0987ccea125d9653381a1a0038d6d
[09/13] dt-bindings: display: rockchip: analogix-dp: Add support for RK3588
        commit: f855146263b14abadd8d5bd0e280e54fbab3bd18
[10/13] drm/bridge: analogix_dp: Add support for RK3588
        commit: 0e8b86b6df143662c631dee8bb3b1fff368aa18a
[11/13] drm/rockchip: analogix_dp: Add support for RK3588
        commit: 729f8eefdcadaff98606931e691910f17d8d59d6

Best regards,
-- 
With best wishes
Dmitry



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
