From: Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH v2 0/6] drm/rockchip: Some patches to update the PSR series
Date: Tue, 16 Aug 2016 19:45:04 -0700
Message-ID: <CAOw6vbLd4fNC1Og4435NUGzFPBGjLYsGmjKLWOZMin-WJCgtng@mail.gmail.com>
References: <1471396276-8222-1-git-send-email-seanpaul@chromium.org>
 <cd6e7ccb-0e53-5e82-81f4-5f7bd2fb2ea9@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0449669463=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <cd6e7ccb-0e53-5e82-81f4-5f7bd2fb2ea9@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Yakir Yang <ykk@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Doug Anderson <dianders@chromium.org>, marcheu@chromium.org
List-Id: linux-rockchip.vger.kernel.org

--===============0449669463==
Content-Type: multipart/alternative; boundary=001a1143f720e9006b053a3b7356

--001a1143f720e9006b053a3b7356
Content-Type: text/plain; charset=UTF-8

On Aug 16, 2016 7:41 PM, "Yakir Yang" <ykk@rock-chips.com> wrote:
>
> Sean,
>
> Thanks a lot for your good fixes. I have reviewed most of them, and all
looks good to me.
>
> But I got a question for merging things. My PSR patch set still under
reviewing, haven't been picked up Mark or other maintainers.

I've picked them up in my tree. I'll send a pull request to Dave once all
of the dependencies have been reviewed (marked NEEDS REVIEW).

Sean

> Feel a little bit embarrassed, how could we handle this situation ?
>
> - Yakir
>
>
> On 08/17/2016 09:11 AM, Sean Paul wrote:
>>
>> This is a follow-on set to Yakir's original PSR set here:
>>          https://lkml.org/lkml/2016/7/24/34
>> and applies to the for-next branch at:
>>         https://cgit.freedesktop.org/~seanpaul/dogwood
>>
>> There are a few issues with the code that needed to be
>> shored up.
>>   (1) The use of mutexes instead of spinlocks caused issues calling the
>>       psr functions from vblank_enable/disable.
>>   (2) The proliferation of workers due to (1)
>>   (3) A bunch of races due to (2)
>>   (4) vblank is not enabled unless an event is requested, this breaks
>>       a lot of things, but most noticeable was cursor.
>>
>> Changes in v2:
>>         - Rebased on https://cgit.freedesktop.org/~seanpaul/dogwood
>>           instead of random on-list patches (some of which had drifted)
>>         - Added the "small fixes" patch to catch some nits
>>
>>
>> Sean Paul (6):
>>    drm/rockchip: Convert psr_list_mutex to spinlock and use it
>>    drm/rockchip: Don't use a delayed worker for psr state changes
>>    drm/rockchip: Use a spinlock to protect psr state
>>    drm/rockchip: A couple small fixes to psr
>>    drm/rockchip: Improve analogix-dp psr handling
>>    drm/rockchip: Enable vblank without event
>>
>>   drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 19 ++++--
>>   drivers/gpu/drm/rockchip/rockchip_drm_drv.c     |  2 +-
>>   drivers/gpu/drm/rockchip/rockchip_drm_drv.h     |  2 +-
>>   drivers/gpu/drm/rockchip/rockchip_drm_psr.c     | 90
++++++++++++-------------
>>   drivers/gpu/drm/rockchip/rockchip_drm_vop.c     | 15 +++--
>>   5 files changed, 69 insertions(+), 59 deletions(-)
>>
>
>

--001a1143f720e9006b053a3b7356
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On Aug 16, 2016 7:41 PM, &quot;Yakir Yang&quot; &lt;<a href=
=3D"mailto:ykk@rock-chips.com">ykk@rock-chips.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Sean,<br>
&gt;<br>
&gt; Thanks a lot for your good fixes. I have reviewed most of them, and al=
l looks good to me.<br>
&gt;<br>
&gt; But I got a question for merging things. My PSR patch set still under =
reviewing, haven&#39;t been picked up Mark or other maintainers. </p>
<p dir=3D"ltr">I&#39;ve picked them up in my tree. I&#39;ll send a pull req=
uest to Dave once all of the dependencies have been reviewed (marked NEEDS =
REVIEW).</p>
<p dir=3D"ltr">Sean<br><br></p>
<p dir=3D"ltr">&gt; Feel a little bit embarrassed, how could we handle this=
 situation ?<br>
&gt;<br>
&gt; - Yakir<br>
&gt;<br>
&gt;<br>
&gt; On 08/17/2016 09:11 AM, Sean Paul wrote:<br>
&gt;&gt;<br>
&gt;&gt; This is a follow-on set to Yakir&#39;s original PSR set here:<br>
&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://lkml.org/lkml=
/2016/7/24/34">https://lkml.org/lkml/2016/7/24/34</a><br>
&gt;&gt; and applies to the for-next branch at:<br>
&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://cgit.freedesktop.or=
g/~seanpaul/dogwood">https://cgit.freedesktop.org/~seanpaul/dogwood</a><br>
&gt;&gt;<br>
&gt;&gt; There are a few issues with the code that needed to be<br>
&gt;&gt; shored up.<br>
&gt;&gt; =C2=A0 (1) The use of mutexes instead of spinlocks caused issues c=
alling the<br>
&gt;&gt; =C2=A0 =C2=A0 =C2=A0 psr functions from vblank_enable/disable.<br>
&gt;&gt; =C2=A0 (2) The proliferation of workers due to (1)<br>
&gt;&gt; =C2=A0 (3) A bunch of races due to (2)<br>
&gt;&gt; =C2=A0 (4) vblank is not enabled unless an event is requested, thi=
s breaks<br>
&gt;&gt; =C2=A0 =C2=A0 =C2=A0 a lot of things, but most noticeable was curs=
or.<br>
&gt;&gt;<br>
&gt;&gt; Changes in v2:<br>
&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 - Rebased on <a href=3D"https://cgit.f=
reedesktop.org/~seanpaul/dogwood">https://cgit.freedesktop.org/~seanpaul/do=
gwood</a><br>
&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 instead of random on-list patch=
es (some of which had drifted)<br>
&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 - Added the &quot;small fixes&quot; pa=
tch to catch some nits<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Sean Paul (6):<br>
&gt;&gt; =C2=A0 =C2=A0drm/rockchip: Convert psr_list_mutex to spinlock and =
use it<br>
&gt;&gt; =C2=A0 =C2=A0drm/rockchip: Don&#39;t use a delayed worker for psr =
state changes<br>
&gt;&gt; =C2=A0 =C2=A0drm/rockchip: Use a spinlock to protect psr state<br>
&gt;&gt; =C2=A0 =C2=A0drm/rockchip: A couple small fixes to psr<br>
&gt;&gt; =C2=A0 =C2=A0drm/rockchip: Improve analogix-dp psr handling<br>
&gt;&gt; =C2=A0 =C2=A0drm/rockchip: Enable vblank without event<br>
&gt;&gt;<br>
&gt;&gt; =C2=A0 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 19 ++++--=
<br>
&gt;&gt; =C2=A0 drivers/gpu/drm/rockchip/rockchip_drm_drv.c=C2=A0 =C2=A0 =
=C2=A0|=C2=A0 2 +-<br>
&gt;&gt; =C2=A0 drivers/gpu/drm/rockchip/rockchip_drm_drv.h=C2=A0 =C2=A0 =
=C2=A0|=C2=A0 2 +-<br>
&gt;&gt; =C2=A0 drivers/gpu/drm/rockchip/rockchip_drm_psr.c=C2=A0 =C2=A0 =
=C2=A0| 90 ++++++++++++-------------<br>
&gt;&gt; =C2=A0 drivers/gpu/drm/rockchip/rockchip_drm_vop.c=C2=A0 =C2=A0 =
=C2=A0| 15 +++--<br>
&gt;&gt; =C2=A0 5 files changed, 69 insertions(+), 59 deletions(-)<br>
&gt;&gt;<br>
&gt;<br>
&gt;</p>

--001a1143f720e9006b053a3b7356--

--===============0449669463==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============0449669463==--
