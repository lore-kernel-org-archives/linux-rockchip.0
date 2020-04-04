From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/3] media: dt-bindings: media: Document Rockchip CIF
 bindings
Date: Sat, 4 Apr 2020 11:00:26 -0600
Message-ID: <20200404170026.GA24638@bogus>
References: <20200403142122.297283-1-maxime.chevallier@bootlin.com>
 <20200403142122.297283-2-maxime.chevallier@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <20200403142122.297283-2-maxime.chevallier@bootlin.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, Maxime Chevallier <maxime.chevallier@bootlin.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, linux-rockchip@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Miquel Raynal <miquel.raynal@bootlin.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Fri,  3 Apr 2020 16:21:20 +0200, Maxime Chevallier wrote:
> Add a documentation for the Rockchip Camera Interface controller
> binding.
> 
> This controller can be found on platforms such as the PX30 or the
> RK3288, the PX30 being the only platform supported so far.
> 
> Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
> ---
>  .../bindings/media/rockchip-cif.yaml          | 98 +++++++++++++++++++
>  1 file changed, 98 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-cif.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/media/rockchip-cif.yaml:  while scanning a simple key
  in "<unicode string>", line 13, column 1
could not find expected ':'
  in "<unicode string>", line 15, column 1
Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/media/rockchip-cif.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/media/rockchip-cif.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
warning: no schema found in file: Documentation/devicetree/bindings/media/rockchip-cif.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.yaml: ignoring, error parsing file
Makefile:1262: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1266070

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.
