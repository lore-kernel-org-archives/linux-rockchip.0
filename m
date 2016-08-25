From: Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH v3 1/5] drm/rockchip: sort registers define by chip's
 number
Date: Thu, 25 Aug 2016 13:15:26 -0400
Message-ID: <CAOw6vbJi+yV11npBZYi2MHTccSL_0HuuxGidLhmwjV--U6q-wQ@mail.gmail.com>
References: <loom.20160602T084340-509@post.gmane.org>
 <1471454452-2151-1-git-send-email-seanpaul@chromium.org>
 <57B57AFE.2030706@rock-chips.com> <20160818091141.GZ6232@phenom.ffwll.local>
 <57B587C0.5050007@rock-chips.com>
 <CAOw6vbJdBwUdg5Qww-autFH=HvvaM-uac7-mN+Ja7PEDiPoPnw@mail.gmail.com>
 <57BB9B87.2040406@rock-chips.com>
 <CAOw6vbKnHZK4H_MHOE+iQ=a_YNJQen_F4PQ278B4N51OyxFc9Q@mail.gmail.com>
 <57BE5727.8070100@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1490462773=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <57BE5727.8070100@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark yao <mark.yao@rock-chips.com>
Cc: Linux ARM Kernel <linux-arm-kernel@lists.infradead.org>, linux-rockchip@lists.infradead.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Tomasz Figa <tfiga@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

--===============1490462773==
Content-Type: multipart/alternative; boundary=001a113fcf907e86f0053ae88c81

--001a113fcf907e86f0053ae88c81
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 24, 2016 at 10:25 PM, Mark yao <mark.yao@rock-chips.com> wrote:

> On 2016=E5=B9=B408=E6=9C=8823=E6=97=A5 21:13, Sean Paul wrote:
>
>> On Mon, Aug 22, 2016 at 8:40 PM, Mark yao <mark.yao@rock-chips.com>
>> wrote:
>>
>>> On 2016=E5=B9=B408=E6=9C=8823=E6=97=A5 04:30, Sean Paul wrote:
>>>
>>>> On Thu, Aug 18, 2016 at 6:02 AM, Mark yao <mark.yao@rock-chips.com>
>>>> wrote:
>>>>
>>>>> On 2016=E5=B9=B408=E6=9C=8818=E6=97=A5 17:11, Daniel Vetter wrote:
>>>>>
>>>>>> On Thu, Aug 18, 2016 at 05:08:14PM +0800, Mark yao wrote:
>>>>>>
>>>>>>> Hi Sean
>>>>>>>>
>>>>>>>> Thanks for send v3 patch for rk3399 vop support.
>>>>>>>>
>>>>>>>> But sorry for that, I had changed my mind, those patches are
>>>>>>>> deprecated,
>>>>>>>> I have new rk3399 patch on my downstream kernel, I will upstream
>>>>>>>> soon.
>>>>>>>>
>>>>>>> Wut? Imo merge Sean's patch here, and then rebase your downstream
>>>>>> patches
>>>>>> on top of it. That you have a downstream tree which is out of sync
>>>>>> with
>>>>>> upstream shouldn't be a reason to stall upstream development.
>>>>>> -Daniel
>>>>>>
>>>>>> Yeah, Sorry for that.
>>>>>
>>>>> In fact, on my downstream kernel, also have those patches, my new
>>>>> rk3399
>>>>> patches are based on them,
>>>>> but the new rk3399 patches will cover the those patches,  Sean's
>>>>> patches
>>>>> is
>>>>> old version.
>>>>>
>>>>> I just want to fast forward, don't want to send two version drivers t=
o
>>>>> upstream.
>>>>> but if you and Dave feel ok for that, I have no problem:-) .
>>>>>
>>>>> merged Sean's patches and then apply new version patches.
>>>>>
>>>>> Ok, so can I get a review/ack for these revised patches then?
>>>> Something is better than nothing, and there's a bunch of stuff that
>>>> depends on these changes.
>>>>
>>>> Sean
>>>>
>>> Yes, But I miss your [PATCH v3 0/5] and [PATCH v3 4/5]. do you mean the
>>> lost
>>> patches use v2 version?
>>>
>>> Yes, v2 4/5 was reviewed as-is, so I just applied it.
>>
>> Sean
>>
> Applied this series to my drm-next.
>
>
You should probably just rebase your downstream kernel on top of my branch
here: https://cgit.freedesktop.org/~seanpaul/dogwood/log/?h=3Dfor-next

Sean


Thanks.
>
>
>
>>>> Thanks.
>>>>>
>>>>> --
>>>>> =EF=BC=ADark Yao
>>>>>
>>>>>
>>>>>
>>>>
>>> --
>>> =EF=BC=ADark Yao
>>>
>>>
>>>
>>
>>
>
> --
> =EF=BC=ADark Yao
>
>
>

--001a113fcf907e86f0053ae88c81
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Aug 24, 2016 at 10:25 PM, Mark yao <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:mark.yao@rock-chips.com" target=3D"_blank" class=3D"gmail-creme=
d cremed">mark.yao@rock-chips.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div class=3D"gmail-HOEnZb"><div class=3D=
"gmail-h5">On 2016=E5=B9=B408=E6=9C=8823=E6=97=A5 21:13, Sean Paul wrote:<b=
r>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
On Mon, Aug 22, 2016 at 8:40 PM, Mark yao &lt;<a href=3D"mailto:mark.yao@ro=
ck-chips.com" target=3D"_blank" class=3D"gmail-cremed cremed">mark.yao@rock=
-chips.com</a>&gt; wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
On 2016=E5=B9=B408=E6=9C=8823=E6=97=A5 04:30, Sean Paul wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
On Thu, Aug 18, 2016 at 6:02 AM, Mark yao &lt;<a href=3D"mailto:mark.yao@ro=
ck-chips.com" target=3D"_blank" class=3D"gmail-cremed cremed">mark.yao@rock=
-chips.com</a>&gt; wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
On 2016=E5=B9=B408=E6=9C=8818=E6=97=A5 17:11, Daniel Vetter wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
On Thu, Aug 18, 2016 at 05:08:14PM +0800, Mark yao wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">
Hi Sean<br>
<br>
Thanks for send v3 patch for rk3399 vop support.<br>
<br>
But sorry for that, I had changed my mind, those patches are<br>
deprecated,<br>
I have new rk3399 patch on my downstream kernel, I will upstream soon.<br>
</blockquote></blockquote>
Wut? Imo merge Sean&#39;s patch here, and then rebase your downstream<br>
patches<br>
on top of it. That you have a downstream tree which is out of sync with<br>
upstream shouldn&#39;t be a reason to stall upstream development.<br>
-Daniel<br>
<br>
</blockquote>
Yeah, Sorry for that.<br>
<br>
In fact, on my downstream kernel, also have those patches, my new rk3399<br=
>
patches are based on them,<br>
but the new rk3399 patches will cover the those patches,=C2=A0 Sean&#39;s p=
atches<br>
is<br>
old version.<br>
<br>
I just want to fast forward, don&#39;t want to send two version drivers to<=
br>
upstream.<br>
but if you and Dave feel ok for that, I have no problem:-) .<br>
<br>
merged Sean&#39;s patches and then apply new version patches.<br>
<br>
</blockquote>
Ok, so can I get a review/ack for these revised patches then?<br>
Something is better than nothing, and there&#39;s a bunch of stuff that<br>
depends on these changes.<br>
<br>
Sean<br>
</blockquote>
Yes, But I miss your [PATCH v3 0/5] and [PATCH v3 4/5]. do you mean the los=
t<br>
patches use v2 version?<br>
<br>
</blockquote>
Yes, v2 4/5 was reviewed as-is, so I just applied it.<br>
<br>
Sean<br>
</blockquote></div></div>
Applied this series to my drm-next.<br>
<br></blockquote><div><br></div><div>You should probably just rebase your d=
ownstream kernel on top of my branch here: <a href=3D"https://cgit.freedesk=
top.org/~seanpaul/dogwood/log/?h=3Dfor-next">https://cgit.freedesktop.org/~=
seanpaul/dogwood/log/?h=3Dfor-next</a>=C2=A0</div><div>=C2=A0</div><div>Sea=
n</div><div><br></div><div><br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">
Thanks.<div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
Thanks.<br>
<br>
--<br>
=EF=BC=ADark Yao<br>
<br>
<br>
</blockquote>
<br>
</blockquote>
<br>
--<br>
=EF=BC=ADark Yao<br>
<br>
<br>
</blockquote>
<br>
<br>
</blockquote>
<br>
<br></div></div><span class=3D"gmail-HOEnZb"><font color=3D"#888888">
-- <br>
=EF=BC=ADark Yao<br>
<br>
<br>
</font></span></blockquote></div><br></div></div>

--001a113fcf907e86f0053ae88c81--

--===============1490462773==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============1490462773==--
