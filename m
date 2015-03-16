From: Mark yao <mark.yao@rock-chips.com>
Subject: [GIT PULL] drm/rockchip: fix some problem
Date: Mon, 16 Mar 2015 14:43:17 +0800
Message-ID: <55067B85.2060707@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1113487727=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: David Airlie <airlied@linux.ie>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, dri-devel <dri-devel@lists.freedesktop.org>, linux-kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

This is a multi-part message in MIME format.
--===============1113487727==
Content-Type: multipart/alternative;
 boundary="------------080803020502050609020606"

This is a multi-part message in MIME format.
--------------080803020502050609020606
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Dave
     Those patch I think is good, do you plan to land them?

     patchs:
         [1] = drm/rockchip: Only alloc a kmap for fbdev gem object 
(http://lkml.iu.edu/hypermail/linux/kernel/1501.1/02169.html)
         [2] = drm/rockchip: vop: fix vop vsync/hsync polarity 
(https://lkml.org/lkml/2015/1/21/914)
         [3] = drm/rockchip: vop use is_enabled instead of dpms mode 
(https://lkml.org/lkml/2015/1/22/186)
         [4] = drm/rockchip: vop: set vop enabled after enable iommu 
(https://lkml.org/lkml/2015/1/22/187)
         [5] = drm/rockchip: vop: power off until vop standby take 
effect (https://lkml.org/lkml/2015/2/4/1)

The following changes since commit 03be70050c85768e9ce7c0d0887110d1b629e127:

   Merge tag 'topic/drm-misc-2015-03-10' of 
git://anongit.freedesktop.org/drm-intel into drm-next (2015-03-11 
12:15:06 +1000)

are available in the git repository at:


   https://github.com/markyzq/kernel-drm-rockchip.git drm_next

for you to fetch changes up to 1067219b27e29e925e7bdbb85b72c4c2bec0267e:

   drm/rockchip: vop: power off until vop standby take effect 
(2015-03-16 13:50:57 +0800)

----------------------------------------------------------------
Daniel Kurtz (1):
       drm/rockchip: Only alloc a kmap for fbdev gem object

Mark Yao (4):
       drm/rockchip: vop: fix vop vsync/hsync polarity
       drm/rockchip: vop use is_enabled instead of dpms mode
       drm/rockchip: vop: set vop enabled after enable iommu
       drm/rockchip: vop: power off until vop standby take effect

  drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c |    2 +-
  drivers/gpu/drm/rockchip/rockchip_drm_gem.c   |   17 ++--
  drivers/gpu/drm/rockchip/rockchip_drm_gem.h   |    3 +-
  drivers/gpu/drm/rockchip/rockchip_drm_vop.c   |  118 
++++++++++++++++++-------
  4 files changed, 102 insertions(+), 38 deletions(-)

-- 
Mark
E-mail:mark.yao@rock-chips.com


--------------080803020502050609020606
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi Dave<br>
    &nbsp;&nbsp;&nbsp; Those patch I think is good, do you plan to land them?<br>
    &nbsp;&nbsp;&nbsp; <br>
    &nbsp;&nbsp;&nbsp; patchs:<br>
    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; [1] = drm/rockchip: Only alloc a kmap for fbdev gem object
    (<a class="moz-txt-link-freetext" href="http://lkml.iu.edu/hypermail/linux/kernel/1501.1/02169.html">http://lkml.iu.edu/hypermail/linux/kernel/1501.1/02169.html</a>)<br>
    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; [2] = drm/rockchip: vop: fix vop vsync/hsync polarity
    (<a class="moz-txt-link-freetext" href="https://lkml.org/lkml/2015/1/21/914">https://lkml.org/lkml/2015/1/21/914</a>)<br>
    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; [3] = drm/rockchip: vop use is_enabled instead of dpms mode
    (<a class="moz-txt-link-freetext" href="https://lkml.org/lkml/2015/1/22/186">https://lkml.org/lkml/2015/1/22/186</a>)<br>
    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; [4] = drm/rockchip: vop: set vop enabled after enable iommu
    (<a class="moz-txt-link-freetext" href="https://lkml.org/lkml/2015/1/22/187">https://lkml.org/lkml/2015/1/22/187</a>)<br>
    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; [5] = drm/rockchip: vop: power off until vop standby take
    effect (<span style="color: rgb(0, 128, 0); font-family: arial,
      sans-serif; font-size: 13px; font-style: normal; font-variant:
      normal; font-weight: normal; letter-spacing: normal; line-height:
      normal; orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: auto;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255); display: inline !important;
      float: none;"></span><a class="moz-txt-link-freetext" href="https://lkml.org/lkml/2015/2/4/1">https://lkml.org/lkml/2015/2/4/1</a>)<br>
    <br>
    The following changes since commit
    03be70050c85768e9ce7c0d0887110d1b629e127:<br>
    <br>
    &nbsp; Merge tag 'topic/drm-misc-2015-03-10' of
    git://anongit.freedesktop.org/drm-intel into drm-next (2015-03-11
    12:15:06 +1000)<br>
    <br>
    are available in the git repository at:<br>
    <br>
    <br>
    &nbsp; <a class="moz-txt-link-freetext" href="https://github.com/markyzq/kernel-drm-rockchip.git">https://github.com/markyzq/kernel-drm-rockchip.git</a> drm_next<br>
    <br>
    for you to fetch changes up to
    1067219b27e29e925e7bdbb85b72c4c2bec0267e:<br>
    <br>
    &nbsp; drm/rockchip: vop: power off until vop standby take effect
    (2015-03-16 13:50:57 +0800)<br>
    <br>
    ----------------------------------------------------------------<br>
    Daniel Kurtz (1):<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/rockchip: Only alloc a kmap for fbdev gem object<br>
    <br>
    Mark Yao (4):<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/rockchip: vop: fix vop vsync/hsync polarity<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/rockchip: vop use is_enabled instead of dpms mode<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/rockchip: vop: set vop enabled after enable iommu<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm/rockchip: vop: power off until vop standby take effect<br>
    <br>
    &nbsp;drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c |&nbsp;&nbsp;&nbsp; 2 +-<br>
    &nbsp;drivers/gpu/drm/rockchip/rockchip_drm_gem.c&nbsp;&nbsp; |&nbsp;&nbsp; 17 ++--<br>
    &nbsp;drivers/gpu/drm/rockchip/rockchip_drm_gem.h&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; 3 +-<br>
    &nbsp;drivers/gpu/drm/rockchip/rockchip_drm_vop.c&nbsp;&nbsp; |&nbsp; 118
    ++++++++++++++++++-------<br>
    &nbsp;4 files changed, 102 insertions(+), 38 deletions(-)<br>
    <br>
    <pre class="moz-signature" cols="72">-- 
Mark
<a class="moz-txt-link-abbreviated" href="mailto:E-mail:mark.yao@rock-chips.com">E-mail:mark.yao@rock-chips.com</a> </pre>
  </body>
</html>

--------------080803020502050609020606--

--===============1113487727==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

--===============1113487727==--
