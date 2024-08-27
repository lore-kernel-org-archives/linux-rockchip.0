Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76BE2C5472D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 01:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DrudbO0z7/GJaQ9drq55QslaUmI68d/Tft3631b9K5Y=; b=tQICnEHar8zDy7
	tgDHJaJeMhFGpeToJOLMTrw2XWJLS4C3kNg9wCdlsjD1RwYyWI7bAwnKUa0uCmHJ/P3OkX4QXUinG
	W5eN9YqEz+ktM3fl4AWE/bpHgTvLiiCuGH+BlF07pUopJuofMu1VSXEYatGIB+Y4I8ZG7OPts8Nn0
	EMo0Mf0c0X1aMNmmNUseIxDvgXg9bezlWKDOgHCePhf/XFrf1Lqys2DqBbgKCBzkosC2idivyzdDA
	sha65vUU3o8c3cz/LNnONdy6HWAu8YGU6ow8Q9W+MTWAK5vyTpuDxlKdDUUzVuGGVPErzEU1gq/GC
	oNb/xfLoQ4WQe50rrW2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sil5e-00000009KeZ-3u6X;
	Tue, 27 Aug 2024 01:33:46 +0000
Received: from mail-m118217.qiye.163.com ([115.236.118.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sil5D-00000009KVu-00XZ;
	Tue, 27 Aug 2024 01:33:30 +0000
DKIM-Signature: a=rsa-sha256;
	b=YwcnEvCBSXSDD0L2/VPndhPM3BAC608LHVmbCaY2FgrSLmixGTDXK16c9laZL3Vc9zhBA79CGcacJ3buJ5kKH47oW87YRniMjjfMXheaeN6kQfiFnypvIHorTL204omol7FROzdb9AFMeP+YNmhX5PuAXuKxR4hhOKr8HF0+6qE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=/Q9mCEfT7guHVPvwR6ja5s0FAEOaseOBjw07BJH8nVo=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.33.28] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 0C70C6E01B6;
	Tue, 27 Aug 2024 09:32:50 +0800 (CST)
Message-ID: <27302919-5bcd-4bcd-bdad-02aa48e628e9@rock-chips.com>
Date: Tue, 27 Aug 2024 09:32:52 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Jon Lin <jon.lin@rock-chips.com>
Subject: Re: [PATCH] spi: rockchip: Avoid redundant clock disable in pm
 operation
To: Brian Norris <briannorris@chromium.org>
Cc: broonie@kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
References: <20240825035422.900370-1-jon.lin@rock-chips.com>
 <Zs0BRsNdZdI69aXM@google.com>
In-Reply-To: <Zs0BRsNdZdI69aXM@google.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUxMHlZITE5JHR5OGR1DTUtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
X-HM-Tid: 0a919176dba609d5kunm0c70c6e01b6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MDY6Cjo*CzIxKBwRPiINEDQR
	Dg8wCxFVSlVKTElPTElJSExJS0lJVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
	QVlOQ1VJSVVMVUpKT1lXWQgBWUFPT09DNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_183319_559033_D1DE7EBF 
X-CRM114-Status: GOOD (  25.83  )
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

On 2024/8/27 6:27, Brian Norris wrote:
> (NB: I have several nearly identical copies of this email. I'm replying
> to the latest one I see.)
> 
> Hi Jon,
> 
> On Sun, Aug 25, 2024 at 11:54:22AM +0800, Jon Lin wrote:
>> Fix WARN_ON:
>> [   22.869352][ T1885] clk_spi0 already unprepared
>> [   22.869379][ T1885] WARNING: CPU: 3 PID: 1885 at drivers/clk/clk.c:813 clk_core_unprepare+0xbc4
>> [   22.869380][ T1885] Modules linked in: bcmdhd dhd_static_buf
>> [   22.869391][ T1885] CPU: 3 PID: 1885 Comm: Binder:355_2 Tainted: G        W         5.10.66 #59
>> [   22.869393][ T1885] Hardware name: Rockchip RK3588 EVB1 LP4 V10 Board (DT)
>> [   22.869397][ T1885] pstate: 60400009 (nZCv daif +PAN -UAO -TCO BTYPE=--)
>> [   22.869401][ T1885] pc : clk_core_unprepare+0xbc/0x214
>> [   22.869404][ T1885] lr : clk_core_unprepare+0xbc/0x214
> 
> I appreciate the snippet of a WARNING trace, but I'd also appreciate
> some actual explanation of what the problem is, and why you're solving
> it this way.
> 

Thank you for the reminder.

>> Fixes: e882575efc77 ("spi: rockchip: Suspend and resume the bus during NOIRQ_SYSTEM_SLEEP_PM ops")
>> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
>> ---
>>
>>   drivers/spi/spi-rockchip.c | 57 +++++++++++++++++---------------------
>>   1 file changed, 26 insertions(+), 31 deletions(-)
>>
>> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
>> index e1ecd96c7858..043a7739c330 100644
>> --- a/drivers/spi/spi-rockchip.c
>> +++ b/drivers/spi/spi-rockchip.c
> 
>> +#ifdef CONFIG_PM_SLEEP
>> +static int rockchip_spi_suspend(struct device *dev)
>>   {
>> +	int ret;
>>   	struct spi_controller *ctlr = dev_get_drvdata(dev);
>> -	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
>>   
>> -	clk_disable_unprepare(rs->spiclk);
>> -	clk_disable_unprepare(rs->apb_pclk);
>> +	ret = spi_controller_suspend(ctlr);
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	/* Avoid redundant clock disable */
>> +	if (!pm_runtime_status_suspended(dev))
>> +		rockchip_spi_runtime_suspend(dev);
> 
> It seems like you'd really be served well by
> pm_runtime_force_{suspend,resume}() here, and in fact, that's what this
> driver used to use before the breaking change (commit
> e882575efc77). Why aren't you just going back to using it? (This is the
> kind of thing I might expect in your commit message -- reasoning as to
> why you're doing what you're doing.)
> 
> And in fact, I already submitted a patch that resolves the above problem
> and does exactly that:
> 
> https://lore.kernel.org/all/20240823214235.1718769-1-briannorris@chromium.org/
> [PATCH] spi: rockchip: Resolve unbalanced runtime PM / system PM handling
> 
> Do you see any problem with it?
> 

I have reviewed your submission and although the code has been 
simplified, the execution efficiency has decreased. So although it is a 
commonly used processing solution for SPI Upstream, I still hope to 
retain a more efficiency approach as I submitted.

> Thanks,
> Brian
> 
>> +	pinctrl_pm_select_sleep_state(dev);
>>   
>>   	return 0;
>>   }
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
