From: Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [PATCH 4/7] phy: rockchip-usb: add missing of_node_put
Date: Wed, 18 Nov 2015 21:38:02 +0100 (CET)
Message-ID: <alpine.DEB.2.02.1511182136270.2059@localhost6.localdomain6>
References: <1447673600-8881-1-git-send-email-Julia.Lawall@lip6.fr> <19587543.sZ81DoLUBT@diego> <20151118193129.GA48815@google.com> <3792177.PEjN5hRYe2@diego>
Mime-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1731109955-1447879084=:2059"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <3792177.PEjN5hRYe2@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?ISO-8859-15?Q?Heiko_St=FCbner?= <heiko@sntech.de>
Cc: Brian Norris <computersforpeace@gmail.com>, Julia Lawall <Julia.Lawall@lip6.fr>, Kishon Vijay Abraham I <kishon@ti.com>, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Russell King - ARM Linux <linux@arm.linux.org.uk>, Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Andrew Lunn <andrew@lunn.ch>, Bjorn Helgaas <bhelgaas@google.com>, Jason Cooper <jason@lakedaemon.net>
List-Id: linux-rockchip.vger.kernel.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1731109955-1447879084=:2059
Content-Type: TEXT/PLAIN; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT



On Wed, 18 Nov 2015, Heiko Stübner wrote:

> Am Mittwoch, 18. November 2015, 11:31:29 schrieb Brian Norris:
> > On Wed, Nov 18, 2015 at 08:27:07PM +0100, Heiko Stübner wrote:
> > > Am Montag, 16. November 2015, 12:33:17 schrieb Julia Lawall:
> > > hmm, while I agree that the rockchip phy has an issue in the node
> > > lifecycle, I'm not sure that patch fixes it fully.
> > > 
> > > It currently iterates over each phy, but would only of_node_put the phy it
> > > handled last. So if an error happens on the 3rd phy, the first 2 are
> > > already instantiated and would also get removed when the overall probe
> > > fails, but their of_node would never be "put".
> > 
> > Note the behavior of of_get_next_child() (and
> > of_get_next_available_child()); it "Decrements the refcount of prev." So
> > the loop only keeps a reference for (at most) one node at a time.
> > 
> > I believe Julia's patch is correct. It's possible the commit description
> > could have made this aspect clearer though, since I was confused about
> > this at first as well.
> 
> oh, I hadn't realized that :-) .
> 
> Although in this case, what happens with the last child, if only "prev"s get 
> decremented? When the loop finished I'd think that the last one would keep 
> it's reference, as the patch stand right - or I'm just blind.

The loop finishes when the child is NULL.  So there is nothing to put in 
that case.  The process of getting from the last child to the NULL does 
the of_node_put.

julia
--8323328-1731109955-1447879084=:2059--
