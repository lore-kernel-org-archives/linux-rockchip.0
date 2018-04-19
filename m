From: Sandy Huang <hjc@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: vop: fixup linebuffer mode calc error
Date: Thu, 19 Apr 2018 20:03:23 +0800
Message-ID: <98ba7ab7-e885-da97-6eac-71df575d995e@rock-chips.com>
References: <1523960108-190541-1-git-send-email-hjc@rock-chips.com>
 <2475172.s4GHAT5PDW@phil>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0573261914=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <2475172.s4GHAT5PDW@phil>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: David Airlie <airlied@linux.ie>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

This is a multi-part message in MIME format.
--===============0573261914==
Content-Type: multipart/alternative;
 boundary="------------127D6FDD83AA7E56D7D29A55"

This is a multi-part message in MIME format.
--------------127D6FDD83AA7E56D7D29A55
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit



在 2018/4/17 19:14, Heiko Stuebner 写道:
> Hi Sandy,
>
> Am Dienstag, 17. April 2018, 12:15:07 CEST schrieb Sandy Huang:
>> When video width is bigger than 3840 the linebuffer mode
>> should be LB_YUV_3840X5.
> Can you explain that a bit better?
>
> I.e. when looking at the code, the very first check is width > 2560.
>
> So it seems your change targets some YUV mode with width > 3840
> which should be mentioned in the commit message, so people like
> me don't scratch their head in confusion ;-)
>
> Similarly that check is actually width > 1280 to set LB_YUV_3840X5,
> so I guess you're actually wanting any YUV mode bigger than
> 1280px should use LB_YUV_3840X5?
>
>
> Heiko
Thanks heiko,
I will make more description for this path at next version.
>
>> Signed-off-by: Sandy Huang <hjc@rock-chips.com>
>> ---
>>   drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
>> index 56bbd2e..3e7501b 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
>> @@ -332,7 +332,7 @@ static inline int scl_vop_cal_lb_mode(int width, bool is_yuv)
>>   
>>   	if (width > 2560)
>>   		lb_mode = LB_RGB_3840X2;
>> -	else if (width > 1920)
>> +	else if (!is_yuv && width > 1920)
>>   		lb_mode = LB_RGB_2560X4;
>>   	else if (!is_yuv)
>>   		lb_mode = LB_RGB_1920X5;
>>
>
>
>
>


--------------127D6FDD83AA7E56D7D29A55
Content-Type: text/html; charset=gbk
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">在 2018/4/17 19:14, Heiko Stuebner 写道:<br>
    </div>
    <blockquote type="cite" cite="mid:2475172.s4GHAT5PDW@phil">
      <pre wrap="">Hi Sandy,

Am Dienstag, 17. April 2018, 12:15:07 CEST schrieb Sandy Huang:
</pre>
      <blockquote type="cite">
        <pre wrap="">When video width is bigger than 3840 the linebuffer mode
should be LB_YUV_3840X5.
</pre>
      </blockquote>
      <pre wrap="">
Can you explain that a bit better?

I.e. when looking at the code, the very first check is width &gt; 2560.

So it seems your change targets some YUV mode with width &gt; 3840
which should be mentioned in the commit message, so people like
me don't scratch their head in confusion ;-)

Similarly that check is actually width &gt; 1280 to set LB_YUV_3840X5,
so I guess you're actually wanting any YUV mode bigger than
1280px should use LB_YUV_3840X5?


Heiko</pre>
    </blockquote>
    Thanks heiko,<br>
    I will make more description for this path at next version.<br>
    <span style="color: rgb(67, 67, 67); font-family: Tahoma, Arial, 宋体,
      'Malgun Gothic'; font-size: 12px; font-style: normal;
      font-variant: normal; font-weight: normal; letter-spacing: normal;
      line-height: 24px; orphans: auto; text-align: justify;
      text-indent: 0px; text-transform: none; white-space: normal;
      widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgba(255, 255, 255, 0.8); display: inline
      !important; float: none;"></span>
    <blockquote type="cite" cite="mid:2475172.s4GHAT5PDW@phil">
      <pre wrap="">

</pre>
      <blockquote type="cite">
        <pre wrap="">Signed-off-by: Sandy Huang <a class="moz-txt-link-rfc2396E" href="mailto:hjc@rock-chips.com">&lt;hjc@rock-chips.com&gt;</a>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
index 56bbd2e..3e7501b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
@@ -332,7 +332,7 @@ static inline int scl_vop_cal_lb_mode(int width, bool is_yuv)
 
 	if (width &gt; 2560)
 		lb_mode = LB_RGB_3840X2;
-	else if (width &gt; 1920)
+	else if (!is_yuv &amp;&amp; width &gt; 1920)
 		lb_mode = LB_RGB_2560X4;
 	else if (!is_yuv)
 		lb_mode = LB_RGB_1920X5;

</pre>
      </blockquote>
      <pre wrap="">




</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------127D6FDD83AA7E56D7D29A55--


--===============0573261914==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============0573261914==--
