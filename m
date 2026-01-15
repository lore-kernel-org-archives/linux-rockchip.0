Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1C78D3CC95
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jan 2026 01:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4/884Xkah+B61992juhLOcBJAouWmglF4i8xthTqYIk=; b=JqENNQLGBUNIxO
	NPX2N0fnT0ChlEcqWY9pu8TOluBuHD61XPpQJcHJPK+XWK1Jg7/5mC/BGRwSXcV4rKcE7FGo5IhNT
	WQzNml0bvRIeiznHDle1fcRX0q5IEuc8rWhCT3k9g4SebLTLXf4B4EZ/JIPhLPZGf0H9/kbXBMgrW
	R1SvLyVVJFVFKCGFvA9jlEesPNAyWo5aclOrPA95SM1s+Tugl1a7Rc2JY5NMFO87lLuTBymcts7nb
	7hY+EE6ygTBON+J7Mxuhjt3M3K8GtDip7DvzPv2E8ZVBZPrisx+pjjF5qbXR72fLTIZRhaUWQd8MQ
	k9S2Eq3UaWPrnVrOORug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgCCK-0000000BP7c-0vrL;
	Thu, 15 Jan 2026 01:30:52 +0000
Received: from mail-m19731104.qiye.163.com ([220.197.31.104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgCCG-0000000BP6B-3Abh;
	Thu, 15 Jan 2026 01:30:51 +0000
Received: from [127.0.0.1] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 30b1d617a;
	Thu, 15 Jan 2026 09:25:37 +0800 (GMT+08:00)
Message-ID: <8f7880cc-5469-4ac1-9fcc-9bd33327e571@rock-chips.com>
Date: Thu, 15 Jan 2026 09:25:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] arm64: dts: rockchip: Enable HDMI output on
 RK3368-Lion-Haikou
To: Heiko Stuebner <heiko@sntech.de>
Cc: quentin.schulz@cherry.de, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20260114230707.4175162-1-heiko@sntech.de>
 <20260114230707.4175162-4-heiko@sntech.de>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <20260114230707.4175162-4-heiko@sntech.de>
X-HM-Tid: 0a9bbf4215a203abkunm214bc3be3234c5
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUpIH1ZNSR1KGR4fTUhDSh9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=TMftbF1zFQAlW75PgYyksAAUvtot55QwAUdwv0T8fY+YNNoyONq74dcyK2IAqv0LTiQ+E/k1JZTdK8R6+FxSWfAHxExXa5WilSUjEQc7SabHsMv/iDt4LUvuFrfnDYlY7qg1Fkfrkk6jvRc+XS6/h5KrKRdLBG9R6vWBnFKi5Wo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=JacTlUk1HuaCLrtV/Vf44fWWraUgKuwLbZmZaKiYjzQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_173048_985417_EB5842B0 
X-CRM114-Status: UNSURE (   7.59  )
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

Hi Heiko,

On 1/15/2026 7:07 AM, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> Enable the VOP and HDMI controller on the Lion-Haikou board.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> ---
>  .../boot/dts/rockchip/rk3368-lion-haikou.dts     | 16 ++++++++++++++++
>  arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi    |  5 +++++
>  2 files changed, 21 insertions(+)
> 

I guess NPLL is an independent PLL available for VOP, 
could you give it a try?

-- 
Best, 
Chaoyi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
