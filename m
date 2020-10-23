Return-Path: <SRS0=CSn7=D6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A36A4C4363A
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Oct 2020 15:31:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0A77D20E65
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Oct 2020 15:31:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="c62Mr5Gc"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0A77D20E65
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pAho+WsnbwSZF5nxmLVHLo/YKzf239jZS1pd+zddnt4=; b=c62Mr5Gcu2GQcJ14eWOHt+j69
	64ZVBaeN49v9WWxS49Kk+IvpsUvusd97KP5LKmpA7Dd9C1S/zk5nq1vwbLTBP++YwMBNhosy8qD5l
	yH0mchg0Rfb9fiIX/NXv64CyTh1fmJy/yCm+g4Ik4dp7n54kWcs/fWx8gMx6+MdhLuJZLYyhfGK1V
	meZNjIma08IVvuQHkGmiw6HiOBobfXs/Ram0FtvLZopWbRXWISzNB6X7v/dD6og/EyPbQnXh8FAQI
	XoHahYszr6jlHLoRUJk7qwi9XYTFK8O/RX1HBoS+OrjIMHmRa+KahYnlotE6RoKX7R56/u847ohjE
	l5apqcQ2Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kVz2V-0001RU-0q; Fri, 23 Oct 2020 15:31:35 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVz2O-0001NK-8J; Fri, 23 Oct 2020 15:31:29 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 03D1F1F4684E
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Neil Armstrong <narmstrong@baylibre.com>, Ezequiel Garcia
 <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, Laurent
 Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v9 00/11] Genericize DW MIPI DSI bridge and add i.MX 6
 driver
In-Reply-To: <e841d90b-0f1d-d5d9-9f67-f90d64c4fbc7@baylibre.com>
References: <20200609174959.955926-1-adrian.ratiu@collabora.com>
 <c6f10db1-7f56-a156-36a1-125e764c8c1a@baylibre.com>
 <87lfk3kaj4.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
 <b318069fe873e456f18d07d11f5d165667c9b04a.camel@collabora.com>
 <e0d0efec-09e0-6bf8-bab7-44accd14fa52@baylibre.com>
 <e841d90b-0f1d-d5d9-9f67-f90d64c4fbc7@baylibre.com>
Date: Fri, 23 Oct 2020 18:32:56 +0300
Message-ID: <87ft65vtxz.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201023_113128_420804_7A394A49 
X-CRM114-Status: GOOD (  17.99  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Neil,

On Tue, 15 Sep 2020, Neil Armstrong <narmstrong@baylibre.com> 
wrote:
> Hi Adrian, 
> 
> Gentle ping. 
> 
> can you rebase on drm-misc-next so I can apply the IMX and STM 
> patches ?

Sorry for the late reply, somehow missed this e-mail chain.

I have a rebase of the series but further investigation revealed 
we might regress Rockchip with a partial integration, so I'm 
getting a panel for RK to test to be sure and will re-submit.

>
> On 24/08/2020 11:47, Neil Armstrong wrote:
>> Hi,
>> 
>> 
>> On 15/08/2020 15:05, Ezequiel Garcia wrote:
>>> Hi Neil,
>>>
>>> On Wed, 2020-07-01 at 09:35 +0300, Adrian Ratiu wrote:
>>>> Hi Neil,
>>>>
>>>> On Mon, 29 Jun 2020, Neil Armstrong <narmstrong@baylibre.com> 
>>>> wrote:
>>>>> Hi Adrian, 
>>>>>
>>>>> On 09/06/2020 19:49, Adrian Ratiu wrote: 
>> [...]
>>>>
>>>
>>> It's been a month so I think it's a good idea to go forward
>>> applying IMX and STM patches (probably with the usual
>>> rebase dance).
>>>
>>> As for Rockchip...
>>>
>>>> The binding API removal change which directly touches RK can also 
>>>> be applied separately, but unfortunately I do not have access to a 
>>>> RK board with a DSI display to test it (or the bridge regmap logic 
>>>> on RK btw...), I just "eye-balled" the RK code based on the public 
>>>> docs and it LGTM.
>>>>
>>>
>>> ... I'll be getting some DSI hardware to help with the pending
>>> Rockchip issues, so we can tackle Rockchip as well. I'm quite sure
>>> we'll loop Heiko as well if needed :-)
>> 
>> Sure, Adrian, can you rebase on drm-misc-next so I can apply the IMX and STM patches ?
>> 
>>>
>>> Cheers,
>>> Ezequiel
>>>
>>>>> Neil
>>>>>
>>>>>> Big thank you to everyone who has contributed to this up to now,
>>>>>> Adrian
>>>>>>
>>>>>> Adrian Ratiu (11):
>>>>>>   drm: bridge: dw_mipi_dsi: add initial regmap infrastructure
>>>>>>   drm: bridge: dw_mipi_dsi: abstract register access using reg_fields
>>>>>>   drm: bridge: dw_mipi_dsi: add dsi v1.01 support
>>>>>>   drm: bridge: dw_mipi_dsi: remove bind/unbind API
>>>>>>   dt-bindings: display: add i.MX6 MIPI DSI host controller doc
>>>>>>   ARM: dts: imx6qdl: add missing mipi dsi properties
>>>>>>   drm: imx: Add i.MX 6 MIPI DSI host platform driver
>>>>>>   drm: stm: dw-mipi-dsi: let the bridge handle the HW version check
>>>>>>   drm: bridge: dw-mipi-dsi: split low power cfg register into fields
>>>>>>   drm: bridge: dw-mipi-dsi: fix bad register field offsets
>>>>>>   Documentation: gpu: todo: Add dw-mipi-dsi consolidation plan
>>>>>>
>>>>>>  .../display/imx/fsl,mipi-dsi-imx6.yaml        | 112 +++
>>>>>>  Documentation/gpu/todo.rst                    |  25 +
>>>>>>  arch/arm/boot/dts/imx6qdl.dtsi                |   8 +
>>>>>>  drivers/gpu/drm/bridge/synopsys/Kconfig       |   1 +
>>>>>>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 713 ++++++++++++------
>>>>>>  drivers/gpu/drm/imx/Kconfig                   |   8 +
>>>>>>  drivers/gpu/drm/imx/Makefile                  |   1 +
>>>>>>  drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c        | 399 ++++++++++
>>>>>>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |   7 +-
>>>>>>  drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  16 +-
>>>>>>  10 files changed, 1059 insertions(+), 231 deletions(-)
>>>>>>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
>>>>>>  create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c
>>>>>>
>>>
>> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
