From: Romain Perier <romain.perier@collabora.com>
Subject: Re: [PATCH RESEND] drm: dw_hdmi: Don't rely on the status of the
 bridge for updating HPD
Date: Thu, 9 Mar 2017 16:37:30 +0100
Message-ID: <8699114e-6185-c6a2-8110-9002317b8cc4@collabora.com>
References: <20170308081524.7672-1-romain.perier@collabora.com>
 <e6fa89a3-3f4a-6dfc-3ef9-e5b487994104@synopsys.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <e6fa89a3-3f4a-6dfc-3ef9-e5b487994104@synopsys.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Jose Abreu <Jose.Abreu@synopsys.com>, Archit Taneja <architt@codeaurora.org>, David Airlie <airlied@linux.ie>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Sjoerd Simons <sjoerd.simons@collabora.co.uk>, linux-arm-kernel@lists.infradead.org, Daniel Stone <daniels@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Hello,


Le 09/03/2017 =E0 15:28, Jose Abreu a =E9crit :
> Hi Romain,
>
>
> On 08-03-2017 08:15, Romain Perier wrote:
>> Currently, the irq handler that monitores changes for HPD anx RX_SENSE
>> relies on the status of the bridge for updating the status of the HPD.
>> The update is done only when the bridge is enabled.
>>
>> However, on Rockchip platforms we have found use cases where it could be
>> a problem. When HDMI is being used, turning off/on the screen or
>> unplugging/re-plugging the cable, the following simplified code path
>> will happen:
>>
>> - dw_hdmi_irq() will be triggered by an HPD event, as the bridge is on
>> hdmi->disabled is false, then the handler will update the rxsense flag
>> accordingly.
>> - dw_hdmi_update_power() will be invoked with the mode
>> DRM_FORCE_UNSPECIFIED and rxsense =3D=3D 1, so dw_hdmi_poweroff() will be
>> called and the PHY will be desactivated (its pixel clocks and TMDS)
>>
>> [...]
>>
>> - dw_hdmi_bridge_disable() will be invoked, the bridge will be marked as
>> disabled.
>>
>> - dw_hdmi_irq() will be triggered by an HPD event, as the bridge is
>> currently disabled the HPD status won't be updated, so hdmi->rxsense
>> won't be changed. Even if the data part of the PHY is disabled, this
>> information coming from the HDMI Transmitter is correct and should be
>> saved.
>>
>> [...]
>>
>> - dw_hdmi_bridge_enable() will be invoked, the bridge will be marked as
>> enabled.
>> - dw_hdmi_update_power() will be called. As hdmi->force will be equal to
>> DRM_FORCE_UNSPECIFIED the function will rely on hdmi->rxsense. This
>> field has not been updated by the irq handler, so it will be false and
>> DRM_FORCE_ON won't be put to hdmi->force.
>>
>> Consequently, most of the time dw_hdmi_poweron() won't be called in this
>> use case, TMDS won't be re-enabled the PHY won't be re-initialized,
>> resulting in a "Signal not found".
>>
>> This commit fixes the issue by removing the check for "!hdmi->disabled".
>> As already explained, even if the PHY is partially disabled, information
>> coming from HDMI Transmitter about HPD should be saved for a later use.
>>
>> Signed-off-by: Romain Perier <romain.perier@collabora.com>
>> ---
>>
>> Note: Due to an email configuration issue, some of my patches were not
>> received on infradead.org or vger.kernel.org. It is now fixed, so I
>> resend this patch for this reason.
>>
>>  drivers/gpu/drm/bridge/dw-hdmi.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/bridge/dw-hdmi.c b/drivers/gpu/drm/bridge/d=
w-hdmi.c
>> index 235ce7d..b621fc7 100644
>> --- a/drivers/gpu/drm/bridge/dw-hdmi.c
>> +++ b/drivers/gpu/drm/bridge/dw-hdmi.c
>> @@ -1790,7 +1790,7 @@ static irqreturn_t dw_hdmi_irq(int irq, void *dev_=
id)
>>  	if (intr_stat &
>>  	    (HDMI_IH_PHY_STAT0_RX_SENSE | HDMI_IH_PHY_STAT0_HPD)) {
>>  		mutex_lock(&hdmi->mutex);
>> -		if (!hdmi->disabled && !hdmi->force) {
>> +		if (!hdmi->force) {
>>  			/*
>>  			 * If the RX sense status indicates we're disconnected,
>>  			 * clear the software rxsense status.
> Makes sense but I think you need to make sure that phy will not
> be enabled when bridge is disabled i.e. you should update rxsense
> only.
>
> Best regards,
> Jose Miguel Abreu
I agree with Russel, dw_hdmi_update_phy_mask already checks that. So it
should not be enabled, imho.

Regards,
Romain
