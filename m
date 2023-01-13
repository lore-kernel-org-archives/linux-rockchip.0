Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B61FBC54EBD
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jan 2023 17:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzMOYLGGIkMQlX0xfg4kzoqlHnXtyP87pfz+EtHaBfU=; b=emXYVMNdHh8867
	IBWzSgZIuMNbFTA+v78atCB5KbzxToUXErvMhc2jdqlzHa35Arn5lyeZdKqy6uIFUBC5tGisE3k8R
	EBMazjv6KtxvuVgrBZx34lAdCGhduvB6VS668q+TamMMLsbKkfXQuWW5TxUbEk4Ru9kRJ3J8ubnF+
	rTF9hJCIlaUGB6L1UX5AZXJN0xxcMtsDAJ00OJJqWwKE53msoKQjMd09xUf+IUoTv9MsDzP8FpnUf
	GIzttWhZofhQYVji9gOuILxMoN1HV8H4S/7P/vWlGC4VeVNMC7LqxxhbnGzIHLfj60JDQ55F8DiSY
	Kzm+Gb2X5otDvOtplohg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGO4E-003r6W-Hn; Fri, 13 Jan 2023 17:42:14 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGO3L-003qgU-9H; Fri, 13 Jan 2023 17:41:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id F1E24B8206B;
	Fri, 13 Jan 2023 17:41:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3267C433F0;
	Fri, 13 Jan 2023 17:41:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673631675;
	bh=LdVuTAGYTsjBP0NcA88Ikdcn7X2ZUj4Mv6B78zKHYME=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b4U22bmbi0flaxQjFztCrZ8tpfNjfVWlfJdmpjxmK1p1kpAXAZ8Y/5d32VfQb3/6C
	 0d+bfTg4xQyBzz4StLBysEVgxs0WkAtt5kmW91SmMSZzbAhUqq3XgE1vegt7O/khNo
	 7WNtZ98PmOtM/ll1znnUAgQMzOA79eKUQDq9YdK0nCbrTt0JUFy4cG1qDLow4w6Jc3
	 6bLmFuuiD8h4T27L1Vhc3h2nQn/ltk1urd5IZI0+zMnjaYbu5ZY+AP9w/PEEcryKIP
	 V4PnJUCJy5dV7ORjb+yfQJA0eN/jFpoSmDby0YaHkOKlofqLf9qqqoZQqgzlwr//Ly
	 7Z+rg2Wk1PLow==
Date: Fri, 13 Jan 2023 23:11:10 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Shang XiaoJing <shangxiaojing@huawei.com>
Cc: kishon@ti.com, heiko@sntech.de, frank.wang@rock-chips.com,
	linux@roeck-us.net, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] phy: rockchip-inno-usb2: Fix missing
 clk_disable_unprepare() in rockchip_usb2phy_power_on()
Message-ID: <Y8GXth2VZFuBx3EO@matsya>
References: <20221205115823.16957-1-shangxiaojing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221205115823.16957-1-shangxiaojing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_094119_513904_E004AD19 
X-CRM114-Status: UNSURE (   7.05  )
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

On 05-12-22, 19:58, Shang XiaoJing wrote:
> The clk_disable_unprepare() should be called in the error handling of
> rockchip_usb2phy_power_on().

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
