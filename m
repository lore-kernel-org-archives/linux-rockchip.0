From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v4] arm64: dts: rockchip: update mipi cells for RK3399
Date: Mon, 04 Dec 2017 11:05:56 +0100
Message-ID: <1731157.IgmvaAa2Kc@phil>
References: <20171129184755.77187-1-briannorris@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20171129184755.77187-1-briannorris@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>
Cc: Archit Taneja <architt@codeaurora.org>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, David Airlie <airlied@linux.ie>, Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu <philippe.cornu@st.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Vincent Abriou <vincent.abriou@st.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Sean Paul <seanpaul@chromium.org>, Nickey Yang <nickey.yang@rock-chips.com>, hl@rock-chips.com, linux-rockchip@lists.infradead.org, mka@chromium.org, Doug Anderson <dianders@chromium.org>, robh+dt@kernel.org, mark.rutland@arm.com, hoegsberg@gmail.com, zyw@rock-chips.com, xbl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 29. November 2017, 10:47:55 CET schrieb Brian Norris:
> From: Nickey Yang <nickey.yang@rock-chips.com>
> 
> We might include additional ports in derivative device trees, so the
> 'port' node should have an address, and the parent 'ports' node needs
> /#{addres,size}-cells.
> 
> v4:
>  * keep #{address,size}-cells in both 'ports' and 'port@0' nodes
>  * separate from the rest of the series, since this is mostly
>    independent of the driver refactoring
> 
> Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
> Signed-off-by: Brian Norris <briannorris@chromium.org>

applied for 4.16 with Doug's Review

Thanks
Heiko
