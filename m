Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C897EDF053
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Feb 2026 07:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:Cc:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oSmQWsUU1ErCKVlZwb8xVD+utxojBNQjBw0XsreRddc=; b=Eiu0Rnoiw1v6HkcsxZrmIpE+Nd
	/DlLQfApfglWnt1/kmMD/YQBKwejCHrkNKSQ+Dkhlno4019yX6Lj/MwR/7hQkGO2nhir10CL4guj0
	aSPpFtl/BUoq8jUGjVerhNcsJIKd2O4ILFWZWZnR8L5TNFa2So1xBrD2Mtb3tHxDQuT6/UN293FYl
	GvGwwoGKa4KX4HiuC4v7qxys9doHgCSjQJD27hVlK+cvOU/SMvWslXW1tESk4J/DO9cVs/wetTl6p
	1FNinF32lFpG3JysXIZKhHwpHrpCCbwNtrBry1pKmWTj5pV/yZhA7obr/gkl45occkNK42BiM/JBx
	2zsGbGNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqRbu-00000001jZm-0fcH;
	Thu, 12 Feb 2026 07:59:38 +0000
Received: from mail-m32115.qiye.163.com ([220.197.32.115])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqRbq-00000001jYr-1nn1
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Feb 2026 07:59:36 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 33f5f6919;
	Thu, 12 Feb 2026 15:59:24 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 "finley.xiao" <finley.xiao@rock-chips.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [REGRESSION] rk3588s-evb1-v10 board unable to boot based on
 linux-next
Message-ID: <558b602a-1b30-2761-fff4-04d837656ea5@rock-chips.com>
Date: Thu, 12 Feb 2026 15:59:20 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
X-HM-Tid: 0a9c50dca9f509cckunm50a5dc7c1d533e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkgeH1ZCTkNNQ0lDSUofGENWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=MPOqkT1t/BEjcBsuNdBTBt0GDl/x5rwyIKaAMAxM54tRqgdhRqVvYmO06njEVH3hlecDDVBtxidDlswXNt7zwEpP7oHY0sEX+eVnALtLgtwLgbbUcE877h8YgoJyOQf9HwikBRWbrTG/G0LQkv2cGhlC7rYrfn3SLldIeZdCnBM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=XHrUeKcn1lvYxOecNQBDeXQL0quJTxM2GinlTz9mEu4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_235934_969820_A2B8EF6C 
X-CRM114-Status: UNSURE (   5.56  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Detlev,

commit f61731bd6062 ("arm64: dts: rockchip: Add the vdpu381 Video
Decoders on RK3588") landed on linux-next breaks rk3588s-evb1-v10.
Revert it fixes the problem. The full log could be found here[1].
Also confirm that it doesn't work based on Linus' latest mainline
as this commit merged into it this cycle.

If anything I could do to help debug it, please let me know.

[1] https://pastes.io/0000000-bo-94787

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
