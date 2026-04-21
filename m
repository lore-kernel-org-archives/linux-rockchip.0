Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94D5EF5A8D3
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Apr 2026 02:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wM567PWPyCXxxlm4NLGSSg1v51y3QgMXZE+YkuqvYiY=; b=26MY4yF6rnsIMq
	1hlpXQT/pHHxT/RQOuZj0u6O0qU/2GTu+hPCPs3RAiL9ndJ6vuCFxP4siZ1oE4b7M2mD2/U8Hb64U
	jMqfqDTP6aBBeYdXYPEW9GLrdo5fbTHmlWmMlpArbSwtKSVJkhqKLbnufbBbJkKZzWRkb8Q82wjHF
	lTl6k/6tHBPo3tsMKPtVLWrp/pLsEQLQk0c2uQaPdkCMgYLrtx59On/blsuR27C7JIxkTVOJrTCYa
	wUwfi0t4sgvo9Ff5RzgO9T2YvYeXlDEgeOqFFHM0tSOKHYQdZRU2Cjch/TeJQTRhdVNkMPLw9PIzZ
	XI1ADGFTwqtHj0ehXDaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF18v-00000007xU0-0pRQ;
	Tue, 21 Apr 2026 02:47:17 +0000
Received: from mail-m15573.qiye.163.com ([101.71.155.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF18t-00000007xSG-2Pso
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Apr 2026 02:47:16 +0000
Received: from localhost.localdomain (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3b7d2084d;
	Tue, 21 Apr 2026 10:46:59 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulfh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 0/2] Add cap-aggressive-pm support
Date: Tue, 21 Apr 2026 10:46:47 +0800
Message-Id: <1776739609-122962-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9dadef11f109cckunme87b03509c02b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDHhlMVhpCH0oaT09LS0pOQlYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0hVSktLVU
	pCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=gW4q8BPPTnkzBmL2Gkqg/JNPwCn3eCovO2SyU2N9Egxpv0Py3EgivbV4aXZgYQpGgkZ4Azhs8aeCfYgok3hYjf6FOViEjpvgULQQ0PazW77Am+nGUsxuP6k25fmrYViOX6nNmjgRjWUhu393dqJTPrV5U1mkG54EIAzNX0DH/a4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=vsFuk1fsI7/8+FVx/gj8HaiXCuVQtzviX/PAXdoc+Kc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_194715_777548_91B04394 
X-CRM114-Status: UNSURE (   6.86  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Aggressive power-management is now all-or-nothing set by host drivers.
This should be board-specific, add a new dt property to support adding
it via firmware;



Shawn Lin (2):
  dt-bindings: mmc: Add cap-aggressive-pm property
  mmc: core: Parse property for aggressive power management

 Documentation/devicetree/bindings/mmc/mmc-controller-common.yaml | 5 +++++
 drivers/mmc/core/host.c                                          | 2 ++
 2 files changed, 7 insertions(+)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
