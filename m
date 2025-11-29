Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3C0ECFD376
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Nov 2025 03:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wRejawLVYK7REudDWmwsX0j1nL4GdNLggHLkNV4h1o=; b=4A8LJqe3r8KkSv
	1wI99FMk0KhqpFz/L58Dll5a6QrzykskCLZyoCoOm/TFBShboqh5Fha2KDYxjuzl8OL2HxQBERpDj
	j+GGY+K75D2t7r7LmsgOLCgAmPF7LkFjA/yBF0mncdz0bT3uTIzv7GOZdVnmw2YF1w/AlIN0AQ18k
	Jhpf3600GF9uCfF3TZmPHBnHo7vI3+0a95CRLinC670xCMPGxs6v3/+Rior2qD21A0x/60UOS1U8Z
	sou1KQ3SGnBpp1JJ46burNpY0Hzu4RA7+e1n6sj8InvjSY6rqiqY20jvJwFv4tq+EpCGreFd7yVEq
	RB2z3VcXcp0Oorp9qWOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPBfJ-00000001EC6-03WG;
	Sat, 29 Nov 2025 03:30:29 +0000
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPBfC-00000001EBE-2aRW
	for linux-rockchip@lists.infradead.org;
	Sat, 29 Nov 2025 03:30:26 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AT21tCf544889;
	Sat, 29 Nov 2025 03:30:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=c+QBz18xSN0nIGTXAStJjgnWusbbgCtloECyUkxbY8U=; b=
	P3uJLFvDj+pGqJpc14SK4b49dcMXcStO2GsRDMW8t2ZjXZrWXt6Wn012S8eFu3wc
	02JcunVejeengEOJ195HDlcsFhLApXsOJ+hYDkhnsNoGQiM7ofeiwlmeCFwDz0Nq
	hHaAr0NU1yhXiLEag1invgAwHZ7t9CsEMpVS+0ctpej3v3jpbAeQaWGGOXPNv02a
	gy+tgD+NFc81XFVCXkVNvtN+EaZH9fF/VDSFJLvflnFF9N8rqTqVJwswe2FrW7Wa
	9zafmb2mIFHUAxDKHVBMZj/DEyb9NtOsLYRRxMw5Y9Ysopymyt5pRsluxwfgNXkw
	st70fzRVqgTTCBg17jedkQ==
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4apma9tj4q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 29 Nov 2025 03:30:19 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 5AT1XgY5032028;
	Sat, 29 Nov 2025 03:30:19 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 4aqq961na7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 29 Nov 2025 03:30:19 +0000
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5AT3UEpL015090;
	Sat, 29 Nov 2025 03:30:18 GMT
Received: from ca-mkp2.ca.oracle.com.com (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com [100.100.251.135])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id 4aqq961n85-5;
	Sat, 29 Nov 2025 03:30:18 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
        Shawn Lin <shawn.lin@rock-chips.com>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] scsi: ufs: rockchip: Fix compile error without CONFIG_GPIOLIB
Date: Fri, 28 Nov 2025 22:30:04 -0500
Message-ID: <176438479587.3682470.2060847017391787355.b4-ty@oracle.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <1763011091-243727-1-git-send-email-shawn.lin@rock-chips.com>
References: <1763011091-243727-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 adultscore=0 spamscore=0
 bulkscore=0 suspectscore=0 mlxscore=0 phishscore=0 mlxlogscore=776
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511290024
X-Proofpoint-GUID: njwfnMXDwQy81NbbIYZt-h7XDovHUN9E
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI5MDAyNCBTYWx0ZWRfXyu8BsQSHj1rF
 Ffx/FZ9VEe1lKMMmtWN9uIe7dV7qgOWHUg91VjYkmJiAr8R3IbVZVwfKU9bCtDHo78bchsN+f4L
 br1bh8mn/Lk2MXOdyUgsPKtiFuS3eC/AxQivtK/JGcYzfZCcyUZUShPO9GXMR03nqImRGwbSAQJ
 QF1hMJsHZgaq1Krs5ozxCkqqoSfI1tRh/2rUn0FK1HIzLSUAOF0fGtQP84QQtZUwS+FNgmn+E+I
 yhzroJ4x8YYOzwSqkqom/ua0IcT3lyDjK6FOZ+Aup0CnA+b+4/oozutJFxdET+VwbKbWiIt7XEK
 G73MEmluQEZBr7XLLkVq3LaM23UlzvjfuWors+qYscx0QqvjGWgsF874WsytIQu1E7dTDBvaOiy
 mrZvh92BO4d/KCreDFuqSnSkRws81w==
X-Proofpoint-ORIG-GUID: njwfnMXDwQy81NbbIYZt-h7XDovHUN9E
X-Authority-Analysis: v=2.4 cv=Sr+dKfO0 c=1 sm=1 tr=0 ts=692a68cc cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=5lCOSElcjm02eNXVyxQA:9 a=QEXdDO2ut3YA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_193022_866697_45718036 
X-CRM114-Status: UNSURE (   7.50  )
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

On Thu, 13 Nov 2025 13:18:11 +0800, Shawn Lin wrote:

> drivers/ufs/host/ufs-rockchip.c:168:19: error: implicit declaration of function
> 'devm_gpiod_get'; did you mean 'em_pd_get'? [-Werror=implicit-function-declaration]
> 
> drivers/ufs/host/ufs-rockchip.c:214:2: error: implicit declaration of function
> 'gpiod_set_value_cansleep'; did you mean 'gpio_set_value_cansleep'?
> [-Werror=implicit-function-declaration]
> 
> [...]

Applied to 6.19/scsi-queue, thanks!

[1/1] scsi: ufs: rockchip: Fix compile error without CONFIG_GPIOLIB
      https://git.kernel.org/mkp/scsi/c/cda5f23eed84

-- 
Martin K. Petersen

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
