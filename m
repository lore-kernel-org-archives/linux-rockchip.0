Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01D59C54E71
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 07:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/jcwpDzX0aS1QqVQ67volAADakUKxeQCn7gvxaftPdw=; b=itoqTAZXa2Z2pj
	TBGbiRbeO6iF8P6gtN0eObRlMeVv6bGZHgggyWgVTzGy4MXULTMJyHj6WMSQmlmGCCgAT6M4PAH1e
	EDqYt9+DUbRoxRN7A1ayFQdta3JMqR95Z2jFCGelOLCsz3EzBJWRYeZxlWmP7oveYvK9pNUE9Q/2l
	xLMW2RNYhL4LT0ZixZogfgjzaovi0br0QML0IdAS2VEqfKEpxvznt+VZXBVgFs0MAd2agvrHIYkC3
	6WwAF8UMMeLLA4Z+Zd77CEpHz2Hy1m54vMQEPES4RsyQG2wYU25V79ayLiJXPaU+59vZJ4zIdUuqD
	RUrRyYxbhLMbAd8MojIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnYz6-000000068r5-2Fdu;
	Fri, 22 Mar 2024 07:06:36 +0000
Received: from forward500a.mail.yandex.net ([178.154.239.80])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnYyv-000000068pC-2ak6
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Mar 2024 07:06:34 +0000
Received: from mail-nwsmtp-smtp-production-main-55.vla.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-55.vla.yp-c.yandex.net [IPv6:2a02:6b8:c0d:230c:0:640:f8e:0])
	by forward500a.mail.yandex.net (Yandex) with ESMTPS id 5FF4B60FBE;
	Fri, 22 Mar 2024 10:06:14 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-55.vla.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id A6B12T9PoSw0-k0oYmIZl;
	Fri, 22 Mar 2024 10:06:12 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0upti.me; s=mail;
	t=1711091172; bh=oWd23f7ffA392TOsjPWNJNJs/+odWnGoz4d4DVvZfWU=;
	h=From:In-Reply-To:Cc:Date:References:To:Subject:Message-ID;
	b=m3cnWJCsR7YJwEMFFw4CgE/Stg9MuOqZ27Ui2KnnW4R0WI7RfudrMIvDrO9Kx0kbg
	 z6IbjZVGPPtDV8xcsMeHVHcTgxvimZH+glsNNK1ZMb0pP4mqVVPnrtWN1kihWnHynm
	 v6wwlqQyvBOv3hhYpkfOHHg+LR7Y5cGCjvKdQX4k=
Authentication-Results: mail-nwsmtp-smtp-production-main-55.vla.yp-c.yandex.net; dkim=pass header.i=@0upti.me
Message-ID: <19204214-263c-4b2b-a060-4f4d65e24109@0upti.me>
Date: Fri, 22 Mar 2024 10:06:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 7/7] clk: rockchip: implement proper GATE_LINK support
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Chad LeClair <leclair@gmail.com>,
 "andy.yan@rock-chips.com" <andy.yan@rock-chips.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "huangtao@rock-chips.com" <huangtao@rock-chips.com>,
 "kernel@collabora.com" <kernel@collabora.com>,
 "kever.yang@rock-chips.com" <kever.yang@rock-chips.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "zhangqing@rock-chips.com" <zhangqing@rock-chips.com>
References: <1456131709882456@mail.yandex.ru>
 <uwr335fla4nfvv3mdppcoly6hcsayav26r4r6txmbwrb25ftw7@rxwjtan7evww>
 <7f4b3f38-50ee-480f-a341-ab577e19bb32@gmail.com>
 <2rsu6qa3pwbqic6b7ej6txa34jw4ztrnybzcfcfysue2mky37h@dyrdefbimzdn>
 <97f8b9e7-983c-435e-8fad-11e71be158b8@gmail.com>
 <vetdlmrlwx2bpwliof442zjiir7jy5irs737qu3v7qjhcvubn4@wslcvkis3tsf>
 <5287754a-e488-4365-9e88-811eb028a91e@0upti.me>
 <qepnk6poq6md5hewkf6otcjgeuj5mkf63azwzjqe75gbyi4fxm@6s7vijaz76uq>
Content-Language: en-US
From: Ilya K <me@0upti.me>
In-Reply-To: <qepnk6poq6md5hewkf6otcjgeuj5mkf63azwzjqe75gbyi4fxm@6s7vijaz76uq>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_000631_392796_959C9BC7 
X-CRM114-Status: GOOD (  15.97  )
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

On 2024-03-21 23:45, Sebastian Reichel wrote:
> Hello Ilya,
> 
> On Thu, Mar 21, 2024 at 10:01:10PM +0300, Ilya K wrote:
>> On 2024-03-21 21:31, Sebastian Reichel wrote:
>>>
>>> Ah, that was actually not setting up the clock links at all. Sorry
>>> about that. I reworked everything again and moved all the GATE_LINK
>>> code into the separate driver now. Please give it another try.
>>>
>>> Greetings,
>>>
>>> -- Sebastian
>>
>> Applied this to my 6.8.1: https://github.com/K900/linux/tree/rk3588-test
>>
>> As far as I can tell, literally everything works now - it boots, runs, and I can read and write the flash even with ROCKCHIP_SFC=m.
>>
>> Thanks a lot for digging into this, y'all!
> 
> Great, thanks for testing. Can you check if it still works with
> ROCKCHIP_SFC=m when applying the following additional change on
> top of your tree?
> 
> diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
> index fea7e7fcc4a4..f0eb380b727c 100644
> --- a/drivers/clk/rockchip/clk-rk3588.c
> +++ b/drivers/clk/rockchip/clk-rk3588.c
> @@ -2413,7 +2413,7 @@ static struct rockchip_clk_branch rk3588_early_clk_branches[] __initdata = {
>  static struct rockchip_clk_branch rk3588_clk_branches[] = {
>         GATE_LINK(ACLK_ISP1_PRE, "aclk_isp1_pre", "aclk_isp1_root", ACLK_VI_ROOT, 0, RK3588_CLKGATE_CON(26), 6, GFLAGS),
>         GATE_LINK(HCLK_ISP1_PRE, "hclk_isp1_pre", "hclk_isp1_root", HCLK_VI_ROOT, 0, RK3588_CLKGATE_CON(26), 8, GFLAGS),
> -       GATE_LINK(HCLK_NVM, "hclk_nvm", "hclk_nvm_root", ACLK_NVM_ROOT, CLK_IS_CRITICAL, RK3588_CLKGATE_CON(31), 2, GFLAGS),
> +       GATE_LINK(HCLK_NVM, "hclk_nvm", "hclk_nvm_root", ACLK_NVM_ROOT, 0, RK3588_CLKGATE_CON(31), 2, GFLAGS),
>         GATE_LINK(ACLK_USB, "aclk_usb", "aclk_usb_root", ACLK_VO1USB_TOP_ROOT, 0, RK3588_CLKGATE_CON(42), 2, GFLAGS),
>         GATE_LINK(HCLK_USB, "hclk_usb", "hclk_usb_root", HCLK_VO1USB_TOP_ROOT, 0, RK3588_CLKGATE_CON(42), 3, GFLAGS),
>         GATE_LINK(ACLK_JPEG_DECODER_PRE, "aclk_jpeg_decoder_pre", "aclk_jpeg_decoder_root", ACLK_VDPU_ROOT, 0, RK3588_CLKGATE_CON(44), 7, GFLAGS),
> 
> Greetings,
> 
> -- Sebastian

Can confirm everything works with this change too: https://github.com/K900/linux/commit/d11ccce948117aeef39d3a6dbedd17e04555a9cc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
