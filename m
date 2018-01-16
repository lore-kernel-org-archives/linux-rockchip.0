From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH 01/40] drm/rockchip: Get rid of some unnecessary code
Date: Tue, 16 Jan 2018 12:53:15 +0900
Message-ID: <CAAFQd5Bq333udYHcwt4G3r+Lfv1HPdxB_CtJGeHS3rWb4XO==w@mail.gmail.com>
References: <20180115171614.14474-1-thierry.escande@collabora.com> <20180115171614.14474-2-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180115171614.14474-2-thierry.escande@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Thierry Escande <thierry.escande@collabora.com>
Cc: Archit Taneja <architt@codeaurora.org>, Inki Dae <inki.dae@samsung.com>, Thierry Reding <thierry.reding@gmail.com>, Sandy Huang <hjc@rock-chips.com>, Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>, Haixia Shi <hshi@chromium.org>, =?UTF-8?Q?=C3=98rjan_Eide?= <orjan.eide@arm.com>, zain wang <wzz@rock-chips.com>, Yakir Yang <ykk@rock-chips.com>, Lin Huang <hl@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, Mark Yao <mark.yao@rock-chips.com>, linux-kernel@vger.kernel.org, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, dri-devel <dri-devel@lists.freedesktop.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Thierry,

On Tue, Jan 16, 2018 at 2:15 AM, Thierry Escande
<thierry.escande@collabora.com> wrote:
> From: Tomasz Figa <tfiga@chromium.org>
>
> Current code implements prepare_fb and cleanup_fb callbacks only to
> grab/release fb references, which is already done by atomic framework
> when creating/destryoing plane state.

AFAICT this is already gone in current code, so only the part
mentioned below remains.

> Also there are some unused fields
> vop and vop_win structs. Let's remove these unused bits.

^^

Best regards,
Tomasz

Best regards,
Tomasz
