Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EB9DC48BDF
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 09:16:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 090AB61175
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 09:16:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 090AB61175
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=oracle.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5+hIWWkzrliLTYK9ZWPmIUoyRq1aDmAc6CZy/SV1aKc=; b=dXmJt7NNhRRVYP
	38yI09PSdwGxjIO+IyI/J8wi9PSW2fgWCxYr7GTVO2aO6P0nj5UYwC0TNIzEWran+ogEOrL4gPmWw
	ESlRnwVLdQyt4gk3VPd1RIdJoZYodMR9EEt2FNgTEJrJ2xJllHVOCvA4Y9Ewum3gfZarYGNPZSJZE
	+xavta9maaQYsd+Wpx3McjLocLjr9Y+JRbcePuYPlH73xwkRWBvr5r+hBzAolJezVP8DBwIl7lFtz
	ZzZwNBxip52bUaMvSKyFhuFjuLtPZeOJISMnamUw/fLviAyG8FuhczHWrhpGxwoggKpfgaZE2GTAZ
	/TYsdFzUYsZUW8dqPxwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luAbd-00DQqk-MU; Fri, 18 Jun 2021 09:16:05 +0000
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luAbZ-00DQpt-B6
 for linux-rockchip@lists.infradead.org; Fri, 18 Jun 2021 09:16:04 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 15I9BRGg001876; Fri, 18 Jun 2021 09:15:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=YbeHpyoOT7K4RcUxlMs6avWBO+hnKPrOWAYaC678ApQ=;
 b=DZdZLN+N/AW5ehskDLMIVlJn1zdewlNVbMpWjpeel7e+tUi66RLd7EFPiyLdeHEuMNZi
 glPD9RMWXcN+CCSN7b9mqpPzpcP5Hd0HtkwWnBNDT7eb3bLIgECN+BL3eJuUNatjxTRR
 yaY8DAXccAuXgyqtjwkoUioNDTesCY1LyTwIR99PnTWMf3DGnBDrrIckzuwX+sRkQq8m
 UTwkjk5/RAB24sW0KJHZ01cTt/gJ+eaRH/robWXU+1ZsWlAkYtyTLJddvxXnCMoWGyrq
 5QzIzTgxNlKdT6WfO7rgyVYsfTGgghOHCU38F9yRBPST86n84qKIjgPZrzwAN3c1/+49 lw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by mx0b-00069f02.pphosted.com with ESMTP id 397w1y2urm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 18 Jun 2021 09:15:58 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 15I9FOXI131060;
 Fri, 18 Jun 2021 09:15:57 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by aserp3030.oracle.com with ESMTP id 396wawjeva-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 18 Jun 2021 09:15:57 +0000
Received: from aserp3030.oracle.com (aserp3030.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 15I9Fu4F132904;
 Fri, 18 Jun 2021 09:15:56 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 396wawjev0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 18 Jun 2021 09:15:56 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 15I9Ftmr003094;
 Fri, 18 Jun 2021 09:15:56 GMT
Received: from mwanda (/102.222.70.252)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 18 Jun 2021 09:15:54 +0000
Date: Fri, 18 Jun 2021 12:15:47 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: benjamin.gaignard@collabora.com
Cc: linux-rockchip@lists.infradead.org
Subject: [bug report] iommu: rockchip: Add support for iommu v2
Message-ID: <YMxkQ2Xn9g5DSEBO@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-ORIG-GUID: 1epnshyQZTsF7k83-cHAq2lFKJSRyi8f
X-Proofpoint-GUID: 1epnshyQZTsF7k83-cHAq2lFKJSRyi8f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_021601_541428_8521BE5C 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
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

Hello Benjamin Gaignard,

The patch c55356c534aa: "iommu: rockchip: Add support for iommu v2"
from Jun 4, 2021, leads to the following static checker warning:

	drivers/iommu/rockchip-iommu.c:552 rk_dte_addr_phys_v2()
	warn: potential shift truncation.  '0xff00000000 (0,4294967296-1095216660480) << 28'

drivers/iommu/rockchip-iommu.c
   544  }
   545  
   546  #define DT_HI_MASK GENMASK_ULL(39, 32)
                           ^^^^^^^^^^^^^^^^^^^

   547  #define DT_SHIFT   28
   548  
   549  static inline phys_addr_t rk_dte_addr_phys_v2(u32 addr)
   550  {
   551          return (phys_addr_t)(addr & RK_DTE_PT_ADDRESS_MASK) |
   552                 ((addr & DT_HI_MASK) << DT_SHIFT);
                         ^^^^^^^^^^^^^^^^^
Is addr supposed to be a u64?

   553  }

regards,
dan carpenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
