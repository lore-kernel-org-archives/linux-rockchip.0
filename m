Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F38F0C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Jul 2022 23:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3MGd2ACmp8J0e5U9pZA+MOoEse6qU6tKD7N1Mzccoak=; b=orKvwG+VfWjY+Tn/DwCdJ2HVz6
	KQqvcCMudj9+OXoNmX3ps33gS+4xPO7uRMuTZCDX3McnlcN5fcsZpXmr0aOStX/p1Y/IbZaShLf2C
	yaoUJOOr7xJaV+knpJnqd/eIHFkUlXDYRZQBQ8M0tkFn3U1HkBX+jL7KELFlZZLoB3sfwW0XeW39f
	ViYpZqjQ2ptC44YNcLxDll1yU7AsfQFKW3IpCLpvPmk/GlcFYgQgDuaE8bHTjUFuxeZt5nMARVhcp
	rjZvhVECTpC5xyEcF79uz41Wj0hk9XPKga1E4HYCZ4n/YYeCWDv9alhTAStAwSuPvV00jhpHPZb5v
	jpvjUqMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDDJE-009AFJ-Ml; Sun, 17 Jul 2022 23:04:20 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDDJ2-009AAX-Pp; Sun, 17 Jul 2022 23:04:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A3EC3B80EB7;
	Sun, 17 Jul 2022 23:04:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C09EC341C0;
	Sun, 17 Jul 2022 23:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1658099043;
	bh=IPeBIHmETf2O6wdyfCK0PR/zEOWzTcVCzm7iP2DJHDU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RgQq0B6e+i5l9xDOvXFdov0SJX+cZ0qaW54Lug3UowEykKCTpf0es9VM+tS4CCAnF
	 IrDb1y+v1xkrc2+PnqpVOG2BiaTC5AZF6C7HZbin9M/fOttDIW/SKcEJOnearBm0E4
	 W+F5k/2NR24Ac454Qlmzojs0ohoF2FHzIYm3MW0UjKQeQWeEFnMYrvP424BXeJG4Xl
	 omuV/ZWdxgZxNM6fJlvQTom2tmNIuTTLRxhdxw4WTirATWgHQPF52iFOrfh08ddE/O
	 farPpHz/MVdnbi8+mHXmvCCVnNwNE2Tw1fNcwRmD4bXITd8qlkeItkN5g3k35ST3x6
	 viaQ2ogp096vg==
Date: Sun, 17 Jul 2022 19:04:02 -0400
From: Sasha Levin <sashal@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Judy Hsiao <judyhsiao@chromium.org>,
	Mark Brown <broonie@kernel.org>, lgirdwood@gmail.com,
	perex@perex.cz, tiwai@suse.com, heiko@sntech.de,
	alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH AUTOSEL 5.15 12/28] ASoC: rockchip: i2s: switch BCLK to
 GPIO
Message-ID: <YtSVYq/47XmF6V0b@sashalap>
References: <20220714042429.281816-1-sashal@kernel.org>
 <20220714042429.281816-12-sashal@kernel.org>
 <CAGXv+5Fnj4-bHksi5ymy6LwOrmv_9yQ1aBSOpM4wGbGy2QGZUQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGXv+5Fnj4-bHksi5ymy6LwOrmv_9yQ1aBSOpM4wGbGy2QGZUQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220717_160409_003388_4E8C72E4 
X-CRM114-Status: GOOD (  12.36  )
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

On Thu, Jul 14, 2022 at 12:29:27PM +0800, Chen-Yu Tsai wrote:
>Hi,
>
>On Thu, Jul 14, 2022 at 12:25 PM Sasha Levin <sashal@kernel.org> wrote:
>>
>> From: Judy Hsiao <judyhsiao@chromium.org>
>>
>> [ Upstream commit a5450aba737dae3ee1a64b282e609d8375d6700c ]
>>
>> We discoverd that the state of BCLK on, LRCLK off and SD_MODE on
>> may cause the speaker melting issue. Removing LRCLK while BCLK
>> is present can cause unexpected output behavior including a large
>> DC output voltage as described in the Max98357a datasheet.
>>
>> In order to:
>>   1. prevent BCLK from turning on by other component.
>>   2. keep BCLK and LRCLK being present at the same time
>>
>> This patch switches BCLK to GPIO func before LRCLK output, and
>> configures BCLK func back during LRCLK is output.
>>
>> Without this fix, BCLK is turned on 11 ms earlier than LRCK by the
>> da7219.
>> With this fix, BCLK is turned on only 0.4 ms earlier than LRCK by
>> the rockchip codec.
>>
>> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
>> Link: https://lore.kernel.org/r/20220615045643.3137287-1-judyhsiao@chromium.org
>> Signed-off-by: Mark Brown <broonie@kernel.org>
>> Signed-off-by: Sasha Levin <sashal@kernel.org>
>
>Please drop this one from all stable branches. It caused more problems
>than it fixed and will be reverted for 5.19 [1]. The same patch, along
>with a proper follow-up fix, are queued up for 5.20.

Now dropped, thanks!

-- 
Thanks,
Sasha

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
