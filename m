From: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [v2 PATCH 2/4] phy: Add USB Type-C PHY driver for rk3399
Date: Mon, 20 Jun 2016 13:57:16 +0800
Message-ID: <576785BC.4070904@rock-chips.com>
References: <1465810789-22303-1-git-send-email-zyw@rock-chips.com>
 <1465810789-22303-3-git-send-email-zyw@rock-chips.com>
 <CABXOdTd+U51KY7P-Gj6TySxoAZpJY=zcXs_4_9MVD1gnmnFH0w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CABXOdTd+U51KY7P-Gj6TySxoAZpJY=zcXs_4_9MVD1gnmnFH0w-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Guenter Roeck <groeck-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, yzq-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Guenter Roeck <groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Guenter

On 06/18/2016 11:45 PM, Guenter Roeck wrote:
> Hi Chris,
>
> On Mon, Jun 13, 2016 at 2:39 AM, Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
>> Add a PHY provider driver for the rk3399 SoC Type-c PHY. The USB
>> Type-C PHY is designed to support the USB3 and DP applications. The
>> PHY basically has two main components: USB3 and DisplyPort. USB3
>> operates in SuperSpeed mode and the DP can operate at RBR, HBR and
>> HBR2 data rates.
>>
> I started integrating the driver with our code.
> Doing so, I realized a problem in the way you are using extcon.
>
> [ ... ]
>
>> +
>> +static int tcphy_pd_event(struct notifier_block *nb,
>> +                         unsigned long event, void *priv)
>> +{
>> +       struct rockchip_typec_phy *tcphy;
>> +       struct extcon_dev *edev = priv;
>> +       int value = edev->state;
>> +       int mode;
>> +       u8 is_plugged, dfp;
>> +
>> +       tcphy = container_of(nb, struct rockchip_typec_phy, event_nb);
>> +
>> +       is_plugged = GET_PLUGGED(value);
>> +       tcphy->flip = GET_FLIP(value);
>> +       dfp = GET_DFP(value);
>> +       tcphy->map = GET_PIN_MAP(value);
>> +
> I don't think it is a good idea to use the extcon 'state' field like
> this. I don't even think it is possible.
>
> The state is supposed to be a bit mask, each bit indicating if a
> specific connector (or functionality) on the cable is attached. The
> extcon notifier code walks through this bit mask and determines based
> on changed bits if the notifier should be called. So the notifier in
> this case would only be called if bit 1 (EXTCON_USB) of 'state' has
> changed, but not if one of the other bits has changed. One would have
> to define 32 "virtual" cables, one for each bit, for this to work, and
> then you would have to register a notifier for each of the bits. That
> would not really make sense.
>
> Of course, that makes using the extcon notifier quite useless for our
> purpose, since we need the callback not only if a cable has been
> attached or deattached, but also if some secondary state changes. I
> don't really know myself how to solve the problem; I'll need to think
> about it some more. Maybe we can add a callback into the type-c
> infrastructure code and somehow tie into that code, but I don't know
> yet if that is feasible either.
>
> Guenter
>
>
Yes, currently, we can get the notification only when bit 0 change.
So the phy driver can know plug/unplug event.
if we need more trigger, how about set the BIT 0 for changed flag.

state = extcon_get_cable_state

state = ~state | is_plugged | flip | dfp | map

extcon_set_state(state)
