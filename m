From: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2] pinctrl: rockchip: remove unneeded (void *) casts in of_match_table
Date: Thu, 11 May 2017 09:32:07 +0200
Message-ID: <CACRpkdbSLRpXKgFh81XfB13xEc9_sibscM18KCkAEBHjjgF8aQ@mail.gmail.com>
References: <1493383835-1959-1-git-send-email-yamada.masahiro@socionext.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <1493383835-1959-1-git-send-email-yamada.masahiro@socionext.com>
Sender: linux-gpio-owner@vger.kernel.org
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Apr 28, 2017 at 2:50 PM, Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:

> of_device_id::data is an opaque pointer.  No explicit cast is needed.
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> ---
>
> Changes in v2:
>   - Rebase on pinctrl subsystem tree

Patch applied for v4.13.

Yours,
Linus Walleij
