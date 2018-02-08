From: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH v2] drm/bridge/synopsys: dsi: Add 1.31 version support
Date: Thu, 08 Feb 2018 08:39:23 +0100
Message-ID: <bbe3ffeb-2e93-f36f-a8be-0319e16572e5@samsung.com>
References: <CGME20180206084357epcas1p32e11d1e3c84de7da9d5ba150ded77cdf@epcas1p3.samsung.com>
        <20180206084251.303-1-philippe.cornu@st.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-reply-to: <20180206084251.303-1-philippe.cornu@st.com>
Content-language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Philippe Cornu <philippe.cornu@st.com>, Archit Taneja <architt@codeaurora.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, David Airlie <airlied@linux.ie>, Brian Norris <briannorris@chromium.org>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Bhumika Goyal <bhumirks@gmail.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>, Heiko Stubner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Yannick Fertre <yannick.fertre@st.com>, Vincent Abriou <vincent.abriou@st.com>, Alexandre Torgue <alexandre.torgue@st.com>
List-Id: linux-rockchip.vger.kernel.org

On 06.02.2018 09:42, Philippe Cornu wrote:
> Add support for the Synopsys DesignWare MIPI DSI version 1.31
> Two registers need to be updated/added for supporting 1.31:
> * PHY_TMR_CFG 0x9c (updated)
>   1.30 [31:24] phy_hs2lp_time
>        [23:16] phy_lp2hs_time
>        [14: 0] max_rd_time
>
>   1.31 [25:16] phy_hs2lp_time
>        [ 9: 0] phy_lp2hs_time
>
> * PHY_TMR_RD_CFG 0xf4 (new)
>   1.31 [14: 0] max_rd_time
>
> Signed-off-by: Philippe Cornu <philippe.cornu@st.com>
Queued to drm-misc-next.
--
Regards
Andrzej
