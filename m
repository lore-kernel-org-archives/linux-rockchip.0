From: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: RK3399 HDMI support
Date: Thu, 1 Mar 2018 00:36:49 +0100
Message-ID: <CAAMcf8B68Od=sqHbR-eb4+RspWNAUEQyozr60hOnWkx4cnt2vw@mail.gmail.com>
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
To: Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hello,
as stated in [1], RK3399 has incomplete support for HDMI in the
mainline linux kernel.
I have been using it for some time and have spotted a few issues:
 1.- There is no audio support.
 2.- A blue strip randomly appears on the left side.
 3.- While in DPMS off mode, HPD continuously generates uevents.

Please, can somebody help in improving the situation?
From my side, I can contribute with testing.

Below there is a more detailed description of the issues.

Regards,
  Vicente.


Regarding the 1st issue:
I have tried to add sound in the rk3399-sapphire.dtsi file:
  sound {
    compatible = "simple-audio-card";
    simple-audio-card,name = "rockchip,sapphire-hdmi";
    simple-audio-card,format = "i2s";
    simple-audio-card,mclk-fs = <256>;
    simple-audio-card,cpu {
      sound-dai = <&i2s2>;
    };
    simple-audio-card,codec {
      sound-dai = <&hdmi>;
    };
  };
With the above addition and several other variations I always get:
ALSA device list:
  No soundcards found.
Is HDMI audio support in place and it only needs to be enabled in the
config and dts files? or there are still missing bits and pieces?

Regarding the 2nd issue:
The blue strip is 2 pixels wide and the image is scaled down
to fit in the narrower space. This scaling down causes some blur.
It randomly appears whenever the HDMI transmitter is turned on.

Regarding the 3rd issue:
It does the same when using DPMS standby or DPMS suspend modes.
Just after entering this mode, an interrupt is generated from HPD to
notify a Hot Plug Detect event. A few seconds later, another interrupt
is generated to notify a Hot unPlug Detect event. Then it repeats
forever in a loop.

[1]
http://opensource.rock-chips.com/wiki_Status_Matrix#Mainline_Kernel_Status_Matrix
