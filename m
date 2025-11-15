Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8214CEACFB
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 00:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vB9BQXSg1UWsNDv7q+1aCwDTCPsRGf4o9qJ3V8623kE=; b=DQz3LVwvrLbVfN
	kgc4VoRevT24RCikfzmOKZaBYf7GAul+QlN3kCN20aisC4G7CHXGiNjL5NOmXAYmEsFz4KsxcjaKd
	O5cTtcqGk6W4dEU/6TJ7xp4lkuPrJDcjKSS0iFQGGa6JCJc9gCTjb8U5HmbnrvV8ZeEj40eiekHqp
	yHoEP+YrEV8v8AzBsf9JrMICLmiEq85/k0ZXN17dzBzwVtX75UwsTq7JbCTN/GkX4txLk4gfHSzdT
	t0ymBO+izlK7TfQFpSSO1SxDxLaT/rdLqLrM+c3g2HpHed/d1ZkJlIAzR8bMOtAX6/Ikn7j113ejF
	ektgPSDxIJa6NwQkiSoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK4UZ-0000000DIlX-19J5;
	Sat, 15 Nov 2025 00:50:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK4UV-0000000DIji-1wH6
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Nov 2025 00:50:14 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AELDp80668921
	for <linux-rockchip@lists.infradead.org>; Sat, 15 Nov 2025 00:50:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Qs9XNl6C5ygh9qZUkoG6dSnI
	2cAtbM33aIVEqpZU3HM=; b=LxUYZC8H3vZCJgDMaslziF+/Q+DGDpgidTjmxz91
	36M9bXPQASL0FtjnxYfrUVa1RxfX/6Gx0QRblsZWir9/aZGk9+AO/Bx7/lK6htOu
	Kld39VgMAHM2tQvShW6rixT4ooi/0ZDEkCQl+CHmcUqd7XlYKDhy9nIkb/l1G30P
	8MUMR014eDXOtxX+gjWzx34mcc9JA6nEV5BeVunCkD+NB3z6IefYWUeHupCjzzTd
	AzfeiCztR72AYwahKrSIIHEMhcWT5EQsRTFBaSGjKloFPxSK9SPAbPxvOhpNAzVX
	fLJMN8YRUPS0S07zPbKtVfvjn6QEYSfcvTnlirAT3vmhkA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aec5d8cp5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 15 Nov 2025 00:50:10 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88236bcdfc4so69958046d6.1
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Nov 2025 16:50:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763167810; x=1763772610; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Qs9XNl6C5ygh9qZUkoG6dSnI2cAtbM33aIVEqpZU3HM=;
        b=EBDrYjBSuS2mXLaq/wIXjr6kDLPONQONu+w3oydwcBsI0gRKDb/L1alXYPhBnq98Uc
         3NVR7++BNrXppR10flgUEQDc14WRppnr6Wv04SafQbTGVLwSk6e+KWh5UIdlQD7AP4Cf
         aHaIh42+QinsmCL2zTzS7XuzUuwByMSeL4Eq1AjaEzwfziKLiMmQVmpF8GXnf5Vpv/K7
         CoJEDr9CHQ29iacARH6nGb15z86YYR/E/0L8qJqKpALdUtircHOesfL1aEZO6CwI3JQn
         zMeneqYC4a7+f39RDoH6eqlhgK5EsPjy+5kowY3mZcw9Lg++qt3bCgDyWVbppQTCbRvk
         fYWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763167810; x=1763772610;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qs9XNl6C5ygh9qZUkoG6dSnI2cAtbM33aIVEqpZU3HM=;
        b=c0oHF2uax1a9Z2GM7asgvN6pFXVjunkuNwSNVsG8ntiJuaIe8t9ov6zZTZZAo/rjcQ
         2XSXtIzDaFfA5cZLfh64csFquBIDBzBQ38rPwvwp48k5p1BeyxuvbQt9+KcU/9+70dmQ
         SUtqjT3fJfZB+f8wNwHMDhibdpEApvO2SqRq19+IKxcFMRpEedPumxo7J5XFcnw6v4sS
         CbQsY2/Mt3N1W7yXsn34tyIyrgvhfvWtV1++rk8av696tE3JNQgEofueepftna+l1mT9
         iDZsUkgSv12tZKWx4675h+QYbS4lgkuXr1kYT00F003D0hU/mpKbyOlwzPoMNVArMxXf
         guEw==
X-Forwarded-Encrypted: i=1; AJvYcCX47Rf0J9EHY+CENA9hqi6WbiwWGz7f6PrVG54pgbxv6xgN5fsStu/AwReR2/5PproKwekk674p2MaogxHpzg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxXomOa6SLD86N/KwonOgZmWYsrP2sP4VFbUYp171MFFmMnJ/v5
	dv2jpnailDZiQjXPEI7yvlmgXDHjBOXU5i9hUpm1QNZbvXzRR3epWOX4avwHMzjITpyYJ2eMUOv
	xfjkhmpJGJSbkTNoPrslD4qrGYqnfjv7apXyRcQv+vrLvt9iMOM0UosnF/r3zOmuot/zZjaqgvW
	w=
X-Gm-Gg: ASbGncsSKbRrBb75C0JLAOhcuT7og3Cnpmzco971J3R3ZNwGxQRLcn/dxJ7ZhPC7T4X
	e1rnmup+b8ONCfrLSow9js5mD4a1czeal8sCr3WCZ7fKa4CkEiTmy2bcRVWewci6H2JjtpnKrYp
	bx0VRNb0JXeqvAmORo9RXrYmBAr9BhkAjRzb74km0/3p2RIo7k4tmmJ3hi/SIrZzrYddX0zlvgr
	AdSMZJc3B2I6J8RonQmXJzT+O0QBdFOmuAbhA0144sirZGApsUciUhMDbst9W/nfHJOfAd50//y
	Cd5oj6E9TXQZwvhOZcb6KNdKA8gjrEF1XKX38QZK4vwJWX7zRx2NGwNdmKrFANsnmyDovzcLkNH
	HZrNWbvl6THW69WkmEQ1Bg8hRU/T88yuny6uf16eLb/3Z5T8hzZ+zCPG/U4JdxGSn3wR95jHtrR
	2S3sVRz/udQMTh
X-Received: by 2002:ad4:5dce:0:b0:87c:1d89:a245 with SMTP id 6a1803df08f44-88292699d47mr77113436d6.49.1763167809715;
        Fri, 14 Nov 2025 16:50:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFjIFGATfZLfaUZaE3KWR5c8p1sYfBsOVpYyQEawnaMA0DTE16Ifr+U3lmX3Y+76mKypsKpog==
X-Received: by 2002:ad4:5dce:0:b0:87c:1d89:a245 with SMTP id 6a1803df08f44-88292699d47mr77113096d6.49.1763167809268;
        Fri, 14 Nov 2025 16:50:09 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37b9ce0822csm12716841fa.10.2025.11.14.16.50.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 16:50:07 -0800 (PST)
Date: Sat, 15 Nov 2025 02:50:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com,
        helen.fornazier@gmail.com, airlied@gmail.com, simona.vetter@ffwll.ch,
        lumag@kernel.org, robdclark@gmail.com, robin.clark@oss.qualcomm.com,
        guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com,
        valentine.burley@collabora.com, linux-mediatek@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org,
        amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] drm/ci: Move qualcomm baremetal jobs to lava
Message-ID: <ursdbkco5n734zhfqceztib4b6vxb2juq5jfllzcjeuctd6lvn@dbdbkbr4csws>
References: <20251114030056.1139570-1-vignesh.raman@collabora.com>
 <20251114030056.1139570-3-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251114030056.1139570-3-vignesh.raman@collabora.com>
X-Proofpoint-ORIG-GUID: Eh52zgO5mF6q20fxmVUDUutosep-AF6E
X-Proofpoint-GUID: Eh52zgO5mF6q20fxmVUDUutosep-AF6E
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAwNCBTYWx0ZWRfXzHuMIvqaY17S
 UrqNmESHnXR04x7LjWIv3sNKeTKR890hbWRgYWMu67YMaeghfAeARvY0hO44pXpeMQHgWW61Qwh
 4gMgsc94uyMOaGADDj1rhEaDF6wJU79YhqL6DQshPc9/F2MNUigpBItFahJ3VnpXr1F4RSLFOq4
 QOi0OP2e69cODwtAs22A8eq4iOj53ddNkZDStD1cZBNNhV1/k1GabKPAnx77NlkpZBGdZJD+7Ot
 sYCucbfAyOw03UgTI+3XhLCPI5YglurqVbK7QW0x3kWazU3D/FkdWqZ6FEdBSEoKzkDTpKoWiia
 F4Y73FUdtGkwCu4/wgctUh/WX/xxI9Ya8Xt8Lp10zSGvK/JC3SmVmN/CHWbhkbpu/0pGGThLN8o
 PbWRCi1b2dLlWwvpRgllT6ic7CwGIg==
X-Authority-Analysis: v=2.4 cv=KYnfcAYD c=1 sm=1 tr=0 ts=6917ce42 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=QX4gbG5DAAAA:8 a=Oc5gQ_T1tCqBBtY5fQkA:9
 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_07,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 suspectscore=0 priorityscore=1501
 adultscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511150004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_165013_069874_8A8983BD 
X-CRM114-Status: GOOD (  13.35  )
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

On Fri, Nov 14, 2025 at 08:30:51AM +0530, Vignesh Raman wrote:
> Qualcomm apq8016 and apq8096 DUTS are moved to Collabora lava
> farm. So enable these jobs to use lava and update expectation
> files.
> 
> Co-developed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
>  drivers/gpu/drm/ci/arm64.config               |  1 +
>  drivers/gpu/drm/ci/test.yml                   | 62 ++++++-------------
>  .../gpu/drm/ci/xfails/msm-apq8016-fails.txt   |  4 ++
>  .../gpu/drm/ci/xfails/msm-apq8096-fails.txt   |  2 +
>  4 files changed, 27 insertions(+), 42 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

I'll try picking up these patches through the drm/msm tree, if noone
objects.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
