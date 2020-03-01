From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 3/4] dt-bindings: arm: fix Rockchip rk3399-evb bindings
Date: Sun, 01 Mar 2020 01:02:06 +0100
Message-ID: <3089122.gegXmbq47i@phil>
References: <20200228061436.13506-1-jbx6244@gmail.com> <78b8b53f-2e2a-3804-41fb-bb2610947ca2@arm.com> <229c3511-d99d-8bac-6241-0088c5fc13ef@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <229c3511-d99d-8bac-6241-0088c5fc13ef@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>, dianders@chromium.org
Cc: Robin Murphy <robin.murphy@arm.com>, devicetree@vger.kernel.org, robh+dt@kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Johan,

Am Freitag, 28. Februar 2020, 14:28:36 CET schrieb Johan Jonker:
> Hi Robin,
> 
> When I look at the review process of rk3399-evb.dts
> it is mentioned here:
> 
> https://lore.kernel.org/patchwork/patch/672327/
> 
> >> +	model = "Rockchip RK3399 Evaluation Board";
> >> +	compatible = "rockchip,rk3399-evb", "rockchip,rk3399",
> >> +		     "google,rk3399evb-rev2", google,rk3399evb-rev1",
> >> +		     "google,rk3399evb-rev0" ;
> > 
> > can you check against which compatibles that coreboot really matches?
> > 
> > As we said that the evb changed between rev1 and rev2, I would expect the 
> > compatible to be something like
> > 
> > 	compatible = "rockchip,rk3399-evb",  "google,rk3399evb-rev2", 
> > 			"rockchip,rk3399";
> > 
> > leaving out the rev1 and rev0
> 
> The consensus in version 4 ends in what is shown in the dts file, so I
> changed it in rockchip.yaml. Things from the past maybe can better be
> explained by Heiko. Please advise if this patch needs to change and in
> what file.

Just get rid of the "google,rk3399evb-rev2" from the .dts please :-) .

(1)  "rockchip,rk3399-evb", "rockchip,rk3399", "google,rk3399evb-rev2";
    is just wrong for the reasons Robin explained, I guess that slipped
    through review at the time.
(2) "google,rk3399evb-rev2" was a specific variant for Google I'm pretty
    sure they'll have scraped all these boards directly after they had the
    first actual rk3399-gru development devices

So I'm pretty sure the only rk3399-evbs in existence are the general ones.


Heiko
