Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56BAEC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Dec 2021 21:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gu1ECNT47jjROBQPFqa6xKFXOD/jVnFkI3b7rjv1z7k=; b=GUHxXS2lraKz9r
	0HL37pDtdSlWXbf0qItnwFiIZbpwwFxcKkFuhhlIh8qjcKvFKBq/uJqEontDhsSg01poqAwOnEeri
	V6jxOMf8EIQAGegX8Tb/oE6ojBwy212fGQ29K2JTvpl72FYxxphOM3lTwXU9SIqO1q8pPW7HLXLgm
	XhHjSDXnc0sa1UF0OW3wr0K0ofQ0aamgdN0b4c8Shv6kiqKG5sMzm7Kz+38NDyBbIsnqXcKrsHz55
	1AKQb05X2UuH1NwnxMI0BGyb3h9/jZwBiNEG0+1kqVZc6XBujaHvUmr/wiHNpmmmSmaMqmFNXV7Kh
	OaTeOlPNHKE5RBFKoXGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxbtp-002oEN-Ui; Wed, 15 Dec 2021 21:33:21 +0000
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxbtn-002oDa-R3
 for linux-rockchip@lists.infradead.org; Wed, 15 Dec 2021 21:33:21 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout2.routing.net (Postfix) with ESMTP id 5DDD55FC9A;
 Wed, 15 Dec 2021 21:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1639603990;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=CGLX4lLKfaZJIZOOlRW1Svrup+UeHGpvxaEwvbFjJ8Q=;
 b=w4/Jg15uEcK4Lge66BgXoVXqq8ATZOv9qKAS5iTDg3c3qh327Fes066m3haOUXjYW1WBqg
 0h0ciRXFEWNMAGdzFJyjaD68IamgLcg3bk27RjZw0TRM5pXgkXvaHXEA376NOL/30vM+AC
 hsuQaUN73stUjvpGT1peX49j3DdVbGY=
Received: from localhost.localdomain (fttx-pool-80.245.79.169.bambit.de
 [80.245.79.169])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id A63AC4023F;
 Wed, 15 Dec 2021 21:33:09 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: Lee Jones <lee.jones@linaro.org>
Cc: Frank Wunderlich <frank-w@public-files.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH 0/2] Add Poweroff/Reset for rk8xx PMIC
Date: Wed, 15 Dec 2021 22:32:58 +0100
Message-Id: <20211215213300.4778-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: f522c713-099e-4ada-b605-9e769a6c0983
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_133320_064103_26531FFF 
X-CRM114-Status: UNSURE (   5.03  )
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

From: Frank Wunderlich <frank-w@public-files.de>

This Series adds Reset functionality for rk805,rk808,rk809,rk817,
rk818 PMIC and poweroff feature for rk809.

Frank Wunderlich (1):
  mfd: rk808: Add poweroff and reboot support for rk809 pmic

Peter Geis (1):
  mfd: rk808: add reboot support to rk808 pmic

 drivers/mfd/rk808.c       | 50 +++++++++++++++++++++++++++++++++++++++
 include/linux/mfd/rk808.h |  2 ++
 2 files changed, 52 insertions(+)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
