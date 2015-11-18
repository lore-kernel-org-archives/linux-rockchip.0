From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 4/7] phy: rockchip-usb: add missing of_node_put
Date: Wed, 18 Nov 2015 21:40:37 +0100
Message-ID: <5404117.o251jAaic5@diego>
References: <1447673600-8881-1-git-send-email-Julia.Lawall@lip6.fr> <3792177.PEjN5hRYe2@diego> <alpine.DEB.2.02.1511182136270.2059@localhost6.localdomain6>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <alpine.DEB.2.02.1511182136270.2059@localhost6.localdomain6>
Sender: linux-kernel-owner@vger.kernel.org
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Brian Norris <computersforpeace@gmail.com>, Julia Lawall <Julia.Lawall@lip6.fr>, Kishon Vijay Abraham I <kishon@ti.com>, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Russell King - ARM Linux <linux@arm.linux.org.uk>, Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Andrew Lunn <andrew@lunn.ch>, Bjorn Helgaas <bhelgaas@google.com>, Jason Cooper <jason@lakedaemon.net>
List-Id: linux-rockchip.vger.kernel.org

Hi Julia,

Am Mittwoch, 18. November 2015, 21:38:02 schrieb Julia Lawall:
> On Wed, 18 Nov 2015, Heiko St=FCbner wrote:
> > Am Mittwoch, 18. November 2015, 11:31:29 schrieb Brian Norris:
> > > On Wed, Nov 18, 2015 at 08:27:07PM +0100, Heiko St=FCbner wrote:
> > > > Am Montag, 16. November 2015, 12:33:17 schrieb Julia Lawall:
> > > > hmm, while I agree that the rockchip phy has an issue in the no=
de
> > > > lifecycle, I'm not sure that patch fixes it fully.
> > > >=20
> > > > It currently iterates over each phy, but would only of_node_put=
 the
> > > > phy it
> > > > handled last. So if an error happens on the 3rd phy, the first =
2 are
> > > > already instantiated and would also get removed when the overal=
l probe
> > > > fails, but their of_node would never be "put".
> > >=20
> > > Note the behavior of of_get_next_child() (and
> > > of_get_next_available_child()); it "Decrements the refcount of pr=
ev." So
> > > the loop only keeps a reference for (at most) one node at a time.
> > >=20
> > > I believe Julia's patch is correct. It's possible the commit desc=
ription
> > > could have made this aspect clearer though, since I was confused =
about
> > > this at first as well.
> >=20
> > oh, I hadn't realized that :-) .
> >=20
> > Although in this case, what happens with the last child, if only "p=
rev"s
> > get decremented? When the loop finished I'd think that the last one=
 would
> > keep it's reference, as the patch stand right - or I'm just blind.
>=20
> The loop finishes when the child is NULL.  So there is nothing to put=
 in
> that case.  The process of getting from the last child to the NULL do=
es
> the of_node_put.

sorry for being a bit slow today ... I should probably sleep more :-)

Then the patch looks fine ... I'll add my Tag on the top, to not burry =
it down=20
here.


Heiko
