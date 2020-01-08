From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ARM: dts: rockchip: Use ABI name for recovery mode pin on
 veyron fievel/tiger
Date: Wed, 8 Jan 2020 09:48:00 -0800
Message-ID: <CAD=FV=WFCjzRGv=8C-LU9O+fRi_C6E6zuyM7SyAX7CWx=wHnGw@mail.gmail.com>
References: <20200108092908.1.I3afd3535b65460e79f3976e9ebfa392a0dd75e01@changeid>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200108092908.1.I3afd3535b65460e79f3976e9ebfa392a0dd75e01@changeid>
Sender: linux-kernel-owner@vger.kernel.org
To: Matthias Kaehlcke <mka@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Wed, Jan 8, 2020 at 9:29 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> The recovery mode pin is currently named 'REC_MODE_L', which is
> how the signal is called in the schematics. The Chrome OS ABI
> requires the pin to be named 'RECOVERY_SW_L', which is also how
> it is called on all other veyron devices. Rename the pin to match
> the ABI.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Another misnamed pin, I should have noticed when fixing the
> name of the write protect pin ...

...and I should have noticed when reviewing.  Sorry about that.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
