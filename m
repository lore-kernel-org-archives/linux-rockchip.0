From: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: Re: [PATCH 3/4] ARM: dts: rockchip: add display nodes for rk322x
Date: Fri, 14 Jun 2019 20:32:35 +0200
Message-ID: <19cea8f7c279ef6efb12d1ec0822767d@risingedge.co.za>
References: <20190614165454.13743-1-heiko@sntech.de>
 <20190614165454.13743-4-heiko@sntech.de>
 <20190614174526.6F805217D6@mail.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190614174526.6F805217D6@mail.kernel.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Stephen Boyd <sboyd@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Stephen,

On 2019-06-14 19:45, Stephen Boyd wrote:

>> diff --git a/arch/arm/boot/dts/rk322x.dtsi 
>> b/arch/arm/boot/dts/rk322x.dtsi
>> index da102fff96a2..148f9b5157ea 100644
>> --- a/arch/arm/boot/dts/rk322x.dtsi
>> +++ b/arch/arm/boot/dts/rk322x.dtsi
>> @@ -143,6 +143,11 @@
>> #clock-cells = <0>;
>> };
>> 
>> +       display_subsystem: display-subsystem {
>> +               compatible = "rockchip,display-subsystem";
>> +               ports = <&vop_out>;
>> +       };
>> +
> 
> What is this? It doesn't have a reg property so it looks like a virtual
> device. Why is it in DT?

This is a virtual device.

I assumed it would be acceptable to it find in a device tree due to 
binding documentation, 
"Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt, 
which states:

<quote>
The Rockchip DRM master device is a virtual device needed to list all
vop devices or other display interface nodes that comprise the
graphics subsystem.
</quote>

Without the "display_subsystem" device node, the HDMI PHY and 
rockchipdrmfb frame buffer device are not initialized.

Perhaps I should have included this in my commit message? :)

Regards
Justin
