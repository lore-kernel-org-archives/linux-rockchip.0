Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BB7FC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 May 2022 20:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:
	Subject:Content-Description:MIME-Version:Cc:Content-ID:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QRnEnvdH2Fix89DixYsTBcwKxBkloYRnFuaQmaPwFMY=; b=KPk
	3e1GRqWpYZVzdqKfhIWcaf6Q6YFm9fibPKTR+83S1tRz3RI3ixm7pauogRBhmqeWbsQKphXDfiNsc
	0qmifZn2gWbBgl5Xl08uFbdmP+v7U/qc0g30aDOIOF8vxhAWrIlkX6jXx2Z04s9T+Vr1ZQ+xbEUyw
	fpN04aTKomd3hxK5c/bIY0veQgt3tAblhGmvcGngf8qFjir1/0bA1Ud8+DdjBXTZwIlvsxKklp4Yr
	Odtl6nKTN/fy3yLA2xWIYc8csG37ztTCnkuowrBTUmgMLvUJTVw1arUp86ygTM+bXx51X91/AS00G
	PhKInG5rcfW4xCggS1x9pXuCeMiA+PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrQQ8-003t96-SZ; Wed, 18 May 2022 20:37:24 +0000
Received: from [118.98.73.2] (helo=mail3.kejaksaan.go.id)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrQQ5-003t6i-SK
 for linux-rockchip@lists.infradead.org; Wed, 18 May 2022 20:37:23 +0000
Received: from mail3.kejaksaan.go.id (localhost.localdomain [127.0.0.1])
 by mail3.kejaksaan.go.id (Proxmox) with ESMTP id 85EECC8ACE
 for <linux-rockchip@lists.infradead.org>; Thu, 19 May 2022 03:37:07 +0700 (WIB)
DKIM-Filter: OpenDKIM Filter v2.10.3 mta1.kejaksaan.go.id A4EB18311833
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kejaksaan.go.id;
 s=F6A8A9EE-3BF5-11EA-9C48-E2E49319631F; t=1652905049;
 bh=/wxlZ2Y+Uf8N3Lt83XG7p4MK0UHA2lkBfoVWqX8FXm8=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=ZtvMWDfXU51zg7HJxFBraTQWEnaxpAIbsfVS4tIdGbSNLM9qiXmnMZ/wt8l0wdbMa
 78P+JdpKrRHgfWCkugCdhFzIlkFz6KCmst7gZUMkK8wKeI+bPqraSPk1qxAuZCc9Xk
 M5y4pzpRbJjb2T753pqcMqQN7fVc0owkb5UGCNFOZFjN5+zKmaOgsoSvtwauCdBIH1
 VyIr3uxB7IM6Mzv5HNycwaBE24Y438ssxhTEqQm2PA+L63MmbMWefgSAYg1jJ8/mlb
 qkD3lQaKBRrCOhtVBaToHIVZQHV3f2fNSD0p8Ol7+1qTh0AtDgWCLV2s75XwUxrKK9
 i9FNlo9L9RnJw==
X-Virus-Scanned: amavisd-new at 
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Covid19 Funds
To: linux-rockchip@lists.infradead.org
From: "Qatar Foundation" <kejari.kulonprogo@kejaksaan.go.id>
Date: Wed, 18 May 2022 13:37:02 -0700
Message-Id: <20220518201729.77DB982B2809@mta1.kejaksaan.go.id>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220518_133722_140600_6BE862F4 
X-CRM114-Status: UNSURE (  -3.44  )
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
Reply-To: qfoundept@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Dear Beneficiary,
 
You have been selected to receive ( Euro 1,000,000.00) of the Covid19 relief funds from Qatar Foundation.

 
Kindly reply back to qfoundept@gmail.com  with your Full Name and address for more information.

Yours Sincerely,
Excellency Sheikha Hind bint Hamad Al Thani.
Chief Executive Officer of Qatar Foundation Endowment 2022


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
