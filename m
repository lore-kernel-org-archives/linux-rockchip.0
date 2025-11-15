Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82B0FCDB47C
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 03:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CI1dFeRcfPcps56mm8V/za8QotBtB/UVD0DjIaAePHc=; b=OeDO4kB2Dk1Z3o
	vJgBjVxz/DAfDBEk8/6X0UeS364kwUp1KcC/p/054cx3PcRHxz9NrnI38avlTOT3jOnhHF3p1Im/7
	TxnHKg16tFl6yOMQJO4EpUqvSjmMNaayuJYdTnlzfylpEKJZT894aLepTai5oqVBF5VUrBpXEVXRb
	abSn63JTFAsjzPoMMCAvtTE0cH4pPMbx5iOz0+vcEBRsajGd5h7RGgqLGrALlrK1Ul+pE+2tZQWFD
	COWT52Q5yqB8gMw5Fa4pmlaMfvK0xijr02KOIEy3k9hTTYC8stMLc0fAdztzzhcSvf7PXh0NlCt46
	fsX8+axDIhpBihjxPLIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK7No-0000000DRH8-1jZi;
	Sat, 15 Nov 2025 03:55:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK7Nl-0000000DRFq-3ib6
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Nov 2025 03:55:27 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AF2qw1N1504153
	for <linux-rockchip@lists.infradead.org>; Sat, 15 Nov 2025 03:55:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kpUJE4SYKU9ynxkJ/T5JJhpa
	CqT/i8ZykNmysQrjF+s=; b=V9xyueey6blpzm/jfavsSbhlfoxZqh6ziY9GLiVo
	pRLERZ2MEX31+yuGsAhlfVnpx49LUnkivh7VOeVkX+iEZCpUszfAr6RWAvx/GoxG
	ZijhYK8E3mzyIqhG1hK2L5/w9DdedzrozrD9Lv3PvXEGCefrjA2nK2F6EPnJkN5Q
	59YLYTARTJ+Imk6JfdjaS45qa6wSMYck595UYohLzKOGwUnrjp4w0vmLrwRUpeB6
	SYq4g3sGHee1nq0e3QSLce0NkDu8LM1+cCMEAkTcfdWp6FkDpecyTGsY74vra0rZ
	jqFpR49ENgMSjHk8p1Xtfaa+aw5Hd9R3LM0WfZoyiVfmLQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aeh3x834e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 15 Nov 2025 03:55:23 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8823c1345c0so39174086d6.2
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Nov 2025 19:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763178923; x=1763783723; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kpUJE4SYKU9ynxkJ/T5JJhpaCqT/i8ZykNmysQrjF+s=;
        b=XeKPjhoHnUkU6kE49OaBA3vKXwMMbXzhzwjANN/WcgdkG/Z+3NEim+xTKTefTL7f2c
         hpEGuNFw9RzceZY7IhtHd03Mjs10NKPwmk4ZV/eMp0piuq2PZl5uZSfiPDTGTeqZh9hC
         M074ENAIfwKqGvKlLHTzoHWOlugql9p+iJY/fzKe/PHN9FsaP8vs8gHe/KP01+mhQBIT
         szMPrQJkij9AqpVuK5WjyF/yViaKbTJKmP6PYsj1yGZjoDd4Dxb0zTsYriD7DUMjWTZ/
         kYZaz698YT/WjJ16XGdSrA/QPUVyjiGr+9usisbrfuPcHjD4Icf8/DCZw5w4L9ZHIU4O
         k9Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763178923; x=1763783723;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kpUJE4SYKU9ynxkJ/T5JJhpaCqT/i8ZykNmysQrjF+s=;
        b=jrI7094ljPyvHkgNGLlxtMY1ip0YKoD2LWVCLX0DnJkr5ZnOKdI3Q7Genwy9HHZdDf
         YLaBZDpgKIT+/MyCd6T2EhmuIjynY1lcaiJQYY+BB2R9wA8EBVozXjwFy3qIjKn5DIWJ
         7DuI3qmO6cJDymwEiB1EIaZsFdPvpalW8bIUBKRLB9uBLRM8fhV7tT3XDawoMQ1oVYgx
         5FZM3570BXg4FajbhzGSZ9o9CB2pCa6Di3MHzofF8WOnZNuh/ZqnNB+pLQpFojmSWHIG
         PLcimtx6BTuVMj/Bn2AEtZqG1HEj1Z/jWzn7y7Pwx7vIuGTfs6MwCHW/1eV0A+LEMHqq
         azYA==
X-Forwarded-Encrypted: i=1; AJvYcCUJGPsrPXtmunSrVtQ2PlBF1m+Gc4CcSEGVlsSW9yNtB5XR+2wdZ9p/Dp4BsKcAwz5/TEMqhAhtYqAOFGT2eA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxmK5uGJNTxVFsAwPvLS586Q/YZCexam7/gdzxTxlh5owxwyawS
	6xVgqS+ew9EnXR2/oAYUAYmwzxCNtXUrXUL78aaE06BKmgdeR0XIgk10ouwM32gxNLImW5aROrH
	p3RvLE9dq//zLK368aVJciFThIMMrC8hKtpka9jhw9DqCe4dLt6m/JiF4BwiznavloBBOPvUYPH
	c=
X-Gm-Gg: ASbGnct1hGWYe16ys7CuFNINQySMyv5iuhI4ExXLzwjuLI/b9F9Hcfz+d4RAnghUZmI
	VHHojwmi1MGUvPpABzRCm7nel+yiEHRRbSqjHUuV9i/f+m1SmSp7Nv+KVT+RkMBocfFY83YBWSH
	W83TJkDfq1IQjMhMm5HU1k9zC4I0S3ba9mr9oP6g29ZpRTmxGW/kKzecyMeN2Tkq0k9cFVuD6x8
	JMVk/LltzUz1j3DuAUzltz9vOFXDnL2aKrJqE5BvP9/LaJSW3bL2tBP1Zz4Gdg+DmtHNL7KkW6O
	+db3mAWBtAe74NrTMdexGWGzMoTcpLe9QMH1/Gi5r4sto8evKE0fG6LefnQIjsdrUQFjAQz5KUS
	LAjDaWe73QpPhkiN7sokW+KzoULN7VUNH3ybEV74xHgLHzVFRfOi+lkgmhD7VfajnaoQNTMTthJ
	rpvOhI1T4Cc2Kg
X-Received: by 2002:a05:6214:c65:b0:882:4dec:42b9 with SMTP id 6a1803df08f44-882925f280amr79893366d6.26.1763178923088;
        Fri, 14 Nov 2025 19:55:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH21xNZD/1SaQbAJXQ9lzSs2ET/wK99qDySnRnPvmoMPz0h942r+lDos6cmgLn70aSgdH9ifQ==
X-Received: by 2002:a05:6214:c65:b0:882:4dec:42b9 with SMTP id 6a1803df08f44-882925f280amr79893116d6.26.1763178922595;
        Fri, 14 Nov 2025 19:55:22 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5958040c7ccsm1449901e87.100.2025.11.14.19.55.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 19:55:20 -0800 (PST)
Date: Sat, 15 Nov 2025 05:55:17 +0200
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
Subject: Re: [PATCH v1 1/2] drm/ci: uprev mesa
Message-ID: <42v64xdsaqug5yy76yel4tukh6wkt2tp237vlnpteabyl5qjo5@iigtgujvecwc>
References: <20251114030056.1139570-1-vignesh.raman@collabora.com>
 <20251114030056.1139570-2-vignesh.raman@collabora.com>
 <prjwrsepfc3b6ozhue5cp66khlcvdrpvpy6jkk23edncmi4l3y@oiddmamgg3mx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <prjwrsepfc3b6ozhue5cp66khlcvdrpvpy6jkk23edncmi4l3y@oiddmamgg3mx>
X-Authority-Analysis: v=2.4 cv=Fek6BZ+6 c=1 sm=1 tr=0 ts=6917f9ab cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=e5mUnYsNAAAA:8 a=EUspDBNiAAAA:8 a=QX4gbG5DAAAA:8 a=E-Vn-V3zxCEcjh91BPMA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=Vxmtnl_E_bksehYqCbjh:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: -uhTwcNNjNMfajbCsIJ73ueqlkADWpdK
X-Proofpoint-ORIG-GUID: -uhTwcNNjNMfajbCsIJ73ueqlkADWpdK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAyOCBTYWx0ZWRfX/yOhrq0hJ7Zj
 +zASUQUsOUHKwoh0znAZJf7757gxf3avSxpM9S2WPryCdyPet72ZYgD25OcLJr2b3IEyX3DCab6
 7NyPDC6SMT/qFRrxR9VKTG2mzPhok/aG8lqOTqoR0Tf49acmSVleaTMTRGXJqQLR5u1iJnSIuBF
 +tm4V3JkLMijino0V1IL/j23AHkEqTGCNxw1oSxlPVw6j1YZe5n87dLe+5E2+LXPrMGyNk31DWF
 0Qrtz3OfKJ40MwU6NhcioAlqzFeO8FgOcD3mx82NzqNKmTMpMsZdZ/+zS6cjeYu2r2z8gScogAg
 nLN9N/Au9AJvYse8e4EEFP3A54DK4P7nAL3zS2qqA5fgkMJhk0g/oAJOJ9NpQWh5sun33YEZlKY
 /hob3es8NZSkYPPoX+e5bymcGUgicA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-15_01,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 malwarescore=0 spamscore=0 bulkscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511150028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_195526_038496_FE8EB7B7 
X-CRM114-Status: GOOD (  20.91  )
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

On Sat, Nov 15, 2025 at 02:44:56AM +0200, Dmitry Baryshkov wrote:
> On Fri, Nov 14, 2025 at 08:30:50AM +0530, Vignesh Raman wrote:
> > Uprev mesa to adapt to the latest changes in Mesa CI, including support
> > for firmware via LAVA overlays, removal of the python-artifacts job,
> > split container and build rules, use lava-job-submitter container,
> > and various misc fixes.
> > 
> > Co-developed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> > ---
> >  drivers/gpu/drm/ci/build.yml         |  22 +++---
> >  drivers/gpu/drm/ci/container.yml     |  28 ++++++--
> >  drivers/gpu/drm/ci/gitlab-ci.yml     |  95 ++++++++++++++++++++-----
> >  drivers/gpu/drm/ci/igt_runner.sh     |   4 +-
> >  drivers/gpu/drm/ci/image-tags.yml    |  22 +++---
> >  drivers/gpu/drm/ci/lava-submit.sh    | 101 +++++++++++++--------------
> >  drivers/gpu/drm/ci/static-checks.yml |   1 +
> >  drivers/gpu/drm/ci/test.yml          |  18 +++--
> >  8 files changed, 186 insertions(+), 105 deletions(-)
> > 
> 
> Thanks a lot for taking care of it!
> 
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Hmm, this causes a lot of failures, see [1] (note, the run is not
finished yet):
- On some platforms (msm, rk3399, mt8173) the
  core_setmaster@master-drop-set-root test fails. On other it seems to
  work correctly
- sm8350 seems to have some issues with this uprev, it cant' finish the
  jobs at all
- mt8173 and rockchip:rk3399 seem to have other test failures too

Could you please update fails / flakes tor all the affected platforms?
Also I'm really interested in the master-drop-set tests. Why do they
fail on some of the platforms, but not on all? This seems to be some
infrastructure-related issue, since exactly the same kernel with the
same IGT passes those tests (at least on msm hardware).

[1] https://gitlab.freedesktop.org/drm/msm/-/pipelines/1547684

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
