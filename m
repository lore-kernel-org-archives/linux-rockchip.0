From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v1 1/6] clk: rockchip: Add supprot to limit input rate for
 fractional divider
Date: Fri, 12 Apr 2019 14:39:33 +0200
Message-ID: <2068630.7I2iUbhqZj@diego>
References: <1554284549-24916-1-git-send-email-zhangqing@rock-chips.com>
 <3395739.hcHkC3K37q@diego>
 <0e47770b-fa20-74f9-8548-c07aebdcaa53@theobroma-systems.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <0e47770b-fa20-74f9-8548-c07aebdcaa53@theobroma-systems.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Christoph =?ISO-8859-1?Q?M=FCllner?= <christoph.muellner@theobroma-systems.com>
Cc: huangtao@rock-chips.com, xxx@rock-chips.com, xf@rock-chips.com, sboyd@kernel.org, mturquette@baylibre.com, Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Finley Xiao <finley.xiao@rock-chips.com>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 12. April 2019, 14:32:08 CEST schrieb Christoph M=FCllner:
> =

> On 12.04.19 14:21, Heiko St=FCbner wrote:
> > Hi Christoph,
> > =

> > Am Freitag, 12. April 2019, 14:12:52 CEST schrieb Christoph M=FCllner:
> >> On 12.04.19 13:52, Heiko St=FCbner wrote:
> >>> Am Mittwoch, 3. April 2019, 11:42:24 CEST schrieb Elaine Zhang:
> >>>> From: Finley Xiao <finley.xiao@rock-chips.com>
> >>>>
> >>>> From Rockchips fractional divider usage, some clocks can be generated
> >>>> by fractional divider, but the input clock frequency of fractional
> >>>> divider should be less than a specified value.
> >>>>
> >>>> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> >>>> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> >>>
> >>> can you tell me where these maximum input values come from?
> >>>
> >>> I talked to Christoph from Theobroma (Cc'ed) last week and he mention=
ed
> >>> that they're using the fractional divider with a higher input frequen=
cy
> >>> to create a very specific frequency [some details are gone from my me=
mory
> >>> though] they can't get otherwise.
> >>>
> >>> So I really don't want to break their working setup by introducing ba=
rriers
> >>> that are not strictly necessary.
> >>>
> >>> @Christoph: can you describe the bits from your fractional setup that
> >>> I've forgotten please?
> >>
> >> We need to set the I2S0 clock to 24.56 MHz.
> >>
> >> When restricting the input frequency to a maximum of 600 Mhz,
> >> we could use the integer divider to get 400 Mhz (dividing by 2).
> >> However, with the 400 Mhz as input to the frac divider,
> >> we run into the problem, that the maximum possible output frequency
> >> is 20 MHz (there is another restriction which states that the
> >> fraction input : output frequency must be >=3D 20).
> > =

> > just for clarification, what is the current input frequency you
> > already use sucessfully?
> =

> Our working setup uses the integer divider to reduce to 400 MHz
> and uses the frac divider to get something near 24.56 MHz.
> I have to admit I have never measured what's on the clock line.

Ah ok, so the 600MHz input maximum is ok for your setup and the "< 20"
ratio is the question. I thought I remembered you using a higher than
600MHz input rate. [bad memory on my side]
