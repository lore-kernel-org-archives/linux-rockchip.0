From: Martin Blumenstingl <martin.blumenstingl-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: [PATCH RFT v2 0/3] devfreq fixes for panfrost
Date: Sat, 22 Feb 2020 20:42:20 +0100
Message-ID: <CAFBinCBLJyPxOBv0JNe7o0ME3rvPi+2Qv7Lwgw6T92f15ZXcxA@mail.gmail.com>
References: <20200112001623.2121227-1-martin.blumenstingl@googlemail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200112001623.2121227-1-martin.blumenstingl-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: steven.price-5wv7dgnIgG8@public.gmane.org
Cc: robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, airlied-cv59FeDIM0c@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, daniel-/w4YWyX8dFk@public.gmane.org, sudeep.holla-5wv7dgnIgG8@public.gmane.org, linux-amlogic-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, robin.murphy-5wv7dgnIgG8@public.gmane.org, alyssa-kyPdXwtBHbIqQpLF9uBUvQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Steven,

On Sun, Jan 12, 2020 at 1:16 AM Martin Blumenstingl
<martin.blumenstingl-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org> wrote:
>
> These are a bunch of devfreq fixes for panfrost that came up in a
> discussion with Robin Murphy during the code-review of the lima
> devfreq patches: [0]
>
> I am only able to test patch #1 properly because the only boards with
> panfrost GPU that I have are using an Amlogic SoC. We don't have
> support for the OPP tables or dynamic clock changes there yet.
> So patches #2 and #3 are compile-tested only.
>
>
> Changes since v1 at [1]
> - added Steven's Reviewed-by to patch #2 (thank you!)
> - only use dev_pm_opp_put_regulators() to clean up in
>   panfrost_devfreq_init() if regulators_opp_table is not NULL to fix
>   a potential crash inside dev_pm_opp_put_regulators() as spotted by
>   Steven Price (thank you!). While here, I also switched to "goto err"
>   pattern to avoid lines with more than 80 characters.
>
> Known discussion topics (I have no way to test either of these, so I am
> looking for help here):
> - Steven Price reported the following message on his firefly (RK3288)
>   board:
>   "debugfs: Directory 'ffa30000.gpu-mali' with parent 'vdd_gpu' already
>   present!"
> - Robin Murphy suggested that patch #1 may not work once the OPP table
>   for the GPU comes from SCMI
>
>
> [0] https://patchwork.freedesktop.org/patch/346898/
> [1] https://patchwork.freedesktop.org/series/71744/
>
>
> Martin Blumenstingl (3):
>   drm/panfrost: enable devfreq based the "operating-points-v2" property
>   drm/panfrost: call dev_pm_opp_of_remove_table() in all error-paths
>   drm/panfrost: Use the mali-supply regulator for control again
I don't have time to work on these patches in the near future
can you (or if someone else is interested then please speak up) please
take these over? you are familiar with the panfrost devfreq code and
you have at least one board where the GPU regulator actually has to
change the voltage (which means you can test this properly; on Amlogic
SoCs the GPU voltage is fixed across all frequencies).


Martin
