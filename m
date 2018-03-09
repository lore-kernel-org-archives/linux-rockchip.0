From: Roger Quadros <rogerq-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH] usb: dwc3: core: power on PHYs before initializing core
Date: Fri, 9 Mar 2018 10:54:00 +0200
Message-ID: <abca45d6-2304-a607-5185-f26327a653f5@ti.com>
References: <1515729616-8639-1-git-send-email-william.wu@rock-chips.com>
 <87ina6vodf.fsf@linux.intel.com>
 <20180308164916.GA65031@rodete-desktop-imager.corp.google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180308164916.GA65031-rgVyoJUnxu4fQXCR9C5MjtfHHWVUegAGYJqu5kTmcBRl57MIdRCFDg@public.gmane.org>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Felipe Balbi <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, groeck-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dianders-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, lin.huang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, briannorris-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, daniel.meng-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On 08/03/18 18:49, Brian Norris wrote:
> Hi,
> 
> On Thu, Mar 08, 2018 at 12:43:40PM +0200, Felipe Balbi wrote:
>> William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org> writes:
>>> The dwc3_core_init() gets the PHYs and initializes the PHYs with
>>> the usb_phy_init() and phy_init() functions before initializing
>>> core, and power on the PHYs after core initialization is done.
>>>
>>> However, some platforms (e.g. Rockchip RK3399 DWC3 with Type-C
>>> USB3 PHY), it needs to do some special operation while power on
>>> the Type-C PHY before initializing DWC3 core. It's because that
>>> the RK3399 Type-C PHY requires to hold the DWC3 controller in
>>> reset state to keep the PIPE power state in P2 while configuring
>>> the Type-C PHY, otherwise, it may cause waiting for the PIPE ready
>>> timeout. In this case, if we power on the PHYs after the DWC3 core
>>> initialization is done, the core will be reset to uninitialized
>>> state after power on the PHYs.
>>>
>>> Fix this by powering on the PHYs before initializing core. And
>>> because the GUID register may also be reset in this case, so we
>>> need to configure the GUID register after powering on the PHYs.
>>>
>>> Signed-off-by: William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>>
>> does this cause any regressions for your boards?
> 
> I'm not Roger, but I believe it was determined we don't need this for
> the Rockchip systems for which William was originally sending this. At
> least not right now. I believe our PHY init problems were mostly
> resolved in other ways.
> 
> (Although I hear USB is currently pretty broken around suspend/resume
> for us on -next. Likely unrelated.)
> 
> I guess we never clearly replied stating the above. I hope this isn't
> merged anywhere? Or I guess it's no problem to me at the moment, but it
> might be needless churn.
> 

I did some quick tests on TI platforms and didn't see any issues with this patch.
Since this patch isn't really fixing your problem and we didn't have any
problems to start with I'd suggest to avoid this churn for now.

-- 
cheers,
-roger

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
