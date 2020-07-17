From: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v4 5/9] media: staging: rkisp1: remove unecessary clocks
Date: Fri, 17 Jul 2020 12:44:55 -0600
Message-ID: <CAL_JsqLEXvub_E_nVWtQ1H4Ru=jLuRgr+Aiyu6Hmqb7fObG4Dg@mail.gmail.com>
References: <20200702191322.2639681-1-helen.koike@collabora.com>
 <20200702191322.2639681-6-helen.koike@collabora.com> <CAL_JsqKHG4HgcpWvh_qnHPAkaGCd7Q8APk2ai_QxjUQhvd5APg@mail.gmail.com>
 <822de449-8c01-d790-a9f9-e8b513bd7f87@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <822de449-8c01-d790-a9f9-e8b513bd7f87-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Linux Media Mailing List <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:STAGING SUBSYSTEM" <devel-gWbeCf7V1WCQmaza687I9mD2FQJk+8+b@public.gmane.org>, "heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org" <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Hans Verkuil <hverkuil-cisco-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, Collabora Kernel ML <kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Dafna Hirschfeld <dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, karthik.poduval-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Eddie Cai <eddie.cai.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Shunqian Zheng <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Jul 17, 2020 at 12:14 PM Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
>
> Hi Rob,
>
> Thanks for your review.
>
> On 7/17/20 2:49 PM, Rob Herring wrote:
> > On Thu, Jul 2, 2020 at 1:13 PM Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
> >>
> >> aclk_isp_wrap is a child of aclk_isp, and hclk_isp_wrap is a child of
> >> hclk_isp, thus we can remove parents from the list.
> >
> > But it looks like it is the wrap clocks you are removing.
>
> From this binding yes, but the idea is to add in the dt wherever clock
> responsible for the full ACLK path for instance.
> In the example below, clock aclk_isp is ACLK_ISP0_WRAPPER.
> Does this make sense?

Just perhaps clarify the renaming.

>
> >
> >>
> >> Also, for the isp0, we only need the ISP clock, ACLK and HCLK.
> >> In the future we'll need a pixel clock for RK3288 and RK3399, and a JPEG
> >> clock for RK3288.
> >>
> >> So with the goal to cleanup the dt-bindings and remove it from staging,
> >> simplify clock names to isp, aclk and hclk.
> >>
> >> For reference, this is the isp clock topology on RK3399:
> >>
> >>  xin24m
> >>     pll_npll
> >>        npll
> >>           clk_isp1
> >>           clk_isp0
> >>     pll_cpll
> >>        cpll
> >>           aclk_isp1
> >>              aclk_isp1_noc
> >>              hclk_isp1
> >>                 aclk_isp1_wrapper
> >>                 hclk_isp1_noc
> >>           aclk_isp0
> >>              hclk_isp1_wrapper
> >>              aclk_isp0_wrapper
> >>              aclk_isp0_noc
> >>              hclk_isp0
> >>                 hclk_isp0_wrapper
> >>                 hclk_isp0_noc
> >>  pclkin_isp1_wrapper
> >>
> >> Signed-off-by: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> >>
> >> ---
> >>
> >> Changes in V4:
> >> - update binding according to suggestion by Robin Murphy
> >> on https://patchwork.kernel.org/patch/11475007/
> >>
> >> Changes in V3:
> >> - this is a new patch in the series
> >> ---
> >>  .../bindings/media/rockchip-isp1.yaml         | 30 +++++++++----------
> >>  drivers/staging/media/rkisp1/rkisp1-dev.c     |  8 ++---
> >>  2 files changed, 17 insertions(+), 21 deletions(-)
> >>
> >> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >> index 4d111ef2e89c7..f10c53d008748 100644
> >> --- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >> +++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >> @@ -24,20 +24,20 @@ properties:
> >>      maxItems: 1
> >>
> >>    clocks:
> >> -    items:
> >> -      - description: ISP clock
> >> -      - description: ISP AXI clock clock
> >> -      - description: ISP AXI clock  wrapper clock
> >> -      - description: ISP AHB clock clock
> >> -      - description: ISP AHB wrapper clock
> >
> > This is the correct way to describe multiple clocks.
>
> The idea was to prepare for rk3288 and rk3399 isp1, as suggested here https://patchwork.kernel.org/patch/11475007/#23462085
>
> Or should we do:
>
> clocks:
>   oneOf:
>     # rk3288 clocks
>     - items:
>       - description: ISP clock
>       - description: ISP AXI clock
>       - description: ISP AHB clock
>       - description: ISP Pixel clock
>       - description: ISP JPEG source clock

The main section should have this and 'minItems: 3'. IOW, it's a
superset of what's valid. Then you can restrict specific compatibles
further with an if/then schema. For rk3288, you need one with
'minItems: 5'.

>     # rk3399 isp0 clocks
>     - items:
>       - description: ISP clock
>       - description: ISP AXI clock
>       - description: ISP AHB clock

And this would be an if/then schema based on the compatible string and
defining 'maxItems: 3'.

>     # rk3399 isp1 clocks
>     - items:
>       - description: ISP clock
>       - description: ISP AXI clock
>       - description: ISP AHB clock
>       - description: ISP Pixel clock

And an if/then with { minItems: 4, maxItems: 4 }. Or really since
these are just different instances, just combine them into 1
conditional allowing 3 or 4 clocks.

There are lots of examples to follow in the tree.

Rob
