Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04429CA0FE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Aug 2025 11:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:Subject:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eGJZBp53GtfjBR7abhHBujAvw+IqshKd6Tg8tYh5i6k=; b=iWp+8xrkmkF/3T
	VxJ1DSJn/dlRo1qEtT80uI1mC7MgFre+Y7dvX8IaX46KC4DvQEjA/V9oq7pnuD5ZCW2LelDY8Sk2w
	vBKfIHUMH+wZUTKExDqtIKn7d8CElp8DNYC7KeQ337HyLIAQWkZOluKhTLuJUnmrmskxgtt2S1liE
	iaF60Xkn/9zyn1KAzWSwYKxcVq/p+JDenyys79ziP0DbLsOdKbkXdIEZBVioQ6SZ3LHZoGQ+nlSg0
	0XWwRp8kgHp6VBLaXULhoE0O2WTEL5HbNNW4jIbtTn/SAeWcbOnOhwAErgn4zI4dPhp1pk1h1CVM+
	saQo4PlyUjsocG7RNerg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqs6x-0000000Bpq6-1vBg;
	Tue, 26 Aug 2025 11:45:11 +0000
Received: from mail-m49210.qiye.163.com ([45.254.49.210])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqrMm-0000000BgvD-1ooo
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Aug 2025 10:57:31 +0000
Received: from smtpclient.apple (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 20a9019f2
	for <linux-rockchip@lists.infradead.org>; Tue, 26 Aug 2025 18:57:20 +0800 (GMT+08:00)
From: xuhf <xuhf@rock-chips.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Subject: lists-join
Message-Id: <3FBBFBF7-84C4-4EEF-96F5-F461725F772F@rock-chips.com>
Date: Tue, 26 Aug 2025 18:56:50 +0800
To: linux-rockchip@lists.infradead.org
X-Mailer: Apple Mail (2.3826.700.81)
X-HM-Tid: 0a98e606795409cckunmb0f6bd7a883777
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUJITFZJSx8dHx0YSk0fTBhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=LiknbxLEs/OHAR/vz/6SkDcJNqmBz19t9n1FeHxGMjmunQ2q5SBUJESLBAeG9RB/iVwtlqANXA588KMbZfiKNryuuxP50ElFBPZRI78Mv2s/4HBsmUCPBSckbilP5egYGM2CZi0mX7W/uXFJed8bUMskNBJy3BmsP7LFs3oZnpo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=Xl2FQZ4zqEb/LiQaggaq8ofBMIH3lev2dlEqLGhKFjA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_035729_821976_0D404B20 
X-CRM114-Status: UNSURE (   1.93  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

jon


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
