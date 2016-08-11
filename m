From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH] drm/bridge: dw-hdmi: fix hdmi display lost
Date: Thu, 11 Aug 2016 17:09:52 +0800
Message-ID: <57AC40E0.8080809@rock-chips.com>
References: <1470902043-23384-1-git-send-email-mark.yao@rock-chips.com>
 <20160811083220.GS1041@n2100.armlinux.org.uk>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0350713030=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20160811083220.GS1041@n2100.armlinux.org.uk>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Russell King - ARM Linux <linux@armlinux.org.uk>
Cc: Fabio Estevam <fabio.estevam@freescale.com>, Daniel Vetter <daniel.vetter@ffwll.ch>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

--===============0350713030==
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 2016年08月11日 16:32, Russell King -
      ARM Linux wrote:<br>
    </div>
    <blockquote cite="mid:20160811083220.GS1041@n2100.armlinux.org.uk"
      type="cite">
      <pre wrap="">On Thu, Aug 11, 2016 at 03:54:03PM +0800, Mark Yao wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">hdmi-&gt;disabled maybe not match to the real hardware status.

-&gt;dw_hdmi_bridge_enable()
  hdmi-&gt;disabled = false;
--&gt;dw_hdmi_update_power()
   if (hdmi-&gt;rxsense)
       force = DRM_FORCE_ON;
   else
       force = DRM_FORCE_OFF;

hdmi-&gt;rxsense maybe false on bridge enable path, then hdmi-&gt;disabled
is false, but actually hardware is power off, they are not match.
</pre>
      </blockquote>
      <pre wrap="">
... which is correct.  If rxsense is false, it means there is nothing
plugged in, so we don't power the hardware up until something _is_
plugged in.

When something is plugged in, we get the HPD and RXSENSE events, which
will cause dw_hdmi_update_power() to be called.

hdmi-&gt;disabled is merely a bit mask of things that would cause us to
want to avoid powering the hardware up when rxsense becomes true.

</pre>
    </blockquote>
    <br>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <span style="color: rgb(51, 51, 51); font-family: arial; font-size:
      16px; font-style: normal; font-variant: normal; font-weight:
      normal; letter-spacing: normal; line-height: 20px; orphans: auto;
      text-align: start; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 1; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; display: inline !important; float:
      none; background-color: rgb(255, 255, 255);">At one moment</span>,
    if hdmi-&gt;rxsense = false, hdmi-&gt;disabled = true, and the hdmi
    is unplug<br>
    <br>
    then we plug hdmi:<br>
        1, dw_hdmi_irq<br>
          --&gt; because disabled is true, so can't not run into the
    patch to enable hdmi-&gt;rxsense<br>
        2, uevent plugin<br>
        3, get_connector_detect: <br>
               hdmi-&gt;disabled is true, so just report status
    connected<br>
        4, dw_hdmi_bridge_enable<br>
              --&gt; set hdmi-&gt;disabled = false, but because
    hdmi-&gt;rxsense is false, so force is power off.<br>
    then the userspace thinks the hdmi is power on, but in fact it's
    power off.<br>
       5, unplug hdmi<br>
           hdmi hardware rxsense status is false, also can't recovery to
    true.<br>
           all the status back to step 1.<br>
    <br>
    So the bug is when hdmi-&gt;rxsense run into false, hardly to
    recovery.<br>
    <br>
    hdmi-&gt;rxsense = true request dw_hdmi_bridge_enable<br>
    dw_hdmi_bridge_enable request "hdmi-&gt;rxsense == true"<br>
    <br>
    <pre class="moz-signature" cols="72">-- 
Ｍark Yao</pre>
  </body>
</html>


--===============0350713030==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============0350713030==--
