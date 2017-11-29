From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v3 4/5] drm/rockchip: Add ROCKCHIP DW MIPI DSI controller driver
Date: Wed, 29 Nov 2017 09:09:29 -0800
Message-ID: <CA+ASDXOua6MVM86bfaN-5zrjjMXG5F2sRwNLKoG1a+7agZTaKg@mail.gmail.com>
References: <1511868006-27130-1-git-send-email-nickey.yang@rock-chips.com>
 <1511868006-27130-5-git-send-email-nickey.yang@rock-chips.com>
 <20171128204843.GB58379@google.com> <20171128225540.GA23117@google.com> <20171129020227.ydqu7vxqw6mqond3@art_vandelay>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20171129020227.ydqu7vxqw6mqond3@art_vandelay>
Sender: linux-kernel-owner@vger.kernel.org
To: Sean Paul <seanpaul@chromium.org>
Cc: Matthias Kaehlcke <mka@chromium.org>, Nickey Yang <nickey.yang@rock-chips.com>, Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Mark Rutland <mark.rutland@arm.com>, airlied@linux.ie, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Kristian Kristensen <hoegsberg@gmail.com>, Archit Taneja <architt@codeaurora.org>, Philippe CORNU <philippe.cornu@st.com>, yannick.fertre@st.com, hl <hl@rock-chips.com>, Chris Zhong <zyw@rock-chips.com>, xbl@rock-chips.com, hjc@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On Tue, Nov 28, 2017 at 6:02 PM, Sean Paul <seanpaul@chromium.org> wrote:
> On Tue, Nov 28, 2017 at 02:55:41PM -0800, Brian Norris wrote:
>> On Tue, Nov 28, 2017 at 12:48:43PM -0800, Matthias Kaehlcke wrote:
>> > El Tue, Nov 28, 2017 at 07:20:05PM +0800 Nickey Yang ha dit:
>> >
>> > > Add the ROCKCHIP DSI controller driver that uses the Synopsys Design=
Ware
>> > > MIPI DSI host controller bridge.
>> > >
>> > > v2:
>> > >    add err_pllref, remove unnecessary encoder.enable & disable
>> > >    correct spelling mistakes
>> > > v3:
>> > >    call dw_mipi_dsi_unbind() in dw_mipi_dsi_rockchip_unbind()
>> > >    fix typo, use of_device_get_match_data(),
>> > >    change some =E2=80=98bind()=E2=80=99 logic into 'probe()'
>> > >    add 'dev_set_drvdata()'
>>
>> I believe the changelog normally goes below the "---", so it gets
>> dropped when a maintainer applies a final version.
>>
>
> We're kind of different in drm land. Some prefer to keep the changelog ab=
ove the
> fold and attribute the changes to reviewers so they get recognition for t=
heir
> efforts.

Ah, now I remember reading that somewhere. Seems nice, I suppose. (And
hey, git logs are cheap.) I guess my "I don't review DRM patches much"
status is showing :)

> At any rate, I'm just happy to see changelogs.

Yep :)

Brian
