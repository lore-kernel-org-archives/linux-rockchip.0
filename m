Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68654C52D71
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Aug 2024 17:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GX1Elop3Z7FLBdXJkOw5ASxRWgw04ZtbT6Z+FlK47TU=; b=uFJNyBKlctKNfA
	i98yrQFLiFoHFZ+xnPlVdZGjJ30KXXlaEUZ3s220nHsfwp89PqCOHV6/U4gMw0bf/Alo8smLp5+ss
	b4LTbj9U5ILse960y2RUPQqt/rBAHxVA032nSxe6cxhPZdv/dMDorhXpwkdPuXUVZ6KarqAlZNPn+
	6im4opMlYGIBcriWDnV0k80gccfdIz0Wgy4sKMGg4x/UFV21DFD23VkFhsyrZ+qhgD04MW/Sj6chu
	Rup80abJAZmIu2tghSLvAVZt3/66KzlZCSu/xxWR+6e4H6zahUauIC8ktOhAtRJ+I77i1PdIDINhc
	Z4LC2bRlm+30fbDzdV2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbOMr-00000002Y4k-0Os2;
	Tue, 06 Aug 2024 17:53:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbOMo-00000002Y4G-48K4
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Aug 2024 17:53:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1247A6109E;
	Tue,  6 Aug 2024 17:53:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A164CC4AF0C;
	Tue,  6 Aug 2024 17:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722966781;
	bh=gmSIZC5KYnAD/TofwZBazRgPdFQqtGfwN+cwMI7Pk7M=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=jNPAt4bWNn2THMKNzTmhaep/zvemj8tjoRTcpG0kUiX89AphtZNTHPjgGqKNcD6uP
	 8nOxW0uxWPDwvcjWKFtTNmQNGLWnyK/H+FAa/V1yHzsTZN7yvyLdj0xXQlB2zteI2i
	 HyhayWT/DP80RX+Kz+NfniurJi5aRQxZOhGOLBmQTheM8MQNOgdxuVMDreR5TeUV0n
	 DaGwyZ/NmjVm9GukeWjpWWn2pYBMisEcVveG1J6bMBH0nE2/YVPR4kKUswLM6NwmwY
	 joW51YB+ri7ah+JoBheoCeppjB1FJXE3/0D/ciPuisBTrksxWBOjacN/12b8YSJgD4
	 QuWY/2gw64Y8Q==
Message-ID: <cca491b4b4f5716e634f7c0ce0c574af.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240806073832.13568-1-zhangqing@rock-chips.com>
References: <20240806073832.13568-1-zhangqing@rock-chips.com>
Subject: Re: [PATCH v1] clk: gate: export clk_gate_endisable
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, huangtao@rock-chips.com, sugar.zhang@rock-chips.com
To: heiko@sntech.de, kever.yang@rock-chips.com, mturquette@baylibre.com, zhangqing@rock-chips.com
Date: Tue, 06 Aug 2024 10:52:59 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_105303_083993_E8715AC8 
X-CRM114-Status: UNSURE (   4.44  )
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

Quoting Elaine Zhang (2024-08-06 00:38:32)
> make clk_gate_endisable not static, export API for other use.

What other use?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
