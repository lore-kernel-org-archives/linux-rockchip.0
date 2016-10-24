From: Randy Li <randy.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: How to implement a EGL or DRM display in VA-API driver
Date: Mon, 24 Oct 2016 15:59:27 +0800
Message-ID: <8cbe53b0-29af-bb45-7895-6e0a6c23d024@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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
To: "libva-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org" <libva-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>
Cc: gwenole.beauchesne-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, "dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org" <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, victorx.jaquez-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, "eddie.cai" <eddie.cai-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?B?5p6X6YeR5Y+R?= <alpha.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "herman.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <herman.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, vjaquez-wEGTBA9jqPzQT0dZR+AlfA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hello:
   I am going to implement a EGL and DRM display for Rockchip VA-API 
driver. We do have a EGL implementation in Rockchip VA-API driver, but 
it is implemented in the standard way, we did that as a X11 display.
   I didn't see the usage of struct VADriverVTableEGL in gstreamer, and 
I have no idea about where should I implement something functions like 
eglExportDRMImageMESA().
   The DRM seems more complex, the reason I want to use the DRM is that, 
GPU would not work with the 4K video rendering, so the DRM means that 
directly output the video into video controller in our platform. But 
still have no idea what kind of thing I should implement in the VA-API 
driver. It seems that the VA-API base library would open a DRM instance 
for the driver, but leaving those configure for connector, encoder, 
planes to VA-API driver?
   Could you guys give me same sample code or example of those kind of 
display in VA-API or the documents would help(I would not image there is 
a VA-API documents)

-- 
Randy Li
The third produce department
