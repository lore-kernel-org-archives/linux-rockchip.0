Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A974CCD19A
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 08:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:Subject:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jlU8qU6s0qCu5B3DdZ9UK47vbQsaAs2EdIYwMVLaDEs=; b=Beduz4IWVgxWCu
	Q5Wfm91Uh62xjwpDNNcQqjLArahwTpEX4IZ4F3ddE2hriCwVkCvhZi1BT1lFw35bWxQt8jjYCKhdc
	66F0ib1pMsxVfthWkLL1lMLqEdqCgZOOdCNKMby6UtJxvcWNwZMVBWFpUsNT0m3RNM4e61xtUPaIZ
	HrtuGFUq0Er7UENxV/t6FaSYljicmx5+okl1psRj7tDE8To4MhJ0t/folM1h2uZQkL0o9VPg/s0V2
	sCs6Oy76vHbLZxIXyk7ixhlOWIWlgZXxjI06XDR0m+l7d738RCShMtmm5Bz1aAv8JECI+ofnhDxjY
	Revub5zHaxigTmvAGXoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLHM9-000000004ru-2bPA;
	Tue, 18 Nov 2025 08:46:33 +0000
Received: from mail-m15598.qiye.163.com ([101.71.155.98])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqTxo-00000007ZxY-1GUQ
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Aug 2025 09:58:09 +0000
Received: from smtpclient.apple (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2082da00c
	for <linux-rockchip@lists.infradead.org>; Mon, 25 Aug 2025 17:58:05 +0800 (GMT+08:00)
From: xuhf <xuhf@rock-chips.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Subject: subscribe
Message-Id: <F909BE26-A050-4883-BE73-CF05F7654BA2@rock-chips.com>
Date: Mon, 25 Aug 2025 17:57:34 +0800
To: linux-rockchip@lists.infradead.org
X-Mailer: Apple Mail (2.3826.700.81)
X-HM-Tid: 0a98e0a9dc0609cckunma32fe3c423c4c75
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhpMHlZPTxhPQkhNQ0lMSktWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ZRX8Z2Lq4B/r7pK0a4LphQY71/4o5xnn68KiekcqcvQzI9eLipVdCK8Y66kwZMkaYh3yD2bN6Vamq+L5MYU+6tIL8WpHyG4aXc9pFUr9i0dh09/zhqjrcHmRWNktddjXvD79hGd9ikWOi/OGm12QtThB4UOGHnCfxmgaZq3tg98=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=bIkL3j1SUti+mxRknWXsGzjEHfZ++LfAOrCAj6OvBfk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_025808_498460_0F1EC8D0 
X-CRM114-Status: UNSURE (   2.13  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Tue, 18 Nov 2025 00:46:31 -0800
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

subscribe


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
