From: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 1/3] drm: bridge: synopsys/dw-hdmi: Enable cec clock
Date: Fri, 13 Oct 2017 21:18:59 -0300
Message-ID: <CAOMZO5CtP=A0jF1FimScjSUvv-t6a2ua=ungr0LUHmQvUTKr3Q@mail.gmail.com>
References: <20171013225337.5196-1-phh@phh.me> <20171013225337.5196-2-phh@phh.me>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20171013225337.5196-2-phh@phh.me>
Sender: linux-kernel-owner@vger.kernel.org
To: Pierre-Hugues Husson <phh@phh.me>
Cc: linux-rockchip@lists.infradead.org, linux-media <linux-media@vger.kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Pierre-Hugues,

On Fri, Oct 13, 2017 at 7:53 PM, Pierre-Hugues Husson <phh@phh.me> wrote:
> The documentation already mentions "cec" optional clock, but
> currently the driver doesn't enable it.

The cec clock is enabled at dw_hdmi_cec_enable().
