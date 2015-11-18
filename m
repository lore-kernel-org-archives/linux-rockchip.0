From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 4/7] phy: rockchip-usb: add missing of_node_put
Date: Wed, 18 Nov 2015 20:46:02 +0100
Message-ID: <3792177.PEjN5hRYe2@diego>
References: <1447673600-8881-1-git-send-email-Julia.Lawall@lip6.fr> <19587543.sZ81DoLUBT@diego> <20151118193129.GA48815@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-janitors-owner@vger.kernel.org>
In-Reply-To: <20151118193129.GA48815@google.com>
Sender: kernel-janitors-owner@vger.kernel.org
To: Brian Norris <computersforpeace@gmail.com>
Cc: Julia Lawall <Julia.Lawall@lip6.fr>, Kishon Vijay Abraham I <kishon@ti.com>, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Russell King - ARM Linux <linux@arm.linux.org.uk>, Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Andrew Lunn <andrew@lunn.ch>, Bjorn Helgaas <bhelgaas@google.com>, Jason Cooper <jason@lakedaemon.net>
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 18. November 2015, 11:31:29 schrieb Brian Norris:
> On Wed, Nov 18, 2015 at 08:27:07PM +0100, Heiko St=FCbner wrote:
> > Am Montag, 16. November 2015, 12:33:17 schrieb Julia Lawall:
> > hmm, while I agree that the rockchip phy has an issue in the node
> > lifecycle, I'm not sure that patch fixes it fully.
> >=20
> > It currently iterates over each phy, but would only of_node_put the=
 phy it
> > handled last. So if an error happens on the 3rd phy, the first 2 ar=
e
> > already instantiated and would also get removed when the overall pr=
obe
> > fails, but their of_node would never be "put".
>=20
> Note the behavior of of_get_next_child() (and
> of_get_next_available_child()); it "Decrements the refcount of prev."=
 So
> the loop only keeps a reference for (at most) one node at a time.
>=20
> I believe Julia's patch is correct. It's possible the commit descript=
ion
> could have made this aspect clearer though, since I was confused abou=
t
> this at first as well.

oh, I hadn't realized that :-) .

Although in this case, what happens with the last child, if only "prev"=
s get=20
decremented? When the loop finished I'd think that the last one would k=
eep=20
it's reference, as the patch stand right - or I'm just blind.
--
To unsubscribe from this list: send the line "unsubscribe kernel-janito=
rs" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
