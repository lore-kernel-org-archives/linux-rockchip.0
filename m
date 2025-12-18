Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65F34D68BEE
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Dec 2025 08:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwTh36EGzM45adX0I0QWYVeFus52JHRpXZSAUIsavK8=; b=B8Uj+6X+gIg9tK
	qTxWx/xm5ZMOUKiphZlpORaZHKCuMskWCzHSyXBUADwwcm91SIK5nwDziCEySdD2v+tX/5MmDcmBy
	cOFQnEFv77HRv2T+tyHZ8kDsgjN4Q+CiO4o02Ou/6I+SIFCkN2uZ1G4q1jjecOaFQpdZzJ2cliOs0
	l4h2YyL2NX5WJQKh2pf32ECE2XyZhRSCh/9qmVvdeuPI1C9tyjmTAXHW89pIbHj3AERQB9R4qE00t
	nV5rr/t98/B7Yd3Se6emAeQYJ169yxyVhuaV+gqO9oANT73886pGTjBMEfDK7efVU+NAPOIb4dbvy
	Di7mkBvSL8UirIZRxd3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW9Jr-000000083XR-3af4;
	Thu, 18 Dec 2025 08:25:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW9Jo-000000083Wy-31n3
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Dec 2025 08:25:06 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI1YUOi4057274
	for <linux-rockchip@lists.infradead.org>; Thu, 18 Dec 2025 08:25:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	h9eXcbVLE8BoXKOP6CjUjrYHB49qzqi2WjOZ27sOho8=; b=Rm9JkxK0OhC9Znjd
	/ASbKDmSFFlHys9C1IoRkaaBuxH8AV7NaAFyd/yEK81cE0GAftas8eZKX6MN+IM0
	jRnfG85A0mvV7J9LSzDo6+P69knKWRae61RJQDhSXhY59AHYWBTojFQookF25dcR
	4KqcEb5OOozLUfGQ8irc2pgcgWoQ5pb+Ku53cQHOGkSy0gFVB4EAQ91/McjzdUD8
	31Eeomx+0PLIHuzREjSuMuOKOWAF/KsB6dYPlM4o5yLXSbbjozNYnXOCGQdDCG+p
	oFqvFT7ErmnsrdlwKv+hUjrR5HY+/EB8Tmiyrh43LnoG6EkQNNA2k0AHtXDCNh79
	bj0Nug==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3xr5aqrx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 18 Dec 2025 08:25:03 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29f25e494c2so4502375ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Dec 2025 00:25:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766046302; x=1766651102; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h9eXcbVLE8BoXKOP6CjUjrYHB49qzqi2WjOZ27sOho8=;
        b=kuC+DT2Yrg7buK6pUUoZc3vMUrYO3U1YZrfJx4ScCv12OdIn/g2vhXTt0KmqMMB9f2
         nhw/+G9t4LVu+uGApLvTLfYm/sGvl2MDRlkH+dDfenbf7yFh2JJkq+6+NXTcox6eE240
         IeScHZffUIUu1nTxt3vN6cLTD5ZgKdDkTbk2SdKiPimpjzjASw+tvW8Kb06sxg1QhjrC
         Z5wCcRVV0ozPCoYIEJNnwir3br/XzUxKRt35g7FrCKOcBjLZC0upONbRikQqJUNZvl7M
         YmEShpikXIr7riV+Ebp9ldOIc7rqVQU/RM7NJdLA/snZ1r/FSlBWxc4mJR/wEInkE7w9
         CeoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766046302; x=1766651102;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=h9eXcbVLE8BoXKOP6CjUjrYHB49qzqi2WjOZ27sOho8=;
        b=uR2U/LIpfM/iXMQa5G5amlyFkELrgIb0v8l2Yt0EHASQ2anyd0kgSfj+xphnV/NBFE
         kiOHu5rZCA0s7dvMbDFvRAfQuqRz3YECMfCT9/dbsFl6OHVRgyaymnfwp4B0rkR7LzKd
         b3cRKDaq8ZY9y1Kx6Yv6yu+8KdXkDaqt3FQNa5uXDTHNbZUHS81bSBgG10Pc/YcmKzPm
         byFJALTeuhyH92RcCi/62uViowvrGds+oNXDM5cdM+zX+nqFVqqJf4n+3GirwQ/dGmZE
         gPuw92lQc/Mvoa23qP1cZ0Fk8456qeUSxPLhDdhyvANA7bh9h0mPEw8EPZK0rQMuU6QV
         bFNg==
X-Gm-Message-State: AOJu0YxcD/h4+v4QE3RPw39KaJUDv+heenP1TW9H6xsKNWpIilc6V1J4
	1XT+95u7fEFJVYUUaTxH/u7PVaIfIGxIzCzbU4G5qpqOAjT+9s42owjarKLqrR14OZuELkIQ8YP
	G+0s1ehY57hlBTBTZdJaFMtAcfrgo/4pUPNd2uigayacgjg7LiTRgJHYeWmjo0+HSr+lvL/5Te8
	oxz/eHGcg=
X-Gm-Gg: AY/fxX4DX7CImC5dzIR4Epzi9pvu7MISS7daz/5onrRwfwYUKqkWR6gERXVg7iM7YqB
	u0lwd4oZ1YcDh8MsyN7HW5zV1WrG0YCHYCQ/HJMQXkinXLg1X46OIouBIL+8PJSyM/X6HlHX//V
	nTsfKBeT9hVUkzFbx1ulfLf64MKWLLXAbLP1M1uE2ZvQsout+MleF2ypek4DTLjev5WcvWcS9HQ
	cR0XfAAqxY2N4KyL/oIPqNt+u7v9HbKM6/1fEk/yE3PP/kgY3N4SUEhVSJV+IkaKkrUfRxA8vSx
	r+3EnGdxkBAWpufHQxd7B2Y1r5I9S10grWYba5NB2ZZimfnu63+mcfhDbNdSzh15kKyarzIw35w
	Qz+uF4SgKBvE=
X-Received: by 2002:a17:903:2307:b0:29f:2734:837d with SMTP id d9443c01a7336-2a2cab74c17mr24950255ad.28.1766046302297;
        Thu, 18 Dec 2025 00:25:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH3dH7tcxdtCqdARxzZ55t+fLL1sGXobURAo2/LxpuPlbdPHdNZsH0SrJ8Ajmd1pgR62QsrNA==
X-Received: by 2002:a17:903:2307:b0:29f:2734:837d with SMTP id d9443c01a7336-2a2cab74c17mr24949965ad.28.1766046301770;
        Thu, 18 Dec 2025 00:25:01 -0800 (PST)
Received: from [192.168.1.102] ([117.193.213.102])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2d087c812sm17421705ad.15.2025.12.18.00.25.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 00:25:01 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: Bjorn Helgaas <bhelgaas@google.com>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org
In-Reply-To: <1765503205-22184-1-git-send-email-shawn.lin@rock-chips.com>
References: <1765503205-22184-1-git-send-email-shawn.lin@rock-chips.com>
Subject: Re: [PATCH v2 1/2] PCI: dwc: Add L1 Substates context to
 ltssm_status of debugfs
Message-Id: <176604630001.843297.17429554282202051282.b4-ty@kernel.org>
Date: Thu, 18 Dec 2025 13:55:00 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-Proofpoint-GUID: 1CRk178F7_5m0TjdyFqmsJB3Q0sGXuhf
X-Authority-Analysis: v=2.4 cv=DsBbOW/+ c=1 sm=1 tr=0 ts=6943ba5f cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=PLOdWElDzbaVVj/XHNhp9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=hNyLsvljiUqWJzcpEN8A:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDA2NyBTYWx0ZWRfXxrISsX1AMc7C
 HixAEYu7ZFgInme1zYwFM9lyYF2voNbINpgH3kJHIc/VIPeJfxUo3nSPrqFmsP2iF6DVJoHoLYP
 Oxuqy5qRbJ37iiTCVCkUYLH+ldyp3caExbzK/tpNuODcm4qfEtDlrA4vLbmGRIayiQiNKUScdJQ
 8VogL8fbHlUlmdzReMafmPsUq2NnkVx/weB6EFKyQHtIVPWbI2cjGIg/HOxpJin0gcr3p89GMMu
 VMkkc97w9fJeMG18EAq5NxEGp7ZlMxRYh12hZrLs5zKekw13yFyB0I17EP8Iifay6OZM0w4rXx1
 jl1DxIFSmTWFx7/QRIOA+snOgm9kZA2MpmQPPoQb+EXCWGHjpahD+CjePTsp6NTs/03o2IXtZh5
 UANILlPahegIrq2aj1OjwWfPFs1LfA==
X-Proofpoint-ORIG-GUID: 1CRk178F7_5m0TjdyFqmsJB3Q0sGXuhf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 impostorscore=0 spamscore=0 adultscore=0
 clxscore=1011 bulkscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_002504_880436_0491CF15 
X-CRM114-Status: UNSURE (   9.23  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Fri, 12 Dec 2025 09:33:24 +0800, Shawn Lin wrote:
> dwc core couldn't distinguish LTSSM status among L1.0, L1.1 and L1.2.
> But the variant driver may implement additional register to tell them
> apart. Add two pseudo definitions for variant drivers to translate their
> internal L1 Substates for debugfs to show.
> 
> 

Applied, thanks!

[1/2] PCI: dwc: Add L1 Substates context to ltssm_status of debugfs
      commit: 679ec639f29cbdaf36bd79bf3e98240fffa335ee
[2/2] PCI: dw-rockchip: Change get_ltssm() to provide L1 Substates info
      commit: f994bb8f1c94726e0124356ccd31c3c23a8a69f4

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
