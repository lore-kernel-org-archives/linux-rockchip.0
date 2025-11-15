Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E480CEACFB
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 00:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O5jc89DtV/4RFKMxFbTaoq0BPtmwuDAni9yTCprcI5c=; b=rYvbug38i58iTq
	gcZTV4puhYEJrVM+4OMhCwf5wTswv8Ozqz1tcOty9HCQEG4n8s3SlyjzW1i12BBNB4nFHumhNUj71
	OoO4W9qgUMGh+Fk+7eHg9nG/iUSvPu8Mven1TnCb+n0Zi+BH/cg2i5LGxVT9F8O0knhS3eriNYNQ3
	cRjPwmDTPwafnhw8o/bW9SZtNwgdrCNEthnNk+U0A7EMdAiaLv/HhzgTZBEUFQ8lM4h77Z4DxqY8s
	+aU21cyGOGgnBOZ1H2BV8kDBftKWBmFMrwRBbKs+Lfxdig3jvCcgHgWQzS7p66hfVK4pd+B5XAaDN
	zJUDeBNrXpd8h0jxRwrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK4PY-0000000DILV-13P2;
	Sat, 15 Nov 2025 00:45:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK4PW-0000000DIKV-0MVj
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Nov 2025 00:45:03 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AEJLkER4150494
	for <linux-rockchip@lists.infradead.org>; Sat, 15 Nov 2025 00:45:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kHSr3Uxb5gfTp8PMcc+9CNwl
	Vz3omOLQcZ4QTy5X+lE=; b=ODckJlfsAxbyXTtcs5Zm543nzNcWtRpWXJwR+uMn
	0BqB/hWSyd4H8OuVqMp+yys58KTOTAThFhwxlyoThmB8gRaCIJKPfVhkcmZd5Kxw
	lfcbla9wgB++EGDkSmbCH3068Oov13I5BCMuM6f94boSl5AY/bvN+c9GpsOuxyr7
	MycHmceYdsDFwWcDa2NG0gHfD8rcfCSOQmWn8NIYI/9uFIivvkXUR12lN1VBKjT5
	Y3HSvqZFPm2DH+IcfCemhPBe1GISzlubXCJjqLHl0l7FtUB6DIxhlggAx+QrR280
	zmVmdjj2viq6ssQ/HDura3pZoLrKjHWEt8PvJRHceOdXOA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aeagyrp10-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 15 Nov 2025 00:45:01 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed6855557aso96294881cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Nov 2025 16:45:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763167500; x=1763772300; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kHSr3Uxb5gfTp8PMcc+9CNwlVz3omOLQcZ4QTy5X+lE=;
        b=QEOyB/3LiP8Trq2pYjR0LmTRAb7qR2XUE4NSm71dAI7KBoL0iFo9E0TnTVnTIh1q6Z
         nWLarVQBKxmBkhNFlo8Km2/t5SkBUKhdPqyYhaU1QK6zCMHgilv3DWtKUEiL4g95KYYF
         sLgT6Oro3lJbPOKjzwkwDmPLKkbHGa84mtbkCZ/RjEOWYeWZ+dfw4eJtUP0dfZYSZADG
         UvgEptogMf7jdEOn0TStiULFRaaF6EpR4vJVUXrL8ZBnCCbxbDzAJFFdl8zF3FL3XirA
         1BWuoYr5Mh2rULBKO7zzu6yd302a2/r+4dE/wrdCMmutVAvdX2wUd+oOuKADzpCF8tv1
         xBww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763167500; x=1763772300;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kHSr3Uxb5gfTp8PMcc+9CNwlVz3omOLQcZ4QTy5X+lE=;
        b=bRW3JHYLqx3pVitybYtx3Eg1gYgN+WA1d5Tc1uIddsQqaUAYxVFd/YuiZ6JLZz7Hnr
         Gt0SPNnKHe60oke/PDf1r2GdeXeoWYSkSYHmr9DDzXYYb/Ez/CW1okgGoUDg+Ffs5GLn
         /rmGivFuHUBPh/ffJIgUnyopqylkwW18ezmHrbF8EhCTR39ZBB/yRSazefpM7LQzHxks
         mCJS24MC7qh2aerdFMdvex3e4R9GxwriObkPmBznpTiay0buj8gn0e1Y8dw6KkA19b4B
         ysFZ0O2kwpCfcLW5HbE0drEok5vVRObY19DCvPqA07qioBE40FLOqb4M5QTJdxNNvz1S
         iCXg==
X-Forwarded-Encrypted: i=1; AJvYcCXk1/V/UMtlAByb2YSJMj1uCIVzU9YZkce/L26u5F2ryBV4OpkG1ctAQuhGM/zozyP1RuDGL9icEBomubju0g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0YZOxpZzHyEqIUecw5IgtpRtX2d2JiGvIpjhDqFNY3xTGItqm
	iHfb9qQWlutxscGL3F9kWHnyfILu9LFSP7VTM1klCpGxnCCFAbmRKEt+vMhdsR4P0Zy188JvO5Y
	2A5Qd16bu0sWSqGbAXy7/nmnKNY7y7r0nMKxRgTPIRwXfwWAxQZAJWQtckWyUYDm0rdet2LModW
	o=
X-Gm-Gg: ASbGncu14pZfrcwvKoZuWI0lbMgRb9bDhjtebtV+gdl1qYP3OHRQabldx3JbJWKU9Jf
	wev2Q9bnbf3whPwer3XiyZ+GuNcCcRe2pw5FyjdbTDnOEVHKnmIMTsBsWES35IEoAMBS0OuacBG
	PJz3eLZ15IDfqx9dOekGeBNGhVDQ/Qtjko2rYB67Gb5ysgOqRMVmtdYMwHdQlsfWq+zVA+l0sEr
	nGPX9gJ7YVz0EgIURiQ20pTfc9yDZvg0TBJgOpzXN1ZTVeb4FzzW4RRIDnMe2JaJGW/3a6aCl4B
	a7J3GMPKeF3tckKoQdu9YMEoDcw+vCQtdRbcf4wvOY5EjtM02BhiaQcnzL7rTd34xO8r+f0xDX/
	qDTQYAnT1+QxMXQN63grUNWdSkf9KS8pZjEmcM43AxND3IIswEnvTeHk+pVEopTIS8Zy3HIJfar
	CexrJ6ct8tp/gi
X-Received: by 2002:ac8:5dd0:0:b0:4ec:ee54:b141 with SMTP id d75a77b69052e-4ede70699a3mr106378131cf.26.1763167500275;
        Fri, 14 Nov 2025 16:45:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGTsDRVIqLn1VpOlz5z6xTpaoGY3LMTcHDBpzhVsFe6h8FITQwTVx2wdmRWmkQbySXE0rNnig==
X-Received: by 2002:ac8:5dd0:0:b0:4ec:ee54:b141 with SMTP id d75a77b69052e-4ede70699a3mr106377841cf.26.1763167499760;
        Fri, 14 Nov 2025 16:44:59 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37b9ce1577fsm12961501fa.17.2025.11.14.16.44.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 16:44:59 -0800 (PST)
Date: Sat, 15 Nov 2025 02:44:56 +0200
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
Message-ID: <prjwrsepfc3b6ozhue5cp66khlcvdrpvpy6jkk23edncmi4l3y@oiddmamgg3mx>
References: <20251114030056.1139570-1-vignesh.raman@collabora.com>
 <20251114030056.1139570-2-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251114030056.1139570-2-vignesh.raman@collabora.com>
X-Proofpoint-ORIG-GUID: JktGFM5ctjYT9AfFsIKeZSinZW9XSd9_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAwNCBTYWx0ZWRfX7vGc+a+0u9DJ
 dnklJbDbGFIZhNrCeVviVka89dh2KpB32UphNcjU27hUdSzmgxJ07aSpxOtXuKqknJ7hwZqwptu
 JzCsuJP3kTa1jFMolpFii0CI26rmtctKtYfXe2tero+zuV5yOtsULgdaXYEDk9kak+sIZsmWs6A
 Ri8t7bkILndnBBQxGxEtwGwSW9iOUz3lsBaUUcmqGSWKi6Xdlou9SsC6Kb8SOtxN9WWck8X6Y1V
 lT7EwieUKdFsCBXiaYLgTeuBx8VtYas8GZp/Rm4Jd83ounZyE5lzxannL39u43vRU+kvumFPB++
 +m+MKNIy3Rvc0TZDsVy15tFe8GMT2Ko2noM2NqOzwK1qv5b+hNt1S/GXCX2uYitAeQ7QCfSiEM+
 Eni/UTPRpLBPmTDyoa3TO/kXxmkcyw==
X-Proofpoint-GUID: JktGFM5ctjYT9AfFsIKeZSinZW9XSd9_
X-Authority-Analysis: v=2.4 cv=Go1PO01C c=1 sm=1 tr=0 ts=6917cd0d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=QX4gbG5DAAAA:8 a=H-B6EOQw763qFByNOf0A:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_07,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511150004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_164502_134441_FEAE8AF6 
X-CRM114-Status: GOOD (  13.65  )
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

On Fri, Nov 14, 2025 at 08:30:50AM +0530, Vignesh Raman wrote:
> Uprev mesa to adapt to the latest changes in Mesa CI, including support
> for firmware via LAVA overlays, removal of the python-artifacts job,
> split container and build rules, use lava-job-submitter container,
> and various misc fixes.
> 
> Co-developed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
>  drivers/gpu/drm/ci/build.yml         |  22 +++---
>  drivers/gpu/drm/ci/container.yml     |  28 ++++++--
>  drivers/gpu/drm/ci/gitlab-ci.yml     |  95 ++++++++++++++++++++-----
>  drivers/gpu/drm/ci/igt_runner.sh     |   4 +-
>  drivers/gpu/drm/ci/image-tags.yml    |  22 +++---
>  drivers/gpu/drm/ci/lava-submit.sh    | 101 +++++++++++++--------------
>  drivers/gpu/drm/ci/static-checks.yml |   1 +
>  drivers/gpu/drm/ci/test.yml          |  18 +++--
>  8 files changed, 186 insertions(+), 105 deletions(-)
> 

Thanks a lot for taking care of it!


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
