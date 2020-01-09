From: Otavio Salvador <otavio.salvador@ossystems.com.br>
Subject: RV1108G run-time detection
Date: Thu, 9 Jan 2020 13:18:48 -0300
Message-ID: <CAP9ODKo8UPbU+JR45T2rjJH3FefcWw=tS71EmjFzVyPMA_R7gg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Kernel development list <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

We would like to know if there is a way to distinguish between RV1108
and RV1108G versions in run-time.

The reason we are asking is because arch/arm/boot/dts/rv1108.dtsi
defines the following operational points: 408, 600, 816, 1008 MHz, but
the RV1108G version does not support 1GHz and its maximum operating
frequency is 800MHz (not 816 MHz).

In the i.MX SoCs we can read a fuse that indicates the "speed grading"
of the chip and decide which operating points could be used for that
particular version.

Is there such a mechanism in RV1108? Any suggestions to limiting the
RV1108G operational point at 800MHz?

Thanks

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9 9981-7854          Mobile: +1 (347) 903-9750
