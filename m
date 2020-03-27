From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4] dt-bindings: rockchip-vpu: Convert bindings to json-schema
Date: Thu, 26 Mar 2020 21:05:03 -0600
Message-ID: <CAL_JsqJ4sLE8mf=Ssg3wxbpf-f65i+YRkCBj+8DVGPonRA0=9A@mail.gmail.com>
References: <20200325213439.16509-8-ezequiel@collabora.com> <20200326191343.1989-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200326191343.1989-1-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Linux Media Mailing List <linux-media@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, Collabora Kernel ML <kernel@collabora.com>, Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil@xs4all.nl>, Alexandre Courbot <acourbot@chromium.org>, Jeffrey Kardatzke <jkardatzke@chromium.org>, Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Mar 26, 2020 at 1:14 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> Convert Rockchip VPU (Hantro IP block) codec driver documentation to
> json-schema.
>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
> v4:
> * Fix issues pointed out by Rob,
>   and make sure now dt_binding_check passes.
>
>  .../bindings/media/rockchip-vpu.txt           | 43 -----------
>  .../bindings/media/rockchip-vpu.yaml          | 74 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 75 insertions(+), 44 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.txt
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.yaml

Reviewed-by: Rob Herring <robh@kernel.org>
