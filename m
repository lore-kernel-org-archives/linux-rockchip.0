Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9387ECA0EF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Aug 2025 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NiUM2a+LKXa8aaOetZVs0TUTdN3DHU8glk/M8FlBcEY=; b=uJquMJgytCT+rb
	zEPSLNgHIZmGmNhd3PH8vyB7bkijXL8Xs8NnLku/YO2msBy6dLXa2dHjnnblzSGzj4REyY6I1fz8I
	09gguidkUziYKtn8gF1QWI/dK00gx+Ijn5ZwV6aJPuIzNsusXpVar55pgjZpQjZuhcTE4FbBLCZLA
	jmVD/Aux2JL2JNW7lT0iueG5XFuG8+fQCiR6JAImZj3aVXcLFYQeEtxJ1KHU4PsQOpae3OaOIoNqN
	7EESGwe7QFqrY9D/cFhq6atTpMUxNJBfz3Dj9u920fq/yidC0WcCaUFCqHhg0So7ea4GbKPXj1m6v
	Xy0ZQrdr2Hs79PSsLLTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up7FT-0000000HNHY-0HPB;
	Thu, 21 Aug 2025 15:30:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up3ap-0000000GmLC-0Vms
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Aug 2025 11:36:33 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9b7u1003617
	for <linux-rockchip@lists.infradead.org>; Thu, 21 Aug 2025 11:36:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+oRchL+ZGiIm6AbmB6F+/gh0
	suQo1rfvXtM2Pmnn/tc=; b=pLgrUQ8UwRDGgkxhghdJLrIo1NxVJOOqX7qU90bN
	vI/JwszjzYwjPdZhF0MbqFeiQcpMQIwV6vQJWHUwjQ345GV7G45MfY/YOYMNGSoz
	3i7GEONr2sY0bl1NSvUNGPk75Qc/P73kUIYdg6yLV63xQ1+DA58rJw1LQ2ZZNCKq
	CBztzVy/m3Dnmm43zUPCaUXTqIVKUiIVreSxGSi1Hxzvhh8ebZg6GRvWrVTDIUQm
	II4t1izcldKcSzC58UHVIC2ohrqew12NSlz7ndjT+vurdehSx7NX0kOF6cFBJook
	6sK8efsNDNbzDUVOtzhn6Pnl9UiMp7QiYidL4c+CJ8oPew==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ngtdk3g0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 21 Aug 2025 11:36:30 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70a9f57f950so19906316d6.3
        for <linux-rockchip@lists.infradead.org>; Thu, 21 Aug 2025 04:36:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755776189; x=1756380989;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+oRchL+ZGiIm6AbmB6F+/gh0suQo1rfvXtM2Pmnn/tc=;
        b=CjeT66Y9QNJMdUrYC4mOYh2B4Yk4uJI0/IkwzaBj1aJi+mt9+WfouWNDD9ZZPvKyyB
         b/DnN0Qd6dTnTdfLeNimACCV75o0X8VHSereJ/EWtRSrRbFyJtIjlAnCGFaADFGdos/2
         WpkL+0ikZRmnuimtLyUYR2m4iPKFvBfUCnzpd8eNlN2u7pfAhe7q929coc7T/RFfLZP6
         BODzq5AKmKqLdtzGhPbdQH/yBOv71NwYUwCpxWAKNC9JfvXJvwnIf8g0BEqiXSXyMLAO
         THTv+lo1n2Jifxsx5FKs9uaEHHyPQ5xU9tFzFIfG6EppJjzpGpBnVE4cuOeHgqQj6VP6
         FIlg==
X-Forwarded-Encrypted: i=1; AJvYcCUQoHnxWyFCatf/0Qu43trpdIrXKTt8Ks+p65KS0HZnl3gzMWYlzPpUT3O0Ui1Yx6JBcV/ZrGl65i80rTelRg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzem6TCmEsKpYw1UeZVPJEEBYYMWQbmN2c4Wu8zggJDobfEHU/9
	JAnUt3SoUefD01TpVaGrzdILUcm5dTIHDedd2AeuqtR2aEZQe4fZ8C0z/+7pYjCVr38lWTLyhKx
	8AZyIc1bBKsOvBRyi5e8IPHYU/scUXKnL4fwKbxIsBsiAbYaRSgvbV3BHoZUooIH1Ih//eC+bnJ
	U=
X-Gm-Gg: ASbGnctCkZBzz2ER+YmaUhCRhUtEFR1UwEJUmvl32MucQSL7YxgqM7f4/bqT7TwKBZz
	78ZS4Wq5jZVadNqYXJf0k2a2io0FbBttVb2Ts8SEcNHI9MAo71LKCi35hKma1UvwEAXc5Xgxl3c
	bGHzvmBZKHnp+rlUE4sI5JB7gogYQjLHtWfzxfoSZvYEi7FhFIaxxtQ/4tKkv6e3O/cb/UiiSOd
	BFV5OiE0NEYo7bjZ1egYCrnaE/dmRdoJ8/dag5ROvXuMLmvMLAqrbamttjAqNtEp5dywapXa+sS
	NbbGkhBLp+IiL4R04zgSkw5vZzoEi4dFRiksc7+L3Zr/onzupTNdV/UmOkMjpt2+1gNiUoZMFTI
	NCAkeHkU/mKTS8RyULfJ5WuZBERC25urEXf/aEBE0fHAXvVN5IjLC
X-Received: by 2002:a05:6214:d08:b0:709:d518:74fe with SMTP id 6a1803df08f44-70d88f6c1b8mr21455446d6.38.1755776189114;
        Thu, 21 Aug 2025 04:36:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFc4pz99CtfcFnUf3vsu43oB3VrYZHY0a8u+w/WlSr/OGxDRM13tso2usgrGww5C5aEQRhY4g==
X-Received: by 2002:a05:6214:d08:b0:709:d518:74fe with SMTP id 6a1803df08f44-70d88f6c1b8mr21455026d6.38.1755776188614;
        Thu, 21 Aug 2025 04:36:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3f361asm2967476e87.116.2025.08.21.04.36.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 04:36:27 -0700 (PDT)
Date: Thu, 21 Aug 2025 14:36:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v6 06/10] drm/birdge: simple-bridge: Add support for
 radxa ra620
Message-ID: <4qs65cbi2u777ykgial37gsyzosj5znduxwvcuwbxi3kxzy5dd@k7tcgcyepjoz>
References: <20250728082846.3811429-1-andyshrk@163.com>
 <20250728082846.3811429-7-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250728082846.3811429-7-andyshrk@163.com>
X-Authority-Analysis: v=2.4 cv=LexlKjfi c=1 sm=1 tr=0 ts=68a704be cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=HhVUBrKwW8KbpwAMqUoA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: RHPnHzx_Hkk0iIBG9qhnHMAxzoZx6Arj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDEzNSBTYWx0ZWRfXziZrkAHWoecK
 K4goUhcveyH7P79rPpDTicG9n3Rutbczo+vUeLP8fsSvpBTr/mencxByqX5F8EAh/h/Wn5bo6qG
 vNuz93vglkzsmBv2t6Wu5XV6AhzCDUrzm1bHPiMa7JRTEouhJEfCsIGIQLA6ny6IPBAZKYZ9Eja
 meAPsZ937Bp35NjI4U3FaxJEcOHEAn8JZxQM312vyBzdLrJRQCKfJnFYxdfPGlOgBLDk+XF4DzD
 DJwY9T+U5/8hv6LN9WwCRucKK0uoa/n2c8mo1ckNM20xCCblx0CiZ6YBm0sD5X9UUc06L/lp+hh
 RjOO8QQ9hRegH2u9zYcXLRkY7ZTilW+JP7KnGy8GL+taUYwtMRqMw51BtKUeHDOzdyMg3le5qal
 vEsv/UaCN8U8ZT3DeFWVJ9YMVvVuJA==
X-Proofpoint-ORIG-GUID: RHPnHzx_Hkk0iIBG9qhnHMAxzoZx6Arj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0 malwarescore=0
 spamscore=0 priorityscore=1501 suspectscore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_043631_164952_1BA564C9 
X-CRM114-Status: GOOD (  14.52  )
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

On Mon, Jul 28, 2025 at 04:28:31PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The RA620 is an active DP to HDMI converter chip, basically
> no software is involved to drive it.
> 
> Add it to simple bridge to make it can be find by the drm bridge chain.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 
> ---
> 
> (no changes since v3)
> 

Nit: typo in the subject, should be 'bridge'

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
