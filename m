From: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH] phy: rockchip-typec: Check for errors from
 tcphy_phy_init()
Date: Tue, 3 Oct 2017 15:11:04 +0530
Message-ID: <07d21b93-e58b-c5e3-8b9e-7150c023c452@ti.com>
References: <20170929235846.1913-1-dianders@chromium.org>
 <CABXOdTdukST-8tRh6Z2mRTFYwseiknEzB7FL+uiz_PxYrYYjgw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <CABXOdTdukST-8tRh6Z2mRTFYwseiknEzB7FL+uiz_PxYrYYjgw@mail.gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Guenter Roeck <groeck@google.com>, Douglas Anderson <dianders@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>, Chris <zyw@rock-chips.com>, Guenter Roeck <groeck@chromium.org>, wulf <wulf@rock-chips.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org



On Saturday 30 September 2017 04:08 PM, Guenter Roeck wrote:
> On Fri, Sep 29, 2017 at 4:58 PM, Douglas Anderson <dianders@chromium.org> wrote:
>> The function tcphy_phy_init() could return an error but the callers
>> weren't checking the return value.  They should.  In at least one case
>> while testing I saw the message "wait pma ready timeout" which
>> indicates that tcphy_phy_init() really could return an error and we
>> should account for it.
>>
>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> 
> Reviewed-by: Guenter Roeck <groeck@chromium.org>

merged, thanks!

-Kishon
> 
>> ---
>>
>>  drivers/phy/rockchip/phy-rockchip-typec.c | 13 +++++++++----
>>  1 file changed, 9 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
>> index 4d2c57f21d76..38831eebc934 100644
>> --- a/drivers/phy/rockchip/phy-rockchip-typec.c
>> +++ b/drivers/phy/rockchip/phy-rockchip-typec.c
>> @@ -685,8 +685,11 @@ static int rockchip_usb3_phy_power_on(struct phy *phy)
>>         if (tcphy->mode == new_mode)
>>                 goto unlock_ret;
>>
>> -       if (tcphy->mode == MODE_DISCONNECT)
>> -               tcphy_phy_init(tcphy, new_mode);
>> +       if (tcphy->mode == MODE_DISCONNECT) {
>> +               ret = tcphy_phy_init(tcphy, new_mode);
>> +               if (ret)
>> +                       goto unlock_ret;
>> +       }
>>
>>         /* wait TCPHY for pipe ready */
>>         for (timeout = 0; timeout < 100; timeout++) {
>> @@ -760,10 +763,12 @@ static int rockchip_dp_phy_power_on(struct phy *phy)
>>          */
>>         if (new_mode == MODE_DFP_DP && tcphy->mode != MODE_DISCONNECT) {
>>                 tcphy_phy_deinit(tcphy);
>> -               tcphy_phy_init(tcphy, new_mode);
>> +               ret = tcphy_phy_init(tcphy, new_mode);
>>         } else if (tcphy->mode == MODE_DISCONNECT) {
>> -               tcphy_phy_init(tcphy, new_mode);
>> +               ret = tcphy_phy_init(tcphy, new_mode);
>>         }
>> +       if (ret)
>> +               goto unlock_ret;
>>
>>         ret = readx_poll_timeout(readl, tcphy->base + DP_MODE_CTL,
>>                                  val, val & DP_MODE_A2, 1000,
>> --
>> 2.14.2.822.g60be5d43e6-goog
>>
