Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB5B8D2F038
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 14:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQsZPTEgCmUil3E+DEZD0dUWSnWT+f5splr36yAFW1k=; b=V+NqeNzBeHm0H7
	rrmQvppcHOoCMRE2vlYLZ0PEHLbD8lQlzUmeiCCfKLniC4Zkxu90qMknfVCA4U/fHdU7arnlSotX0
	2bWVLQkrAKVQ0ywusWazOvpg9/WKLkS6+CphhrikIgZhTHu5hzQa9MqwfB9QsOwuVjKiGMDYrVkCJ
	G4JJVDVlFWHQA4Fzpc7FGAmdvf+Q4nAW1BGywusAkjQQ2mJNUT8GW/QjLFS2wbznbQlzSQhc/IRdu
	PK7nWxmNofpLrzlzc4aUqcEW6fCLF+bqqa81OD8BLfydCItIW/N+5dsk/Ke3pP9lWdz4AQKr+BvVl
	tnKm0xB9I6PL5CFmAwOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkk19-0000000EO5p-0HKA;
	Tue, 27 Jan 2026 14:26:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkk15-0000000EO44-07tV
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jan 2026 14:26:05 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RAY7w5184806
	for <linux-rockchip@lists.infradead.org>; Tue, 27 Jan 2026 14:26:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LeBGXuVPBeSkZrySiP9d01PK
	e2NSJk5/OBYu735H4lg=; b=D7eUaL8F/NQC5dIugNwP0PYoJJ8XMLVA/hWsVtxI
	TzAG0cBfSO/OEVWj3LXovywqEr0h5KcKGsN1gbRNggn55uj5TJDlj0P5rz3fxiR5
	uQTSTvRKsWKqq+4Cy0kPTyOMgUonpOpduLhMhALGfpBU071fhmEWYSFjNYvI+wJF
	Qw+GJ64tAdNnxMco95gcqFEP8Cr1Tr4YCjwDaX9mFimeBof8Mz2WvS/HCLCk+o5V
	NNWFIh0XXSbz7xwg/dg13RYXOfzzxDzHQr+sGFOaI8oTYjsA8wPvpEwmb+ChduZp
	Y0HvDtg61ADlLO1qUzsxlcZnVGspsBhvv/VrlZEvFhPK1w==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxdv9kbqr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 27 Jan 2026 14:26:01 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-9413e6717f0so8071322241.1
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Jan 2026 06:26:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769523961; x=1770128761; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LeBGXuVPBeSkZrySiP9d01PKe2NSJk5/OBYu735H4lg=;
        b=YBTjPNgxP3MxVR7UdNWd6EFdcejC5cnR9D0aHktHU2Vl31xOXAcLTOZdGFGNQZuPzh
         wlBW9F1nrKd+rSqzo0c1ODTA+rPKPjWCGGEc5T2zQ2uQ9P2Wr81IPLa0id/IHXCv5oW4
         +vT+NLE3Ua7Mbk7WGWw3vzI5p+24pxS9NrI4DFv3Dv9fVk6oL7fX4lQQNpUfCgryoj8n
         bIUR1gWpmbPglEZDD+H1j+E7AR6G1K1J8ZkkUGkeIGOwHw4nxRqbG/BC2Z68JbEY0ULM
         6yI/Me2uyk0S/DazhVonPOzCLWwXP9EAq8hGOpa3XqIK5jOwmGl0ZR6+c/H8HY9hMHNR
         eRkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769523961; x=1770128761;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LeBGXuVPBeSkZrySiP9d01PKe2NSJk5/OBYu735H4lg=;
        b=kFDCayqaMIAnxDRrSOh7WlvYBAH7kvpsnkT0hE2iU9qELnbU/zR0fwnjzpmalsgDlG
         F/0d09PgsBpPMoTCUTIWK2ZZ2Y7gGjQwzy0ZQfc77Wmj8ItYYzb44hDFMMNlj3GsFgh0
         FvyNVfXeX3mwouO0bVrmDHQJAa2amRxm9t/OXgxtj1pplgRSExPWbTuCca9HjSYSW0eV
         cMpts+Knb8gUX8DZJiZ2UF6iZ41Tfy2XO9J+jp1m2ZY2hMCwjWCGVdhTqO4kc3XIs2Dt
         mxGSC2GlfjTQjzgibutP1tliovFsjtwRLJUBRHxmqbZJknSBoSLjwoj8WJUWHKKV6bzp
         gQzA==
X-Forwarded-Encrypted: i=1; AJvYcCVAWp6/enVv6G29Gxnx1S18KVH4zJDUHIas8m9jc7+pMGPXhKszcwJaE7BBlz9+Bfu2w0nbYHpMLxIQTxY1sQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxTkHNIZqvsC/Hbt60ocXu5Qxj5MB8BiBfDzEKSrnsj62wMQRpi
	h8H45CDj5ACK4eWngHM06XXBrzRM/ybyEkm+AIcw1N1w+YO2lIa+21LQgGViYQ0HS7cWUn1nFhS
	ylKPCsBQhs1Ja0jdnJb/VkFNGV3hFl28o1JjoOv0kqIvtfp4FJbatQ1eyS7N2yXalZnIj46qEJz
	k=
X-Gm-Gg: AZuq6aLZW35IqeHUz3sjkbtOw/STA4AkJimqA/+GqGUu19HgkCMB4hI8H47EtxjgaYI
	44np6BeW66wEf9Z73wQ/5DLCQd33fCmzOJfx2n9VVKN34YLdw1TJhan9JNDKSScJ24DbX/+n08n
	1yMU7QdYbyuWBb3xqUx5GPqQvyEGQUvjjac2Pxrg1wxFmIyzl2tS444cpxf8l7X/F7o62WjecxY
	cO/dknYodZnK94YrvJPXodvmDdopk3ijYVR1bm4fVAdLK84GtBcrRGnOhNTBYEnKXWo45eX+nR/
	zOLyreuQdNQXLZRwNvEVNsohQiwjJzfQZUheVAyPvIriO4Pp8dx+J/01mA4m9Uy2FHTpY7hg2bt
	1vdEJR+rc+iwOR9Z8jMDZYj8Cy+TFrx4VsPHBbnUByw7q7p+yMrqkgN9cuGpAe6fkYITWZs1GM3
	NYYgxH+qdCUHYwtykfUvbJB9A=
X-Received: by 2002:a05:6102:4610:b0:5f7:24db:fdb8 with SMTP id ada2fe7eead31-5f724dc08c8mr478862137.25.1769523961041;
        Tue, 27 Jan 2026 06:26:01 -0800 (PST)
X-Received: by 2002:a05:6102:4610:b0:5f7:24db:fdb8 with SMTP id ada2fe7eead31-5f724dc08c8mr478854137.25.1769523960506;
        Tue, 27 Jan 2026 06:26:00 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de4918965sm3637789e87.55.2026.01.27.06.25.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 06:25:59 -0800 (PST)
Date: Tue, 27 Jan 2026 16:25:56 +0200
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
Subject: Re: [PATCH v1 6/7] drm/ci: uprev IGT
Message-ID: <5vxrhiilcsaull2airasmc3pjqazvswrtojozz264i5vk3m6zl@pgkdwq46p4ho>
References: <20260127104406.200505-1-vignesh.raman@collabora.com>
 <20260127104406.200505-7-vignesh.raman@collabora.com>
 <zi7frtnecrzyei4fl4nmwmth3icnsyycxxobbrcwovbqfsfq4z@eh25dyfrjkqz>
 <9949e82b-6ec2-4975-939b-d6a709ecf43f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9949e82b-6ec2-4975-939b-d6a709ecf43f@collabora.com>
X-Authority-Analysis: v=2.4 cv=OYOVzxTY c=1 sm=1 tr=0 ts=6978caf9 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=e5mUnYsNAAAA:8 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8 a=ocmXNzLk5YWpj9Dh6n0A:9
 a=CjuIK1q_8ugA:10 a=o1xkdb1NAhiiM49bd1HK:22 a=Vxmtnl_E_bksehYqCbjh:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: wRceX260ea5mPGrs9sorZFtuRoU04Sev
X-Proofpoint-ORIG-GUID: wRceX260ea5mPGrs9sorZFtuRoU04Sev
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDExOCBTYWx0ZWRfX+0OZ1yl0wsrW
 giBi3MVOvtsAENbj+EEgxG/M6YJsTuYngy6Qm+6rfnDe8ov8WuRBzZgLqImzh2cjiC5GKKrry/d
 rhEf9IVmaF6tnGOi3Hqi2OWxKeRc7qm4As+fUvmS+1KccCnR7WnHWBsq0fBFE91iHzEAOA+Wil6
 yscj4/xy8k2jvsDKvaiq72nUP70ehFrhQOImYSxzpQkq53GWZeWaHDEvbOhsfp4Hj5xhVYULQHV
 f4jx8AWlKjMj+8Fc+0/fYmbKVY5e2TzH82gxtwA6d/PQMdMJENXVP0iRlYBJJLymm8fMVvhwsal
 dqyljHkBV9Y9uPlNumlTbDr1c1xdSV2rzsWFiNswYqEF4oeMB0wTNZBtyguYeMsfjTVLLQ9mPyv
 leua+HKqaJ/HLPlL69dLpUfLvdU8MV0KfyAEloe2FMhZlXmIn1xPBfIJTsSOqvXfaFNyBRwpy0d
 1BSg0YFcbQHMGH4Rnpw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 spamscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_062603_181600_D8AF2849 
X-CRM114-Status: GOOD (  18.90  )
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

On Tue, Jan 27, 2026 at 06:26:11PM +0530, Vignesh Raman wrote:
> Hi Dmitry,
> 
> On 27/01/26 18:01, Dmitry Baryshkov wrote:
> > On Tue, Jan 27, 2026 at 04:14:01PM +0530, Vignesh Raman wrote:
> > > Recent IGT [1] seems to be broken on MSM hardware, with many tests
> > > failing due to the old_primary->index != 0 assertion. Uprev IGT to
> > > the last known good revision where the tests pass, and update the
> > > expectation files accordingly.
> > > 
> > > [1] https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/commit/a909ab05
> > > 
> > > Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > 
> > It is not clear, which parts here are due to Mesa uprev (yes, there are
> > some of those) and which are due to the IGT uprev. Please split into two
> > commits and make sure that Mesa-uprev passes more or less clearly.
> 
> The mesa uprev and the IGT uprev are already split into two separate
> commits. The IGT uprev only updates the IGT version in gitlab-ci.yml and
> xfails.

I think I was not clear enough: Mesa uprev also causes some of the
xfails. Those needs to be a part of the Mesa uprev commit.


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
