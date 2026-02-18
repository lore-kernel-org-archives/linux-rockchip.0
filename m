Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6F9AE9A049
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Feb 2026 01:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KC4PWEohi0cpm6J7BLDaXageJGoC9urlQ8mQ0V9gGpc=; b=4QqfrBmnJwM2fG
	fhJHPJXx8fohvxVscLdIdvd7TLBt2F+jn1trW53aE3dXoGa1qIcTG05xJuhz+vwgKSpjVDI1zoHTJ
	aT6bZ6TOJlJbtRk/mTGM1sOfgg7tVxnvcsmX6KhNmdjjmuBUfVAasS4tuqCXUHViBQ/9BYGeEYklF
	0EXceymNLfbr8Bl818kvop4ZwBKfehosUSeRDkjGtWz56u1GhTYU3D5oouTm5NfyGV+41t5pVN80w
	KPij99Qqdzq2Opuu6jK8fuk9IrPaWeb8jXWz3zCxTtH5PD1JJ/Vky9FB/fGUvMH2mqL5azKfDa63E
	+/oC2h7z9m2xQ5daO16A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsWGf-000000097qS-49L6;
	Wed, 18 Feb 2026 01:22:17 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsWGc-000000097ph-2Zja;
	Wed, 18 Feb 2026 01:22:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771377728;
	bh=APtxeUx0eDQJR7IoVCyJrWk/yYivtUIxxTdH3yeZ6g4=;
	h=Date:Subject:From:To:References:In-Reply-To:From;
	b=QEgCSBX0EWbYPkVOEbbgqIi9DbLoGaZLjkdJx0oNoD18HpkgaxcSJutWqTAzASEaf
	 IwyQp6Bx3NjwVar2jB9v+25w6Gwu6f+yOS8BbxKe89QY4HVI2LizgpYcK2Nzsvzmcz
	 KKKLIAUFR8beVuJZ+vQcbFdZxNORslKZKMal+yZxrO/+dT7jEz+LwoTmceuRSWwizR
	 gbnM9vzMEP1z6iCx8l5NNg0DUMrF1qhu0h1mlAdaar0d3PezXkaxou+cp3JD/uYTmq
	 AlFQ7bLbXoNqC4Ll2l/ZNEeH2JhyOJk/qroneNOofpmZHAC6f5SveWTM8Qm/xQQq07
	 1g396ozN3vt8Q==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3566817E012E;
	Wed, 18 Feb 2026 02:22:08 +0100 (CET)
Message-ID: <26e31b3b-484f-433b-833f-c639ee437f63@collabora.com>
Date: Wed, 18 Feb 2026 03:22:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [REGRESSION] HDMI monitor not working on Radxa Rock 5B after phy
 rockchip samsung hdptx HDMI 2.1 FRL patchset
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: dubito@online.de, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, regressions@lists.linux.dev
References: <b32164001947ba922aefb6ca86a8dc59e9323d2b.camel@online.de>
 <8e410a11-bd7b-4a12-a711-0514a59409c0@collabora.com>
 <1859c940219a4dbfdf0497afbf333e627ab0ba25.camel@online.de>
 <98e46dbb-c8e2-451f-accb-ea48f63f9408@collabora.com>
 <4544ec4ccfa49cbdffee098878df7806223935a0.camel@online.de>
 <08369c90-fbab-477d-9ac6-388deddfd3b1@collabora.com>
Content-Language: en-US
In-Reply-To: <08369c90-fbab-477d-9ac6-388deddfd3b1@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260217_172214_867764_360C7BCE 
X-CRM114-Status: GOOD (  13.39  )
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

On 2/18/26 2:52 AM, Cristian Ciocaltea wrote:
> Hi Thomas,
[...]

> 
> Sorry, I somehow missed the following warning message, though it has been
> already present in all the logs you've sent to me so far:
> 
>   rockchip-hdptx-phy fed60000.phy: PLL locked by unknown consumer!
> 
> That indicates the PHY has been preconfigured by an external component (e.g. the
> bootloader), which is actually a scenario that I didn't verify.
> 
> However, this just another way to expose a limitation of the current approach
> for managing the TMDS character rate: done via the Common Clock Framework API
> instead of the HDMI PHY configuration API.
> 
> As a matter of fact, it was actually an item on my TODOs list for quite a while,
> but blocked until recently due to several dependencies waiting to be merged
> upstream.
> 
> Hence I took the opportunity to finalize this task - please give the following
> commits in my rk3588-hdmi-debug branch [2] a try:

I've just realized I introduced a regression while doing some cleanup work, hence
please ignore this until further notice.

Cristian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
