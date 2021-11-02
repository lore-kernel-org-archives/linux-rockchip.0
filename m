Return-Path: <SRS0=tLvN=PV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F9A1C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Nov 2021 18:29:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AE25760F45
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Nov 2021 18:29:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AE25760F45
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=metanate.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r9c2+OTfliDR6J8rF6FWfbNqC/oSJNELp57LvszLcic=; b=Wd0SQ6wZwElPMH
	CF+omRm8SZ4f3S8k2yLw/PoOLwESHgISglD6DpAHvqdZXpFbFKHJE0rYyWx0dbNpzw361bufVFJcj
	Y6GrhWdzrBAA/ohDCC5ewvEiZoB3WMwB+1oY1Hjyo9kHpOg3j6ck6+pcBUNkOvQ6UNAoUnNo7IRzS
	Dw+6RUptSUGAtZz6cQ/ONEm4hmFUH/7XPFQWqmjilKBtUfLudlBGD/PfmoQ0jacDtleqRTPvwUmWz
	5xI6wJWJkDZYAzPXol8NFXB3ys8z+E0U2lVnomudoC1/T78ba1eGVV9t6mQaextxQ0OAwszrmKP47
	Xl99aNhTzg44PUrLkJfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhyXS-002g0b-Sx; Tue, 02 Nov 2021 18:29:38 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhyXQ-002fys-C6; Tue, 02 Nov 2021 18:29:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Content-Type:Reply-To:Content-ID:Content-Description:
 In-Reply-To:References; bh=1ieuVzyfBKvZOljqpQjGnJfWFfeJ28/F0/+Bfa8Vs/w=; b=7f
 mfiofwBR/gHLr/ZAexJI5CxabzyVyG9pcLEs2DHhEvKRzNbWw7IXlZrmbgPolmqPOAu2Z/eLHrBpT
 ePU5n91fj5h5ZdfzhlqJ8lFCEGvz/XVhyrLzgx0Ba5qZxHhD9E2j9I2bKA9zw0S3LvfQA5LZX3J0H
 2neFt7meFgNpBS0YR3HsF0WP1V2bV4BJ9CTYdPJcfZzhNzHPnLjHHANeK1Qik1JSnf6bj5L//FONE
 bzjwNybsV4A5juXRb0H2OU5tY12t8CjE17rojBMRr0HwiZygc6PTsWT4XcOMenWG/sH850OuE55d2
 yQ0wFZTdXAFT6eW3xyIGYNuH261Z0x8Q==;
Received: from [81.174.171.191] (helo=donbot.metanate.com)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1mhyXJ-0004Uv-UJ; Tue, 02 Nov 2021 18:29:30 +0000
From: John Keeping <john@metanate.com>
To: linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Andy Yan <andyshrk@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 John Keeping <john@metanate.com>
Subject: [PATCH 0/2] arm64: dts: rockchip: fix a couple of vin-supply typos
Date: Tue,  2 Nov 2021 18:29:06 +0000
Message-Id: <20211102182908.3409670-1-john@metanate.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211102_112936_575205_2D77E314 
X-CRM114-Status: UNSURE (   8.41  )
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

The same "vim-supply" typo appears in a couple of DTs.  Here are fixes
for both of them.

John Keeping (2):
  arm64: dts: rockchip: fix rk3308-roc-cc vcc-sd supply
  arm64: dts: rockchip: fix rk3399-leez-p710 vcc3v3-lan supply

 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.33.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
