From: "Nickey.Yang" <nickey.yang@rock-chips.com>
Subject: Re: [PATCH] drm: bridge: dw-hdmi: support i2c extended read mode
Date: Thu, 23 Feb 2017 19:40:55 +0800
Message-ID: <925b23de-5fb6-9f6f-0d99-5268508334a2@rock-chips.com>
References: <1487749545-5349-1-git-send-email-nickey.yang@rock-chips.com>
 <3f562fa6-886a-104f-62be-e0b1cbb8e5f7@synopsys.com>
 <a857310f-8ca7-428b-f121-ec012ac29975@rock-chips.com>
 <b391d2dd-3352-08b5-fe82-cd24381a10a6@synopsys.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1076310530=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <b391d2dd-3352-08b5-fe82-cd24381a10a6@synopsys.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Jose Abreu <Jose.Abreu@synopsys.com>, architt@codeaurora.org, airlied@linux.ie
Cc: laurent.pinchart+renesas@ideasonboard.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, dianders@chromium.org, linux-rockchip@lists.infradead.org, andy.yan@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

This is a multi-part message in MIME format.
--===============1076310530==
Content-Type: multipart/alternative;
 boundary="------------EE1151ABCF1BDB2345DCE732"

This is a multi-part message in MIME format.
--------------EE1151ABCF1BDB2345DCE732
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Jose,


在 2017年02月23日 18:17, Jose Abreu 写道:
> Hi Nickey,
>
>
> On 22-02-2017 11:11, Nickey.Yang wrote:
>> Read EDID func is drm_do_probe_ddc_edid    (in
>> drivers/gpu/drm/drm_edid.c     Line:1215)
>> when block = 3  means &msgs[3].addr = DDC_SEGMENT_ADDR(0x30)
>> ,but in dw_hdmi_i2c_xfer
>> line 299  msgs[i].addr != addr (0x50),  it will printk
>> "unsupported transfer, changed slave address"
>> and return -EOPNOTSUPP.
>>
>> in fact,0x30 not means change slave address but means segment
>> address.
>>
> I am reading the drm_do_probe_ddc_edid and I have one question:
> There are 2 writes and one read, but your patch only handles the
> write of segment address. What about the start address?

write start address operations
{
1235    .addr = DDC_ADDR,
1236    .flags = 0,
1237   .len = 1,
1238    .buf = &start,
}
will be handle by dw_hdmi_i2c_write. it seems we do need to send start 
signal actully,
because in dw_hdmi_i2c_write will do length--    and it will skip
while (length--) {

               /*   */
}


In DesignWare HDMI Transmitter Controller Databook,
2.10   E-DID/HDCP/SCDC I 2 C E-DDC Interface

  /* I 2 C Master Interface Normal Mode */**S   slaveaddr[6:0]   W  A  addr[7:0]   datao[7:0]  A/A PA/A

/* I 2 C Master Interface Extended Read Mode */
S  segaddr[6:0]  W X segpointer[7:0] X Sr slaveaddr[6:0] W A addr[7:0]  A datai[7:0]   A P

so we just need add  handles the write of segment address
to  support I2C Master Interface Extended Read Mode.

> I am refering to this structure:
> 1228                 struct i2c_msg msgs[] = {
> 1229                         {
> 1230                                 .addr   = DDC_SEGMENT_ADDR,
> 1231                                 .flags  = 0,
> 1232                                 .len    = 1,
> 1233                                 .buf    = &segment,
> 1234                         }, {
> 1235                                 .addr   = DDC_ADDR,
> 1236                                 .flags  = 0,
> 1237                                 .len    = 1,
> 1238                                 .buf    = &start,
> 1239                         }, {
> 1240                                 .addr   = DDC_ADDR,
> 1241                                 .flags  = I2C_M_RD,
> 1242                                 .len    = len,
> 1243                                 .buf    = buf,
> 1244                         }
>
> There is a write which indicates DDC segment address and then
> there is another write which indicates start address. Shouldn't
> this be handled?
>
> Best regards,
> Jose Miguel Abreu

Best regards,

Nickey,
>
>


--------------EE1151ABCF1BDB2345DCE732
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Hi Jose,<br>
    </p>
    <br>
    <div class="moz-cite-prefix">在 2017年02月23日 18:17, Jose Abreu 写道:<br>
    </div>
    <blockquote
      cite="mid:b391d2dd-3352-08b5-fe82-cd24381a10a6@synopsys.com"
      type="cite">
      <pre wrap="">Hi Nickey,


On 22-02-2017 11:11, Nickey.Yang wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Read EDID func is drm_do_probe_ddc_edid    (in
drivers/gpu/drm/drm_edid.c     Line:1215)
when block = 3  means &amp;msgs[3].addr = DDC_SEGMENT_ADDR(0x30)
,but in dw_hdmi_i2c_xfer
line 299  msgs[i].addr != addr (0x50),  it will printk
"unsupported transfer, changed slave address"
and return -EOPNOTSUPP.

in fact,0x30 not means change slave address but means segment
address.

</pre>
      </blockquote>
      <pre wrap="">
I am reading the drm_do_probe_ddc_edid and I have one question:
There are 2 writes and one read, but your patch only handles the
write of segment address. What about the start address?
</pre>
    </blockquote>
    <br>
    write start address operations<br>
    {<br>
    1235    .addr = DDC_ADDR,<br>
    1236    .flags = 0,<br>
    1237   .len = 1,<br>
    1238    .buf = &amp;start,<br>
    }<br>
    will be handle by dw_hdmi_i2c_write. it seems we do need to send
    start signal actully,<br>
    because in dw_hdmi_i2c_write will do length--    and it will skip <br>
    while (length--) {<br>
    <pre wrap="">              /*   */
}


In DesignWare HDMI Transmitter Controller Databook,
2.10   E-DID/HDCP/SCDC I 2 C E-DDC Interface

 /* I 2 C Master Interface Normal Mode */<b>
</b>S   slaveaddr[6:0]   W  A  addr[7:0]   datao[7:0]  A/A PA/A

/* I 2 C Master Interface Extended Read Mode */
S  segaddr[6:0]  W X segpointer[7:0] X Sr slaveaddr[6:0] W A addr[7:0]  A datai[7:0]   A P

so we just need add  handles the write of segment address
to  support I2C Master Interface Extended Read Mode.

</pre>
    <blockquote
      cite="mid:b391d2dd-3352-08b5-fe82-cd24381a10a6@synopsys.com"
      type="cite">
      <pre wrap="">
I am refering to this structure:
1228                 struct i2c_msg msgs[] = {
1229                         {
1230                                 .addr   = DDC_SEGMENT_ADDR,
1231                                 .flags  = 0,
1232                                 .len    = 1,
1233                                 .buf    = &amp;segment,
1234                         }, {
1235                                 .addr   = DDC_ADDR,
1236                                 .flags  = 0,
1237                                 .len    = 1,
1238                                 .buf    = &amp;start,
1239                         }, {
1240                                 .addr   = DDC_ADDR,
1241                                 .flags  = I2C_M_RD,
1242                                 .len    = len,
1243                                 .buf    = buf,
1244                         }

There is a write which indicates DDC segment address and then
there is another write which indicates start address. Shouldn't
this be handled?

Best regards,
Jose Miguel Abreu
</pre>
    </blockquote>
    <br>
    <pre wrap="">Best regards,</pre>
    Nickey,<br>
    <blockquote
      cite="mid:b391d2dd-3352-08b5-fe82-cd24381a10a6@synopsys.com"
      type="cite">
      <pre wrap="">


</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------EE1151ABCF1BDB2345DCE732--


--===============1076310530==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============1076310530==--
