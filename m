From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH RFT v1 1/3] drm/panfrost: enable devfreq based the
 "operating-points-v2" property
Date: Wed, 8 Jan 2020 13:38:00 +0100
Message-ID: <CAFBinCBYrNC+ULV6Y=77qogowkDZwM+H0bxOqPN4sT6q3krGfw@mail.gmail.com>
References: <20200107230626.885451-1-martin.blumenstingl@googlemail.com>
 <20200107230626.885451-2-martin.blumenstingl@googlemail.com> <a85f2063-f412-9762-58d1-47fdffb24af9@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <a85f2063-f412-9762-58d1-47fdffb24af9@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>
Cc: dri-devel@lists.freedesktop.org, alyssa@rosenzweig.io, steven.price@arm.com, tomeu.vizoso@collabora.com, robh@kernel.org, linux-kernel@vger.kernel.org, daniel@ffwll.ch, airlied@linux.ie, linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Robin,

On Wed, Jan 8, 2020 at 12:18 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 07/01/2020 11:06 pm, Martin Blumenstingl wrote:
> > Decouple the check to see whether we want to enable devfreq for the GPU
> > from dev_pm_opp_set_regulators(). This is preparation work for adding
> > back support for regulator control (which means we need to call
> > dev_pm_opp_set_regulators() before dev_pm_opp_of_add_table(), which
> > means having a check for "is devfreq enabled" that is not tied to
> > dev_pm_opp_of_add_table() makes things easier).
>
> Hmm, what about cases like the SCMI DVFS protocol where the OPPs are
> dynamically discovered rather than statically defined in DT?
where can I find such an example (Amlogic SoCs use SCPI instead of
SCMI, so I don't think that I have any board with SCMI support) or
some documentation?
(I could only find SCPI clock and CPU DVFS implementations, but no
generic "OPPs for any device" implementation)


Martin
