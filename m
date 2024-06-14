Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6176EC27C77
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jun 2024 16:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E66v1+HuJQNbm3pJYgto5zbFQJzKpbpz1mD/W4nncZY=; b=bwOaTO1ZDR1E6z
	iNSUzy56tgjJ1rYrez7kQkMCiMFoXmyNvcc9nABmes6J2ZQWARqePFw/WLgnbrFzKKWQFvDTp212B
	0q5rx2MXdR6v8i7QZiVL0pRjL0wAiLhfXkCIULN1DxgWEwbXY9qMexp7lXkTQwY3mRbvxhvtNNi3n
	NgcNDVrvMEyNHn6kpKfkl2qq30nzMxRpWvXsmsveLyIu1u8Kj0PaZhYZh+SmRaD/BpkrzlPhOCBXA
	oLJkQaN9dMFBtzrVx1atWRCnzKXHQSmy7+zc/wBMbg0IySlnfGc2Q1cHn2Ev9PLr7rR2dbAyFBxBk
	Osrb/JfBBOGRLNq+a0eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI9gP-00000003O5z-2dxK;
	Fri, 14 Jun 2024 16:21:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI9gN-00000003O50-0FR5;
	Fri, 14 Jun 2024 16:21:44 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45E8GgVF030966;
	Fri, 14 Jun 2024 16:21:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ppnvC/ArPtVIlJzIvzpz61ZVN8j+4Yift9Ae0cCDUcs=; b=EbysnwGS4cZTYbl7
	gHvKS8jTcdGgA5daWROx/eJIKIglFFN/dmfctbWv/NXSFQRsKmyuTRSuhbqOShjO
	w8rJkVpxr1R2DKvQ3+wV+LZnBZVDlCjAtiq6ijb3oz8ME1SlJH2L5jdz5WCmPFii
	92UUmEqYX5XK4ivkU726APmqZgwl7/X2Qo3x31XgGDgVcte5pKfrzbFzVGTZSpgs
	FPO5CCJ3zdYZgWkh7AKzwEjQTRpSaZwAavo8H+Y4LZzjS7tb4ehFZZiXPKGvIoNC
	z+I9Q1aTvgdK9roXrA4FsZTZUhqSyJIEktt783ajsLXXjwG7Em7XjUYBKOErR/Kg
	ykRo2A==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3yr6q2t9pv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 14 Jun 2024 16:21:26 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 45EGLNuO021852
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 14 Jun 2024 16:21:23 GMT
Received: from [10.226.59.182] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 14 Jun
 2024 09:21:23 -0700
Message-ID: <8f0ab2e9-3f41-3b39-6733-e5063dd7ca43@quicinc.com>
Date: Fri, 14 Jun 2024 10:21:22 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH 7/9] accel/rocket: Add IOCTL for BO creation
Content-Language: en-US
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Joerg Roedel <joro@8bytes.org>,
        Will
 Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Heiko Stuebner
	<heiko@sntech.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Oded Gabbay
	<ogabbay@kernel.org>,
        Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>,
        David
 Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard
	<mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Philipp Zabel
	<p.zabel@pengutronix.de>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
CC: <iommu@lists.linux.dev>, <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
        <linux-media@vger.kernel.org>, <linaro-mm-sig@lists.linaro.org>
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
 <20240612-6-10-rocket-v1-7-060e48eea250@tomeuvizoso.net>
From: Jeffrey Hugo <quic_jhugo@quicinc.com>
In-Reply-To: <20240612-6-10-rocket-v1-7-060e48eea250@tomeuvizoso.net>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: cfgQbnp0Qu7uwDjEmxhNpEZP84sCt-Lp
X-Proofpoint-GUID: cfgQbnp0Qu7uwDjEmxhNpEZP84sCt-Lp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-14_14,2024-06-14_03,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 mlxscore=0
 bulkscore=0 mlxlogscore=666 priorityscore=1501 spamscore=0 phishscore=0
 adultscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2405170001 definitions=main-2406140110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_092143_226427_960449E9 
X-CRM114-Status: UNSURE (   8.04  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 6/12/2024 7:53 AM, Tomeu Vizoso wrote:
> This uses the SHMEM DRM helpers and we map right away to the CPU and NPU
> sides, as all buffers are expected to be accessed from both.
> 
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>

Reviewed-by: Jeffrey Hugo <quic_jhugo@quicinc.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
