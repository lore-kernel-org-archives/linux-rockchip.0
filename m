Return-Path: <SRS0=Dydn=CJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F252BC433E2
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 01:26:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C1B0D2076D
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 01:26:44 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="YKHr/3h5"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C1B0D2076D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=katsuster.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VVxU5xyiuVJ9l/SdgpSMXciXXrDYNDCZ+LmV6Q9R6ik=; b=YKHr/3h50+ZTbatw6FVsT8Eff
	ss3HWr2ieU/bc8oRsTxx8j2muailjHlM4/bn5KLpjInIh4NAX0BmP7+36tPU17yfc7ScyxroyLfEu
	W1J3rENDpyvqWidgVFlOoXjF5O1+S5W5BEqXKm+XsxHWjhRl2EzzBLGQOvGTYmdL3DkVcWNx+8YDz
	9rdOeuNjeR38yydesXHcZ7dFl8Se7aR9Z3SavrgmpefnFqwUspfIKh65sIsGmd4m1dd0wd+FICW8j
	IRK8p5DzWzCie4/7Ir8BxwfQzHSSsS3BdwiTqktRUCuPO0Db8hMC+ZCW+BCY/NFwDtDVLzjafhKFT
	cExmg45mQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCYam-0002kD-Lc; Mon, 31 Aug 2020 01:26:40 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCYai-0002jd-RA; Mon, 31 Aug 2020 01:26:37 +0000
Received: from fsav105.sakura.ne.jp (fsav105.sakura.ne.jp [27.133.134.232])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 07V1QYMQ016064;
 Mon, 31 Aug 2020 10:26:34 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav105.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav105.sakura.ne.jp);
 Mon, 31 Aug 2020 10:26:34 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav105.sakura.ne.jp)
Received: from [192.168.1.2] (80.57.232.153.ap.dti.ne.jp [153.232.57.80])
 (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 07V1QYSl016061
 (version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Mon, 31 Aug 2020 10:26:34 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable HDMI sound nodes for
 rk3328-rock64
To: Heiko Stuebner <heiko@sntech.de>
References: <20200802154231.2639186-1-katsuhiro@katsuster.net>
 <7880329.2VsnZ9RgxX@phil>
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Message-ID: <0e1c3467-0ba0-6b82-4227-40959f0c4b0e@katsuster.net>
Date: Mon, 31 Aug 2020 10:26:34 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <7880329.2VsnZ9RgxX@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200830_212637_260856_ED908259 
X-CRM114-Status: GOOD (  18.66  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2020/08/31 4:16, Heiko Stuebner wrote:
> Hi,
> 
> Am Sonntag, 2. August 2020, 17:42:31 CEST schrieb Katsuhiro Suzuki:
>> This patch enables HDMI sound (I2S0) and Analog sound (I2S1) which
>> are defined in rk3328.dtsi, and replace SPDIF nodes.
>>
>> We can use SPDIF pass-through with suitable ALSA settings and on
>> mpv or other media players.
>>    - Settings: https://github.com/LibreELEC/LibreELEC.tv/blob/master/projects/Rockchip/filesystem/usr/share/alsa/cards/SPDIF.conf
>>    - Ex.: mpv foo.ac3 --audio-spdif=ac3 --audio-device='alsa/SPDIF.pcm.iec958.0:SPDIF'
>>
>> [Why use simple-audio-card for SPDIF?]
>>
>> For newly adding nodes, ASoC guys recommend to use audio-graph-card.
>> But all other sound nodes for rk3328 have already been defined by
>> simple-audio-card. In this time, I chose for consistent sound nodes.
>>
>> [DMA allocation problem]
>>
>> After this patch is applied, UART2 will fail to allocate DMA resources
>> but UART driver can work fine without DMA.
>>
>> This error is related to the DMAC of rk3328 (pl330 or compatible).
>> DMAC connected to 16 DMA sources. Each sources have ID number that is
>> called 'Req number' in rk3328 TRM. After this patch is applied total 7
>> of DMA sources will be activated as follows:
>>
>> | Req number | Source | Required  |
>> |            |        | channels  |
>> |------------+--------+-----------|
>> |  8,  9     | SPI0   | 2ch       |
>> | 11, 12     | I2S0   | 2ch       |
>> | 14, 15     | I2S1   | 2ch       |
>> |     10     | SPDIF  | 1ch       |
>> |------------+--------+-----------|
>> |            | Total  | 7ch       |
>> |------------+--------+-----------|
>> |  6,  7     | UART2  | 2ch       | -> cannot get DMA channels
>>
>> Due to rk3328 DMAC specification we can use max 8 channels at same
>> time. If SPI0/I2S0/I2S1/SPDIF will be activated by this patch,
>> required DMAC channels reach to 7. So the last two channels (for
>> UART2) cannot get DMA resources.
> 
> Wouldn't the dma allocation depend on the probe ordering?
> Or is this predetermined, so that always uart2 looses its dmas?
> 

Ah, it's depends on probe ordering when users use kernel modules...

It's better to disable DMA channels for UART2 for avoiding problem.
I'll fix and resend patch.


> Heiko
> 
> 
> 

Best Regards,
Katsuhiro Suzuki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
