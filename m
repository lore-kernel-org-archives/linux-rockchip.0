From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH] arm64: dts: rockchip: add analog audio nodes on
 rk3399-rockpro64
Date: Mon, 11 Nov 2019 12:30:00 +0900
Message-ID: <abc648cc-0b5d-b407-b74b-639833ba196b@katsuster.net>
References: <20190907174833.19957-1-katsuhiro@katsuster.net>
 <CA+E=qVdvKxzFcU-09Ucn1Fr0FdkwSsPcLr8vPn2wsu6-DD1gqg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <CA+E=qVdvKxzFcU-09Ucn1Fr0FdkwSsPcLr8vPn2wsu6-DD1gqg@mail.gmail.com>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Vasily Khoruzhick <anarsoul@gmail.com>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, arm-linux <linux-arm-kernel@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hello Vasily,

Thank you for reporting.

On 2019/11/11 9:17, Vasily Khoruzhick wrote:
> On Sat, Sep 7, 2019 at 10:48 AM Katsuhiro Suzuki
> <katsuhiro@katsuster.net> wrote:
>>
>> This patch adds audio codec (Everest ES8316) and I2S audio nodes for
>> RK3399 RockPro64.
> 
> Hi Katsuhiro,
> 
> I tested your patch with my rockpro64 on 5.4-rc6 which has your other
> patches to es8316 driver, but apparently it doesn't work.
> 
> 'alsamixer' complains 'cannot load mixer controls: No such device or
> address' and if I try to play audio with mpg123 it pretends that it
> plays something but there's no sound.
> 
> Any idea what can be wrong?
> 

Do you use defconfig? If so I guess we need turn on more configs:

- simple-graph-card driver (CONFIG_SND_AUDIO_GRAPH_CARD)
- ES8316 (SND_SOC_ES8316)


FYI) ASoC related status or logs in my environment as follows:

root@rockpro64:~# uname -a
Linux rockpro64 5.4.0-rc6-next-20191108 #169 SMP PREEMPT Mon Nov 11 12:21:44 JST 2019 aarch64 GNU/Linux

root@rockpro64:~# dmesg | grep -i asoc
[   21.509903] asoc-simple-card hdmi-sound: i2s-hifi <-> ff8a0000.i2s mapping ok
[   21.510550] asoc-simple-card hdmi-sound: ASoC: no DMI vendor name!
[   21.567906] asoc-audio-graph-card sound: ES8316 HiFi <-> ff890000.i2s mapping ok
[   21.568565] asoc-audio-graph-card sound: ASoC: no DMI vendor name!

root@rockpro64:~# cat /proc/asound/pcm
00-00: ff8a0000.i2s-i2s-hifi i2s-hifi-0 : ff8a0000.i2s-i2s-hifi i2s-hifi-0 : playback 1
01-00: ff890000.i2s-ES8316 HiFi ES8316 HiFi-0 : ff890000.i2s-ES8316 HiFi ES8316 HiFi-0 : playback 1 : capture 1

root@rockpro64:~# cat /sys/kernel/debug/asoc/components
hdmi-audio-codec.3.auto
ff8a0000.i2s
ff8a0000.i2s
ff890000.i2s
ff890000.i2s
ff880000.i2s
ff880000.i2s
es8316.1-0011
snd-soc-dummy
snd-soc-dummy

root@rockpro64:~# cat /sys/kernel/debug/asoc/dais
i2s-hifi
ff8a0000.i2s
ff890000.i2s
ff880000.i2s
ES8316 HiFi
snd-soc-dummy-dai

Best Regards,
Katsuhiro Suzuki


> Regards,
> Vasily
> 
>> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
>> ---
>>   .../boot/dts/rockchip/rk3399-rockpro64.dts    | 28 +++++++++++++++++++
>>   1 file changed, 28 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>> index 0401d4ec1f45..8b1e6382b140 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>> @@ -81,6 +81,12 @@
>>                  reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
>>          };
>>
>> +       sound {
>> +               compatible = "audio-graph-card";
>> +               label = "rockchip,rk3399";
>> +               dais = <&i2s1_p0>;
>> +       };
>> +
>>          vcc12v_dcin: vcc12v-dcin {
>>                  compatible = "regulator-fixed";
>>                  regulator-name = "vcc12v_dcin";
>> @@ -470,6 +476,20 @@
>>          i2c-scl-rising-time-ns = <300>;
>>          i2c-scl-falling-time-ns = <15>;
>>          status = "okay";
>> +
>> +       es8316: codec@11 {
>> +               compatible = "everest,es8316";
>> +               reg = <0x11>;
>> +               clocks = <&cru SCLK_I2S_8CH_OUT>;
>> +               clock-names = "mclk";
>> +               #sound-dai-cells = <0>;
>> +
>> +               port {
>> +                       es8316_p0_0: endpoint {
>> +                               remote-endpoint = <&i2s1_p0_0>;
>> +                       };
>> +               };
>> +       };
>>   };
>>
>>   &i2c3 {
>> @@ -505,6 +525,14 @@
>>          rockchip,playback-channels = <2>;
>>          rockchip,capture-channels = <2>;
>>          status = "okay";
>> +
>> +       i2s1_p0: port {
>> +               i2s1_p0_0: endpoint {
>> +                       dai-format = "i2s";
>> +                       mclk-fs = <256>;
>> +                       remote-endpoint = <&es8316_p0_0>;
>> +               };
>> +       };
>>   };
>>
>>   &i2s2 {
>> --
>> 2.23.0.rc1
>>
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
