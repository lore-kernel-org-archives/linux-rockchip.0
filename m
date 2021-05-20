Return-Path: <SRS0=PymM=KP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD64C433ED
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 May 2021 16:05:00 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4F964610A1
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 May 2021 16:05:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4F964610A1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=oracle.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ERcPE0G9F1yLRf+hxjFY4qCxLvfDIyax6lM/LuEQrPE=; b=E+bpt95NXKapEFAQ+trlvhlDlX
	S/HQlaEWPHoNUQpBXifx0szjCBPJCO7xnglkSmhvZujT7TYjCzernyPJPiHlg6TmPXI4X0+PaEqv0
	6/5bG6r0Y1ab1nHPMFJIvAIjcHAkQk+nbN17bgE4Pm0x9sItTcsquOG8EyVbf1tPltuREScHkAHJ5
	nJaLp6uC/zhT2NCq4zgO2avSztYDN5RwL6m7huAcGy9zfH/H1qFZVsd+ZYsq3NvHdYz9E6yIijgDG
	Gq6BOeTUlylRe4VKSLlB+N+SqezLRwik0MIQ1I7T1KTdDQcpGZYmp1Z1ueHDAVhBExqp9kKm1E1h3
	WlCcsDWg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ljlAK-001qwW-IF; Thu, 20 May 2021 16:04:52 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ljl8v-001qR0-4i
 for linux-rockchip@desiato.infradead.org; Thu, 20 May 2021 16:03:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=UplTL1m87USsO5prWyFgDKTaFzDCcXPanOavFdSjeOo=; b=OKyROYm6bXyXZNHjY/jAGFRymo
 +JugYb9gijYffz3HVYqS+JLUTjM+t9otZ2q+tCCIpZS7+nFaOYFd3Vnrce1Dua7aYuiWR8w28iTlV
 zY97yU6mpRAPBm/FdKuhza1dMl+RvSdrkOh2km8fTUEXM9SVxpKgo/TgIfmxT/Y890mG4zNhpUMvI
 w/6BUtlqHfvqW3n5tKaYtvZ+r0fMouvTzyMNnUA7uBId2YK6doLZtv/ktkBWo4hG0buBjjnFLrXkK
 Giqi7/c7AC6fWxbotMkuX6Ycw3pman0n2+FQ5e8MLlT5xCCw1btYPE3Zqgq7vrxSCCwGWH4NUoi2j
 WFlo2s8A==;
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljl8s-00GUfj-Bk
 for linux-rockchip@lists.infradead.org; Thu, 20 May 2021 16:03:23 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14KFmwCu187187;
 Thu, 20 May 2021 16:03:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=UplTL1m87USsO5prWyFgDKTaFzDCcXPanOavFdSjeOo=;
 b=ys1hWrWBFEgWJbmdvVz1+x6+ha5Nupsy2M7GZBlM9ARY7LfwzIhm1lTWnq4ffdsbKNGB
 H0RknTU0Y+hV1DWMc++evMXP+aK2C2+yTqZ7XD4ueMYX8qOPlZS40daqtUMiaRcUFI0p
 aikII/O7OMD/vSmYnaXXDiuaWJ0kqJLUOEVxNxoMlG0JLaLynQdbMTqMiY+RfIRH3Jk1
 HAjjnC5rOiUJUXjnwFpXYmcK999YonBLDMdy5YkvINyz5m7kj4uVzuUU4ZXOTvZmBoDo
 udUsht10t+rMud9GQICL+/8Ky5w1JdOAQGHvV9OQuWuR6JhT0IZXU3+6a9KoBLzHuTXU pA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 38j68mn6cx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 May 2021 16:03:07 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14KFo7af009918;
 Thu, 20 May 2021 16:03:06 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by aserp3020.oracle.com with ESMTP id 38nry04hqg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 May 2021 16:03:06 +0000
Received: from aserp3020.oracle.com (aserp3020.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 14KG36R7144532;
 Thu, 20 May 2021 16:03:06 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 38nry04hnc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 May 2021 16:03:06 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 14KG2w4O023698;
 Thu, 20 May 2021 16:02:59 GMT
Received: from mwanda (/41.212.42.34) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 20 May 2021 09:02:58 -0700
Date: Thu, 20 May 2021 19:02:49 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Emil Velikov <emil.velikov@collabora.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 kernel-janitors@vger.kernel.org
Subject: [PATCH] media: hantro: test the correct variable in probe()
Message-ID: <YKaIKXOcDb0nXguP@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-ORIG-GUID: hGha3Rc6qYMPnQcAHEPQDkS1hl0hUjeH
X-Proofpoint-GUID: hGha3Rc6qYMPnQcAHEPQDkS1hl0hUjeH
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9989
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=999
 priorityscore=1501 impostorscore=0 suspectscore=0 clxscore=1011
 adultscore=0 bulkscore=0 phishscore=0 spamscore=0 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105200105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210520_090322_503409_CB2F87E8 
X-CRM114-Status: GOOD (  15.73  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This should be testing "vpu->clocks[0].clk" instead of "vpu->clocks".

Fixes: eb4cacdfb998 ("media: hantro: add fallback handling for single irq/clk")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/media/hantro/hantro_drv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 85dcb0882afc..8ac476be1682 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -780,8 +780,8 @@ static int hantro_probe(struct platform_device *pdev)
 		 * actual name in the DT bindings.
 		 */
 		vpu->clocks[0].clk = devm_clk_get(&pdev->dev, NULL);
-		if (IS_ERR(vpu->clocks))
-			return PTR_ERR(vpu->clocks);
+		if (IS_ERR(vpu->clocks[0].clk))
+			return PTR_ERR(vpu->clocks[0].clk);
 	}
 
 	num_bases = vpu->variant->num_regs ?: 1;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
