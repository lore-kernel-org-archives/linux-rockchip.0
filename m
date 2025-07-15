Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E42CC83F21
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 12:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GVmU7gGUMhssWF0TARTCIO/Ueqjeda+K6BbS548Lc8M=; b=twUk0APZDru8hE
	uzis8EiaKSenY2Tpe2wOgqtThVJpJA1g3iGGzdJIDCCGJkICteaiYQ3nsgGBYt/0Zjw3Jfmdu34EJ
	vkC9jWf/BOiEn9D6RSj0mlO3B90p6rY5602bSzf2G1xAK/QvWaan+fapVbwtcaa4iONk1ZW5F02si
	iJsLlkoV1ExFYdWlYGpJA8wJui66VJoZheQl191aW+lVwz4RdYodth8/+dH2n1kMUQm9QBkKGU74c
	RZTocKeOidUr46XI8GYu0rGZ7qlio1tLX0NssBx8OpvtYY914wDW8irXCPZ0NwsMBRnkITUuLDI2m
	OIAvYHWWj6UyBMouaeWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubf98-000000057rs-0erR;
	Tue, 15 Jul 2025 12:52:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubeQ8-000000051mP-14WT
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Jul 2025 12:06:05 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56F6BMCo011116
	for <linux-rockchip@lists.infradead.org>; Tue, 15 Jul 2025 12:06:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=whgpErroktFXqC6PFq2WcPTx
	Y5NFQM6yRWXrcNe/B5E=; b=oQoi5OSEalOMhOlaVsCQwivDCxIQJkwdw2Gjk36d
	KOoK/PSWH19kWIRgR6wfPCM2d0JymbeYro1VX9x92LvyDpRE3DF1SmtAmAceD+Oi
	zu2OG52GP8B7uh7a7ZCc/ZSEfQPSO18KyCErrQsMv1y/LlXTzYrBp3oFbKt9bclj
	3sdLK0ezqdYtrn1iKYc5rjpr4JzHTvfWeO/5QLqKEJdOKScjpyheIyNgkzOf6sON
	Uuoc4w8OYOGRkDBTcmmTFjb9LXp2TPxZY0wPwtkN4U5VuS2dKdgBjYbhTOuBUaHc
	mn+ycF5PDfrV9hDh5sdBx6QVpeOzJdMVKLJvsMIMSlJVyw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dyjxdb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 15 Jul 2025 12:06:00 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e2c8137662so359582585a.2
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Jul 2025 05:06:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752581159; x=1753185959;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=whgpErroktFXqC6PFq2WcPTxY5NFQM6yRWXrcNe/B5E=;
        b=CSNZKxbSOXYFN6H+8fibdrWF8T77aTZbREfzBJkeecTKLUHr5sA6lkcwVKRkg+OWm/
         F8PDzdnuNkF8Fc6D+P+AWZhLtSG/c2+7diPAVhfH7SgxxRL+NtLGyqQXWGs1PYykL8Fv
         K+MKL7KjK9JZw3BvkAywhQIN0yb0KHBIYtJdf5qOGTldqL8rPU54BhFDS2hpDuXLJirA
         O+co6UR2TldnSQTfR6igLiyNziPkJpZPkgWxmsUlmZXIrrivMJ/Bz1fSiC3EmihsFAcO
         VS59LLjUosCnUb6a8y1KleErDPg0baq9KtIWLIKgonvctWUBxjvoadIs28h67oKDc3Td
         DOmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIPZ2HIxVxq6fMm0UHnoe7uMidyQ/rGnynAqJmvYIxPDl/ezya5hOQpwrYzXe5DYebh/wVfXEu2oPSQ7//bg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzaUsjDW+TysbO0AocFfYCVulYpWCdqWrg8cBhs6ytE/x+aTJEI
	Bywq4BJv/WomuzB7SGxS5sJKn5kyIDtOecJ6RRpqJulZ++YOJxBiUkWhvIxhfWDeE/Rhk/A6uda
	0Tj04pmL9ubUwdh7vO4k0QhdUUvdP9rAj14Ec67bnzr5wSSi2PlhifHeFz+Mdwpya7yQF1y3/jx
	o=
X-Gm-Gg: ASbGncuSgamUi4DmvHqAbjpgMxVe41xRVpMHeB8GH0vDJJOYx4VPVF+7wZutav0nMUx
	RJ+bOEDEXbOOjreq37upVa2GLmbhZynGmM1JVNIywK1kRqgHd5gdCzj4EPtprjBsY9Qlh14KApy
	x05YbVSKUmEBDc1JGyL+tJwJlN+bV8aZCapST55j8hiMC6CVDGtro9PgFKI/EzZQc4FP9i6jXQd
	qBTtPHBBz4X1+sXmqtqlPboDBmpk+wJqqWzMePFqDENIWeo0BYzJREEOAOCfyz25phfdvS4uL8r
	EnP2WXGj+asEsXFW8wm9cg0RwYDBCr3J3QpGCAK68Kwl2ge97rd6+XTH4LY4mYxtNTyWW+yK5MD
	f6YOA9TAH14GOQDXOcxostnPoyeE7xVMjiCv9UPOO3nNzFSv5NyXZ
X-Received: by 2002:a05:620a:2617:b0:7db:52b9:2060 with SMTP id af79cd13be357-7de06bbb9acmr3084722485a.36.1752581158906;
        Tue, 15 Jul 2025 05:05:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHIm9VPHvsWFqJ0lg2fwfKKO9Xor4P4bNsy7V94yiewt2Z36zolTE2cwObNp3IrftJTJDg+rw==
X-Received: by 2002:a05:620a:2617:b0:7db:52b9:2060 with SMTP id af79cd13be357-7de06bbb9acmr3084715885a.36.1752581158361;
        Tue, 15 Jul 2025 05:05:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32fab8e4b7asm18929411fa.75.2025.07.15.05.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 05:05:57 -0700 (PDT)
Date: Tue, 15 Jul 2025 15:05:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 3/5] phy: rockchip: phy-rockchip-typec: Add support for
 Type-C TCPM
Message-ID: <eqb5m22om6bx2ypjtnlwdjmgfyycpmgrlvro34xwlwjj4j2jeq@mrarg36wetp6>
References: <20250715112456.101-1-kernel@airkyi.com>
 <20250715112456.101-4-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250715112456.101-4-kernel@airkyi.com>
X-Proofpoint-ORIG-GUID: CdCGsOo2OdXgPPHRUHsouxGXE6KgF9TT
X-Authority-Analysis: v=2.4 cv=RtXFLDmK c=1 sm=1 tr=0 ts=68764428 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=8-VJQ8zMMZwrctniyC0A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDExMSBTYWx0ZWRfX9BeoIW2DS6t0
 QeX0gSEolXlPd3XkMMgaxCkAVsaW6sye8Q11HoCJqlfkV6+nJgnPvEm36utRLOPUOqoBHijl3oY
 FbcvyvRSpAHHdYMbVBz8etBAxeMjLCddN6Mid1jsKvdSlpsvpMZrnjDKIBgJ2/IxdHXTs6p1DEl
 BdQl3qzb5N/hTwu1KbHJ+3SpkhmmoeoDa6qL7YzQxRSFsHOuHlwSN1K6doOPwDuloIBz992f4fv
 lBshTmeGAeKFL/+lq0eyihP40lvfw0RgXho77sLFtkAVEvNrSAfvrfmjW4srdgd5Sgkl0LnViO3
 cQjEJ31jNhoTdj3NWQ1P+YXwuw9XE0SkZrNIm5nNG4Nrlo/uqYEpV4nOaj9t4D+2eyvcLUuy+al
 g4Vde+w/axQnMwfPZeRNkVMsN7NhZCw+l7Lg8EZvMO81IRUt56MSG4mQSoTioIw1/nKWwNzZ
X-Proofpoint-GUID: CdCGsOo2OdXgPPHRUHsouxGXE6KgF9TT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-15_03,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 mlxlogscore=803
 priorityscore=1501 phishscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507150111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_050604_305099_BFD09C49 
X-CRM114-Status: GOOD (  16.37  )
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

On Tue, Jul 15, 2025 at 07:24:54PM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> This patch add support for Type-C Port Controller Manager.
> The extcon device should still be supported.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-typec.c | 335 ++++++++++++++++++++--
>  1 file changed, 319 insertions(+), 16 deletions(-)

Please keep TCPM implementation under drivers/usb/typec/tcpm/ . Create
an aux device and write an aux driver for the TCPM part.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
