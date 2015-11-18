From: Brian Norris <computersforpeace@gmail.com>
Subject: Re: [PATCH 4/7] phy: rockchip-usb: add missing of_node_put
Date: Wed, 18 Nov 2015 11:31:29 -0800
Message-ID: <20151118193129.GA48815@google.com>
References: <1447673600-8881-1-git-send-email-Julia.Lawall@lip6.fr>
 <1447673600-8881-5-git-send-email-Julia.Lawall@lip6.fr>
 <19587543.sZ81DoLUBT@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <19587543.sZ81DoLUBT@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Julia Lawall <Julia.Lawall@lip6.fr>, Kishon Vijay Abraham I <kishon@ti.com>, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Russell King - ARM Linux <linux@arm.linux.org.uk>, Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Andrew Lunn <andrew@lunn.ch>, Bjorn Helgaas <bhelgaas@google.com>, Jason Cooper <jason@lakedaemon.net>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Nov 18, 2015 at 08:27:07PM +0100, Heiko St=FCbner wrote:
> Am Montag, 16. November 2015, 12:33:17 schrieb Julia Lawall:
> hmm, while I agree that the rockchip phy has an issue in the node lif=
ecycle,=20
> I'm not sure that patch fixes it fully.
>=20
> It currently iterates over each phy, but would only of_node_put the p=
hy it=20
> handled last. So if an error happens on the 3rd phy, the first 2 are =
already=20
> instantiated and would also get removed when the overall probe fails,=
 but=20
> their of_node would never be "put".

Note the behavior of of_get_next_child() (and
of_get_next_available_child()); it "Decrements the refcount of prev." S=
o
the loop only keeps a reference for (at most) one node at a time.

I believe Julia's patch is correct. It's possible the commit descriptio=
n
could have made this aspect clearer though, since I was confused about
this at first as well.

Regards,
Brian
