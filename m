Return-Path: <SRS0=vRnG=HY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,LOTS_OF_MONEY,
	MAILING_LIST_MULTI,MONEY_FREEMAIL_REPTO,MONEY_NOHTML,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D324C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 15:17:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0232264E83
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 15:17:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0232264E83
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=real-ptt.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Message-ID:Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Date:From:To:Subject:
	Content-Description:MIME-Version:Cc:Content-ID:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=926xKLIeA5az6xWvDnwMKW+s4db/esJDOz//RMsSvlI=; b=Fh0h+Y0p2M5CpZ
	//A12eS60cETppVCBKaKujIfZ36kGoxoKnIEfZn+PGveABsjmziUhYMjKuVe3QFY8dloN/+WjMbUQ
	xpK8UeyYCUigEM4/5v47nHITq2viU+KFssLRypOzCg8i/otGPZNyBHlVK56V7F1PKJZ+JXoLaPx0B
	hmAIOVgo0kgnje6QyxNk/+3wq5d6oYpElQaRKUoCK4V7yocRdVukULTDhFOft5OZfYDKyD9Z/cfyQ
	yu9bhbqYW/62SHvUTsD2FTzeB+2aFxDhrEzS7akWaGerm6XIIqw+WmmC5TBRTBwFrbmKhg02D4auh
	7dN9n+Dt84JnB+k9C5Uw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lECxJ-0001k1-Kf; Mon, 22 Feb 2021 15:17:01 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lECxH-0001jG-VU
 for linux-rockchip@merlin.infradead.org; Mon, 22 Feb 2021 15:17:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Reply-To:Date:From:To:Subject:
 Content-Description:Content-Transfer-Encoding:MIME-Version:Content-Type:
 Sender:Message-ID:Cc:Content-ID:In-Reply-To:References;
 bh=pXIgOOxyZp4aE+IYJxOfc37kmQfJ+Fic1R3d+i9deOQ=; b=c8swKzkbr2fa+xLylVqMH8mvIi
 67kZz+0M7TS1dpdktLfWlD16m2z7nMOvaUEEn3qB1wQqD4UJtGRx35aZwPI3R9Q0nXsTs+3MPUdFq
 nfa/0+VVr/RefcPTGHt+MebyHXwNCJNq3PhGfcJ+VCVtN9VBaD9YCUfk9xgp/J6dauxBlHaUFoPor
 OOn6He2qC5o9P8ggyBD+p5cC169IEnI46xPPzRcjIXDkDfmfa1btSOF7GwnVOtl07Jxs2gwiJudIj
 C96e++4/USfUcSBffXShErt++gCPvry31l59UO9sslF2952bDYdeDwHLM7JtSERFA4R+PRfM9YZTE
 o6u26coQ==;
Received: from [8.211.43.121] (helo=mail.real-ptt.net)
 by casper.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
 id 1lECx2-006jCp-54
 for linux-rockchip@lists.infradead.org; Mon, 22 Feb 2021 15:16:47 +0000
Received: from [103.99.1.174] (unknown [103.99.1.174])
 by mail.real-ptt.net (Postfix) with ESMTPA id 12E7FBBED7
 for <linux-rockchip@lists.infradead.org>; Mon, 22 Feb 2021 23:16:38 +0800 (CST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Low-Cost Loans for SMEs & Investment Funding.
To: linux-rockchip@lists.infradead.org
From: "Nicholas Toms" <service@real-ptt.net>
Date: Mon, 22 Feb 2021 07:16:36 -0800
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210222_151647_268593_99D9CB4B 
X-CRM114-Status: SPAM  (  -5.15  )
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
Reply-To: nchlstoms@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Message-ID: <E1lECxJ-0001k1-Kf@merlin.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

My name is Nicholas Toms, an investment portfolio manage. We offer the right loan Investment funding with low interest to finance your business or project ranging from US$1M to US$2BIllion. Kindly contact me for more details as I am open to questions. 

Sincerely, 
Nicholas Toms

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
