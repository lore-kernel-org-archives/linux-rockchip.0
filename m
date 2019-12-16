From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH RESEND 1/2] dt-bindings: phy: drop #clock-cells from
 rockchip, px30-dsi-dphy
Date: Mon, 16 Dec 2019 19:01:44 +0100
Message-ID: <12525836.FhlgEYrHGb@diego>
References: <20191216122448.27867-1-heiko@sntech.de>
 <20191216175615.GA23392@bogus>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191216175615.GA23392@bogus>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Rob Herring <robh@kernel.org>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, linux-kernel@vger.kernel.org, kishon@ti.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Rob,

Am Montag, 16. Dezember 2019, 18:56:15 CET schrieb Rob Herring:
> On Mon, 16 Dec 2019 13:24:47 +0100, Heiko Stuebner wrote:
> > From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > 
> > Further review of the dsi components for the px30 revealed that the
> > phy shouldn't expose the pll as clock but instead handle settings
> > via phy parameters.
> > 
> > As the phy binding is new and not used anywhere yet, just drop them
> > so they don't get used.
> > 
> > Fixes: 3817c7961179 ("dt-bindings: phy: add yaml binding for rockchip,px30-dsi-dphy")
> > Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > ---
> > Hi Kishon,
> > 
> > maybe suitable as a fix for 5.5-rc?
> > 
> > Thanks
> > Heiko
> > 
> >  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml      | 5 -----
> >  1 file changed, 5 deletions(-)
> > 
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.

sorry about that. The original response somehow did not thread correctly
in my mail client, probably some fault on my side, so I've only found your
mail just now by digging hard.

@Kishon, the original mail already got an

Acked-by: Rob Herring <robh@kernel.org>
