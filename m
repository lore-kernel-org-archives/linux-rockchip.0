Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FFB3EE0203
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 03:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PkDZ6wgLnniojYrDfY8FWf9G8PBFlEykWkE0UV0xCLk=; b=VK+1QyLtkJNpAP
	bTWOXpcN+3WQFtplG4y4gJodhbTYuO5cBry73WuhF11BggeBvr06qRERK9OmcZDJqn1IkRtPFa+ZG
	Vaz54fyBoZ0xgR1qXrhsoi20HNj6moPkFWkKAHrel/uyYHKN0XmwEGS6rO9IzEwyrk0s5fUnK7lhp
	bVbJ/7zQ9v1kkOTQdHl9rxX45oXzlXaDZ3/9URrjDyG8ENmlJrDX/2P97UsDvd3xNSEeS/YTK2e57
	hZzwmwd2Uu7jd2wxqyNxnu+kLI4ucnileSi4F5exnOuZolTpGYmq/ylsebhm/dm9ABK8H8BySy8Mg
	5wt0TIocltyDDjyHVHYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soDjy-00000007tdo-12EL;
	Wed, 11 Sep 2024 03:09:58 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soDiu-00000007tVk-1GmY;
	Wed, 11 Sep 2024 03:08:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 7E5D5A412DF;
	Wed, 11 Sep 2024 03:08:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27DB3C4CEC3;
	Wed, 11 Sep 2024 03:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726024130;
	bh=HEMopyFpUu8HJoyo6/3G/2qXbBjpHn1icDfAGuvUUL8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=qkc5suz42b+1q4lA5Sqr8EwF3Ml5GipTiZT9ykooM+Qp6DW2VLa1KT4ftQQlZdoYh
	 eicfVfZC4fP1MFHxQ6yFV03y6qrOy0JmuZSyISJI4NmA3EzoH6SD0yj/4kQnMeXbRc
	 urCd2KR9gdyU5JTSNuXDoKxkI8ej6MyEX6AaLfbV9AkXGM9ndJsOh1IzCNLhk+Vk9R
	 i6Pu1aB9D97WUkhiBfwOAKdMCw939M2g5HIhImKk3TqNLyhqbWo1apohvoVdp3skWL
	 eTI5CAYdElaDC5EhA9lhWnY9oRhZADU123CiIcWp2PsKB3JSFPH6wd+HVV82ufZ7R5
	 BXLMgs+IdLr+g==
Date: Tue, 10 Sep 2024 20:08:48 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Li Zetao <lizetao1@huawei.com>
Cc: <mchehab@kernel.org>, <florian.fainelli@broadcom.com>, <andrew@lunn.ch>,
 <olteanv@gmail.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <pabeni@redhat.com>, <wens@csie.org>, <jernej.skrabec@gmail.com>,
 <samuel@sholland.org>, <heiko@sntech.de>, <yisen.zhuang@huawei.com>,
 <salil.mehta@huawei.com>, <hauke@hauke-m.de>,
 <alexandre.torgue@foss.st.com>, <joabreu@synopsys.com>,
 <mcoquelin.stm32@gmail.com>, <wellslutw@gmail.com>,
 <radhey.shyam.pandey@amd.com>, <michal.simek@amd.com>,
 <hdegoede@redhat.com>, <ilpo.jarvinen@linux.intel.com>,
 <ruanjinjie@huawei.com>, <hverkuil-cisco@xs4all.nl>,
 <u.kleine-koenig@pengutronix.de>, <jacky_chou@aspeedtech.com>,
 <jacob.e.keller@intel.com>, <linux-media@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-sunxi@lists.linux.dev>,
 <linux-rockchip@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <platform-driver-x86@vger.kernel.org>
Subject: Re: [PATCH net-next v2 00/10] net: Convert using
 devm_clk_get_enabled()/devm_clk_get_optional_enabled()
Message-ID: <20240910200848.0b028720@kernel.org>
In-Reply-To: <20240907031926.3591353-1-lizetao1@huawei.com>
References: <20240907031926.3591353-1-lizetao1@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_200852_439357_286F4497 
X-CRM114-Status: UNSURE (   9.79  )
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

On Sat, 7 Sep 2024 11:19:16 +0800 Li Zetao wrote:
> v1 -> v2:
>   1) Patch 5 optimizes the check and adds commit information for easier
>   inspection.
>   2) It is no longer necessary to use clk, so delete the clk member of
>   the spl2sw_common structure.
>   3) Remove patches 11 and 12, they should be sent to wireless-next
>   individually

In addition to Christophe's suggestions the patches didn't get ingested
correctly into patchwork, due to the quick repost of:
https://lore.kernel.org/all/20240907031009.3591057-1-lizetao1@huawei.com/
without bumping the patch version...
-- 
pw-bot: cr

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
