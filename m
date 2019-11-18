From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH 2/2] PCI: rockchip: Simplify optional regulator handling
Date: Mon, 18 Nov 2019 18:15:38 +0000
Message-ID: <20191118181538.GA2261@e121166-lin.cambridge.arm.com>
References: <20191118115930.GC9761@sirena.org.uk>
 <20191118142428.GA27459@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <20191118142428.GA27459@google.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: heiko@sntech.de, linux-pci@vger.kernel.org, shawn.lin@rock-chips.com, lgirdwood@gmail.com, linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>, andrew.murray@arm.com, Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, Nov 18, 2019 at 08:24:28AM -0600, Bjorn Helgaas wrote:
> On Mon, Nov 18, 2019 at 11:59:30AM +0000, Mark Brown wrote:
> > On Sat, Nov 16, 2019 at 12:54:20PM +0000, Robin Murphy wrote:
> > > Null checks are both cheaper and more readable than having !IS_ERR()
> > > splattered everywhere.
> > 
> > > -	if (IS_ERR(rockchip->vpcie3v3))
> > > +	if (!rockchip->vpcie3v3)
> > >  		return;
> > >  
> > >  	/*
> > > @@ -611,6 +611,7 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
> > >  		if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
> > >  			return PTR_ERR(rockchip->vpcie12v);
> > >  		dev_info(dev, "no vpcie12v regulator found\n");
> > > +		rockchip->vpcie12v = NULL;
> > 
> > According to the API NULL is a valid regulator.  We don't currently
> > actually do this but it's storing up surprises if you treat it as
> > invalid.
> 
> I don't know anything about the regulator API, but the fact that NULL
> can be a valid regulator is itself a little surprising :)

if (rockchip->vpcie3v3 == NULL) is true the driver would currently
panic the kernel AFAICS.

rockchip_pcie_set_power_limit()
->regulator_get_current_limit(NULL)
 -> _regulator_get_current_limit(NULL)
   -> regulator_lock(NULL)
     -> regulator_lock_nested(NULL, NULL)
       -> ww_mutex_trylock(&NULL->mutex)

Also, by making NULL a valid regulator, it means that regulators
(ie pointers) with default values are valid whether we call
devm_regulator_get* or not. I understand this patch can be dropped
but that per-se does not make this driver code any more robust AFAICS.

Lorenzo
