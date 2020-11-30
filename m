Return-Path: <SRS0=Brux=FE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A3ACC64E7B
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 12:54:00 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9259C20691
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 12:53:59 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="2spklIgI";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="Q37V5W8B"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9259C20691
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=oracle.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From:Date:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=K9Zz22jc4nJpDNjceAhkrtF5KSMZy0uPSo+xRnmCxTw=; b=2spklIgIoDgWfmM7Z387sS3a+D
	gpDDEZdPDo4u5cx7fdvMt1rCS2k6kFyfys/uiW9e6ns49318lg56u3cU4JDWgDo3KFlZC3eaJc/7u
	/kqFSzAcx3fUbYL0Aqh7c2hvquWDhcBZB1NBYNgXbmgZwXQWcXbbG9BdpUaiIH7eQYAaXyauEIa0/
	wZeIf6XVY+GqbSaTT51c2sflYE+zZTt09k1Q3MF2rotkAjlndPemY5nvVGjmrAw2oHo6G7YktO14z
	Q0uksRNt/mXNY2yDH7DhnIkeps2ytQ8xHfGRMlh30U5DAQUQgjWyg3I9WN87LDVcKCyHr6E3c++Z7
	h5Ivu0AQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjigk-0002Wf-Ig; Mon, 30 Nov 2020 12:53:54 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjigh-0002VQ-Ug; Mon, 30 Nov 2020 12:53:53 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AUCT3mC013966;
 Mon, 30 Nov 2020 12:53:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=T4e4SA0nsSEz5R/oPuOynUVhSHa8l4YzlQu9nbAV6w0=;
 b=Q37V5W8BrV9ozjYfQYey5wQMtLuLQ4dmuxgiTZBdTxDJp0/FHLpDNWXFDvMVmNBdLR+v
 XssuGqWJVxMTnYzAgT/wMDDY0XqipupHDTedLvuArKTytQ5SWxLNtHRaJ9oSF3+GZCbk
 +S0h2Zf92kCHJH2lKo0ODJT4OV5FablRJU5o7psx3W5ufD4Dqge78TjQ1Cshr/xe2CJA
 +eDi8+n/7dlCQLCCw4KjCMhm+2W4Rn8gSLB0CvFBQOsfdE6OJAj/fkM+DQZK1kr6UU8Y
 /ubilApDr6oJZUlFcgpmIl3DK65hBlIJKn01E8NoVSyfHWhQm0iOx5RWW9orbSgwiFYx cw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 353egkctw6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 30 Nov 2020 12:53:43 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AUCpG43118219;
 Mon, 30 Nov 2020 12:53:42 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 3540fv1u59-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 30 Nov 2020 12:53:42 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0AUCreQG015374;
 Mon, 30 Nov 2020 12:53:40 GMT
Received: from mwanda (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 30 Nov 2020 04:53:39 -0800
Date: Mon, 30 Nov 2020 15:53:30 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Helen Koike <helen.koike@collabora.com>
Subject: [PATCH] media: rockchip: rkisp1: remove some dead code
Message-ID: <X8TrSj3PbqVtN5XQ@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9820
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 phishscore=0 mlxlogscore=999 adultscore=0 mlxscore=0 bulkscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011300082
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9820
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 bulkscore=0 suspectscore=0
 phishscore=0 mlxlogscore=999 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1011 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011300081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201130_075352_136368_0B11ABB3 
X-CRM114-Status: GOOD (  17.12  )
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

The debugfs_create_dir() function never returns NULLs.  It's not supposed
to checked for errors in the normal case and there is no need to check
in this function so let's just delete this dead code.

Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
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
