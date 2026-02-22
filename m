Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 898B9C636C1
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Feb 2026 22:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KyOv7fCS1ec7/6krVigAJ/m1Hw6dPrv2OmEjVCXEGF0=; b=zEj8LbDJfCy/Bv
	ynmaVkaJztX50AMtRwk0j/MFbS6rUtEjEm9FUo+Tt7lcBY5iKz8NNsKjbVpXos0h+ZAx8uzq64zI0
	5n2EamyLrlQ9cscPp1Ohoi9HxEEQp1xmTq+tIbyi9BvPmCBd8NWXrDJABxooSO1l9l0oDNbsnRX3d
	2yyalzLh1TcL4lNOKWsJQVhBdYjFpYjW2PG4cuzDbePDZxoSGLnO8u2a4eRTC2IxEg4ICJktm+Vgs
	hexKOGcDGrOEFpwAx2kmXi/2GiMwygKEVXaEvi1NH6g4yxpRxzj3Vv5czycFzesiq+rgDDOwZ6ul+
	YMFr60QiRdPHEt4CkzVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuIAf-0000000H1CP-0TqZ;
	Sun, 22 Feb 2026 22:43:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuIAc-0000000H1Bd-3q8w
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Feb 2026 22:43:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=vPnzKeqDtSLcd+XN/YDb/op46Z3sRIkA6g+cZGGcXB0=; b=zzPaJjAbzqjCT2oQ/oBz7M3gqN
	FxZtJambbUM4cwVUacRj6PAtFOjVXmPJD+n+mMKNcYS3+UUK2EsCQEHC2972HvIPZaHWApTlYa1mI
	yG75yxMxNTPTpnI27ExmiWMH2y/NvF7MweA23Z2FCbLcUpVogtWfk5hm5FVC0lDIBlken9W7S8HwP
	FsWmvCymSMYjW5GdXBO0E8EESR281fJy+JD5nkbdXx29TkiyMVY069LTPijXX+ZYX7rUWMgA2bOUw
	uyVbBayB7A8XksXZx8QDoFLw4xQ8f8wmPWju5ecV45KN92/KIyiAQoqiGy1i8tr8ZWRsdAxIkZpCZ
	Ram+7Dxw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Dan Carpenter <dan.carpenter@linaro.org>
Subject: Re: [PATCH] soc: rockchip: grf: Add missing of_node_put() when returning
Date: Sun, 22 Feb 2026 23:39:13 +0100
Message-ID: <177179992294.1861430.822278416959246824.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <1770814957-17762-1-git-send-email-shawn.lin@rock-chips.com>
References: <1770814957-17762-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260222_144322_954047_21946C75 
X-CRM114-Status: UNSURE (   6.06  )
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


On Wed, 11 Feb 2026 21:02:37 +0800, Shawn Lin wrote:
> Fix the smatch checking:
> drivers/soc/rockchip/grf.c:249 rockchip_grf_init()
> warn: inconsistent refcounting 'np->kobj.kref.refcount.refs.counter':
> 
> 

Applied, thanks!

[1/1] soc: rockchip: grf: Add missing of_node_put() when returning
      commit: 24ed11ee5bacf9a9aca18fc6b47667c7f38d578b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
