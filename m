From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [RFC v1 0/1] drm: lima: devfreq and cooling device support
Date: Tue, 24 Dec 2019 12:22:09 +0100
Message-ID: <CAFBinCD+k8O90ePuwSEnW1+oh-xJ9oUC5P2WrHgLLBb0RHj+=Q@mail.gmail.com>
References: <20191215211223.1451499-1-martin.blumenstingl@googlemail.com> <CAKGbVbvj5zK9gVDQ3+0=xmF5pOUOSJzZ6jaGKHoCqwjYz+UiEQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAKGbVbvj5zK9gVDQ3+0=xmF5pOUOSJzZ6jaGKHoCqwjYz+UiEQ@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Qiang Yu <yuq825@gmail.com>
Cc: dri-devel <dri-devel@lists.freedesktop.org>, lima@lists.freedesktop.org, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>, Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>, linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Dec 16, 2019 at 3:51 AM Qiang Yu <yuq825@gmail.com> wrote:
[...]
> For the code, I think you may need some lock to protect the time records as
> there are two kernel threads gp/pp will try to mark GPU busy and several
> interrupts try to mark GPU idle.
good catch, thank you for this!
I assume the reason is that the panfrost GPUs are using a "unified"
architecture, while the ones supported by lima don't

I'll add locking so I don't run into trouble.


Thank you!
Martin
