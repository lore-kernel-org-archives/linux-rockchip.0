Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECACEE9A04B
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Feb 2026 20:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UcvReLO9GUH+qggm4Gu7fwv6n8IcoxYXEWBZybV7sEI=; b=lqkVtUQCIZWsl6
	C3jEiGfIk0hPf5re0ZsooaX6wz2MbYY2Qazk6gVzYZ64MnYuoPrmSyu+yM6DMVTDIiOnwrC96Abli
	Szs17WWcPHEC4xJ7JrWKl2NtC/Xm6hpcsnL0pCyovbNfS5Rjav1ypD9H0rZuj5A5Tx+TOjishxBLb
	YcOedSUlN2QeTmusSQRiWalvVg1CFC5fhnLHr0wN+c7Yg9DoC12xR9adITnzbjYY51PxGh2WjVMjx
	Zc8QEF7sfGr+achjulPwuYcqQj7yJmTEXsCLW2EsXwM0uI7SLAo9sTF6YXpkXChISHdLnfhv6Pgg6
	BNRC1Fpf7XX+g4XdL/uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsnxu-0000000AMST-1p7Z;
	Wed, 18 Feb 2026 20:16:06 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsnxp-0000000AMQt-0XfY;
	Wed, 18 Feb 2026 20:16:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771445757;
	bh=5uNMd0NubRf1wUh2v9cLUu0XWN/mz95QGc431XZp3Gk=;
	h=Date:Subject:From:To:References:In-Reply-To:From;
	b=CkYqnYgc8ySpj5oQ5PH0hg10U5skfgxYxMK5mJpHILdBW7/xn3WMK1TFqyX7NjLdB
	 nWcIZbvS4BsG3MCQM+86f+4Nv+AsB6Wl0FwVeEXV8XtqbqZSRddQaoQTYuZ/Vr6haT
	 sclZWsM4hfItyQimOs1PD0JXw2K87VpV3wIdZIrOU8BQxFoJ3h56+h79yi/S7sS4Ob
	 eALBCq9epoprzE6haReG7B0ALlafDoa5poEIMk9uBwYLYgzCMgU8qFRyzHeVVOBPvD
	 TKdfj8KT5PROCzrY4uz377fKxVsl4lqMnmgiNRFKoaVZvEPOvOz5fK5Vu/y54Orvlq
	 +LaO9H51k1dzQ==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4CD8317E1396;
	Wed, 18 Feb 2026 21:15:57 +0100 (CET)
Message-ID: <03b5f3d1-6db4-4835-b2a5-c22c1aa63825@collabora.com>
Date: Wed, 18 Feb 2026 22:15:56 +0200
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
 <26e31b3b-484f-433b-833f-c639ee437f63@collabora.com>
Content-Language: en-US
In-Reply-To: <26e31b3b-484f-433b-833f-c639ee437f63@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260218_121601_338094_6495E517 
X-CRM114-Status: GOOD (  13.25  )
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

On 2/18/26 3:22 AM, Cristian Ciocaltea wrote:
> On 2/18/26 2:52 AM, Cristian Ciocaltea wrote:
>> Hi Thomas,
> [...]
> 
>>
>> Sorry, I somehow missed the following warning message, though it has been
>> already present in all the logs you've sent to me so far:
>>
>>   rockchip-hdptx-phy fed60000.phy: PLL locked by unknown consumer!
>>
>> That indicates the PHY has been preconfigured by an external component (e.g. the
>> bootloader), which is actually a scenario that I didn't verify.
>>
>> However, this just another way to expose a limitation of the current approach
>> for managing the TMDS character rate: done via the Common Clock Framework API
>> instead of the HDMI PHY configuration API.
>>
>> As a matter of fact, it was actually an item on my TODOs list for quite a while,
>> but blocked until recently due to several dependencies waiting to be merged
>> upstream.
>>
>> Hence I took the opportunity to finalize this task - please give the following
>> commits in my rk3588-hdmi-debug branch [2] a try:
> 
> I've just realized I introduced a regression while doing some cleanup work, hence
> please ignore this until further notice.

I think I got this working properly now, at least it passes all the tests I
could run.  The updated commits in [2] are:

  fa7cd1e75aaa ("phy: rockchip: samsung-hdptx: Fix rate recalculation for high bpc")
  8048db5544da ("phy: rockchip: samsung-hdptx: Exclusively use PHY config API for PLL changes")
  0085a382dfd0 ("[DEBUG] drm/rockchip: Add HDMI verbose logging")

Regards,
Cristian

[2] https://gitlab.collabora.com/cristicc/linux-next/-/commits/rk3588-hdmi-debug


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
