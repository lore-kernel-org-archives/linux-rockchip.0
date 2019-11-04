From: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 1/4] drm: bridge: dw_mipi_dsi: access registers via a
 regmap
Date: Mon, 4 Nov 2019 16:46:44 +0100
Message-ID: <3b3bbf68-a19e-77ea-7e7c-770f75a81a21@baylibre.com>
References: <20191031142633.12460-1-adrian.ratiu@collabora.com>
 <20191031142633.12460-2-adrian.ratiu@collabora.com>
 <974be8e9-fcb4-4457-8831-40b2fa834ae2@baylibre.com>
 <87v9rz97bn.fsf@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <87v9rz97bn.fsf@collabora.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Adrian Ratiu <adrian.ratiu@collabora.com>, linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Boris Brezillon <boris.brezillon@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Adrian,

On 04/11/2019 13:03, Adrian Ratiu wrote:
> On Mon, 04 Nov 2019, Neil Armstrong <narmstrong@baylibre.com> wrote:
>> On 31/10/2019 15:26, Adrian Ratiu wrote:
>>
>> OK for the dw-mipi-dsi changes, but why should the dw_mipi_dsi-stm be changed aswell ?
>> AFAIK these are independent.
> 
> I don't understand how they are independent. Isn't the stm driver also using the same dw-mipi-dsi bridge as rockchip and now imx since it was first added in commit
> c1c026dbc183 ("drm/stm: Add STM32 DSI controller driver") ?
> 
> I don't have the hardware to test the stm driver on a live boot, but compilation certainly fails if I don't modify it :)

Ignore my comment, this patch is fine, please keep:
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

when resending.

Neil

> 
>>
>> Neil
