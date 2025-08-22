Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0052CA0EFA
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Aug 2025 06:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvlHB0GJzCsv5h10YtsfDTa5RwyAmg2lFw0h1Q9Wxts=; b=p8Ih928dJ7Wh20
	LLV1YTX1410KX1HhP+Tr3vxfUmjXaSVw5ZEfSPqi0ppEfGhPT2x3iVmkQZyuZzj+1QNuP8RKu/9pG
	MIpPjsuLkb3JJfYCuSKWvmginQYOH19o6YgcGovF27pp3CfONi23PU54bPiVwKBkc7tNbNWydsyS2
	FwfutCsRkYubetV0sg8JhuoZZ9Uo8SMTB5mx9aMsVp8qUvPWtq6zzflqlSNfPmFum6ibD0EwzqwYN
	wEEXp+nW4C+8IqvWyYed4ZLwU+oQCvtNF0h5bgC31kcyqptQhw8ciPLULRjB7JWGuDlhALf4c/3DZ
	+BHqOwiJ7fiyhlo5lHVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uphxH-00000004EUE-0ZB7;
	Sat, 23 Aug 2025 06:42:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upWFT-00000003IWY-0WSM
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Aug 2025 18:12:24 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57MHVCxY019389
	for <linux-rockchip@lists.infradead.org>; Fri, 22 Aug 2025 18:12:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/9F4kF/0PG0gqpOGPryNaB+t1E6t5FiaNAX6DsaIWBY=; b=jIkIhtgdj5s0I7Db
	TnMfmrdMghAf+6PpmRtcXHMhhLOut7gGkaK1ibTUkBVDIeBKf8d6RUWjayhKnX5h
	bCKd2EWhQ0ZEw8TUbR3xmxsuoDuyYDlZHv+3nE5y1fb73/6lQYfqCBYc8/Y+kknX
	oOEgAi7NKytojhlzZLvyKo/vxb1xZ/dTu8mBROnHUP3szxGUWlO3pLadCOXnWCLP
	Y/H6d2K8O5zwsBE/P2m7osqazaEaulLzY2VpvXE9olmN7OkdcmPfKYdAXDysVH2h
	+P8T4ECoUMgGVKoNdNn3eBJ2WgZECC2OOg9fV57FAVh3yc2yJC9E87jDJIfTIeH0
	lCuJuw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48pw10r44a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 22 Aug 2025 18:12:21 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70d9f5bdf67so20768496d6.0
        for <linux-rockchip@lists.infradead.org>; Fri, 22 Aug 2025 11:12:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755886340; x=1756491140;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/9F4kF/0PG0gqpOGPryNaB+t1E6t5FiaNAX6DsaIWBY=;
        b=pAzPGLxzhODM6QCTVdEenBOh7W5a/FtvCPobeAOe8o2QppuhkojwuJ0Ae0RZSqTqeU
         hbRq4iOAqHS7F3/G1QnyANbemmZZ2oz6eVJ2OQ5CqqzMfwag/pELS5BlKSGdFIFMl219
         Ev94zs5gHSU6i6cT+eY8EkZdym0XOOuN9rd103Eqvk2pRmWUF+yI6W3GfDs/sLWThtXW
         MvQvXJCJc26LNx4KR4tDoXD68CtnIqW4i5yN1sBFyNIFT1c0kH/PFcF8WkpQmqVqg5aA
         ymad3dGkand2taLu2l71tVuL9viSNJ7gskf71rgGwsh7vwDRqtWnU8pUeV08fPOb99B5
         721w==
X-Forwarded-Encrypted: i=1; AJvYcCUBpJdBvK+KPNxjYZxp3SfcegtNiQ+MN2A+WEbii+xodW0XRu0fjWkmg+R6hiilK07wqJ0T9/g28sZY0EJQCA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/SV43zLbDYSEqFesoM6UoF7qeM7NFoewP6vmldT7pq7mHV5qb
	Q4Hhg3KYc+bYI73gD3b3yxGaBqhXjucF3dc8S4h1HZh46xzjPKz9NEZaWWU6w7pv02DXKigs36Q
	U+3sprIgUkFSMctW5EjeWKE8KY175FmEQWaTfwWDEP85eJyigtQRlHDWPx8GfzhDKTUN98KXcr5
	M=
X-Gm-Gg: ASbGncsQ35XK2re5oeI1WwHmh6iY6qAKvTVU+IIzD+S8GC7+9nMGcImbCpxceNMIFKW
	odG/QTi+QofFLAAAk099gd2p6poolDPQd32odCbZlJx9zjRvZsVCHisw9tPo8KVbwqAN7WH64Vd
	nTpVfL7LScOJEAibkz6GcEk5YRhaslyrxMh8rL6FrR5ppJgZ5QB1DRM0ChsWJTtSK9tBQR3D0Da
	FBQ71qqpSbPamERivsArmEZGNtT6izrvK/SPUPzkK1v19+G2sTMNgL9dolF+4GIa4xG8oKFI4h3
	f4AKPIB5NMEHmrajdnzqVvZPViGVx/54G/mMDcaIRYATny65k/7Czt74g/JPN53LGvDyX22jRWH
	vBRVCQfg/Ryaij3tlFUoys2VrKw2QF3EYxp6OfV8pZRMAi0Mulw4r
X-Received: by 2002:a05:6214:2244:b0:70d:a4bf:66ae with SMTP id 6a1803df08f44-70da4bf69c5mr19413866d6.12.1755886340091;
        Fri, 22 Aug 2025 11:12:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZ9vrMkeP87y8XS1HYbM10ipCEtP2NQ/1/i89/UBtmnM3Uakd6ZPlSGQcOg+/ENSPZGgsjeA==
X-Received: by 2002:a05:6214:2244:b0:70d:a4bf:66ae with SMTP id 6a1803df08f44-70da4bf69c5mr19413446d6.12.1755886339585;
        Fri, 22 Aug 2025 11:12:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35c01e5asm89897e87.26.2025.08.22.11.12.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 11:12:18 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: heiko@sntech.de, Andy Yan <andyshrk@163.com>
Subject: Re: (subset) [PATCH v7 00/10] Add support for RK3588 DisplayPort Controller
Date: Fri, 22 Aug 2025 21:12:16 +0300
Message-ID: <175588622226.771426.4504932000654632813.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250822063959.692098-1-andyshrk@163.com>
References: <20250822063959.692098-1-andyshrk@163.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIyMDE2MCBTYWx0ZWRfXyeGbTZYsoMot
 TCaN5y4NnmkWd+JNu2yI0FoyFSV2RM3LwlSE2ISrB9TyLpJgzCMrzrTTRDnOFZihM4Jr/30ANBE
 SnrPOeVZelai1Jx6YyIAPXCKH+P8QtDFKZiWfK1e0ijfdcZSi3BusqLyHhtv7iNGBQt2T+Rw1NR
 zesO/9+j2b9ve8kUJHUlwrYtTorVyqn2qhvaXgMpl0pMcfvxq7fkTtfbXsh4kkVZVRczzwB75MB
 vr0Ssk1qbfDE3it81aGRIVrrh67ns9xFE3r8CjW5xL/ms6mGam5yKowIGZF8+k41cSHaDgt8GiD
 zV58A6JjobtiDruKygKfugh/mucC/G98mLybaWbjLOFfoPO6nJ2+nsBv9xJ7QrOpP3Qls/RWfdK
 CR/ufiZn
X-Authority-Analysis: v=2.4 cv=eaA9f6EH c=1 sm=1 tr=0 ts=68a8b306 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=s8YR1HE3AAAA:8 a=u1nK3qfxStItYws1ViEA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: jDR8hRqe_rSM-jKIsxvDg4pDzu4UDWqc
X-Proofpoint-ORIG-GUID: jDR8hRqe_rSM-jKIsxvDg4pDzu4UDWqc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 suspectscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 phishscore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508220160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_111223_283899_46DAF3D5 
X-CRM114-Status: GOOD (  12.71  )
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

Applied to drm-misc-next, thanks! I will wait for a few more days to apply the
rest, maybe it gets some more R-b (especially the MAINTAINERS patch).

[05/10] dt-bindings: display: simple-bridge: Add ra620 compatible
        commit: 480a76c64f4f6a7f8d4aa2ac86cd2178687716b9
[06/10] drm/bridge: simple-bridge: Add support for radxa ra620
        commit: 73b81fcb12df1051bd169e488245f8bf4c37bc93

Best regards,
-- 
With best wishes
Dmitry


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
