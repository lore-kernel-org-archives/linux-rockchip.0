From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v3 0/4] arm64: dts: rockchip: Add Rock Pi N10 support
Date: Sat, 21 Dec 2019 13:15:59 +0100
Message-ID: <2568287.AjJObobGxI@phil>
References: <20191216174711.17856-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191216174711.17856-1-jagan@amarulasolutions.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 16. Dezember 2019, 18:47:07 CET schrieb Jagan Teki:
> Unlike, other Rock PI boards from radxa, Rock Pi N10 SBC is based
> on SOM + Carrier board combination.
> 
> Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
> - VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
> - Dalang carrier board from Radxa.
> 
> patch 0001: dt-bindings for Rock Pi N10
> 
> patch 0002: VMARC RK3399Pro SOM dtsi support
> 
> patch 0003: Radxa Dalang carrier board dtsi support
> 
> patch 0004: Rock Pi N10 dts support
> 
> Tested basic peripherals and will all more in future patches.

applied all 4 for 5.6

And looking for to seeing the rk3288-variant as well :-D .

Thanks
Heiko
