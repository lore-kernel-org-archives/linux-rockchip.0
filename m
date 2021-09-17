Return-Path: <SRS0=N4HT=OH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31E25C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 07:19:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 04211610C8
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 07:19:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 04211610C8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zaA3v2PT/QaLRF/zSsVbQfO/gNMAS0oAJFvE3t8TW64=; b=qu/vmX07nJNZXF
	cAALjM6v+lvvbv5sJ/MEBbySmX6Xj37AmLL6NREh4z39ceoIgXdZeaocy5gZXRS0S4kkVrxfE6qdR
	nevTqghW6cerH5m3Xbku55C9ZnyenBHRUOeIluK70Y3gzo7hkvqGmr63ejAhVWAHQSM43BDz36iJ4
	YRHVJpIA/Cn23BPcgbfLzaTTB1h/lTdn0geL/omOTDV5OASrwZKN+jQQEqA8kyRdyiqwlHrXW1GEM
	ezuAjwVVxNRUWazXKiMpv3X+WRjo3EBc++sgeBz5Y0Ic3YjWD4I0JKNKPHXwIpljF6tV9JFBcF8Rt
	msPwd6DU6fnMlyiKR68g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mR89I-00DNLv-NH; Fri, 17 Sep 2021 07:19:04 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mR89F-00DNKi-HS; Fri, 17 Sep 2021 07:19:03 +0000
Received: by mail-pl1-x62d.google.com with SMTP id bb10so5605965plb.2;
 Fri, 17 Sep 2021 00:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version;
 bh=KKt5AWTLK0tIOKcdr0XGkLxMl+Fod9jsU5NOqvL/LwY=;
 b=OGNcv4U9n6ABRlqOjeyYxj2m2dLT+GdPU3h8J90Fo/RDGo4LKnf6Sw8Zschlp+zyd5
 8RwwSpbSUeQXDsZOaw4XlENYpT9wge5Ee0se75p3Ph/CODaSmXnWY9jlGaP8z87bTAum
 QsBe9jie20lsUrSZVSnSqXk5m7/TL1pwr2JXW3uCD0QSGY/thhd+h7eDqzPaebrgl43Z
 +Pu+gvepvhfM6tBXXZ44bEvuRgx0N7jz1AyYIxFy6jQc6mcZioxE5AMTuSAWV84IM/kV
 nE6GvoYICahyNUHrH8Nk85g7Hu0BHfQLOiNLpTJf9FKXL08Rz6g/73Yngdyh4gPbElou
 8Dwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version;
 bh=KKt5AWTLK0tIOKcdr0XGkLxMl+Fod9jsU5NOqvL/LwY=;
 b=beEzq7hR6lGP56iAuUUCFG6sznbHH9ORdyedrY/UUGQUJWu2VTIaUy4cT+34NwaAUS
 b+VUo36co7DBDnYJ9+GzHkPATB+NFG3uBPmTRYR5J74wfuak6xkJOf0hBE4VuSc2+0UE
 0CFUZ8z9H1KtK4gwXmaj/YVFY9EP2fmYFB0Tz+y0YZ3LTAchL9S8mi8U8fEwTDKtUpZq
 X63XNRHD3B71InaUfheRtA/QR5JiwaX9CWpkNXx7jLFw2dbp8wHX1eQuTOqofxMWJUBs
 jrdH7eb8TznJZ91XZbmtrFI62/JrYN6//5mnyoRGOCaFccDDmJ5V3ceKCFYapJAwtHU+
 bmqQ==
X-Gm-Message-State: AOAM532f4vjkcc4xw04IwZ12K+RIK3s91UxeX+eNsuBxva4tz+b3w0sS
 OquuqE5u12Cj2+3k0kyl6kA=
X-Google-Smtp-Source: ABdhPJzLTe/k8m8JKgJLdgpYaFvNkIQ7/arj27CdRiFqtG2lS8t+qLupw+ufAavOnpAYvnYjA2SITA==
X-Received: by 2002:a17:90b:1642:: with SMTP id
 il2mr10681860pjb.167.1631863140606; 
 Fri, 17 Sep 2021 00:19:00 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id u10sm4815419pjf.46.2021.09.17.00.18.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 00:18:59 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: Qu Wenruo <wqu@suse.com>
Cc: Michael Riesch <michael.riesch@wolfvision.net>,  wens@kernel.org,
 netdev <netdev@vger.kernel.org>,  "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>,  "open list:ARM/Rockchip
 SoC..." <linux-rockchip@lists.infradead.org>,  linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>,  linux-kernel
 <linux-kernel@vger.kernel.org>,  Giuseppe Cavallaro
 <peppe.cavallaro@st.com>,  Alexandre Torgue
 <alexandre.torgue@foss.st.com>,  Jose Abreu <joabreu@synopsys.com>,
 "David S . Miller" <davem@davemloft.net>,  Jakub Kicinski
 <kuba@kernel.org>,  Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 sashal@kernel.org
Subject: Re: [PATCH] net: stmmac: dwmac-rk: fix unbalanced pm_runtime_enable
 warnings
References: <20210823143754.14294-1-michael.riesch@wolfvision.net>
 <CAGb2v67Duk_56fOKVwZsYn2HKJ99o8WJ+d4jetD2UjDsAt9BcA@mail.gmail.com>
 <568a0825-ed65-58d7-9c9c-cecb481cf9d9@wolfvision.net>
 <87czpvcaab.fsf@stealth>
 <aa905e4d-c5a7-e969-1171-3a90ecd9b9cc@wolfvision.net>
 <2424d7da-7022-0b38-46ba-b48f43cda23d@suse.com>
Date: Fri, 17 Sep 2021 16:18:57 +0900
In-Reply-To: <2424d7da-7022-0b38-46ba-b48f43cda23d@suse.com> (Qu Wenruo's
 message of "Fri, 17 Sep 2021 10:22:09 +0800")
Message-ID: <877dff7jq6.fsf@stealth>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_001901_666040_6235EE63 
X-CRM114-Status: GOOD (  26.21  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Qu,

Qu Wenruo <wqu@suse.com> writes:

> On 2021/8/30 22:10, Michael Riesch wrote:
>> Hi Punit,
>> On 8/30/21 3:49 PM, Punit Agrawal wrote:
>>> Hi Michael,
>>>
>>> Michael Riesch <michael.riesch@wolfvision.net> writes:
>>>
>>>> Hi ChenYu,
>>>>
>>>> On 8/29/21 7:48 PM, Chen-Yu Tsai wrote:
>>>>> Hi,
>>>>>
>>>>> On Mon, Aug 23, 2021 at 10:39 PM Michael Riesch
>>>>> <michael.riesch@wolfvision.net> wrote:
>>>>>>
>>>>>> This reverts commit 2c896fb02e7f65299646f295a007bda043e0f382
>>>>>> "net: stmmac: dwmac-rk: add pd_gmac support for rk3399" and fixes
>>>>>> unbalanced pm_runtime_enable warnings.
>>>>>>
>>>>>> In the commit to be reverted, support for power management was
>>>>>> introduced to the Rockchip glue code. Later, power management support
>>>>>> was introduced to the stmmac core code, resulting in multiple
>>>>>> invocations of pm_runtime_{enable,disable,get_sync,put_sync}.
>>>>>>
>>>>>> The multiple invocations happen in rk_gmac_powerup and
>>>>>> stmmac_{dvr_probe, resume} as well as in rk_gmac_powerdown and
>>>>>> stmmac_{dvr_remove, suspend}, respectively, which are always called
>>>>>> in conjunction.
>>>>>>
>>>>>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
>>>>>
>>>>> I just found that Ethernet stopped working on my RK3399 devices,
>>>>> and I bisected it down to this patch.
>>>>
>>>> Oh dear. First patch in a kernel release for a while and I already break
>>>> things.
>>>
>>> I am seeing the same failure symptoms reported by ChenYu on my RockPro64
>>> with v5.14. Reverting the revert i.e., 2d26f6e39afb ("net: stmmac:
>>> dwmac-rk: fix unbalanced pm_runtime_enable warnings") brings back the
>>> network.
>>>
>>>> Cc: Sasha as this patch has just been applied to 5.13-stable.
>>>>
>>>>> The symptom I see is no DHCP responses, either because the request
>>>>> isn't getting sent over the wire, or the response isn't getting
>>>>> received. The PHY seems to be working correctly.
>>>>
>>>> Unfortunately I don't have any RK3399 hardware. Is this a custom
>>>> board/special hardware or something that is readily available in the
>>>> shops? Maybe this is a good reason to buy a RK3399 based single-board
>>>> computer :-)
>>>
>>> Not sure about the other RK3399 boards but RockPro64 is easily
>>> available.
>> I was thinking to get one of those anyway ;-)
>> 
>>>> I am working on the RK3568 EVB1 and have not encountered faulty
>>>> behavior. DHCP works fine and I can boot via NFS. Therefore, not sure
>>>> whether I can be much of help in this matter, but in case you want to
>>>> discuss this further please do not hesitate to contact me off-list.
>>>
>>> I tried to look for the differences between RK3568 and RK3399 but the
>>> upstream device tree doesn't seem to carry a gmac node in the device
>>> tree for EK3568 EVB1. Do you have a pointer for the dts you're using?
>> The gmac nodes have been added recently and should enter
>> 5.15-rc1. Until
>> then, you can check out the dts from linux-rockchip/for-next [0].
>
> Do you have the upstream commit?
>
> As I compiled v5.15-rc1 and still can't get the ethernet work.
>
> Not sure if it's my Uboot->systemd-boot->customer kernel setup not
> passing the device tree correctly or something else...

For the RK3568 device tree changes, I think the pull request got delayed
to the next cycle. So likely to land in v5.16.

In case you're after ethernet on RK3399, there's no solution
yet. Reverting 2d26f6e39afb ("net: stmmac: dwmac-rk: fix unbalanced
pm_runtime_enable warnings") gets you there in the meanwhile.

[...]


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
