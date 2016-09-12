From: Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH v15.1 3/5] drm/rockchip: cdn-dp: add cdn DP support for
 rk3399
Date: Mon, 12 Sep 2016 07:13:36 -0400
Message-ID: <CAOw6vb+OnWchT7ufV8ZmYpn8qfGYt7A7rKwyFZSstiHyqb9aTA@mail.gmail.com>
References: <1473473748-22331-4-git-send-email-zyw@rock-chips.com>
 <1473480966-21572-1-git-send-email-zyw@rock-chips.com>
 <20160912091339.GY27946@sirena.org.uk>
 <57D67927.7070109@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0017078862=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <57D67927.7070109@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Chris Zhong <zyw@rock-chips.com>
Cc: dianders@chromium.org, zhengxing@rock-chips.com, linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>, briannorris@chromium.org, cw00.choi@samsung.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, tfiga@chromium.org, yzq@rock-chips.com, hychao@chromium.org, myungjoo.ham@samsung.com, wulf@rock-chips.com, groeck@chromium.org, marcheu@chromium.org, linux-arm-kernel@lists.infradead.org, cychiang@chromium.org
List-Id: linux-rockchip.vger.kernel.org

--===============0017078862==
Content-Type: multipart/alternative; boundary=001a114e56246a7f55053c4d9698

--001a114e56246a7f55053c4d9698
Content-Type: text/plain; charset=UTF-8

On Sep 12, 2016 5:45 AM, "Chris Zhong" <zyw@rock-chips.com> wrote:
>
> Hi Mark
>
> OK, thanks.
> I will send the whole series next time, hope it will not bother anyone
>

I haven't reviewed your latest changes, so adding my r-b is a little
premature.

Sean

>
>
> On 09/12/2016 05:13 PM, Mark Brown wrote:
>>
>> On Fri, Sep 09, 2016 at 09:16:06PM -0700, Chris Zhong wrote:
>>>
>>> Add support for cdn DP controller which is embedded in the rk3399
>>> SoCs. The DP is compliant with DisplayPort Specification,
>>
>> Please don't new patches in reply to old serieses, especially not
>> individual patches in the middle of the series - it just makes
>> everything more confusing.  It becomes difficult to tell what the
>> version of the series that's actually expected is.  Please send the
>> whole series.
>
>
>

--001a114e56246a7f55053c4d9698
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">On Sep 12, 2016 5:45 AM, &quot;Chris Zhong&quot; &lt;<a href=
=3D"mailto:zyw@rock-chips.com">zyw@rock-chips.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Mark<br>
&gt;<br>
&gt; OK, thanks.<br>
&gt; I will send the whole series next time, hope it will not bother anyone=
<br>
&gt;</p>
<p dir=3D"ltr">I haven&#39;t reviewed your latest changes, so adding my r-b=
 is a little premature.</p>
<p dir=3D"ltr">Sean</p>
<p dir=3D"ltr">&gt;<br>
&gt;<br>
&gt; On 09/12/2016 05:13 PM, Mark Brown wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Fri, Sep 09, 2016 at 09:16:06PM -0700, Chris Zhong wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Add support for cdn DP controller which is embedded in the rk3=
399<br>
&gt;&gt;&gt; SoCs. The DP is compliant with DisplayPort Specification,<br>
&gt;&gt;<br>
&gt;&gt; Please don&#39;t new patches in reply to old serieses, especially =
not<br>
&gt;&gt; individual patches in the middle of the series - it just makes<br>
&gt;&gt; everything more confusing.=C2=A0 It becomes difficult to tell what=
 the<br>
&gt;&gt; version of the series that&#39;s actually expected is.=C2=A0 Pleas=
e send the<br>
&gt;&gt; whole series.<br>
&gt;<br>
&gt;<br>
&gt;</p>

--001a114e56246a7f55053c4d9698--

--===============0017078862==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============0017078862==--
