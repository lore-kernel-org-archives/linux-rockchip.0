From: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v12 08/11] media: staging: dt-bindings: add Rockchip ISP1
 yaml bindings
Date: Mon, 6 Jan 2020 16:27:56 -0600
Message-ID: <CAL_JsqL25gQZxdN+2ciSj7HLbOjN3OvjY-GrA57m9_y-CdYZLA@mail.gmail.com>
References: <20191227200116.2612137-1-helen.koike@collabora.com> <20191227200116.2612137-9-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191227200116.2612137-9-helen.koike@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Helen Koike <helen.koike@collabora.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Eddie Cai <eddie.cai.linux@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrey Konovalov <andrey.konovalov@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hans.verkuil@cisco.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, joacim.zetterling@gmail.com, kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, Jacob Chen <jacob-chen@iotwrt.com>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Dec 27, 2019 at 2:02 PM Helen Koike <helen.koike@collabora.com> wrote:
>
> Add yaml DT bindings for Rockchip ISP1.
>
> This was tested and verified with:
> mv drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml Documentation/devicetree/bindings/media/
> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
>
> ---
>
> Changes in v12:
> - The commit replaces the following commit in previous series named
> media: staging: dt-bindings: Document the Rockchip ISP1 bindings
> This new patch adds yaml binding and was verified with
> make dtbs_check and make dt_binding_check
>
> Changes in v11:
> - add clock-names values
>
> Changes in v10:
> - unsquash
>
> Changes in v9:
> - squash
> - move to staging
>
> Changes in v8:
> - fix title division style
>
> Changes in v7:
> - update document with new design and tested example
>
>  .../bindings/media/rockchip-isp1.yaml         | 193 ++++++++++++++++++
>  1 file changed, 193 insertions(+)
>  create mode 100644 drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml

Reviewed-by: Rob Herring <robh@kernel.org>
