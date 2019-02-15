From: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL 2/2] Rockchip dts64 updates for 5.1
Date: Fri, 15 Feb 2019 16:38:43 +0100
Message-ID: <CAK8P3a2UkmVOJDddi3rC=GFcBSeqciNuYaT8s3i5E4bOwJE1Bg@mail.gmail.com>
References: <2570520.8EeqtpO5V7@phil> <1744093.FyxTZ0jN5f@phil>
 <CAK8P3a2drxVzNgsKcM2ii62+NsVmsCiOKGirQeby0kOFRQnX_g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <CAK8P3a2drxVzNgsKcM2ii62+NsVmsCiOKGirQeby0kOFRQnX_g@mail.gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Feb 15, 2019 at 2:45 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Fri, Feb 1, 2019 at 12:24 PM Heiko Stuebner <heiko@sntech.de> wrote:
> > New boards are the Rock Pi 4, NanoPC-T4 and NanoPi-M4, with the last
> > two being part of a family and sharing bigger parts of the devicetree.
> > rk3328 got sound-related upgrades and a wider patch drops mmc display-wp
> > fields from nodes which shouldn't use it.
>
> Pulled into arm/dt, nice to see the additional rk3399 boards. Thanks,

I still get some warnings during 'make dtb', all specific to rk3399:

../arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts:25.9-29.5: Warning
(graph_port): /edp-panel/ports: graph port node name should be 'port'
../arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts:46.9-50.5:
Warning (graph_port): /edp-panel/ports: graph port node name should be
'port'
../arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts:94.9-98.5:
Warning (graph_port): /edp-panel/ports: graph port node name should be
'port'

Can you see what is going on and send a fix?

       Arnd
