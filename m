Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D62ACA0EEB
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Aug 2025 15:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ja0KZFDxFP5+O+JTbz3NgshM30JvQ89NMr/Jv0IIgKI=; b=csj94iJ+bQdaNm
	eNEXRT6FMHX3jkZFC/4p8OnRJIcqEzdn5fUTeF6Ez0fcmddleOM6xrbsnfv98iGtMHur1ms8SxqUy
	Hn3LABEkRqg5r59zyQHO7H+9du7J9ileVTIQj6DNmgKFVa0GfY6R9AET/5HlrjjGkqE90eghs+S05
	lBSPcfdfZ4tyI9t/7Wt0HAiBLrONVWWb4Yxe1wiJyk8Mm7ecgc2eGnL11RV0blSf+NXKYCZeiyN6O
	sMmgyOeMo2sBvZ91+HPF8TwDanJdpe1LrfXi+7yev5tsbTxiykeT3iyIo90Y+CYSi/gbC0PDfmYGl
	CE8Oojl+Wr6+AN/4pTDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up7FF-0000000HMtp-3qLq;
	Thu, 21 Aug 2025 15:30:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up3WJ-0000000Gldh-30ie
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Aug 2025 11:31:52 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9bHoV031484
	for <linux-rockchip@lists.infradead.org>; Thu, 21 Aug 2025 11:31:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wCJF5c3+QMhdemtPbsFinQUg
	kFKPi2bpCjGACADj15g=; b=OcnEEl6Iixdz9PVUZ2Zfk4Cr60+6BNxiSiK9QQxX
	YlDAdZyteOIbIJ3p9wrlwEISmUEZdwXf7Y9lInD0mTaJGFVOTzVwJZZmdnME8Zjd
	X3rS8TEdN+ybrLWl8Z08tZ9a/YmPUhsCA8crQWpPprLRVzV2xyF0l5dtLqKhCtdr
	sB7hAj1Imigm4OfEwT0TcC57N6LkCkr3TPObt/tpTWrei3wnmeCVYkm//+ZalfS3
	jOO1JxFiy3RefpH9UzIYtLCz2OisAa1isyao1XOzTI2kx4UfKoeBH3lhatOmu7R4
	bjw9UQ78KKXtWahUl27JLkP378jZAerl+40S0bwEPPDBIw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52aw47q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 21 Aug 2025 11:31:50 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70a8b32a6e3so20240436d6.1
        for <linux-rockchip@lists.infradead.org>; Thu, 21 Aug 2025 04:31:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755775910; x=1756380710;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wCJF5c3+QMhdemtPbsFinQUgkFKPi2bpCjGACADj15g=;
        b=ghd8AsiyWX7fAZskgQpH2IcttxsaW7oXA9bBmnc/gMPEBv8nYV1o/FyX7+nt/8JERC
         Mp8C2uic9CqP/n069V5m9E+67FcY+xFVBd74sAoUxFrdczAavUwFn5m6QlQhVugYHu/c
         +vVJ1+3ui9jxsCCXGRoImYuUxpjLn0XTt79b8l6P7nkxFlQLgQidK0XG1XsqH27LWOyp
         OXpu1riN4oWqVS0Wr0odtItiuNsLYWldjTXVa8ETRpJktCtunXRsTBexeQ/S09sB23Ch
         36eh1wCTUrKn1npXXmOtwwwyoGQyg5cEsPb4IDUkJ6VKFjpasgR8913bQWUtAIMZZ9W9
         P0qg==
X-Forwarded-Encrypted: i=1; AJvYcCXvnf+zj2MXQdx/Bl2y6qStn5z4rIlf8w4je5Lr3uFEZRADG6DwDMzvnP4NN+QKs+zMyypqhzuqtzbIIFXZHQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzg6CCNKMi2D7wiNQ7AH+ao5awlrvq/OOnjWryvO08Wo7DXYpwq
	13qPEufHNUy3kyJYZxt1i3AaAm5t/IOEG/dB2jzpAAUQn9/MemUaMDOrHnIJqQejd2QEqX5K5hA
	4OS/XmhdLocnF5MGYQOsdoYnbBJSMLGovtowoWK88yX4BcbFLgKw4knOZpUcjknA1bdckYbTUE9
	Q=
X-Gm-Gg: ASbGncs/yTjB0bZz6JiK/Z20ojvcrZVpEAEjDgZ+KLNMXKwJ7v90EwNWbzZxvCWaYx9
	Nvz+ieg5fV4qBBdfgXIUmJIb+6GooL8lEDJ5OH5aKSFsjdlp11wZSkOLQ4jTaRzrXB4Yk1W+dz2
	ZgxZKTKiPGlPY6aASe/AcQXPdVlrDgh/Ezb0aOY/NlnQIhgNK5uWDWajcv80F1dlanSHL6iJh9A
	1hKHspmBvX3VA1bixKYsAaORZtiTF2cIfb7I84zTwdFUFiSoDGFn1uQkkAxTf+rl3oK/X8Yx2qW
	WtsGlQibcyuhiYZHdoBVhnSKAYidrmHGIZ2FuTuZMk5VbE1OI4Tgqpv3jZNBN6iGw+vcIku1EmF
	4Xz6u3zXOns/NK/FStdDLG3l8U3adLyHqVi2dp4NuhpqMWjkBNNht
X-Received: by 2002:ad4:58f1:0:b0:70d:943e:1623 with SMTP id 6a1803df08f44-70d943e18c4mr1654246d6.55.1755775910014;
        Thu, 21 Aug 2025 04:31:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFSs4VKIibVozJgAfWYCmiz65wGeoOsB2ADhDuNHcn0UHHXs9rSr5gNX58F9niS9BZiB15Dw==
X-Received: by 2002:ad4:58f1:0:b0:70d:943e:1623 with SMTP id 6a1803df08f44-70d943e18c4mr1653726d6.55.1755775909466;
        Thu, 21 Aug 2025 04:31:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3353a08ae5fsm8719801fa.56.2025.08.21.04.31.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 04:31:48 -0700 (PDT)
Date: Thu, 21 Aug 2025 14:31:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v6 04/10] MAINTAINERS: Add entry for DW DPTX Controller
 bridge
Message-ID: <qf7rp5fca6b4orisls2m7jmmtpqriiwiqp7q47vvzwq7zva3b2@6qcsswlzke7b>
References: <20250728082846.3811429-1-andyshrk@163.com>
 <20250728082846.3811429-5-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250728082846.3811429-5-andyshrk@163.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX1BrQPboB64Zq
 aptjx+ngn7eyAdzvNbOu+f7hchc5kBO87D7FQ904MmQdnuvIbHAulpPAfPOG0m86pa7rgMCcJaX
 oLFjQXGs/us81aqQDjCVoTyAr/4WAEYs0o2+MFA+4fUOYjRxMLuVP7qGGs5rbemIuHCjrOMMyml
 z4gujQbmmwqMlP0CXRCUnuKnOGsKCPG1+kGKlBiYisUdwRmxf7U4X7zb5LQQ4LkGO5rdJ1PNdCt
 PvR95a5Z/2HrQO8pZLmZVUZ1B84JuN12/FV//X8qWLMeBnfSz2CTg0hUGB0Gsc9emhJ7xWtvcPl
 FJ7pa0eCILJjD9G/3HC7FWr0GrnSJjI5jCuB8lCrat2iCmqF8khTd2EbVGtSYaOFP+jsC0TIZRq
 korLAW1JF2jhCcbmBLiNKHinH8XWfg==
X-Authority-Analysis: v=2.4 cv=TIIci1la c=1 sm=1 tr=0 ts=68a703a6 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=3WFxphGLh404ikClcyYA:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: Ieda0pz-yCihVLpFqM97LfZdHh6F6R5W
X-Proofpoint-GUID: Ieda0pz-yCihVLpFqM97LfZdHh6F6R5W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_043151_871906_D230D5C5 
X-CRM114-Status: GOOD (  15.29  )
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
Cc: neil.armstrong@linaro.org, sebastian.reichel@collabora.com, heiko@sntech.de, stephen@radxa.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, yubing.zhang@rock-chips.com, naoki@radxa.com, Laurent.pinchart@ideasonboard.com, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Jul 28, 2025 at 04:28:29PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add an entry for the DW DPTX Controller bridge driver.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> (no changes since v5)
> 
> Changes in v5:
> - First included in this version.
> 
>  MAINTAINERS | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
