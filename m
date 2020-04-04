From: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH v1 3/3] dt-bindings: iio: adc: rockchip-saradc: add
 description for px30
Date: Sat, 4 Apr 2020 15:02:19 +0100
Message-ID: <20200404150219.0e66be93@archlinux>
References: <20200313132926.10543-1-jbx6244@gmail.com>
        <20200313132926.10543-3-jbx6244@gmail.com>
        <20200330181106.GA8102@bogus>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200330181106.GA8102@bogus>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh@kernel.org>
Cc: Johan Jonker <jbx6244@gmail.com>, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net, heiko@sntech.de, robh+dt@kernel.org, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, 30 Mar 2020 12:11:06 -0600
Rob Herring <robh@kernel.org> wrote:

> On Fri, 13 Mar 2020 14:29:26 +0100, Johan Jonker wrote:
> > The description below is already in use for px30.dtsi,
> > but was somehow never added to a document, so add
> > "rockchip,px30-saradc", "rockchip,rk3399-saradc"
> > for saradc nodes on a px30 platform to rockchip-saradc.yaml.
> > 
> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >   
> 
> Acked-by: Rob Herring <robh@kernel.org>

Applied.

Thanks,

Jonathan
