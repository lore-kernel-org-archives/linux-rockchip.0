From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v1 1/2] ARM: dts: rockchip: rename and label gpio-led
 subnodes
Date: Tue, 19 May 2020 00:27:59 +0200
Message-ID: <158984064169.2259329.4243090830868839814.b4-ty@sntech.de>
References: <20200428144933.10953-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <20200428144933.10953-1-jbx6244@gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, 28 Apr 2020 16:49:32 +0200, Johan Jonker wrote:
> Current dts files with 'gpio-led' nodes were manually verified.
> In order to automate this process leds-gpio.txt
> has been converted to yaml. With this conversion a check
> for pattern properties was added. A test with the command
> below gives a screen full of warnings like:
> 
> arch/arm/boot/dts/rk3188-radxarock.dt.yaml: gpio-leds:
> 'blue', 'green', 'sleep'
> do not match any of the regexes:
> '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'
> 
> [...]

Applied, thanks!


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
