Return-Path: <SRS0=7T5N=LJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC1DC48BE5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 19:02:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 39B8E611EE
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 19:02:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 39B8E611EE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qGiG/hoeTL9G5eH11iPpCG4E84ViAGJlaMrHvPd31XY=; b=Fm7p05KaxmURyx
	xqsLQKyJYPGwD9Mves5P+tv5eKSMnemd5oWEEcMhgnBO+ROUq6Woum2qef2YvU1txod5IlFZA/Yic
	PW56gFT3/l/VCgqrfaccOR4NGoHcZvhVBlCTdDcKWt127gFn8Oq3vbE5N7HXO564SOeY1PfUgMlJA
	O7GjPt8Ks7M3FBGkRkiVM20uu5A9blEzXc1VLH2GO1sl4hNVXRXxoUUKC4nXX/vKGSsj7QqlCwF20
	Ts7YPgg0JAoYPmRVx2wFoT/8uK4OA7GokxaJjst99mSgQ2CwcKYupUtDyalYxH4Uhea/0YhL8JTwi
	Te5jOXDUvOn7PknUR3Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltEK5-002Ie4-53; Tue, 15 Jun 2021 19:02:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9Nw-000DwX-Mq; Tue, 15 Jun 2021 13:45:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=p0AKM/K8W2F6iWwiMlbHPsIWhUbBpFDlxnvAU/a/ZCQ=; b=NKq6Fs6u/klZkSHbr4R7Vlrj6n
 mKVQnGEDQV6L2wrWuodpDxC2rpJApzDiqULZildrNalD6U9qivPeatrnh0EwWVqFuY92xxAMPXdLg
 6EGfXEJ1SlBNisJGF329yU8iq0Fl74/FOhN1719L3QlBUvQukot99x/afJakusiqgoSlAfN6xBFnt
 EwRrSSbRpNxxe5Fktk+G5+7oq2hrkRsdzqrGZ3o+nqEEZ89yN0fx1e5be5LVGRWk/2fdL3O4RvXXu
 BW6K46ZNJsMpdn4n6+u0n0bPSNfqeIDppAuHtsx0+eb+6B6ks7KG5AH/zp5kplvHDOVttJplDFVxa
 AMZ2jzJg==;
Received: from lucky1.263xmail.com ([211.157.147.131])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lszoD-007IUH-8R; Tue, 15 Jun 2021 03:32:22 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id E0BDABA865;
 Tue, 15 Jun 2021 11:32:16 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P16485T139918414178048S1623727934928454_; 
 Tue, 15 Jun 2021 11:32:16 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <88ca8b830136884670bdc08239cae3ae>
X-RL-SENDER: jon.lin@rock-chips.com
X-SENDER: jon.lin@rock-chips.com
X-LOGIN-NAME: jon.lin@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 9
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: jon.lin@rock-chips.com, heiko@sntech.de, robh+dt@kernel.org,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH v8 0/6] Support ROCKCHIP SPI new feature
Date: Tue, 15 Jun 2021 11:32:07 +0800
Message-Id: <20210615033213.14241-1-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_043220_631991_1CD6EF40 
X-CRM114-Status: UNSURE (   9.65  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



Changes in v8:
- There is a problem with the version 7 mail format. resend it

Changes in v7:
- Fall back "rockchip,rv1126-spi" to "rockchip,rk3066-spi"

Changes in v6:
- Consider to compatibility, the "rockchip,rk3568-spi" is removed in
  Series-changes v5, so the commit massage should also remove the
  corresponding information

Changes in v5:
- Change to leave one compatible id rv1126, and rk3568 is compatible
  with rv1126

Changes in v4:
- Adjust the order patches
- Simply commit massage like redundancy "application" content

Changes in v3:
- Fix compile error which is find by Sascha in [v2,2/8]

Jon Lin (6):
  dt-bindings: spi: spi-rockchip: add description for rv1126
  spi: rockchip: add compatible string for rv1126
  spi: rockchip: Set rx_fifo interrupt waterline base on transfer item
  spi: rockchip: Wait for STB status in slave mode tx_xfer
  spi: rockchip: Support cs-gpio
  spi: rockchip: Support SPI_CS_HIGH

 .../devicetree/bindings/spi/spi-rockchip.yaml |  1 +
 drivers/spi/spi-rockchip.c                    | 95 +++++++++++++++----
 2 files changed, 80 insertions(+), 16 deletions(-)

-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
