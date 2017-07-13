From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH v2 4/5] drm/rockchip: vop: add a series of vop support
Date: Thu, 13 Jul 2017 09:31:48 +0800
Message-ID: <5966CD84.4040901@rock-chips.com>
References: <1499824991-7391-1-git-send-email-mark.yao@rock-chips.com>
 <1499825034-7604-1-git-send-email-mark.yao@rock-chips.com>
 <20170712183358.7n4vspuygiuu6era@art_vandelay>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0108273350=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20170712183358.7n4vspuygiuu6era@art_vandelay>
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

--===============0108273350==
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 2017年07月13日 02:33, Sean Paul wrote:<br>
    </div>
    <blockquote cite="mid:20170712183358.7n4vspuygiuu6era@art_vandelay"
      type="cite">
      <pre wrap="">On Wed, Jul 12, 2017 at 10:03:54AM +0800, Mark Yao wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Vop Full framework now has following vops:
IP version    chipname
  3.1           rk3288
  3.2           rk3368
  3.4           rk3366
  3.5           rk3399 big
  3.6           rk3399 lit
</pre>
      </blockquote>
      <pre wrap="">
Below you say little vop is major == 2, but you have major == 3 here.</pre>
    </blockquote>
    <br>
    "RK3399 lit" is a full design vop framework, just cut down some
    feature from rk3399 big design, so it's IP major is 3.<br>
    <br>
    the little vop is rk3066, rk3188, rk3036, etc.<br>
    <br>
    <blockquote cite="mid:20170712183358.7n4vspuygiuu6era@art_vandelay"
      type="cite">
      <pre wrap="">

</pre>
      <blockquote type="cite">
        <pre wrap="">  3.7           rk3228
  3.8           rk3328

The above IP version is from H/W define, some of vop support get
the IP version from VERSION_INFO register, some are not.
hardcode the IP version for each vop to identify them.

major version: used for IP structure, Vop full framework is 3,
               vop little framework is 2.
minor version: on same structure, newer design vop will bigger
               then old one.

Changes in v2:
- rename rk322x to rk3228(Heiko Stübner)
- correct some vop registers define

Signed-off-by: Mark Yao <a class="moz-txt-link-rfc2396E" href="mailto:mark.yao@rock-chips.com">&lt;mark.yao@rock-chips.com&gt;</a>
---
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 202 +++++--
 drivers/gpu/drm/rockchip/rockchip_vop_reg.h | 905 ++++++++++++++++++++++------
 2 files changed, 863 insertions(+), 244 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index 159cedf..b33483c 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -211,6 +211,7 @@
 	.standby = VOP_REG(RK3288_SYS_CTRL, 0x1, 22),
 	.gate_en = VOP_REG(RK3288_SYS_CTRL, 0x1, 23),
 	.mmu_en = VOP_REG(RK3288_SYS_CTRL, 0x1, 20),
+	.dp_en = VOP_REG_VER(RK3399_SYS_CTRL, 0x1, 11, 3, 5, -1),
 	.rgb_en = VOP_REG(RK3288_SYS_CTRL, 0x1, 12),
 	.hdmi_en = VOP_REG(RK3288_SYS_CTRL, 0x1, 13),
 	.edp_en = VOP_REG(RK3288_SYS_CTRL, 0x1, 14),
@@ -220,14 +221,19 @@
 	.data_blank = VOP_REG(RK3288_DSP_CTRL0, 0x1, 19),
 	.dsp_blank = VOP_REG(RK3288_DSP_CTRL0, 0x3, 18),
 	.out_mode = VOP_REG(RK3288_DSP_CTRL0, 0xf, 0),
-	.pin_pol = VOP_REG(RK3288_DSP_CTRL0, 0xf, 4),
+	.pin_pol = VOP_REG_VER(RK3288_DSP_CTRL0, 0xf, 4, 3, 0, 1),
+	.dp_pin_pol = VOP_REG_VER(RK3399_DSP_CTRL1, 0xf, 16, 3, 5, -1),
+	.rgb_pin_pol = VOP_REG_VER(RK3368_DSP_CTRL1, 0xf, 16, 3, 2, -1),
+	.hdmi_pin_pol = VOP_REG_VER(RK3368_DSP_CTRL1, 0xf, 20, 3, 2, -1),
+	.edp_pin_pol = VOP_REG_VER(RK3368_DSP_CTRL1, 0xf, 24, 3, 2, -1),
+	.mipi_pin_pol = VOP_REG_VER(RK3368_DSP_CTRL1, 0xf, 28, 3, 2, -1),
 	.htotal_pw = VOP_REG(RK3288_DSP_HTOTAL_HS_END, 0x1fff1fff, 0),
 	.hact_st_end = VOP_REG(RK3288_DSP_HACT_ST_END, 0x1fff1fff, 0),
 	.vtotal_pw = VOP_REG(RK3288_DSP_VTOTAL_VS_END, 0x1fff1fff, 0),
 	.vact_st_end = VOP_REG(RK3288_DSP_VACT_ST_END, 0x1fff1fff, 0),
 	.hpost_st_end = VOP_REG(RK3288_POST_DSP_HACT_INFO, 0x1fff1fff, 0),
 	.vpost_st_end = VOP_REG(RK3288_POST_DSP_VACT_INFO, 0x1fff1fff, 0),
-	.global_regdone_en = VOP_REG(RK3288_SYS_CTRL, 0x1, 11),
+	.global_regdone_en = VOP_REG_VER(RK3288_SYS_CTRL, 0x1, 11, 3, 2, -1),
 	.cfg_done = VOP_REG(RK3288_REG_CFG_DONE, 0x1, 0),
</pre>
      </blockquote>
      <pre wrap="">
I'm not really convinced VOP_REG_VER is a good idea. In the case of dp_en and
pin_pol, the register is already used for different offsets, so presumably
you're writing into don't care offsets?</pre>
    </blockquote>
    <br>
    VOP_REG_VER control when the register works.<br>
    for pin_pol, it only works on version(3.0 - 3.1),  rk3288, it's
    dummy operate on other chips.<br>
    for dp_en, it works on version (3.5 - bigger), rk3399 big, rk3399
    lit, rk322x, etc.<br>
    it's dummy operate on rk3288, rk3368.<br>
    <br>
    Using VOP_REG means the register works on all platform,  Using
    VOP_REG_VER means only can use on some platform.<br>
    <br>
    So don't worry about writing wrong offsets, the register would be
    dummy on un-support platform.<br>
    <blockquote cite="mid:20170712183358.7n4vspuygiuu6era@art_vandelay"
      type="cite">
      <pre wrap="">

In the other cases, it just looks like a few new registers added for 3368 and
3399. In this scenario, I don't think it's that bad to just have separate
structs for each version that has distinct features. There's going to be more
duplication, but then it's super easy to understand which platform has which
registers.</pre>
    </blockquote>
    <br>
    separate
    structs is TODO on my plan, separate with control, modesetting, etc.<br>
    but many register has no a clean group define, and need rewrite
    write/read ops,<br>
    need handle conflict for each platform.<br>
    <br>
    And I think  VOP_REG_VER mechanism can both works with separate
    structs.
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <br>
    <br>
    <blockquote cite="mid:20170712183358.7n4vspuygiuu6era@art_vandelay"
      type="cite">
      <pre wrap="">

The whole versioning system is a little strange. For example, is each version
guaranteed to have the registered defined for the previous version (ie: 3.6
contains all registers defined for 3.5)?</pre>
    </blockquote>
    <br>
    Mostly, new version will contains all register of previous, if some
    register only support on old version,<br>
    example, pin_pol, only support on rk3288, use VOP_REG_VER limit it
    only can work on 3288.<br>
    so it's no problem for this case.<br>
    <br>
    And If newer design vop actually have many register difference, no
    possible to using VOP_REG_VER,<br>
    example rk3328, that means we need create a new register table for
    it.<br>
    <br>
    <blockquote cite="mid:20170712183358.7n4vspuygiuu6era@art_vandelay"
      type="cite">
      <pre wrap="">

Sean</pre>
    </blockquote>
    <br>
    <br>
    Using VOP_REG_VER is to solved tiny difference registers on same vop
    design, then those<br>
    vop can reuse register table. after that we can easy found what
    register difference<br>
    for those same design vop from register table.<br>
    <br>
    H/W design always do that on design update: fix bugs and add new
    feature, <br>
    With register table reusing, if we add a new feature for old design,
    all the newer design<br>
    will get benefit.<br>
    <br>
    <blockquote cite="mid:20170712183358.7n4vspuygiuu6era@art_vandelay"
      type="cite">
      <pre wrap="">


&lt;snip&gt;

</pre>
      <blockquote type="cite">
        <pre wrap="">-- 
1.9.1


_______________________________________________
dri-devel mailing list
<a class="moz-txt-link-abbreviated" href="mailto:dri-devel@lists.freedesktop.org">dri-devel@lists.freedesktop.org</a>
<a class="moz-txt-link-freetext" href="https://lists.freedesktop.org/mailman/listinfo/dri-devel">https://lists.freedesktop.org/mailman/listinfo/dri-devel</a>
</pre>
      </blockquote>
      <pre wrap="">
</pre>
    </blockquote>
    <br>
    <br>
    <pre class="moz-signature" cols="999999">-- 
Ｍark Yao</pre>
  </body>
</html>


--===============0108273350==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============0108273350==--
