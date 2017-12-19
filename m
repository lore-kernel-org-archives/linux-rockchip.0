From: Arnaud Patard (Rtp) <arnaud.patard-dQbF7i+pzddAfugRpC6u6w@public.gmane.org>
Subject: rk3399 evb and sapphire board
Date: Tue, 19 Dec 2017 11:40:32 +0100
Message-ID: <87efnratlr.fsf@lechat.rtp-net.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

[ I've asked the question on irc but nobody seemed to know, so I'm asking
to a wider audience. ]

I've bought a sapphire board from vamrs, without the excavator. I was
looking for the device tree to use and found a rk3399-sapphire.dtsi and a
rk3399-evb.dts. I've booted the kernel with the later, given that it's
the only dts file but there are missing things in it. The
rk3399-sapphire.dtsi looks way more complete.

So, are the rk3399 evb board and sapphire really the same board ? If so,
why the rk3399-evb.dts doesn't only include the rk3399-sapphire.dtsi ?
If not, should I use a device tree file including the
rk3399-sapphire.dtsi instead of the rk3399-evb.dts ? Would a patch
adding it would be accepted ?

Thanks,
Arnaud
