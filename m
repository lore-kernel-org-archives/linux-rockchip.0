From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Enable PD for USB-C-Port on
 rk3399-roc-pc.
Date: Sat, 21 Dec 2019 13:57:37 +0100
Message-ID: <2330032.fiRFtybceW@phil>
References: <678df227-38be-47af-7ee3-741a391a196c@fivetechno.de>
 <84920a36-230f-42a6-a960-a71e685be99f@singleboardsolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <84920a36-230f-42a6-a960-a71e685be99f@singleboardsolutions.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Thomas McKahan <tmckahan@singleboardsolutions.com>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, narmstrong@baylibre.com, linux-kernel@vger.kernel.org, Markus Reichl <m.reichl@fivetechno.de>, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Thomas,

Am Donnerstag, 12. Dezember 2019, 16:46:09 CET schrieb Thomas McKahan:
> Hello Markus,
> 
>     I have been working with this as well, came across it on Armbian. I was also trying to eliminate the warning concerning the lack of port with limited success.  I also missed the interrupt pin definition I see.  I will test this later today.  

Where you successful in your testing? My type-c exposure is somewhat
limited so it would be nice to get another opinion ;-)

>    I've added Neil Armstrong for information in case any boards on the Amlogic side are similarly configured, I think a few other Rockchip ones at least are missing connector nodes, it appears to be a consistent issue presumably due to driver changes.

The whole type-c topic is a somewhat undiscovered country on rk3399, due to
the cross-ec hooking rk3399's type-c components. (see the cros-ec-pd extcon
going to the rockchip type-c phy etc).

This is presently worked on so that also everything can at some point use the
kernel-internal type-c framework.

But of course this doesn't hinder configuring the power-develivery in the
fusb302 ICs already :-D .


Heiko
