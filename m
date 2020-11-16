Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C857C4742C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 08:22:10 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BA3C52068E
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 08:22:09 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="TQnrinC7"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BA3C52068E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W0ldKCNvQEF82Dnjxyys0FtVGqDS/GdJNzyQL04X34Q=; b=TQnrinC7KipmKsw7n/W2bSqzW
	ACyIpyc1kgw0/L9zKzYU+/uAuJqqhglyH2/FEy9WkToWDUy0OanogDDOECEs466PD14IZGhKhlIVw
	nz/rrzyBQXE0WqXuagr8csRUREViS3EM6NL1N2bbYdvcX8H1pSMfw7AuLVWMmcXptRpJTbkRTrep7
	OsbRY2xAeYHxS5v5S2Bx+OWW/QnrgqMoBvLbeEJR6zS96D8vjtcqYjI+PPOccCMCgYjxV+umhuBX9
	2im+PNNRZEvbd5grPmnpgOBHM+zXTKgr/vPye4MihW64CmZaXt44zrUZk7siuziAL1LkTWpsUcE0z
	r1O9tyNmw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1keZlz-0006rp-Rb; Mon, 16 Nov 2020 08:22:03 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1keZlx-0006rA-GL
 for linux-rockchip@lists.infradead.org; Mon, 16 Nov 2020 08:22:02 +0000
IronPort-SDR: OwdvfQsVXNTbFup7eL5bYeIgzZKwuPNzdvhdtEeiGVdaQvjq9+LAZneQBKKbtjyziVP9AFh1mI
 nhXLZtmV9kbw==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="169931561"
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="169931561"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 00:21:58 -0800
IronPort-SDR: YdD5WUqE8lELMdcSlgtjNorze81Oy+FNrd+yhx/uBN9tharLrW+JSNOmMV9fEK5N0nV5QvZqal
 HPNs/wyWEwtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="340462287"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.94])
 ([10.237.72.94])
 by orsmga002.jf.intel.com with ESMTP; 16 Nov 2020 00:21:50 -0800
Subject: Re: [BUG] cqe unable to handle buggy cards
To: Peter Geis <pgwipeout@gmail.com>
References: <fa7f3fc5-c37a-ac49-e14a-45a1d2e0a942@gmail.com>
 <CAPDyKFq9vKOODDQEEE2W+Gsx69_R3XV_Hb-owMU-=qAMbv39kg@mail.gmail.com>
 <2ebdcb5c-1c52-08af-9233-16366c20820e@intel.com>
 <CAMdYzYoFCfVkz7zwbfQ=ZoirNTymRrRyg8FCabVVEQSKRnoOEA@mail.gmail.com>
 <CAMdYzYqEhgO6q3iXNzzuZ3snW_Y1bYP8BOBkNC5=fCPc310BUA@mail.gmail.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <80572b62-2601-ff53-05ef-4d231f7450fa@intel.com>
Date: Mon, 16 Nov 2020 10:21:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAMdYzYqEhgO6q3iXNzzuZ3snW_Y1bYP8BOBkNC5=fCPc310BUA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_032201_689066_0B8B0726 
X-CRM114-Status: GOOD (  26.36  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, nuumiofi@gmail.com,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Manish Narani <manish.narani@xilinx.com>,
 Asutosh Das <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 6/11/20 10:54 pm, Peter Geis wrote:
> On Wed, Nov 4, 2020 at 7:39 PM Peter Geis <pgwipeout@gmail.com> wrote:
>>
>> On Mon, Nov 2, 2020 at 11:32 AM Adrian Hunter <adrian.hunter@intel.com> wrote:
>>>
>>> On 2/11/20 4:54 pm, Ulf Hansson wrote:
>>>> + cqhci maintainers
>>>>
>>>> On Sat, 31 Oct 2020 at 13:54, Peter Geis <pgwipeout@gmail.com> wrote:
>>>>>
>>>>> Good Morning,
>>>>>
>>>>> We are seeing an issue on the rk3399 with certain Foresee emmc modules
>>>>> where the module reports it supports command queuing but fails in actual
>>>>> implementation.
>>>>>
>>>>> Unfortunately there doesn't seem to be any method for the mmc core code
>>>>> to detect this situation and disable command queue automatically.
>>>>> There also appears to be no way to disable it at runtime.
>>>
>>> Since v5.5, if you know how to use SDHCI debug quirks there is
>>> SDHCI_QUIRK_BROKEN_CQE
>>> e.g. kernel command line option sdhci.debug_quirks=0x0x2020000
>>
>> Thank you, we will test this.
> 
> This does resolve the issue of disabling cqe entirely for debugging, thanks!
> 
>>
>>>
>>>>>
>>>>> Certain modified kernels have added a patch to enable runtime disable of
>>>>> command queue entirely, but this will affect mmc core as a whole and not
>>>>> just the buggy card.
>>>>>
>>>>> Does anyone have any insight into this issue?
>>>>> Thank you for your time.
>>>>
>>>> Unfortunate, not me personally. I assume the issue is either be card
>>>> specific or host specific. Before looking at a disable option, we need
>>>> to know more about what goes wrong, I think.
>>>>
>>>> Kind regards
>>>> Uffe
>>>>
>>>>>
>>>>> Very Respectfully,
>>>>> Peter Geis
>>>>>
>>>>> [   64.472882] mmc2: cqhci: timeout for tag 2
>>>>> [   64.473349] mmc2: cqhci: ============ CQHCI REGISTER DUMP ===========
>>>>> [   64.474057] mmc2: cqhci: Caps:      0x00000000 | Version:  0x00000510
>>>>> [   64.474763] mmc2: cqhci: Config:    0x00000000 | Control:  0x00000000
>>>>> [   64.475468] mmc2: cqhci: Int stat:  0x00000000 | Int enab: 0x00000000
>>>>> [   64.476172] mmc2: cqhci: Int sig:   0x00000000 | Int Coal: 0x00000000
>>>>> [   64.476875] mmc2: cqhci: TDL base:  0x00000000 | TDL up32: 0x00000000
>>>
>>> TDL base cannot be zero, so the register values have been lost.
>>> Could be a reset issue like this one but for sdhci-of-arasan.c :
>>>
>>> https://lore.kernel.org/linux-mmc/20200819121848.16967-1-adrian.hunter@intel.com/
>>
>> Excellent, we will see if a similar implementation makes a difference
>> here for us as well.
> 
> I wrote a patch to implement this in the arasan driver.
> https://paste.ee/p/cl5SX
> Nuumiofi tested it with the buggy card.
> 
> The good news, it solves the register clearing issue.
> The bad news, the card still is broken, here is the kernel log:
> https://paste.ubuntu.com/p/sF2yMwxpcV/

You will need to enable dynamic debug to get more messages e.g.
	kernel config: CONFIG_DYNAMIC_DEBUG=y
	kernel command line:
dyndbg="file drivers/mmc/core/* +p;file drivers/mmc/host/* +p"

If it can't be made to work, you can set SDHCI_QUIRK_BROKEN_CQE in the
driver as needed.

> 
>>
>>>
>>>
>>>>> [   64.477578] mmc2: cqhci: Doorbell:  0x00000000 | TCN:      0x00000000
>>>>> [   64.478281] mmc2: cqhci: Dev queue: 0x00000000 | Dev Pend: 0x00000000
>>>>> [   64.478984] mmc2: cqhci: Task clr:  0x00000000 | SSC1:     0x00011000
>>>>> [   64.479687] mmc2: cqhci: SSC2:      0x00000000 | DCMD rsp: 0x00000000
>>>>> [   64.489785] mmc2: cqhci: RED mask:  0xfdf9a080 | TERRI:    0x00000000
>>>>> [   64.499774] mmc2: cqhci: Resp idx:  0x00000000 | Resp arg: 0x00000000
>>>>> [   64.509687] mmc2: sdhci: ============ SDHCI REGISTER DUMP ===========
>>>>> [   64.519597] mmc2: sdhci: Sys addr:  0x00000000 | Version:  0x00001002
>>>>> [   64.529521] mmc2: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000000
>>>>> [   64.539440] mmc2: sdhci: Argument:  0x00010000 | Trn mode: 0x00000010
>>>>> [   64.549352] mmc2: sdhci: Present:   0x1fff0000 | Host ctl: 0x00000034
>>>>> [   64.559277] mmc2: sdhci: Power:     0x0000000b | Blk gap:  0x00000080
>>>>> [   64.569214] mmc2: sdhci: Wake-up:   0x00000000 | Clock:    0x00000007
>>>>> [   64.579061] mmc2: sdhci: Timeout:   0x0000000e | Int stat: 0x00000000
>>>>> [   64.588842] mmc2: sdhci: Int enab:  0x02ff4000 | Sig enab: 0x02ff4000
>>>>> [   64.598671] mmc2: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
>>>>> [   64.608446] mmc2: sdhci: Caps:      0x44edc880 | Caps_1:   0x800020f7
>>>>> [   64.618161] mmc2: sdhci: Cmd:       0x00000d1a | Max curr: 0x00000000
>>>>> [   64.627801] mmc2: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0x642017d7
>>>>> [   64.637376] mmc2: sdhci: Resp[2]:   0x4e436172 | Resp[3]:  0x00880103
>>>>> [   64.646855] mmc2: sdhci: Host ctl2: 0x00000083
>>>>> [   64.656080] mmc2: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0xf0628208
>>>>> [   64.665445] mmc2: sdhci: ============================================
>>>>> [   64.674998] mmc2: running CQE recovery
>>>>>
>>>>> [  125.912941] mmc2: cqhci: timeout for tag 3
>>>>> [  125.921978] mmc2: cqhci: ============ CQHCI REGISTER DUMP ===========
>>>>> [  125.931200] mmc2: cqhci: Caps:      0x00000000 | Version:  0x00000510
>>>>> [  125.940389] mmc2: cqhci: Config:    0x00000001 | Control:  0x00000000
>>>>> [  125.949499] mmc2: cqhci: Int stat:  0x00000000 | Int enab: 0x00000006
>>>>> [  125.958527] mmc2: cqhci: Int sig:   0x00000006 | Int Coal: 0x00000000
>>>>> [  125.967486] mmc2: cqhci: TDL base:  0x00000000 | TDL up32: 0x00000000
>>>>> [  125.976260] mmc2: cqhci: Doorbell:  0x00000000 | TCN:      0x00000000
>>>>> [  125.985065] mmc2: cqhci: Dev queue: 0x00000000 | Dev Pend: 0x00000000
>>>>> [  125.993698] mmc2: cqhci: Task clr:  0x00000000 | SSC1:     0x00011000
>>>>> [  126.002244] mmc2: cqhci: SSC2:      0x00000000 | DCMD rsp: 0x00000000
>>>>> [  126.010716] mmc2: cqhci: RED mask:  0xfdf9a080 | TERRI:    0x00000000
>>>>> [  126.019159] mmc2: cqhci: Resp idx:  0x00000000 | Resp arg: 0x00000000
>>>>> [  126.027525] mmc2: sdhci: ============ SDHCI REGISTER DUMP ===========
>>>>> [  126.035955] mmc2: sdhci: Sys addr:  0x00000000 | Version:  0x00001002
>>>>> [  126.044258] mmc2: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000000
>>>>> [  126.052396] mmc2: sdhci: Argument:  0x00000001 | Trn mode: 0x00000010
>>>>> [  126.060370] mmc2: sdhci: Present:   0x1fff0000 | Host ctl: 0x00000034
>>>>> [  126.068241] mmc2: sdhci: Power:     0x0000000b | Blk gap:  0x00000080
>>>>> [  126.075978] mmc2: sdhci: Wake-up:   0x00000000 | Clock:    0x00000007
>>>>> [  126.083552] mmc2: sdhci: Timeout:   0x0000000e | Int stat: 0x00000000
>>>>> [  126.090937] mmc2: sdhci: Int enab:  0x02ff4000 | Sig enab: 0x02ff4000
>>>>> [  126.098219] mmc2: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
>>>>> [  126.105403] mmc2: sdhci: Caps:      0x44edc880 | Caps_1:   0x800020f7
>>>>> [  126.112649] mmc2: sdhci: Cmd:       0x00003013 | Max curr: 0x00000000
>>>>> [  126.119700] mmc2: sdhci: Resp[0]:   0x00400800 | Resp[1]:  0x642017d7
>>>>> [  126.126594] mmc2: sdhci: Resp[2]:   0x4e436172 | Resp[3]:  0x00880103
>>>>> [  126.133334] mmc2: sdhci: Host ctl2: 0x00000083
>>>>> [  126.139652] mmc2: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0xf0628208
>>>>> [  126.146008] mmc2: sdhci: ============================================
>>>>> [  126.152361] mmc2: running CQE recovery
>>>>>
>>>>>
>>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
