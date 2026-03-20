Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85D49109316E
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Mar 2026 02:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bqin/FiyFk4uP9tmiO+BzBbIL1UPf2hgDsrf61wrmqs=; b=xbSVCn3xJw3W5x
	aOStq4qxl0LCFb5e0isY36rtalZA0vQTkxVrP5GszvT0tPWmXs+Fx+ansXPR9LKPLUp5defesjinm
	ayT0M3fFLxRMpKjlSSP1WBZ2FRA9MA6kUXzpIE03qQwe7F8NKv+Zw2+g/chnM0TvUAZBxT5z9atZ1
	eCWB3BzDOKjVmeTKs82iG0WMciA8YpwgdLH6sqScSnon7PjEn1N1nfKbIHwTZv0+owlNuXkGD0NLl
	LLon1lMDog5ZSQgT+aKPm7HliMrbpjWEqdmeSvmlHXz8ud45TkevsukNfpT8ZnJlmst5Hz6SCHgsF
	PFSzoLLL71J4l1wRaFMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3PjC-0000000BwCu-1Kx4;
	Fri, 20 Mar 2026 02:36:46 +0000
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Pj9-0000000BwCW-3OWM
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Mar 2026 02:36:45 +0000
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62K0xker536248;
	Fri, 20 Mar 2026 02:36:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=MqXfRDBGG87/SrtLAFzhwTQX9IwNVcNXwmFPCp3BRPI=; b=
	U7BIXB1BCDeOOrd0ASDnLAtkDAVrPAnv2IzQmBIXuGGAhZ1RjITy112dlJjrXtBN
	r8ecnRI96TKVcdAZTCQDdmN7A9FZVVbffIQxtjvphDrycHgPZo93uXwiG6ox3BI7
	5G1/G8Hc5pYMUrIpdhv+LyHjAO6IRfCVjWwfjslFmkXH2wYyKsiihApLcQ/IUOVC
	d2LDYaVRmLt2aAG8+zLM/EzJThLtM/YeMH6yRa3qcK5tWNS3Ja5SfQjIjFfOutQd
	bSKFqhtQVGVV/X+si9eW1Ia8/cN8Czet18gEYb1tZGzldCfpIwVpIjYKuAt2LjEm
	BOLHXf3U4lEVR6vfW0E8Gw==
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4cvyqc0v54-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 20 Mar 2026 02:36:36 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 62K0GBZk014272;
	Fri, 20 Mar 2026 02:36:35 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 4cvx4dnkfb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 20 Mar 2026 02:36:35 +0000
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 62K2aIsL027944;
	Fri, 20 Mar 2026 02:36:35 GMT
Received: from ca-mkp2.ca.oracle.com.com (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com [100.100.251.135])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id 4cvx4dnkeh-2;
	Fri, 20 Mar 2026 02:36:35 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
        Shawn Lin <shawn.lin@rock-chips.com>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        Heiko Stuebner <heiko@sntech.de>, Bart Van Assche <bvanassche@acm.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] scsi: ufs: rockchip,rk3576-ufshc: dt-bindings: Add new mphy reset item
Date: Thu, 19 Mar 2026 22:36:31 -0400
Message-ID: <177397022246.2845275.8137897176689873586.b4-ty@oracle.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <1773368467-109650-1-git-send-email-shawn.lin@rock-chips.com>
References: <1773368467-109650-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_04,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 adultscore=0 bulkscore=0
 phishscore=0 mlxscore=0 mlxlogscore=984 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2603050001
 definitions=main-2603200019
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDAxOSBTYWx0ZWRfX/qgaAJtOaN03
 jC14RcM1IXiaqoxIasGPyIwXgKR7YLYx9YIMTh4W7/pc5LgFxz8F1/kvh4MuAdA6fLNNs83cmK8
 uOTCRmvB2ULRoJSKmvSVgkdY+vSCZ4tVu0MzPJexd7BAH+9oTm8XWNlZnN4jYvE8VQYDSXtF3yK
 cNKpJEyUZHVPBLpWqKyGIiwL5ECoBYhi9Xl5Q7wWFZ1O4eTDmIvTYOo5wEqwq5FyxJgynWHS5KA
 74dLFcBhfI0lzuCrbn/StaF1BT7F0f0Aj9IEdFtdsXm7Qa/29E4aQxjNdFIdRHCqNa1np1akczU
 UCgjsN9g94jPPk8B3Xh/Q33RGFlrrihFohtO1acjcaQS2bbEV5Ktu0MGscm6Nz492YkMURkNV/W
 PyaIh/Yy/cXPYaL5u8RcyGqzEK3wGS7uuosT3o/6yssR+jGW2+355wTBiQJBSeLDvxI0YrYPemd
 CVb6+e0mlQsbwgrwNlA==
X-Authority-Analysis: v=2.4 cv=J8WnLQnS c=1 sm=1 tr=0 ts=69bcb2b4 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=BqU2WV_vvsyTyxaotp0D:22 a=VwQbUJbxAAAA:8
 a=g6HomjI_0XDERytIjeEA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: uUqhXOy5OC20BEI76Y1a1ynCUPQ1vyUV
X-Proofpoint-ORIG-GUID: uUqhXOy5OC20BEI76Y1a1ynCUPQ1vyUV
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_193643_968147_829A099F 
X-CRM114-Status: GOOD (  12.52  )
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

On Fri, 13 Mar 2026 10:21:07 +0800, Shawn Lin wrote:

> Add the mphy reset property to the devicetree bindings for the Rockchip
> RK3576 UFS host controller. The mphy reset signal is used to reset the
> physical adapter. Resetting other components while leaving the mphy
> unreset may occasionally prevent the UFS controller from successfully
> linking up with the device.
> 
> This addresses an intermittent hardware bug where the UFS link fails to
> establish under specific timing conditions with certain chips. While
> difficult to reproduce initially, this issue was consistently observed in
> downstream testing and requires explicit mphy reset control for full
> stability.
> 
> [...]

Applied to 7.1/scsi-queue, thanks!

[1/1] scsi: ufs: rockchip,rk3576-ufshc: dt-bindings: Add new mphy reset item
      https://git.kernel.org/mkp/scsi/c/bdce3a69c578

-- 
Martin K. Petersen

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
