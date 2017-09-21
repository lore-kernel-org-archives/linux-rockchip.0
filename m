From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: Fix uninitialized use of ret
Date: Thu, 21 Sep 2017 09:03:19 +0800
Message-ID: <3163442d-356a-4000-f15b-74391b79188f@rock-chips.com>
References: <20170921001408.1839-1-seanpaul@chromium.org>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1183353059=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20170921001408.1839-1-seanpaul@chromium.org>
Content-Language: en-US
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Sean Paul <seanpaul@chromium.org>, dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This is a multi-part message in MIME format.
--===============1183353059==
Content-Type: multipart/alternative;
 boundary="------------C5813E38BD1EAE2335E1ED3E"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C5813E38BD1EAE2335E1ED3E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2017年09月21日 08:13, Sean Paul wrote:
> If there are no children for lvds, ret is used uninitialized. This patch
> initializes ret and returns an error if the port has no children.
>
> Fixes: 34cc0aa25456 ("drm/rockchip: Add support for Rockchip Soc LVDS")
> Cc: Mark Yao <mark.yao@rock-chips.com>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Sandy Huang <hjc@rock-chips.com>
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> ---
>   drivers/gpu/drm/rockchip/rockchip_lvds.c | 9 +++++++--
>   1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
> index c5fbe533796c..0ce6205d8d80 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
> @@ -346,7 +346,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
>   	struct drm_connector *connector;
>   	struct device_node *remote = NULL;
>   	struct device_node  *port, *endpoint;
> -	int ret;
> +	int ret = 0, child_count = 0;
>   	const char *name;
>   	u32 endpoint_id;
>   
> @@ -358,13 +358,18 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
>   		return -EINVAL;
>   	}
>   	for_each_child_of_node(port, endpoint) {
> +		child_count++;
>   		of_property_read_u32(endpoint, "reg", &endpoint_id);
>   		ret = drm_of_find_panel_or_bridge(dev->of_node, 1, endpoint_id,
>   						  &lvds->panel, &lvds->bridge);
>   		if (!ret)
>   			break;
>   	}
> -	if (ret) {
> +	if (!child_count) {
> +		DRM_DEV_ERROR(dev, "lvds port does not have any children\n");
> +		ret  = -EINVAL;

Double space on "ret  =", except this, looks good for me.
Reviewed-by: Mark Yao <mark.yao@rock-chips.com>

> +		goto err_put_port;
> +	} else if (ret) {
>   		DRM_DEV_ERROR(dev, "failed to find panel and bridge node\n");
>   		ret  = -EPROBE_DEFER;
>   		goto err_put_port;


-- 
Ｍark Yao


--------------C5813E38BD1EAE2335E1ED3E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 2017年09月21日 08:13, Sean Paul wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20170921001408.1839-1-seanpaul@chromium.org">
      <pre wrap="">If there are no children for lvds, ret is used uninitialized. This patch
initializes ret and returns an error if the port has no children.

Fixes: 34cc0aa25456 ("drm/rockchip: Add support for Rockchip Soc LVDS")
Cc: Mark Yao <a class="moz-txt-link-rfc2396E" href="mailto:mark.yao@rock-chips.com">&lt;mark.yao@rock-chips.com&gt;</a>
Cc: Heiko Stuebner <a class="moz-txt-link-rfc2396E" href="mailto:heiko@sntech.de">&lt;heiko@sntech.de&gt;</a>
Cc: Sandy Huang <a class="moz-txt-link-rfc2396E" href="mailto:hjc@rock-chips.com">&lt;hjc@rock-chips.com&gt;</a>
Cc: <a class="moz-txt-link-abbreviated" href="mailto:dri-devel@lists.freedesktop.org">dri-devel@lists.freedesktop.org</a>
Cc: <a class="moz-txt-link-abbreviated" href="mailto:linux-arm-kernel@lists.infradead.org">linux-arm-kernel@lists.infradead.org</a>
Cc: <a class="moz-txt-link-abbreviated" href="mailto:linux-rockchip@lists.infradead.org">linux-rockchip@lists.infradead.org</a>
Signed-off-by: Sean Paul <a class="moz-txt-link-rfc2396E" href="mailto:seanpaul@chromium.org">&lt;seanpaul@chromium.org&gt;</a>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index c5fbe533796c..0ce6205d8d80 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -346,7 +346,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 	struct drm_connector *connector;
 	struct device_node *remote = NULL;
 	struct device_node  *port, *endpoint;
-	int ret;
+	int ret = 0, child_count = 0;
 	const char *name;
 	u32 endpoint_id;
 
@@ -358,13 +358,18 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 		return -EINVAL;
 	}
 	for_each_child_of_node(port, endpoint) {
+		child_count++;
 		of_property_read_u32(endpoint, "reg", &amp;endpoint_id);
 		ret = drm_of_find_panel_or_bridge(dev-&gt;of_node, 1, endpoint_id,
 						  &amp;lvds-&gt;panel, &amp;lvds-&gt;bridge);
 		if (!ret)
 			break;
 	}
-	if (ret) {
+	if (!child_count) {
+		DRM_DEV_ERROR(dev, "lvds port does not have any children\n");
+		ret  = -EINVAL;</pre>
    </blockquote>
    <br>
    Double space on "ret  =",  <span style="color: rgb(51, 51, 51);
      font-family: arial; font-size: 18px; font-style: normal;
      font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: start; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); text-decoration-style: initial; text-decoration-color:
      initial; display: inline !important; float: none;">except this,
      looks good for me.<br>
      Reviewed-by: Mark Yao <a class="moz-txt-link-rfc2396E" href="mailto:mark.yao@rock-chips.com">&lt;mark.yao@rock-chips.com&gt;</a><br>
    </span><br>
    <blockquote type="cite"
      cite="mid:20170921001408.1839-1-seanpaul@chromium.org">
      <pre wrap="">
+		goto err_put_port;
+	} else if (ret) {
 		DRM_DEV_ERROR(dev, "failed to find panel and bridge node\n");
 		ret  = -EPROBE_DEFER;
 		goto err_put_port;
</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="999999">-- 
Ｍark Yao</pre>
  </body>
</html>

--------------C5813E38BD1EAE2335E1ED3E--


--===============1183353059==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============1183353059==--
