From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v2 1/3] media: dt-bindings: media: Document Rockchip CIF
 bindings
Date: Fri, 29 May 2020 10:14:15 -0600
Message-ID: <20200529161415.GA2486902@bogus>
References: <20200529130405.929429-1-maxime.chevallier@bootlin.com>
 <20200529130405.929429-2-maxime.chevallier@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20200529130405.929429-2-maxime.chevallier-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Maxime Chevallier <maxime.chevallier-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Cc: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, Hans Verkuil <hverkuil-cisco-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, 29 May 2020 15:04:03 +0200, Maxime Chevallier wrote:
> Add a documentation for the Rockchip Camera Interface controller
> binding.
> 
> This controller can be found on platforms such as the PX30 or the
> RK3288, the PX30 being the only platform supported so far.
> 
> Signed-off-by: Maxime Chevallier <maxime.chevallier-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
> ---
> 
> Changes since V1
> 
>  - Updated the clock and reset names
>  - Added missing includes in the example, so that the make dt_binding_check passes
> 
>  .../bindings/media/rockchip-cif.yaml          | 100 ++++++++++++++++++
>  1 file changed, 100 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-cif.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.example.dt.yaml: cif@ff490000: clock-names: Additional items are not allowed ('cif_out' was unexpected)
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.example.dt.yaml: cif@ff490000: clock-names:0: 'aclk' was expected
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.example.dt.yaml: cif@ff490000: clock-names:1: 'hclkf' was expected
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.example.dt.yaml: cif@ff490000: clock-names:2: 'pclkin' was expected
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.example.dt.yaml: cif@ff490000: clock-names: ['aclk_cif', 'hclk_cif', 'pclk_cif', 'cif_out'] is too long
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.example.dt.yaml: cif@ff490000: clocks: Additional items are not allowed ([4294967295, 52] was unexpected)
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.example.dt.yaml: cif@ff490000: clocks: [[4294967295, 179], [4294967295, 249], [4294967295, 352], [4294967295, 52]] is too long
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.example.dt.yaml: cif@ff490000: reset-names:0: 'axi' was expected
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.example.dt.yaml: cif@ff490000: reset-names:1: 'ahb' was expected
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.example.dt.yaml: cif@ff490000: reset-names:2: 'pclkin' was expected

See https://patchwork.ozlabs.org/patch/1300680

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.
