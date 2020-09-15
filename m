Return-Path: <SRS0=pRwE=CY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94985C43461
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2020 13:05:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 393E320639
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2020 13:05:40 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1vV8jBbi";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=baylibre-com.20150623.gappssmtp.com header.i=@baylibre-com.20150623.gappssmtp.com header.b="jOnakUbc"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 393E320639
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zFUsgfzUfwLvk8C5kabA7v4RZKQbdQ10urDXsznA1Jc=; b=1vV8jBbiceOQo6wdsx890qRtJ
	IFLqAcq2BGZfaPEpwrNrCd4wyU9fdXl+/hsjwsFo/l62DwOu5/CgBpiJxVumk9DfUGJUIofCx77PN
	17/lt7tiXBQ9/C1rIFsHM9ylB7UjV0R6uEe1Twk3PDGkBvdd7xrOSN0LnMxvVgrf7zNd9HLxahR73
	p6LqO3enoYs9SktL0h8BZaZlMPOn6SOvQABUJ9aBLL7NfpthoQuqf3zGTqNOa5HCTSKNaFKiwmTC0
	ZHI7V85RnjMPWfUN3+tp+CSHiwbYprQ5eVjyNG9DJRqsJ61jnsTiHGIKobFf4WYakRXGLWVq78sbS
	cA/QjTSxg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kIAeL-0007Ah-Ad; Tue, 15 Sep 2020 13:05:33 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIAeC-00076S-U4
 for linux-rockchip@lists.infradead.org; Tue, 15 Sep 2020 13:05:26 +0000
Received: by mail-wr1-x443.google.com with SMTP id c18so3211895wrm.9
 for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2020 06:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:cc:references:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PAedulOaLRGPWn1Q+RwcE7+ai8g8vapA/ETRTpmrMvA=;
 b=jOnakUbco4IRYyGk5bE3DYRjRvtFKeNnrPpQlHZm9vkVgtANfs6YSsuPafs8f8yxnW
 TWYg4nID670IQYnA5nwTvH7W0QZZ353jkg24qQafVf3HdVdCgyhH58O9dSy2aAQgV8gw
 u4iYPd9gY3vcqOQ6VESqLe0nk6F97Ds8SFPUaX7cJjku0BmYGfGOcvXIH8zy8qId7ucX
 FZc5KZsLCRSJpLbgr5zJ3eu1nL5/6amzUR5Rq7wOIwsRfFDZfPLBixmXDUjL0i0/RAGe
 Fd8pcxLFNcc+VQI8/h7VMZhbLSyz6qpY3hKNY27gBxmJExoDlmjUHWHijCduCInM1V8/
 j4Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=PAedulOaLRGPWn1Q+RwcE7+ai8g8vapA/ETRTpmrMvA=;
 b=MINUbyP+vbtVXY5qag7riDk1W3KFY5IDkQP4cWlA+Ys8aYzSiHbiyKKBERKeqWK/fv
 VzvXiNUTtwJLyB3glBpWQZQxjk4y/hwal0cyZnW+58/pBrD4hmyYZtoLYImTV6E5MK1V
 y9YKz21FXi5qnZzxfo8ddzRa18oLtDIudH2XzUFyMF5B78CCWUMHk8MCsYlyLCoJOWob
 gFz45EZXFhRTTH0n7PqWoj07uk5k6/q288srZpVQY0RfgWa38GUVj35zORVp8wWMkYrw
 ZZMhtw6nTr+VGiLy3xZFXcPIK3yYXsbAreu1WWxmeUEq0Ni4/i+OW9V2CXktpgGYHSfv
 h4eQ==
X-Gm-Message-State: AOAM532nHrddByeiIfUTzEqrzXdeOAkCLuYtBkIOr5YHwaGtra9CC1/A
 36i5fQ9RpDK2DOibcqY2hQiaiQ==
X-Google-Smtp-Source: ABdhPJwSgGK8pvg6vZvi16/WZcjKVDit+Y5y4mAJO1zJtZiSdJ8WtZvErg/IdDO4zNNq3uaZq7Y/zw==
X-Received: by 2002:a5d:4842:: with SMTP id n2mr21740506wrs.260.1600175122708; 
 Tue, 15 Sep 2020 06:05:22 -0700 (PDT)
Received: from [192.168.1.23] (home.beaume.starnux.net. [82.236.8.43])
 by smtp.gmail.com with ESMTPSA id v9sm26339953wru.37.2020.09.15.06.05.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Sep 2020 06:05:21 -0700 (PDT)
Subject: Re: [PATCH v9 00/11] Genericize DW MIPI DSI bridge and add i.MX 6
 driver
From: Neil Armstrong <narmstrong@baylibre.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Adrian Ratiu <adrian.ratiu@collabora.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
References: <20200609174959.955926-1-adrian.ratiu@collabora.com>
 <c6f10db1-7f56-a156-36a1-125e764c8c1a@baylibre.com>
 <87lfk3kaj4.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
 <b318069fe873e456f18d07d11f5d165667c9b04a.camel@collabora.com>
 <e0d0efec-09e0-6bf8-bab7-44accd14fa52@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <e841d90b-0f1d-d5d9-9f67-f90d64c4fbc7@baylibre.com>
Date: Tue, 15 Sep 2020 15:05:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <e0d0efec-09e0-6bf8-bab7-44accd14fa52@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200915_090525_029009_C9041999 
X-CRM114-Status: GOOD (  22.74  )
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Philippe CORNU <philippe.cornu@st.com>, Yannick FERTRE <yannick.fertre@st.com>,
 Andrzej Hajda <a.hajda@samsung.com>, linux-imx@nxp.com, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Adrian,

Gentle ping.

can you rebase on drm-misc-next so I can apply the IMX and STM patches ?

On 24/08/2020 11:47, Neil Armstrong wrote:
> Hi,
> 
> 
> On 15/08/2020 15:05, Ezequiel Garcia wrote:
>> Hi Neil,
>>
>> On Wed, 2020-07-01 at 09:35 +0300, Adrian Ratiu wrote:
>>> Hi Neil,
>>>
>>> On Mon, 29 Jun 2020, Neil Armstrong <narmstrong@baylibre.com> 
>>> wrote:
>>>> Hi Adrian, 
>>>>
>>>> On 09/06/2020 19:49, Adrian Ratiu wrote: 
> [...]
>>>
>>
>> It's been a month so I think it's a good idea to go forward
>> applying IMX and STM patches (probably with the usual
>> rebase dance).
>>
>> As for Rockchip...
>>
>>> The binding API removal change which directly touches RK can also 
>>> be applied separately, but unfortunately I do not have access to a 
>>> RK board with a DSI display to test it (or the bridge regmap logic 
>>> on RK btw...), I just "eye-balled" the RK code based on the public 
>>> docs and it LGTM.
>>>
>>
>> ... I'll be getting some DSI hardware to help with the pending
>> Rockchip issues, so we can tackle Rockchip as well. I'm quite sure
>> we'll loop Heiko as well if needed :-)
> 
> Sure, Adrian, can you rebase on drm-misc-next so I can apply the IMX and STM patches ?
> 
>>
>> Cheers,
>> Ezequiel
>>
>>>> Neil
>>>>
>>>>> Big thank you to everyone who has contributed to this up to now,
>>>>> Adrian
>>>>>
>>>>> Adrian Ratiu (11):
>>>>>   drm: bridge: dw_mipi_dsi: add initial regmap infrastructure
>>>>>   drm: bridge: dw_mipi_dsi: abstract register access using reg_fields
>>>>>   drm: bridge: dw_mipi_dsi: add dsi v1.01 support
>>>>>   drm: bridge: dw_mipi_dsi: remove bind/unbind API
>>>>>   dt-bindings: display: add i.MX6 MIPI DSI host controller doc
>>>>>   ARM: dts: imx6qdl: add missing mipi dsi properties
>>>>>   drm: imx: Add i.MX 6 MIPI DSI host platform driver
>>>>>   drm: stm: dw-mipi-dsi: let the bridge handle the HW version check
>>>>>   drm: bridge: dw-mipi-dsi: split low power cfg register into fields
>>>>>   drm: bridge: dw-mipi-dsi: fix bad register field offsets
>>>>>   Documentation: gpu: todo: Add dw-mipi-dsi consolidation plan
>>>>>
>>>>>  .../display/imx/fsl,mipi-dsi-imx6.yaml        | 112 +++
>>>>>  Documentation/gpu/todo.rst                    |  25 +
>>>>>  arch/arm/boot/dts/imx6qdl.dtsi                |   8 +
>>>>>  drivers/gpu/drm/bridge/synopsys/Kconfig       |   1 +
>>>>>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 713 ++++++++++++------
>>>>>  drivers/gpu/drm/imx/Kconfig                   |   8 +
>>>>>  drivers/gpu/drm/imx/Makefile                  |   1 +
>>>>>  drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c        | 399 ++++++++++
>>>>>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |   7 +-
>>>>>  drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  16 +-
>>>>>  10 files changed, 1059 insertions(+), 231 deletions(-)
>>>>>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
>>>>>  create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c
>>>>>
>>
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
