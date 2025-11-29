Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB961D116F1
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Nov 2025 03:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XTu1dXQu+UH4P1GzRic4Yc42f9Nb8atKV+MbK18x9OM=; b=GxYX0NBY19zJkK
	PRECt/L16dQg5FYRQ+WOmcBfmfPUshB+serBHer3X3ew+OsukhUskBT3DapsqM0KmO6nlpRQnPjvC
	HaNp/d56GQSihrKmY9ojK+p94MmA1p/I144hBYUhTE4pYEDprXdvyjpa5tDgekxpAJqJOwSubXth+
	Zjq+yVk7UUItuR0O6rwK+qvaZGG/2jZkfdB6IJF9LvUoFu5o86w98/VH0hC6X1JwAil8KUrK0n7Ll
	i6f6Cmlsnx/QognyNI4bEfxwKsLOO632XajKH/Dc70Wx30lTbwSU9a69N1dS4renxgxC/2xvkxk31
	Lq3Q0MVBsWR1NrdipJIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPBfH-00000001EBz-2mTl;
	Sat, 29 Nov 2025 03:30:27 +0000
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPBfE-00000001EBS-0HqC
	for linux-rockchip@lists.infradead.org;
	Sat, 29 Nov 2025 03:30:25 +0000
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AT1uvZ9508146;
	Sat, 29 Nov 2025 03:30:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=xSr16eE09q1f3tC5tD4Ys0UgeW40YhZFR8mFvYsnXDU=; b=
	Kx/iLN7ib9+nxB/4bQnuSOxlr70GLzqc/59k/RWpeFCpfBvMHSu37exqCAmDzEmo
	Sji2QGKJLxDQqlfaBj/voZ9fr5+ptW5AdJA9Kvs4/j7F/DWhhkUg4K600eONAksW
	z5vvqgh6W8s1hEAJqxVoos9hU/K47sWpZdXRXSrgS7y5MkuNKvPBrm6KVBqNf9rq
	geCYHWCpCdxM0jrlFe1LH0V/mmAdOWrGn2bQ6qltbAbyjVXkVEoZt67LCugDqmF4
	CNPYbxFZL/4x2i6vcj4iyRYdur/p+6ZLsHNBGWQE3+nn/W+ceGRZMeOXRzzxvi0l
	Gegj0f0RLuFIl2mje6rMSA==
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4aqq8c01ue-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 29 Nov 2025 03:30:20 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 5AT1XbGu031975;
	Sat, 29 Nov 2025 03:30:20 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 4aqq961nap-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 29 Nov 2025 03:30:19 +0000
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5AT3UEpN015090;
	Sat, 29 Nov 2025 03:30:19 GMT
Received: from ca-mkp2.ca.oracle.com.com (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com [100.100.251.135])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id 4aqq961n85-6;
	Sat, 29 Nov 2025 03:30:19 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
        Shawn Lin <shawn.lin@rock-chips.com>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] scsi: ufs: rockchip: Reset controller on PRE_CHANGE of hce enable notify
Date: Fri, 28 Nov 2025 22:30:05 -0500
Message-ID: <176438479585.3682470.6069803802402545335.b4-ty@oracle.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <1763009575-237552-1-git-send-email-shawn.lin@rock-chips.com>
References: <1763009575-237552-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 adultscore=0 spamscore=0
 bulkscore=0 suspectscore=0 mlxscore=0 phishscore=0 mlxlogscore=959
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511290024
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI5MDAyNCBTYWx0ZWRfXwRDLIKbti7+B
 5JmI5ER17JJeRct/G59uXztlaOIeyRsYqv4lIedM7uXBVMAgy/pYMBv/sIBnIN35adyi0W4lX9o
 AUMh42n6hxnWkhwSKR+pIaj8nFq4oL0YzScnbKtvKSEh0+Dc0/dZBefdLy36gE7EJuW3x3y4IBy
 qZKFJ1iSs5ju3eYapzKsQ90w2EHWt1VLUodV4WUJfwrG19rDhgc7Nz75hXTB9neZOSz48xCJCJe
 HZEBZ4+sGYtFdKHp8TJD2t4pJ2r/QKyKlhDpzoZdgAdlc233qwqF4F9uXIsaC28PKDfwfiMSKNQ
 EI+7os/OWXMFYJl23U7AyWPWicvd9qWbPv+2P6OyRrzscqi1A9TahjZRLvUvKKgBxmS+pEU0G5s
 cY1BT+1kYONEo+sU2oZ36qTa/ep4Kg==
X-Proofpoint-GUID: UFye0RbPge5lnvgrakIbKKk8YzS2GDnO
X-Proofpoint-ORIG-GUID: UFye0RbPge5lnvgrakIbKKk8YzS2GDnO
X-Authority-Analysis: v=2.4 cv=EpHfbCcA c=1 sm=1 tr=0 ts=692a68cd cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KifAWfop1pt8cB6EqPoA:9 a=QEXdDO2ut3YA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_193024_224073_05500CD1 
X-CRM114-Status: UNSURE (   7.95  )
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

On Thu, 13 Nov 2025 12:52:55 +0800, Shawn Lin wrote:

> This fixes the dme-reset failed when doing recoverying, because device
> reset is not enough, we could occasionally see the error below:
> 
> ufshcd-rockchip 2a2d0000.ufs: uic cmd 0x14 with arg3 0x0 completion timeout
> ufshcd-rockchip 2a2d0000.ufs: dme-reset: error code -110
> ufshcd-rockchip 2a2d0000.ufs: DME_RESET failed
> ufshcd-rockchip 2a2d0000.ufs: ufshcd_host_reset_and_restore: Host init failed -110
> 
> [...]

Applied to 6.19/scsi-queue, thanks!

[1/1] scsi: ufs: rockchip: Reset controller on PRE_CHANGE of hce enable notify
      https://git.kernel.org/mkp/scsi/c/b0ee72db9132

-- 
Martin K. Petersen

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
