From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [RFC v1 0/1] drm: lima: devfreq and cooling device support
Date: Tue, 24 Dec 2019 12:28:41 +0100
Message-ID: <CAFBinCCDmCHQW+nBHzsodz0R=GKoqv1EEzB=UY=ypFs4Q6MFmQ@mail.gmail.com>
References: <20191215211223.1451499-1-martin.blumenstingl@googlemail.com> <20191216154803.GA3921@kevin>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191216154803.GA3921@kevin>
Sender: linux-kernel-owner@vger.kernel.org
To: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
Cc: yuq825@gmail.com, dri-devel@lists.freedesktop.org, lima@lists.freedesktop.org, airlied@linux.ie, daniel@ffwll.ch, linux-kernel@vger.kernel.org, tomeu.vizoso@collabora.com, robh@kernel.org, steven.price@arm.com, linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, wens@csie.org
List-Id: linux-rockchip.vger.kernel.org

Hi Alyssa,

On Mon, Dec 16, 2019 at 4:48 PM Alyssa Rosenzweig
<alyssa.rosenzweig@collabora.com> wrote:
>
> If so much code is being duplicated over, I'm wondering if it makes
> sense for us to move some of the common devfreq code to core DRM
> helpers?
if you have any recommendation where to put it then please let me know
(I am not familiar with the DRM subsystem at all)

my initial idea was that the devfreq logic needs the same information
that the scheduler needs (whether we're submitting something to be
executed, there was a timeout, ...).
however, looking at drivers/gpu/drm/scheduler/ this seems pretty
stand-alone so I'm not sure it should go there
also the Mali-4x0 GPUs have some "PMU" which *may* be used instead of
polling the statistics internally
so this is where I realize that with my current knowledge I don't know
enough about lima, panfrost, DRM or the devfreq subsystem to get a
good idea where to put the code.


Martin
