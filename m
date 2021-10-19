Return-Path: <SRS0=otL+=PH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88EDCC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Oct 2021 10:01:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 24FA26134F
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Oct 2021 10:01:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 24FA26134F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=cmss.chinamobile.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2xw4WMg3zVExVwiQb5P3CNuuWSj4L6Z6sexSaFOYRj8=; b=34h+y+C2k6k8xa
	izJsYnO4Sg/AnAyVEQkhH+UkgC3iW28oNn51bJVuK/43M0l0rqRUWaQUNrCPcsX6QRzCtDiyA7W9y
	u2etOyo1gd9zKH2FsdkL6scOA8jcn/ZuiRgwgSkvt+FAZVmH6p+67iU7EKVV+oTJS1R1/MesupUZZ
	aGzPuqb12/zqNwowD2TsJ/bkeiCIvtlBmPlopRAs0wW67EEHJbOpytCGnf4O0CraqoRCaEDgJg3gK
	w2WPQ4btWiSmXTT/b+1MGT1/9NZytaYtUjY2sL1OvzcERR794ZKowCqA+L9AUD25cFnCERYUsN1gH
	lZ5FHCDHCleK04YxuWMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mclvb-000k6T-U3; Tue, 19 Oct 2021 10:01:03 +0000
Received: from cmccmta3.chinamobile.com ([221.176.66.81])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mclv9-000jzS-IY; Tue, 19 Oct 2021 10:00:37 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.5]) by
 rmmx-syy-dmz-app11-12011 (RichMail) with SMTP id 2eeb616e9729ab0-faf52;
 Tue, 19 Oct 2021 18:00:09 +0800 (CST)
X-RM-TRANSID: 2eeb616e9729ab0-faf52
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[223.112.105.130])
 by rmsmtp-syy-appsvr03-12003 (RichMail) with SMTP id 2ee3616e97244be-dc5d5;
 Tue, 19 Oct 2021 18:00:08 +0800 (CST)
X-RM-TRANSID: 2ee3616e97244be-dc5d5
From: Tang Bin <tangbin@cmss.chinamobile.com>
To: jic23@kernel.org,
	lars@metafoo.de,
	heiko@sntech.de
Cc: linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Tang Bin <tangbin@cmss.chinamobile.com>
Subject: [PATCH 0/3] iio: Use of_device_get_match_data to clean code
Date: Tue, 19 Oct 2021 18:00:10 +0800
Message-Id: <20211019100013.27312-1-tangbin@cmss.chinamobile.com>
X-Mailer: git-send-email 2.20.1.windows.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_030036_301556_D49CB21C 
X-CRM114-Status: UNSURE (   5.69  )
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

Hi all:

This patch series replace 'of_match_device' with
'of_device_get_match_data', to make code cleaner and better.

Thanks

Tang Bin (3):
  iio: adc: rockchip_saradc: Use of_device_get_match_data to simplify
    code
  iio: adc: max9611: Use of_device_get_match_data to simplify code
  iio: adc: twl6030-gpadc: Use of_device_get_match_data to simplify code

 drivers/iio/adc/max9611.c         | 4 +---
 drivers/iio/adc/rockchip_saradc.c | 7 ++-----
 drivers/iio/adc/twl6030-gpadc.c   | 7 ++-----
 3 files changed, 5 insertions(+), 13 deletions(-)

-- 
2.20.1.windows.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
