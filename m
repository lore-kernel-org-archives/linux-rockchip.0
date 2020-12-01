Return-Path: <SRS0=IWi6=FF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BCE4C63777
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 01:03:09 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5F68F20809
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 01:03:08 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="a21nOrPX"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5F68F20809
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gtsys.com.hk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/tY5CSiyfRCHvGk4EFOObKlI/j+tg5Huw7PgOggQnyI=; b=a21nOrPXEW79ujL2GJxOSEJtFo
	pXIgUIdvMgNdj5K41TvSC2Y63XCdwE1NTcJFub33JRmYeOZvkEz+dDxYrZITeUpMgSNU7SUMPPdMp
	Q4ZFmhAkvWCY1nl+75GYQLhszCzZoD0EXxUWtcqG0ch7vDT5c0TFXAmNYBhW1f5snMyd735CPmgMN
	iPPx774SUpGGe43Fu0uvVhHMhVrKU/4ZrY2t8mg81Qz1+ip19bKU6v/0ij4KoC2JRnq0Uh66Fkbx4
	J6F7JP1X1LUBLc81SOgJOo8Dzo1vTwjYNXZT9GUVZog5CQvVpIg8eW13qVwoJ8HQiScfZa5q7Mn+P
	c0tOgMAw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kju4M-0000P3-28; Tue, 01 Dec 2020 01:03:02 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kju4J-0000OV-JM
 for linux-rockchip@lists.infradead.org; Tue, 01 Dec 2020 01:03:00 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 3A033200E20A;
 Tue,  1 Dec 2020 09:02:49 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dr0PCsS0E-J9; Tue,  1 Dec 2020 09:02:49 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 19A88200E233;
 Tue,  1 Dec 2020 09:02:49 +0800 (HKT)
Received: from [10.128.2.32] (unknown [124.217.188.227])
 by s01.gtsys.com.hk (Postfix) with ESMTPSA id E2FF1C019E2;
 Tue,  1 Dec 2020 09:02:48 +0800 (HKT)
To: linux-rockchip@lists.infradead.org
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Subject: rk3399: mmc: hs400 strobe clock > 200Mhz
Message-ID: <c6467d6a-cf67-fde8-801d-c9ec3aa55a93@gtsys.com.hk>
Date: Tue, 1 Dec 2020 09:02:47 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201130_200259_856423_F183B7BE 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-mmc@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi

I reach out with a problem we identify with SanDisk 8G eMMC
85% of our production works well with hs400es and hs400 configuration,
the other 15% have problems detecting the chip.
For the failure analysis for the unstable boards have the strobe
clock of more then 200Mhz. We measured 204.7Mhz, looks like a
chip related problem.

Anything we can improve on the rockchip / mmc stack?

-Chris

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
