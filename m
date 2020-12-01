Return-Path: <SRS0=IWi6=FF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 764EFC64E7A
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 14:31:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EDEC220757
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 14:31:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="JxXXGQ+e";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="KDcY+lTc"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EDEC220757
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=oracle.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:Subject:To:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=0N/BVz8sOh9Dj1RUas8mHjVIFOxDuK3zp4XN9+GsWJ8=; b=JxXXGQ+e6fVHPhVLGrnXC89NR
	PfLmz9q2/A9+SbmZbSfpSpVqc+EWQUl6x1fVM9Mjj8gY017+ORhHzvQye44HamKuRy8HxcYx78Ody
	iYCDeGg7FZE/BC+7RPJFc2Ed84+hVuhhdfJqp+VVz06yaicDDKsBO97rUkYrte84zcvidc0ujr9fU
	024Mlw5p7YIUrciYjxq8w14hS5QlzpFlY4k2KTn9+ifPJvDCQTWl1efe7Bwd9cm5qnT1UkKT7EZHo
	qokuFSptV2WG39MW/CcZcKYsQOfXa8/bUNw9Dc9WSgKoBtdfhOi5zKY0x/7kuKfH+4GKoRCuvEqiZ
	a0FanpMxw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kk6gW-00020Z-MC; Tue, 01 Dec 2020 14:31:16 +0000
Received: from aserp2130.oracle.com ([141.146.126.79])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kk6gS-0001yG-0v; Tue, 01 Dec 2020 14:31:14 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B1ET4f3052841;
 Tue, 1 Dec 2020 14:31:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type : in-reply-to;
 s=corp-2020-01-29; bh=mQts94rHer9WemoS7c8i+DV543vHJuK33cqzIkDxFy4=;
 b=KDcY+lTcIJsjw6y+qWKZToLaZNbkaIovCjCXWKgV1Bq6IvIlbMyO0YHDmD9b1qqrzHPv
 E2RrxWpkT6Y8X2mmhEjkMP8XAfx/5csuY6a05yo+42hs8KMtQI4iIjML3n70KLS1LMS1
 gMRISj7Rh08H+uHVl7OpIdNxGA2sMAW3ACPczU67CUwf68GBFJfV/4014StlF9KYIWDI
 89F/gQbuHJhS7TKQlzkdfOJVFEhjYLE6zIyid7rQn7vP578sjOrqyPEeMi68yqgUUEn5
 vU4UxmhXLCB7f1Oq86rPnCCev/X/a5UzkQyth8NIjaubK9NvKop5rxyV6A4EI31QxO9+ NA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 353c2atxbr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 01 Dec 2020 14:31:07 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B1ELJaw117970;
 Tue, 1 Dec 2020 14:31:06 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 3540fx12mf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Dec 2020 14:31:06 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0B1EV5Of030407;
 Tue, 1 Dec 2020 14:31:05 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 01 Dec 2020 06:31:04 -0800
Date: Tue, 1 Dec 2020 17:30:58 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Helen Koike <helen.koike@collabora.com>
Subject: [PATCH v2] media: rockchip: rkisp1: remove useless debugfs checks
Message-ID: <20201201143058.GJ2767@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a6d9660f-84ec-317d-c3aa-9b3bda595d49@collabora.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9821
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 phishscore=0 mlxlogscore=999 adultscore=0 mlxscore=0 bulkscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012010092
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9821
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 lowpriorityscore=0
 clxscore=1015 bulkscore=0 mlxlogscore=999 phishscore=0 malwarescore=0
 spamscore=0 adultscore=0 mlxscore=0 priorityscore=1501 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012010093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201201_093112_212566_1BE79DD4 
X-CRM114-Status: GOOD (  18.41  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The debugfs_create_dir() function never returns NULLs so this code will
never be executed.  It's not intended that callers will check for
debugfs errors in the normal case and it's not necessary in this driver,
so we can just delete this code.

Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
v2: Fix subject

 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 9af137e4967f..68da1eed753d 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -430,10 +430,6 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
 	struct rkisp1_debug *debug = &rkisp1->debug;
 
 	debug->debugfs_dir = debugfs_create_dir(RKISP1_DRIVER_NAME, NULL);
-	if (!debug->debugfs_dir) {
-		dev_dbg(rkisp1->dev, "failed to create debugfs directory\n");
-		return;
-	}
 	debugfs_create_ulong("data_loss", 0444, debug->debugfs_dir,
 			     &debug->data_loss);
 	debugfs_create_ulong("outform_size_err", 0444,  debug->debugfs_dir,
-- 
2.29.2

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
