Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EED09C47DD9
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 00:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s6IUtWqXTpcusD/ihCNB3cu5wa8IDyay4ZlTSpOdaJM=; b=JpQBknRHhsRZRV
	Q6q/vcleUiygdD2jqji5E0J4B/XpkPL1VoByI5QI8++mbF6k3Xsqmx7bVdCNQgYROUGd6Mqi+WE1M
	ImLfiJ00/om3Mhj3KilCOZc3qtzTH+anZAAoEjPHwJMBWl/fdllUQSrqNFVLVPJSnm3UBjOWJ/Iyr
	hHBipadubvw7nsZCrutQrt/QBnABPOhCVhxWZisz/yOuaYl87Qm7rrrlaAf1QUNldu0CTkGc95yZS
	3P/uiZb5mJRU+23Hk/CEWOHgpmpD0FxrPPwK4mVJWO7ufxC81YTPAlcRFJxeYzDsXYg0686FKTjWD
	oW6MsSReplP+hiiTfpmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnTEB-00000005JOr-0Cty;
	Fri, 22 Mar 2024 00:57:47 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnTE8-00000005JOB-0TKF
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Mar 2024 00:57:45 +0000
Received: by mail-qt1-x829.google.com with SMTP id d75a77b69052e-430ca04b09bso11444131cf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 21 Mar 2024 17:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711069061; x=1711673861; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9nC1qmkoOQNwjBOgTgEWpneXEGBCJVTyAYdBlacof6U=;
        b=aEyfYbixREPWBrd2/TuvbHTyB10qB3GvnjkSw/NzJIhSfiSFDk3qUAg9ANyAKmSoV8
         gTSOJKHBGLkocgOvp6CSBHd8DaaD+mPrYtEz/qEeVd8QULga9UiVwg1Z+gWhFtf0GlxX
         rKCAy65VgDRYaI7taLz4bBdS7RRy+7AR3/Bid7oYkGGp0z6DgulOSM3kBeQKhfexE7HP
         LNzOJugo07y+knT+s9LJ1ySr4L1aB6vxhB/OuRdJKPVjDD3eJgakqeKIOuw81xuf2rBD
         mdLhuFwy5hQkmhEsQRrdU3Fm094V2wJyGLEoDg9Ffur/fwsO27seGfDUZlm5PJKWDJHk
         7dfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711069061; x=1711673861;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9nC1qmkoOQNwjBOgTgEWpneXEGBCJVTyAYdBlacof6U=;
        b=bIOrASxkFUAr4StcBxuQFetlMHaBXTn5xuVaB5bH4XWddqEc+WMyUmJ8fvvDD0VlYx
         z7lHU3ktM/5gssTUZIVW5QfsnQkrOGNPnMla23MkzUtKKNZcsQZXR+/CbRa8uTPfPCMZ
         P6ioEGeuG6/hOZeO1YFYjHFAjPPAwow0jfmz2UM6Lxkf+zRoqdU3ms6VKwZKGWRIaZO5
         +Sy5/Af8PJatBgOWHCt3RsuWMaaNMqSBicWa0PFKzfIMckLo7vNNZvUyNK033dOXFXMX
         xdwBoeitEqtzM7yw82obpDGmdUB8dWbxsYiVucyKZ6OiY/4J6fNy3jvMFnteqOgyiLNg
         +Wag==
X-Forwarded-Encrypted: i=1; AJvYcCXslpwfYrSDegVFvJeZFoK0nc3m3f2bcj5eQYw5Rd4qGSvWDYEfB5RcnoMIe+wnGIStVxDw6eG+JU/MOhMRzqR8CD7qiqUq2ixZ+fPzizFKicSz
X-Gm-Message-State: AOJu0YzYKUv2IPqykSE9T5vuCJFlNcUvm8IGbmiinp1iiEpfPu6xOmPz
	1dusb6rxGkk/gzyLsHxMkPkaAoXlMUp/o7DjOUosWDSSGrSg31j1G4simS9lodWLCg==
X-Google-Smtp-Source: AGHT+IF5ssHLkMqE4xoBhvM8+1w71t35288yowP6I/lpUjXEu1GcU5TJGd3UgHL9BD2uYNUkc314LA==
X-Received: by 2002:a05:622a:2b0c:b0:431:30ba:e94c with SMTP id ha12-20020a05622a2b0c00b0043130bae94cmr169101qtb.64.1711069061343;
        Thu, 21 Mar 2024 17:57:41 -0700 (PDT)
Received: from ?IPV6:2606:29c0:1000:2088:97c5:2979:cbe1:b10e? ([2606:29c0:1000:2088:97c5:2979:cbe1:b10e])
        by smtp.gmail.com with ESMTPSA id fj17-20020a05622a551100b00430c76f0c86sm412077qtb.80.2024.03.21.17.57.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Mar 2024 17:57:40 -0700 (PDT)
Message-ID: <d784378c-61e8-4f66-9260-6452893a44fc@gmail.com>
Date: Thu, 21 Mar 2024 20:57:39 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 7/7] clk: rockchip: implement proper GATE_LINK support
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>, Ilya K <me@0upti.me>
Cc: "andy.yan@rock-chips.com" <andy.yan@rock-chips.com>,
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
From: Chad LeClair <leclair@gmail.com>
In-Reply-To: <qepnk6poq6md5hewkf6otcjgeuj5mkf63azwzjqe75gbyi4fxm@6s7vijaz76uq>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_175744_198075_F6FD6991 
X-CRM114-Status: GOOD (  19.78  )
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

Sebastian,

On 3/21/24 16:45, Sebastian Reichel wrote:
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

I can also report success with your latest tree.  It boots successfully and I
am able to interact with the SFC flash.  Looking at the clk debug info I now
see an enable value of 1 on aclk_nvm_root.

It also cleaned up the power-controller error message I had been seeing on vo0.
I just get the 'PM: genpd: Disabling unused power domains' message and no
further power errors/warnings.  So looks good.

I also tried the patch in your most recent message (removing CLK_IS_CRITICAL
from hclk_nvm).  My kernel is compiled ROCKCHIP_SFC=m. Everything still works
as expected.

So overall, looks great!  Thanks for all of your work on this!

--
Chad LeClair

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
