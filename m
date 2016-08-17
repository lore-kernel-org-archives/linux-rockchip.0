From: Yakir Yang <ykk@rock-chips.com>
Subject: Re: [PATCH v2 0/6] drm/rockchip: Some patches to update the PSR series
Date: Wed, 17 Aug 2016 11:20:50 +0800
Message-ID: <578d252a-f2fe-0ef7-b7d2-1b0592077827@rock-chips.com>
References: <1471396276-8222-1-git-send-email-seanpaul@chromium.org>
 <cd6e7ccb-0e53-5e82-81f4-5f7bd2fb2ea9@rock-chips.com>
 <CAOw6vbLd4fNC1Og4435NUGzFPBGjLYsGmjKLWOZMin-WJCgtng@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1104359274=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <CAOw6vbLd4fNC1Og4435NUGzFPBGjLYsGmjKLWOZMin-WJCgtng@mail.gmail.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Sean Paul <seanpaul@chromium.org>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Doug Anderson <dianders@chromium.org>, marcheu@chromium.org
List-Id: linux-rockchip.vger.kernel.org

This is a multi-part message in MIME format.
--===============1104359274==
Content-Type: multipart/alternative;
 boundary="------------FF2C65BEADA33CB710434F8B"

This is a multi-part message in MIME format.
--------------FF2C65BEADA33CB710434F8B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Sean,


On 08/17/2016 10:45 AM, Sean Paul wrote:
>
> On Aug 16, 2016 7:41 PM, "Yakir Yang" <ykk@rock-chips.com 
> <mailto:ykk@rock-chips.com>> wrote:
> >
> > Sean,
> >
> > Thanks a lot for your good fixes. I have reviewed most of them, and 
> all looks good to me.
> >
> > But I got a question for merging things. My PSR patch set still 
> under reviewing, haven't been picked up Mark or other maintainers.
>
> I've picked them up in my tree. I'll send a pull request to Dave once 
> all of the dependencies have been reviewed (marked NEEDS REVIEW).
>

Got it, thanks.

- Yakir

> Sean
>
> > Feel a little bit embarrassed, how could we handle this situation ?
> >
> > - Yakir
> >
> >
> > On 08/17/2016 09:11 AM, Sean Paul wrote:
> >>
> >> This is a follow-on set to Yakir's original PSR set here:
> >> https://lkml.org/lkml/2016/7/24/34
> >> and applies to the for-next branch at:
> >> https://cgit.freedesktop.org/~seanpaul/dogwood 
> <https://cgit.freedesktop.org/%7Eseanpaul/dogwood>
> >>
> >> There are a few issues with the code that needed to be
> >> shored up.
> >>   (1) The use of mutexes instead of spinlocks caused issues calling the
> >>       psr functions from vblank_enable/disable.
> >>   (2) The proliferation of workers due to (1)
> >>   (3) A bunch of races due to (2)
> >>   (4) vblank is not enabled unless an event is requested, this breaks
> >>       a lot of things, but most noticeable was cursor.
> >>
> >> Changes in v2:
> >>         - Rebased on https://cgit.freedesktop.org/~seanpaul/dogwood 
> <https://cgit.freedesktop.org/%7Eseanpaul/dogwood>
> >>           instead of random on-list patches (some of which had drifted)
> >>         - Added the "small fixes" patch to catch some nits
> >>
> >>
> >> Sean Paul (6):
> >>    drm/rockchip: Convert psr_list_mutex to spinlock and use it
> >>    drm/rockchip: Don't use a delayed worker for psr state changes
> >>    drm/rockchip: Use a spinlock to protect psr state
> >>    drm/rockchip: A couple small fixes to psr
> >>    drm/rockchip: Improve analogix-dp psr handling
> >>    drm/rockchip: Enable vblank without event
> >>
> >>   drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 19 ++++--
> >>   drivers/gpu/drm/rockchip/rockchip_drm_drv.c     |  2 +-
> >>   drivers/gpu/drm/rockchip/rockchip_drm_drv.h     |  2 +-
> >>   drivers/gpu/drm/rockchip/rockchip_drm_psr.c     | 90 
> ++++++++++++-------------
> >>   drivers/gpu/drm/rockchip/rockchip_drm_vop.c     | 15 +++--
> >>   5 files changed, 69 insertions(+), 59 deletions(-)
> >>
> >
> >
>


--------------FF2C65BEADA33CB710434F8B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Sean,<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 08/17/2016 10:45 AM, Sean Paul
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAOw6vbLd4fNC1Og4435NUGzFPBGjLYsGmjKLWOZMin-WJCgtng@mail.gmail.com"
      type="cite">
      <p dir="ltr">On Aug 16, 2016 7:41 PM, "Yakir Yang" &lt;<a
          moz-do-not-send="true" href="mailto:ykk@rock-chips.com">ykk@rock-chips.com</a>&gt;
        wrote:<br>
        &gt;<br>
        &gt; Sean,<br>
        &gt;<br>
        &gt; Thanks a lot for your good fixes. I have reviewed most of
        them, and all looks good to me.<br>
        &gt;<br>
        &gt; But I got a question for merging things. My PSR patch set
        still under reviewing, haven't been picked up Mark or other
        maintainers. </p>
      <p dir="ltr">I've picked them up in my tree. I'll send a pull
        request to Dave once all of the dependencies have been reviewed
        (marked NEEDS REVIEW).</p>
    </blockquote>
    <br>
    Got it, thanks.<br>
    <br>
    - Yakir<br>
    <br>
    <blockquote
cite="mid:CAOw6vbLd4fNC1Og4435NUGzFPBGjLYsGmjKLWOZMin-WJCgtng@mail.gmail.com"
      type="cite">
      <p dir="ltr">Sean<br>
        <br>
      </p>
      <p dir="ltr">&gt; Feel a little bit embarrassed, how could we
        handle this situation ?<br>
        &gt;<br>
        &gt; - Yakir<br>
        &gt;<br>
        &gt;<br>
        &gt; On 08/17/2016 09:11 AM, Sean Paul wrote:<br>
        &gt;&gt;<br>
        &gt;&gt; This is a follow-on set to Yakir's original PSR set
        here:<br>
        &gt;&gt;          <a moz-do-not-send="true"
          href="https://lkml.org/lkml/2016/7/24/34">https://lkml.org/lkml/2016/7/24/34</a><br>
        &gt;&gt; and applies to the for-next branch at:<br>
        &gt;&gt;         <a moz-do-not-send="true"
          href="https://cgit.freedesktop.org/%7Eseanpaul/dogwood">https://cgit.freedesktop.org/~seanpaul/dogwood</a><br>
        &gt;&gt;<br>
        &gt;&gt; There are a few issues with the code that needed to be<br>
        &gt;&gt; shored up.<br>
        &gt;&gt;   (1) The use of mutexes instead of spinlocks caused
        issues calling the<br>
        &gt;&gt;       psr functions from vblank_enable/disable.<br>
        &gt;&gt;   (2) The proliferation of workers due to (1)<br>
        &gt;&gt;   (3) A bunch of races due to (2)<br>
        &gt;&gt;   (4) vblank is not enabled unless an event is
        requested, this breaks<br>
        &gt;&gt;       a lot of things, but most noticeable was cursor.<br>
        &gt;&gt;<br>
        &gt;&gt; Changes in v2:<br>
        &gt;&gt;         - Rebased on <a moz-do-not-send="true"
          href="https://cgit.freedesktop.org/%7Eseanpaul/dogwood">https://cgit.freedesktop.org/~seanpaul/dogwood</a><br>
        &gt;&gt;           instead of random on-list patches (some of
        which had drifted)<br>
        &gt;&gt;         - Added the "small fixes" patch to catch some
        nits<br>
        &gt;&gt;<br>
        &gt;&gt;<br>
        &gt;&gt; Sean Paul (6):<br>
        &gt;&gt;    drm/rockchip: Convert psr_list_mutex to spinlock and
        use it<br>
        &gt;&gt;    drm/rockchip: Don't use a delayed worker for psr
        state changes<br>
        &gt;&gt;    drm/rockchip: Use a spinlock to protect psr state<br>
        &gt;&gt;    drm/rockchip: A couple small fixes to psr<br>
        &gt;&gt;    drm/rockchip: Improve analogix-dp psr handling<br>
        &gt;&gt;    drm/rockchip: Enable vblank without event<br>
        &gt;&gt;<br>
        &gt;&gt;   drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 19
        ++++--<br>
        &gt;&gt;   drivers/gpu/drm/rockchip/rockchip_drm_drv.c     |  2
        +-<br>
        &gt;&gt;   drivers/gpu/drm/rockchip/rockchip_drm_drv.h     |  2
        +-<br>
        &gt;&gt;   drivers/gpu/drm/rockchip/rockchip_drm_psr.c     | 90
        ++++++++++++-------------<br>
        &gt;&gt;   drivers/gpu/drm/rockchip/rockchip_drm_vop.c     | 15
        +++--<br>
        &gt;&gt;   5 files changed, 69 insertions(+), 59 deletions(-)<br>
        &gt;&gt;<br>
        &gt;<br>
        &gt;</p>
    </blockquote>
    <br>
  </body>
</html>

--------------FF2C65BEADA33CB710434F8B--


--===============1104359274==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============1104359274==--
