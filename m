From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH 1/2] dt-bindings: sound: convert rk3328 codec binding to
 yaml
Date: Tue, 30 Jun 2020 22:54:07 +0900
Message-ID: <ba6514ab-72a6-34d2-88c3-368759ea841f@katsuster.net>
References: <20200623124734.1736470-1-katsuhiro@katsuster.net>
 <20200629220040.GA3011219@bogus>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <alsa-devel-bounces@alsa-project.org>
In-Reply-To: <20200629220040.GA3011219@bogus>
Content-Language: en-US
List-Unsubscribe: <https://mailman.alsa-project.org/mailman/options/alsa-devel>,
 <mailto:alsa-devel-request@alsa-project.org?subject=unsubscribe>
List-Archive: <http://mailman.alsa-project.org/pipermail/alsa-devel/>
List-Post: <mailto:alsa-devel@alsa-project.org>
List-Help: <mailto:alsa-devel-request@alsa-project.org?subject=help>
List-Subscribe: <https://mailman.alsa-project.org/mailman/listinfo/alsa-devel>,
 <mailto:alsa-devel-request@alsa-project.org?subject=subscribe>
Errors-To: alsa-devel-bounces@alsa-project.org
Sender: "Alsa-devel" <alsa-devel-bounces@alsa-project.org>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hello Rob,

Thanks for your comment. I see.
I'll squash 2 patches and resend it.

Best Regards,
Katsuhiro Suzuki

On 2020/06/30 7:00, Rob Herring wrote:
> On Tue, 23 Jun 2020 21:47:33 +0900, Katsuhiro Suzuki wrote:
>> Just convert Rockchip rk3328 audio codec binding to DT schema.
>>
>> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
>> ---
>>   .../bindings/sound/rockchip,rk3328-codec.txt  | 28 ---------
>>   .../bindings/sound/rockchip,rk3328-codec.yaml | 61 +++++++++++++++++++
>>   2 files changed, 61 insertions(+), 28 deletions(-)
>>   delete mode 100644 Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.txt
>>   create mode 100644 Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.yaml
>>
> 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> Error: Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.example.dts:22.26-27 syntax error
> FATAL ERROR: Unable to parse input tree
> scripts/Makefile.lib:315: recipe for target 'Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.example.dt.yaml' failed
> make[1]: *** [Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.example.dt.yaml] Error 1
> make[1]: *** Waiting for unfinished jobs....
> Makefile:1347: recipe for target 'dt_binding_check' failed
> make: *** [dt_binding_check] Error 2
> 
> 
> See https://patchwork.ozlabs.org/patch/1315234
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure dt-schema is up to date:
> 
> pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade
> 
> Please check and re-submit.
> 
