Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DAB8CC6B2D
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2026 23:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCNwaJT9kGtuaZf+hQr6ogU3QL2dKu/eJawVwJBGiIs=; b=fDGDevZ3ChTIfp
	RciXrPhJFz7yauSknOOOdE9DeX9Hm/bs4fq9sn70OnkMa1VFOA4KZ1+TPTGVc+brVKK+ZpE0x8+lw
	P+86tnvu21G6cMeb+gjhPzSHo+f4+C8yrpFeVdi95kVBAu3n6f34aXQ7d9F2IYdFM+NcMf0axO7vn
	jVuCGp2FcT1ouOindF6n3Gy7EV9/RlFEkWlmG3YGz4ZZcw0kYVq47bz22kkv2eQcfALS5HMxsIRyN
	vDajiWDRVlnhCeN2FF1SOjUg11kP2dQQIzCCP0vIceCoSoojBvaYg2gW28LXnFxPI30Vkh8bf0puP
	d7wm7flnPECPLaVFgxzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH8gX-0000000GSzO-2UuQ;
	Wed, 14 Oct 2026 23:47:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH8gV-0000000GSxo-0ALX
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Oct 2026 23:47:00 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69EFMm1E1682677
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 23:46:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MVSX185AgSrbI09fOTWvij79
	MrTIRjbwy7Bb3zRoM0M=; b=aythbRuDEL9m8f+kyN/1bOuBhBunx6ptFyZh24so
	rRCqeRzuKYYbiLbOs6kD72uXjQwEW3Dqd8DxtEhsF9/XIHWGDqmEN6cm5TznYK2g
	sARAAaLbJKes6c8FwRfRsDtIuTiXypv+LGPMtcI+pVyt3WJIjua3auH2ULzxC/34
	INJiqzMF2kIwQqDCsc94H5C5ndTcm56ptcdxs2lJEs8DioRFpRvva4nThqIKojEp
	j5ay9f4VU6s7nvhnTm55iXzMJq9fJNjfUsmcImMLpMVP0jWQulTTFJW8JwAs9va5
	wFNVnKRjQd2f0zx+ByYY7iEH3VyZsZ3njjPSO0xESp+INg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hacb01r6s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 23:46:58 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-93cc0b31ecaso206020985a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 16:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792021617; x=1792626417; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=MVSX185AgSrbI09fOTWvij79MrTIRjbwy7Bb3zRoM0M=;
        b=hWASRhtLJwlNSzDUUICVB3pbU0iSkHIXQMpkdJsCVG77Td1IhQD25ZhRqkyzmyRQZf
         tm2Im9LhQoaXkgcJOI4mAJn1L2QgpmW16cvp6HNxk+xd260EIgrZDAvsOkOfhGdSaiX2
         nUlAy8BbGAwutljbzuqPal+N9ZY7RrTy93VCTMzs0uQZGNy4GE5WxOHz74D0XlQ6DxV4
         kHcStoN2lZ+nhVHhzfk01GMlaN8R2BHXE7B3WTyMy/XzsJX29Y5XMxn6dg3sD1ldOTK7
         oHmbf1G3cHD+tqTKR/RPfy5zgtXrXjaUv4YVDrw2P3j9F3l9vPuyJZeojlxDLWXfB4sg
         sqCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792021617; x=1792626417;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MVSX185AgSrbI09fOTWvij79MrTIRjbwy7Bb3zRoM0M=;
        b=ElWswZ7dEj6g+uXFGxT7159uxXFdmD6TqSOZs6Wnf3tr3uch8zXMcUAD8YOkyy/YmK
         pOb/x/OFDXrMhzRu6oklde2RBjRUkrdjWiiyS5l8wrzx3erUxy0462FHORHcghxTrW2W
         7EkAErA8GLNuaYUeYMjcUpqx3easilcv8QVfvFM4Hs8oZ775x4olPzwMSKcCNgFP6SFJ
         bVAxPz7KR2p1zzL/LO0GYs0j69wgJ6L8Izu21kOLWWAL8pF69jAjJb3vAaef5I9JJww6
         rBovjeK8vl6zPA5pl2XRNgAq0AtAVYNyGXo5iYY5W/HNhXrtmACag3pW46YTilWOnoix
         mhUA==
X-Forwarded-Encrypted: i=1; AKwUvBzh1Xxxy6zz+fP/C1RtTbB5YRHW29hWDUZBeBST2CMtx91RamjdDvYX5KKpkAd87CwwcwVRDvf8IezrE5wzbA==@lists.infradead.org
X-Gm-Message-State: AFq9FYIm7xxaNzTMwfsf+UNI1526KnnTY1AZHwr+hS3IRyNPeqee+bFY
	+ZshFa0MfI8eaFO08l+oAlJxCzIn1fpFBznrTLYx51Oht4c8Q2HaRlS03DgnCFU5a6APan3B9/9
	4Ny+GuK5lAq2UfsDuLgY0g4QX/tu023gA+O/ixVmafXiAL/PG3kuu+uhPi78F7xHypAZXGFOXvh
	w=
X-Gm-Gg: AYBFou1TPfOFR3XVVsg54bjk5IRvz/ACGvvy9P0W5VPe0GhVrHLZvI4VoP1j8jn7PGo
	53yViHP9qTl6axInsSRLY3S/8bZXMGI7waBHInYmx9iG7v/1aQoLoiEM/V/w4Ock4afmta2ym90
	SaQEnDsZkcDdKTiGPSMZBIpwIP5KOFthk0pwMG6UZNbDSTEDm0BfrxycZeMGn4QXC4/txzkpbcv
	Ow4kjp6fC7yxLca6qzM9UPdS5heWxZFlxBzF/pv7NK8rXpzlAmcwgZgMFR8qp67Fyfy3mCnSe7m
	5lehli7MgOtKK63LhfNK12ke6s5ZWCnF+YIBdmhJJaWfOijR/gtm8IzaulqCjd5Xl9RkG8pwt8k
	OSa942T+zbY5ybj5NHP8CBprciTsaXFq//V0vfTOJ8cloQzBTyVWltcrtg++v9pwh2wOWpMSr6l
	S5APX/vLiym+0H
X-Received: by 2002:a05:620a:2701:b0:93e:d364:c9fc with SMTP id af79cd13be357-93ed364eb53mr2144274085a.5.1792021617531;
        Wed, 14 Oct 2026 16:46:57 -0700 (PDT)
X-Received: by 2002:a05:620a:2701:b0:93e:d364:c9fc with SMTP id af79cd13be357-93ed364eb53mr2144271485a.5.1792021616901;
        Wed, 14 Oct 2026 16:46:56 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5be33d973f7sm934666e87.70.2026.10.14.16.46.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 16:46:55 -0700 (PDT)
Date: Thu, 15 Oct 2026 02:46:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sebastian Reichel <sre@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-mediatek@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, kernel@collabora.com,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH 3/4] arm64: dts: mediatek: Use DP AltMode defines
Message-ID: <woavboapzszyqhm5qrlca3iqrlq33j3ehy4u4mxsib7emre7yx@4mvuaqk72nj3>
References: <20261014-dp-altmode-dt-defines-v1-0-b657c9b6e4c3@collabora.com>
 <20261014-dp-altmode-dt-defines-v1-3-b657c9b6e4c3@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261014-dp-altmode-dt-defines-v1-3-b657c9b6e4c3@collabora.com>
X-Authority-Analysis: v=2.4 cv=VKpIDNPX c=1 sm=1 tr=0 ts=6ad01472 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=M1rqeeilqGQJneHCTBQA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE0MDA5NCBTYWx0ZWRfX+fxPSQtbZsQk
 +O4XeSAEcWP0I4oT9MXBNyBp44VbNLpgJQS8PjmGY1qk0f8aVmZ7u5DBy/4E5KeIrgjk32EbIaQ
 tyIFheOTT5HbtdFNlrRbNBiNldXc1cs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE0MDA5NCBTYWx0ZWRfX5MXyi4iQR7oX
 2I6TLNr0pQPauCt6rVObjPrcV7KeeuOMh7hdHsIS+0hUwK3mE2DAFMNJfVG15Bg5nnTFk6xN7L3
 wFdfzYucWJiowPzEq5lH2G0kD0pv6+TVdOR+R1AM3T6UM3btEq/Wuf6a1S6SIqlOQlKtDG/lmm0
 IQ/turoI213g518AgsKhfH53ve5E25KWADmIvuujvoZQ0lZ/cpXkfeOCWuirY7emjHAh6xiKMUy
 RnFLjxC3TEUPqYFtaErpBRjHtuH4nYf0VU0bXcFQeFNHRpTKsO9FKRnd13O/l7H/ttjIY2wMRJc
 53TK8P1s2y2hgnHHU6+OJ0psR5YLESOnLk3eG/biZDvoujb1B7+jhVF3Uv+oN1KQdq1sK3AcdOz
 x1Ru5dAgIMsGvc2jWj9hv3+CjcGcykDljFo6K6Ww6p3yhpbcHsL/2784wfzHZ7FP6XnKeNrUFlN
 bJrSfErDaH6jR1aLe8Q==
X-Proofpoint-ORIG-GUID: ZD9Yns7Hdp4Pe6lm_LQJkSi-grJx9kuT
X-Proofpoint-GUID: ZD9Yns7Hdp4Pe6lm_LQJkSi-grJx9kuT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 malwarescore=0 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610140094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_164659_083325_2413195B 
X-CRM114-Status: GOOD (  16.64  )
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

On Wed, Oct 14, 2026 at 11:31:51PM +0200, Sebastian Reichel wrote:
> From: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> Use the new USB-C DP AltMode defines for the SVID and the capabilities
> VDO to make the DTs more readable. This also fixes up mt8390 Genio
> platform incorrectly announcing UFP_D (upwards facing) support. This
> feature is unfortunately not supported by the SoC.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi |  8 ++++++--
>  arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi | 10 ++++++++--
>  2 files changed, 14 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
