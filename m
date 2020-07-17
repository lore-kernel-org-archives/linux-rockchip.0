From: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v4 3/9] media: staging: dt-bindings: rkisp1: re-order properties
Date: Fri, 17 Jul 2020 11:43:23 -0600
Message-ID: <CAL_JsqLduaH=F0G8+15PM+1GGmKBjgn7ddP+__ACezLd+ivp5w@mail.gmail.com>
References: <20200702191322.2639681-1-helen.koike@collabora.com> <20200702191322.2639681-4-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200702191322.2639681-4-helen.koike@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Helen Koike <helen.koike@collabora.com>
Cc: devicetree@vger.kernel.org, Linux Media Mailing List <linux-media@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>, "heiko@sntech.de" <heiko@sntech.de>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Collabora Kernel ML <kernel@collabora.com>, Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, Ezequiel Garcia <ezequiel@collabora.com>, Mark Rutland <mark.rutland@arm.com>, karthik.poduval@gmail.com, Johan Jonker <jbx6244@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Eddie Cai <eddie.cai.linux@gmail.com>, Shunqian Zheng <zhengsq@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jul 2, 2020 at 1:13 PM Helen Koike <helen.koike@collabora.com> wrote:
>
> Organize properties order in dt-binbings to move it out of staging.

typo

>
> On top: compatible, reg and interrupts.
> Then alphabetical order, then properties starting with '#'.
>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
>
> ---
>
> V2:
> - this is a new patch in the series
> ---
>  .../bindings/media/rockchip-isp1.yaml         | 32 +++++++++----------
>  1 file changed, 16 insertions(+), 16 deletions(-)

Acked-by: Rob Herring <robh@kernel.org>
