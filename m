Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC695C44521
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jul 2026 23:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LHGhbTCJlhgw6WJnuylArUPNM+Y38TGg7VPrnxfSqi8=; b=DFVBufiCebrLYP
	+1StvUOywsyH9sgkO3ByesD386TCl53W0I5jdUJWsPZz6ZWLfGh/5hUD4d5O8IYxlcYUgfjuzHX0S
	bMN7b7Q15ERy/L4E6hqgrIazUjfEachm/Cizs4dzJOEC4pU8ihjqk+KY9Rd7K1cmtKr8YVqkWnzWm
	TZcvPfnbdt3vGUvT/ucQN5n+me12eEshCCT/KDTo+NiIADBsZCgdPNZ52SW4gndxo3w4RG7/zCyrG
	vr47UCXvBEEZuiYWrfIN7EbxOiWmsDDN6rujWPatB1wQWf3AntwUbD7cnRpZfMuXHd5T8ZGrspacl
	Cg2BhvapehjBBShy0wQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlEDa-00000004aZd-3Pvr;
	Sat, 18 Jul 2026 23:13:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlEDY-00000004aYX-0EiZ
	for linux-rockchip@lists.infradead.org;
	Sat, 18 Jul 2026 23:13:13 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66IN2KSp1942805
	for <linux-rockchip@lists.infradead.org>; Sat, 18 Jul 2026 23:13:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VkVRv45m5ANrH+FRuh+llStt+cQykEu8P33VkdTcs0w=; b=l3Nz1++Ujorn7GhG
	2sDy61Sgsj3Qowa8ZZU3f7p8ZcyEPv+GpgOVBd0lmDTYui6zYfjvMhu0BCdPrP9x
	tcDFG9+su8B+lcKJ5r5tOjZUpisQQTgZSijghhQhq0SvJMSnzd/z0lc8dD4LKnrh
	pPRNQu2JaCckG1Pt4fXlPbCSmP7C73TFP3oWRGVBGb/tavFzX5+B0Q3V0Vs8hosS
	7ryf5RnW38kM9KnAPXEhaVETRacRZc1RDpABToMlVH2E7GUBcO7fBMW1If17Xx4w
	pYD2u03+zD9jn9OgkOhYtsuorq64LiVNNoz0ANA0oETcpXd171Lc2Lwcry8F2ghW
	J4W1Sw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fgd04rn3v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 18 Jul 2026 23:13:10 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8485d853b08so7813026b3a.1
        for <linux-rockchip@lists.infradead.org>; Sat, 18 Jul 2026 16:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784416390; x=1785021190; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=VkVRv45m5ANrH+FRuh+llStt+cQykEu8P33VkdTcs0w=;
        b=VB6Xcxmg4HEvmfwrEOpKDGn4Mb8dt9jmGfEK0lP9sBnpR8jkUM3pZfy/ftBM6DU5sn
         0FEkUUe8QAttADew2D8H6sC39CK4n+/ZnfCRSBYoXACvqzQ+Ligv7kltjZcuujPqeryg
         DPn8Cnukv8QRU6y8J3KeqIZCkMLM60xEldz0oan+e/Mq3ekMQ5d+Qr9v01EInx0fY11z
         7IpHTOxu/FP/KdTxnIIbYEFH+49Cz2NAQszQZV7jxZSPyHKDKguxyj233hfegUp2x+04
         i52MIRdP7R6JazHRJZ2AakZwAVIyOnEn+8+d8TzBsrIP+KiBkKZ6eobE20t/D8XDPAOT
         anVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784416390; x=1785021190;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VkVRv45m5ANrH+FRuh+llStt+cQykEu8P33VkdTcs0w=;
        b=gpvTtFnPZuNLm7HPsxWnXmMEyyfgyPqyGgpg0l9IUjiV1HYE0mQ7FgcQBZS6FEUwfm
         4XM5m7IejS3ith2spog67u2HrtzsU9Mq7G1vEHypdTy7lln5iEollCIGLH8DZA8WHaCW
         PT722k+EwFBA779qDJkE+gSXE1okg+hfn/uWbLOQxhgupO2ykRmnBWbkW2eOS95E9C3i
         5zFMkSt7nAsU13rVCEXbGUKnkoU95GwhTYwdTDX5rwKI3LkcJLANPLxoWyPQAetWbuci
         4grSqq/nRZyIu6wXpiqVFvu3C5oRZWpEJqpcWWvmXZ4LHPfC6gie201rZpZ0Tr8DqlLz
         uKDg==
X-Forwarded-Encrypted: i=1; AHgh+RrdXmLIFA9gXoSIsaQQxL3WEaDjjtfVoQUKgkX59yyqYpFFUOVUPx9fGjzkPj7LTKMz159JYJ8SGN33buy3mw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzezul88/Dns4z+0swJ/OxFe5QyVrwx+rFD7jhVfAMGaLkL+kKC
	IINNgyQlEdDPo+v8ZEZChixoHMf9a7C01f+Hw3O4NHjVnLWmrSQJ1AyCZharwGz5EIvWAZ1HhQL
	tFpjJ/MchgLAJGvhXCUccjXwfzdsKuJVdV+IwEd41aQL5vJuMWw2Sr0pUXZctrX/WZifOLVSFf4
	Q=
X-Gm-Gg: AfdE7ckk57UBqWOs9qz9jQPvJMN7Kre6JuR2hFxKOLjNzfnBQD6rRxrng7CaPKBl9j8
	sxryAkK82oSNbJhNpBolfcjp8Hhda9SYu18/C1jGzi0KLXVegPfpGaKdxwL+F8YXJVmL+wGmong
	Vu3KIDVsS90OnWF1WXSxqHVlrvHfrdM/prON1XLDs7mSTNPMumhiBpWo5A3S8fQXvoNf2hBDby/
	HKw83R/KLQ2M6l8SrCJI9l2U7tmvzxQ5knnKHq9BUfg4I9obDlCNG/3zBaUoUSDr4LQOjhY1XG5
	kGIlUviHkZrDnSwD275OjQCTlAeBA1HY2FuNmNI/a8XpB7BLo9BlKllCl4E8rvTrG2YRFP8bPbi
	wKcPL5fNHGS/7CFTh
X-Received: by 2002:a05:6a00:816:b0:84a:2c46:3fdb with SMTP id d2e1a72fcca58-84c2923a051mr8853204b3a.5.1784416389752;
        Sat, 18 Jul 2026 16:13:09 -0700 (PDT)
X-Received: by 2002:a05:6a00:816:b0:84a:2c46:3fdb with SMTP id d2e1a72fcca58-84c2923a051mr8853168b3a.5.1784416389335;
        Sat, 18 Jul 2026 16:13:09 -0700 (PDT)
Received: from jic23-huawei ([50.35.46.84])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84c2adcd3d1sm3249794b3a.22.2026.07.18.16.13.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jul 2026 16:13:08 -0700 (PDT)
Date: Sun, 19 Jul 2026 00:13:03 +0100
From: Jonathan Cameron <jonathan.cameron@oss.qualcomm.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
        dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
        robh@kernel.org, andriy.shevchenko@intel.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V17 0/9] Add Invensense ICM42607
Message-ID: <20260719001303.422cf24e@jic23-huawei>
In-Reply-To: <20260716182637.24310-1-macroalpha82@gmail.com>
References: <20260716182637.24310-1-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=POs/P/qC c=1 sm=1 tr=0 ts=6a5c0886 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=qC1CW/w66vtJz1P9yTJxNA==:17
 a=kj9zAlcOel0A:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=pGLkceISAAAA:8 a=69EAbJreAAAA:8 a=hUMHPH0LmMywwkxqrTIA:9 a=CjuIK1q_8ugA:10
 a=ZXulRonScM0A:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzE4MDI0MyBTYWx0ZWRfXx2fa4ySlo76A
 tJjPf4HgzzXSUvm6xhZdw+Me6lLbQqlHbbGEfd1UsyFW88hPcSFGjHY4PSF704lSK45Y5zrolNu
 WBjlSVyYiEn0nQJvBw+ltXSqzSdz71BXOA+D1L84sTJzZT9X2RPUC1pD+dgFGeYNBHLpfmLtGWm
 WSYu9BcGcCpp2TUALwPZn7ntgsKKNtaONtJ4CqRJUDFPiBA2TjFRVw89LYZW2B6fhK/AjflrgZU
 iJ/zmTO8CgBE3LZTIzsdv0Fw9syE8nwHewuRIf0+NYi4c8UU65MEShB/jaPJyYUhjiSt/qolGTh
 kexBVTK+KCHBYvi6hEbtTP4E2Nmvm+9Z90ph+AQArDHDlKwKogS+eOu2ln7uoha+B+5u1mkeUfg
 8gHwmHYmJav6aMP2hChWE3mJywU8CWidfzt770n4m9339kQ1T+pBorK4DpWcL+elKwEYEWwb44D
 IcNVfv30ykAcBKeqTOw==
X-Proofpoint-ORIG-GUID: mw0f9jUqGSKWdstYGhK7vfayANbDS77p
X-Proofpoint-GUID: mw0f9jUqGSKWdstYGhK7vfayANbDS77p
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzE4MDI0MyBTYWx0ZWRfX6DRAa/b21jsu
 z3hNYAm1TjWkCDcEmgVJcC1sC3r6rkgpFLftFmEHp6szMImpuMxzgFIoTydl2tnRWWhW3gL2lwE
 QcO/yi+o8+/JkOd/tDTWhOaIc15rH6Y=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-18_07,2026-07-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 adultscore=0 clxscore=1011 suspectscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607180243
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260718_161312_218283_BE64CF43 
X-CRM114-Status: GOOD (  13.10  )
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

On Thu, 16 Jul 2026 13:26:27 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the ICM42607 IMU. This sensor shares the same
> functionality but a different register layout with the existing
> ICM42600.
> 
> This driver should work with the ICM42607 and ICM42607P over both I2C
> and SPI, however only the ICM42607P over I2C could be tested.

Looking pretty good to me.   Just that sashiko review and that one
minor think I noted + drop the header Uwe requested.

Thanks for persevering! Jonathan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
