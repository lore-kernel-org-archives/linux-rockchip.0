From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] include: dt-bindings: rockchip: mark RK_GPIO defines as deprecated
Date: Tue, 12 May 2020 03:09:30 +0200
Message-ID: <2039286.bXBTDbpnOK@diego>
References: <20200424151105.18736-1-jbx6244@gmail.com> <20200511213605.GA14679@bogus>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200511213605.GA14679@bogus>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh@kernel.org>
Cc: Johan Jonker <jbx6244@gmail.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 11. Mai 2020, 23:36:05 CEST schrieb Rob Herring:
> On Fri, Apr 24, 2020 at 05:11:05PM +0200, Johan Jonker wrote:
> > The defines RK_GPIO0, RK_GPIO1, RK_GPIO2, RK_GPIO3,
> > RK_GPIO4 and RK_GPIO6 are no longer used. Mark them as
> > "deprecated" to prevent that someone start using them again.
> 
> What changed exactly? The binding changed, or just using raw 0-6 instead 
> of the defines? 

This ... they are just dumb mappings of RK_GPIOx -> x so we switched
over to just using the raw numbers, as the constants do not provide any
additional information.


> If there's not anything using these in tree, just delete them.

Ok, good to know that we can just delete them if noone is using them
anymore.


> It is still used in the binding doc.

I think Johan will provide a v2 with that.


Heiko
