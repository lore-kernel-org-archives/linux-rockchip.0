From: Nickey Yang <nickey.yang@rock-chips.com>
Subject: Re: [PATCH v4 1/3] drm/bridge/synopsys: dsi: stop clobbering drvdata
Date: Fri, 1 Dec 2017 17:11:28 +0800
Message-ID: <c6a53132-1ee3-00be-d52d-218560c07975@rock-chips.com>
References: <1512100685-4015-1-git-send-email-nickey.yang@rock-chips.com>
 <1512100685-4015-2-git-send-email-nickey.yang@rock-chips.com>
 <5605c3c2-56ad-2289-c3c0-78cde1152123@st.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1598405902=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <5605c3c2-56ad-2289-c3c0-78cde1152123@st.com>
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
To: Philippe CORNU <philippe.cornu@st.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>, "mark.rutland@arm.com" <mark.rutland@arm.com>, "airlied@linux.ie" <airlied@linux.ie>
Cc: "hl@rock-chips.com" <hl@rock-chips.com>, "briannorris@chromium.org" <briannorris@chromium.org>, "hoegsberg@gmail.com" <hoegsberg@gmail.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Yannick FERTRE <yannick.fertre@st.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "mka@chromium.org" <mka@chromium.org>, "laurent.pinchart@ideasonboard.com" <laurent.pinchart@ideasonboard.com>, "zyw@rock-chips.com" <zyw@rock-chips.com>, "xbl@rock-chips.com" <xbl@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

This is a multi-part message in MIME format.
--===============1598405902==
Content-Type: multipart/alternative;
 boundary="------------48565D8C7FF0B4522E3893F2"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------48565D8C7FF0B4522E3893F2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Philippe,


On 2017年12月01日 16:32, Philippe CORNU wrote:
> Dear Nickey,
>
> Many thanks for your patch.
>
> I am sorry to say that but you can not add my "Acked-by" to this patch
> because this code is different from the "original" one from Brian (which
> got my "Acked-by").
I'm sorry I didn't think much about it, Thank you for correcting me.
> Sometimes it is not an issue because differences are not important but
> in this particular case, the code is really different: you have remove
> platform_set_drvdata() & platform_get_drvdata() in the stm part.
>
> Could you please go back to the original code or propose me an updated
> version of this code.
Could you help update new version of this code(stm part) and then test on
stm platform?

Thanks,
Nickey.
>
> Many thanks,
>
> Philippe :-)
>
>
> On 12/01/2017 04:58 AM, Nickey Yang wrote:
>> From: Brian Norris <briannorris@chromium.org>
>>
>> Bridge drivers/helpers shouldn't be clobbering the drvdata, since a
>> parent driver might need to own this. Instead, let's return our
>> 'dw_mipi_dsi' object and have callers pass that back to us for removal.
>>
>> Signed-off-by: Brian Norris <briannorris@chromium.org>
>> Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
>> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
>> Reviewed-by: Archit Taneja <architt@codeaurora.org>
>> Acked-by: Philippe Cornu <philippe.cornu@st.com>
>> Link:https://patchwork.kernel.org/patch/10078493/
>>
>> ---
>> Changes in v4:
>> - Add From tag,update subject line
>> - keep patch "drm/stm: dsi: Adjust dw_mipi_dsi_probe and remove"
>>     in this piece together.
>>
>>    drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 36 ++++++++++-----------------
>>    drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  8 +++---
>>    include/drm/bridge/dw_mipi_dsi.h              | 17 ++++++++-----
>>    3 files changed, 29 insertions(+), 32 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
>> index d9cca4f..c39c7dc 100644
>> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
>> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
>> @@ -922,8 +922,6 @@ static int dw_mipi_dsi_bridge_attach(struct drm_bridge *bridge)
>>    	dsi->bridge.of_node = pdev->dev.of_node;
>>    #endif
>>    
>> -	dev_set_drvdata(dev, dsi);
>> -
>>    	return dsi;
>>    }
>>    
>> @@ -935,23 +933,16 @@ static void __dw_mipi_dsi_remove(struct dw_mipi_dsi *dsi)
>>    /*
>>     * Probe/remove API, used from platforms based on the DRM bridge API.
>>     */
>> -int dw_mipi_dsi_probe(struct platform_device *pdev,
>> -		      const struct dw_mipi_dsi_plat_data *plat_data)
>> +struct dw_mipi_dsi *
>> +dw_mipi_dsi_probe(struct platform_device *pdev,
>> +		  const struct dw_mipi_dsi_plat_data *plat_data)
>>    {
>> -	struct dw_mipi_dsi *dsi;
>> -
>> -	dsi = __dw_mipi_dsi_probe(pdev, plat_data);
>> -	if (IS_ERR(dsi))
>> -		return PTR_ERR(dsi);
>> -
>> -	return 0;
>> +	return __dw_mipi_dsi_probe(pdev, plat_data);
>>    }
>>    EXPORT_SYMBOL_GPL(dw_mipi_dsi_probe);
>>    
>> -void dw_mipi_dsi_remove(struct platform_device *pdev)
>> +void dw_mipi_dsi_remove(struct dw_mipi_dsi *dsi)
>>    {
>> -	struct dw_mipi_dsi *dsi = platform_get_drvdata(pdev);
>> -
>>    	mipi_dsi_host_unregister(&dsi->dsi_host);
>>    
>>    	__dw_mipi_dsi_remove(dsi);
>> @@ -961,31 +952,30 @@ void dw_mipi_dsi_remove(struct platform_device *pdev)
>>    /*
>>     * Bind/unbind API, used from platforms based on the component framework.
>>     */
>> -int dw_mipi_dsi_bind(struct platform_device *pdev, struct drm_encoder *encoder,
>> -		     const struct dw_mipi_dsi_plat_data *plat_data)
>> +struct dw_mipi_dsi *
>> +dw_mipi_dsi_bind(struct platform_device *pdev, struct drm_encoder *encoder,
>> +		 const struct dw_mipi_dsi_plat_data *plat_data)
>>    {
>>    	struct dw_mipi_dsi *dsi;
>>    	int ret;
>>    
>>    	dsi = __dw_mipi_dsi_probe(pdev, plat_data);
>>    	if (IS_ERR(dsi))
>> -		return PTR_ERR(dsi);
>> +		return dsi;
>>    
>>    	ret = drm_bridge_attach(encoder, &dsi->bridge, NULL);
>>    	if (ret) {
>> -		dw_mipi_dsi_remove(pdev);
>> +		dw_mipi_dsi_remove(dsi);
>>    		DRM_ERROR("Failed to initialize bridge with drm\n");
>> -		return ret;
>> +		return ERR_PTR(ret);
>>    	}
>>    
>> -	return 0;
>> +	return dsi;
>>    }
>>    EXPORT_SYMBOL_GPL(dw_mipi_dsi_bind);
>>    
>> -void dw_mipi_dsi_unbind(struct device *dev)
>> +void dw_mipi_dsi_unbind(struct dw_mipi_dsi *dsi)
>>    {
>> -	struct dw_mipi_dsi *dsi = dev_get_drvdata(dev);
>> -
>>    	__dw_mipi_dsi_remove(dsi);
>>    }
>>    EXPORT_SYMBOL_GPL(dw_mipi_dsi_unbind);
>> diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
>> index e5b6310..80f9950 100644
>> --- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
>> +++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
>> @@ -66,6 +66,7 @@ enum dsi_color {
>>    struct dw_mipi_dsi_stm {
>>    	void __iomem *base;
>>    	struct clk *pllref_clk;
>> +	struct dw_mipi_dsi *dmd;
>>    };
>>    
>>    static inline void dsi_write(struct dw_mipi_dsi_stm *dsi, u32 reg, u32 val)
>> @@ -318,10 +319,11 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
>>    	dw_mipi_dsi_stm_plat_data.base = dsi->base;
>>    	dw_mipi_dsi_stm_plat_data.priv_data = dsi;
>>    
>> -	ret = dw_mipi_dsi_probe(pdev, &dw_mipi_dsi_stm_plat_data);
>> -	if (ret) {
>> +	dsi->dmd = dw_mipi_dsi_probe(pdev, &dw_mipi_dsi_stm_plat_data);
>> +	if (IS_ERR(dsi->dmd)) {
>>    		DRM_ERROR("Failed to initialize mipi dsi host\n");
>>    		clk_disable_unprepare(dsi->pllref_clk);
>> +		return PTR_ERR(dsi->dmd);
>>    	}
>>    
>>    	return ret;
>> @@ -332,7 +334,7 @@ static int dw_mipi_dsi_stm_remove(struct platform_device *pdev)
>>    	struct dw_mipi_dsi_stm *dsi = dw_mipi_dsi_stm_plat_data.priv_data;
>>    
>>    	clk_disable_unprepare(dsi->pllref_clk);
>> -	dw_mipi_dsi_remove(pdev);
>> +	dw_mipi_dsi_remove(dsi->dmd);
>>    
>>    	return 0;
>>    }
>> diff --git a/include/drm/bridge/dw_mipi_dsi.h b/include/drm/bridge/dw_mipi_dsi.h
>> index 9b30fec..d9c6d54 100644
>> --- a/include/drm/bridge/dw_mipi_dsi.h
>> +++ b/include/drm/bridge/dw_mipi_dsi.h
>> @@ -10,6 +10,8 @@
>>    #ifndef __DW_MIPI_DSI__
>>    #define __DW_MIPI_DSI__
>>    
>> +struct dw_mipi_dsi;
>> +
>>    struct dw_mipi_dsi_phy_ops {
>>    	int (*init)(void *priv_data);
>>    	int (*get_lane_mbps)(void *priv_data, struct drm_display_mode *mode,
>> @@ -29,11 +31,14 @@ struct dw_mipi_dsi_plat_data {
>>    	void *priv_data;
>>    };
>>    
>> -int dw_mipi_dsi_probe(struct platform_device *pdev,
>> -		      const struct dw_mipi_dsi_plat_data *plat_data);
>> -void dw_mipi_dsi_remove(struct platform_device *pdev);
>> -int dw_mipi_dsi_bind(struct platform_device *pdev, struct drm_encoder *encoder,
>> -		     const struct dw_mipi_dsi_plat_data *plat_data);
>> -void dw_mipi_dsi_unbind(struct device *dev);
>> +struct dw_mipi_dsi *dw_mipi_dsi_probe(struct platform_device *pdev,
>> +				      const struct dw_mipi_dsi_plat_data
>> +				      *plat_data);
>> +void dw_mipi_dsi_remove(struct dw_mipi_dsi *dsi);
>> +struct dw_mipi_dsi *dw_mipi_dsi_bind(struct platform_device *pdev,
>> +				     struct drm_encoder *encoder,
>> +				     const struct dw_mipi_dsi_plat_data
>> +				     *plat_data);
>> +void dw_mipi_dsi_unbind(struct dw_mipi_dsi *dsi);
>>    
>>    #endif /* __DW_MIPI_DSI__ */


--------------48565D8C7FF0B4522E3893F2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi Philippe,<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 2017年12月01日 16:32, Philippe CORNU
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:5605c3c2-56ad-2289-c3c0-78cde1152123@st.com">
      <pre wrap="">Dear Nickey,

Many thanks for your patch.

I am sorry to say that but you can not add my "Acked-by" to this patch 
because this code is different from the "original" one from Brian (which 
got my "Acked-by").
</pre>
    </blockquote>
    I'm sorry I didn't think much about it, Thank you for correcting me.<span
      id="w_13" class="" style="color: rgb(51, 51, 51); font-family:
      Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;,
      STHeiti, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro
      Hei&quot;, sans-serif; font-size: 14px; font-style: normal;
      font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(249, 249,
      249); text-decoration-style: initial; text-decoration-color:
      initial;"></span>
    <blockquote type="cite"
      cite="mid:5605c3c2-56ad-2289-c3c0-78cde1152123@st.com">
      <pre wrap="">
Sometimes it is not an issue because differences are not important but 
in this particular case, the code is really different: you have remove 
platform_set_drvdata() &amp; platform_get_drvdata() in the stm part.

Could you please go back to the original code or propose me an updated 
version of this code.</pre>
    </blockquote>
    Could you help update new version of this code(stm part) and then
    test on<br>
    stm platform?<br>
    <br>
    Thanks,<br>
    Nickey.<br>
    <blockquote type="cite"
      cite="mid:5605c3c2-56ad-2289-c3c0-78cde1152123@st.com">
      <pre wrap="">

Many thanks,

Philippe :-)


On 12/01/2017 04:58 AM, Nickey Yang wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">From: Brian Norris <a class="moz-txt-link-rfc2396E" href="mailto:briannorris@chromium.org">&lt;briannorris@chromium.org&gt;</a>

Bridge drivers/helpers shouldn't be clobbering the drvdata, since a
parent driver might need to own this. Instead, let's return our
'dw_mipi_dsi' object and have callers pass that back to us for removal.

Signed-off-by: Brian Norris <a class="moz-txt-link-rfc2396E" href="mailto:briannorris@chromium.org">&lt;briannorris@chromium.org&gt;</a>
Signed-off-by: Nickey Yang <a class="moz-txt-link-rfc2396E" href="mailto:nickey.yang@rock-chips.com">&lt;nickey.yang@rock-chips.com&gt;</a>
Reviewed-by: Matthias Kaehlcke <a class="moz-txt-link-rfc2396E" href="mailto:mka@chromium.org">&lt;mka@chromium.org&gt;</a>
Reviewed-by: Archit Taneja <a class="moz-txt-link-rfc2396E" href="mailto:architt@codeaurora.org">&lt;architt@codeaurora.org&gt;</a>
Acked-by: Philippe Cornu <a class="moz-txt-link-rfc2396E" href="mailto:philippe.cornu@st.com">&lt;philippe.cornu@st.com&gt;</a>
Link:<a class="moz-txt-link-freetext" href="https://patchwork.kernel.org/patch/10078493/">https://patchwork.kernel.org/patch/10078493/</a>

---
Changes in v4:
- Add From tag,update subject line
- keep patch "drm/stm: dsi: Adjust dw_mipi_dsi_probe and remove"
   in this piece together.

  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 36 ++++++++++-----------------
  drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  8 +++---
  include/drm/bridge/dw_mipi_dsi.h              | 17 ++++++++-----
  3 files changed, 29 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index d9cca4f..c39c7dc 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -922,8 +922,6 @@ static int dw_mipi_dsi_bridge_attach(struct drm_bridge *bridge)
  	dsi-&gt;bridge.of_node = pdev-&gt;dev.of_node;
  #endif
  
-	dev_set_drvdata(dev, dsi);
-
  	return dsi;
  }
  
@@ -935,23 +933,16 @@ static void __dw_mipi_dsi_remove(struct dw_mipi_dsi *dsi)
  /*
   * Probe/remove API, used from platforms based on the DRM bridge API.
   */
-int dw_mipi_dsi_probe(struct platform_device *pdev,
-		      const struct dw_mipi_dsi_plat_data *plat_data)
+struct dw_mipi_dsi *
+dw_mipi_dsi_probe(struct platform_device *pdev,
+		  const struct dw_mipi_dsi_plat_data *plat_data)
  {
-	struct dw_mipi_dsi *dsi;
-
-	dsi = __dw_mipi_dsi_probe(pdev, plat_data);
-	if (IS_ERR(dsi))
-		return PTR_ERR(dsi);
-
-	return 0;
+	return __dw_mipi_dsi_probe(pdev, plat_data);
  }
  EXPORT_SYMBOL_GPL(dw_mipi_dsi_probe);
  
-void dw_mipi_dsi_remove(struct platform_device *pdev)
+void dw_mipi_dsi_remove(struct dw_mipi_dsi *dsi)
  {
-	struct dw_mipi_dsi *dsi = platform_get_drvdata(pdev);
-
  	mipi_dsi_host_unregister(&amp;dsi-&gt;dsi_host);
  
  	__dw_mipi_dsi_remove(dsi);
@@ -961,31 +952,30 @@ void dw_mipi_dsi_remove(struct platform_device *pdev)
  /*
   * Bind/unbind API, used from platforms based on the component framework.
   */
-int dw_mipi_dsi_bind(struct platform_device *pdev, struct drm_encoder *encoder,
-		     const struct dw_mipi_dsi_plat_data *plat_data)
+struct dw_mipi_dsi *
+dw_mipi_dsi_bind(struct platform_device *pdev, struct drm_encoder *encoder,
+		 const struct dw_mipi_dsi_plat_data *plat_data)
  {
  	struct dw_mipi_dsi *dsi;
  	int ret;
  
  	dsi = __dw_mipi_dsi_probe(pdev, plat_data);
  	if (IS_ERR(dsi))
-		return PTR_ERR(dsi);
+		return dsi;
  
  	ret = drm_bridge_attach(encoder, &amp;dsi-&gt;bridge, NULL);
  	if (ret) {
-		dw_mipi_dsi_remove(pdev);
+		dw_mipi_dsi_remove(dsi);
  		DRM_ERROR("Failed to initialize bridge with drm\n");
-		return ret;
+		return ERR_PTR(ret);
  	}
  
-	return 0;
+	return dsi;
  }
  EXPORT_SYMBOL_GPL(dw_mipi_dsi_bind);
  
-void dw_mipi_dsi_unbind(struct device *dev)
+void dw_mipi_dsi_unbind(struct dw_mipi_dsi *dsi)
  {
-	struct dw_mipi_dsi *dsi = dev_get_drvdata(dev);
-
  	__dw_mipi_dsi_remove(dsi);
  }
  EXPORT_SYMBOL_GPL(dw_mipi_dsi_unbind);
diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
index e5b6310..80f9950 100644
--- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
+++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
@@ -66,6 +66,7 @@ enum dsi_color {
  struct dw_mipi_dsi_stm {
  	void __iomem *base;
  	struct clk *pllref_clk;
+	struct dw_mipi_dsi *dmd;
  };
  
  static inline void dsi_write(struct dw_mipi_dsi_stm *dsi, u32 reg, u32 val)
@@ -318,10 +319,11 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
  	dw_mipi_dsi_stm_plat_data.base = dsi-&gt;base;
  	dw_mipi_dsi_stm_plat_data.priv_data = dsi;
  
-	ret = dw_mipi_dsi_probe(pdev, &amp;dw_mipi_dsi_stm_plat_data);
-	if (ret) {
+	dsi-&gt;dmd = dw_mipi_dsi_probe(pdev, &amp;dw_mipi_dsi_stm_plat_data);
+	if (IS_ERR(dsi-&gt;dmd)) {
  		DRM_ERROR("Failed to initialize mipi dsi host\n");
  		clk_disable_unprepare(dsi-&gt;pllref_clk);
+		return PTR_ERR(dsi-&gt;dmd);
  	}
  
  	return ret;
@@ -332,7 +334,7 @@ static int dw_mipi_dsi_stm_remove(struct platform_device *pdev)
  	struct dw_mipi_dsi_stm *dsi = dw_mipi_dsi_stm_plat_data.priv_data;
  
  	clk_disable_unprepare(dsi-&gt;pllref_clk);
-	dw_mipi_dsi_remove(pdev);
+	dw_mipi_dsi_remove(dsi-&gt;dmd);
  
  	return 0;
  }
diff --git a/include/drm/bridge/dw_mipi_dsi.h b/include/drm/bridge/dw_mipi_dsi.h
index 9b30fec..d9c6d54 100644
--- a/include/drm/bridge/dw_mipi_dsi.h
+++ b/include/drm/bridge/dw_mipi_dsi.h
@@ -10,6 +10,8 @@
  #ifndef __DW_MIPI_DSI__
  #define __DW_MIPI_DSI__
  
+struct dw_mipi_dsi;
+
  struct dw_mipi_dsi_phy_ops {
  	int (*init)(void *priv_data);
  	int (*get_lane_mbps)(void *priv_data, struct drm_display_mode *mode,
@@ -29,11 +31,14 @@ struct dw_mipi_dsi_plat_data {
  	void *priv_data;
  };
  
-int dw_mipi_dsi_probe(struct platform_device *pdev,
-		      const struct dw_mipi_dsi_plat_data *plat_data);
-void dw_mipi_dsi_remove(struct platform_device *pdev);
-int dw_mipi_dsi_bind(struct platform_device *pdev, struct drm_encoder *encoder,
-		     const struct dw_mipi_dsi_plat_data *plat_data);
-void dw_mipi_dsi_unbind(struct device *dev);
+struct dw_mipi_dsi *dw_mipi_dsi_probe(struct platform_device *pdev,
+				      const struct dw_mipi_dsi_plat_data
+				      *plat_data);
+void dw_mipi_dsi_remove(struct dw_mipi_dsi *dsi);
+struct dw_mipi_dsi *dw_mipi_dsi_bind(struct platform_device *pdev,
+				     struct drm_encoder *encoder,
+				     const struct dw_mipi_dsi_plat_data
+				     *plat_data);
+void dw_mipi_dsi_unbind(struct dw_mipi_dsi *dsi);
  
  #endif /* __DW_MIPI_DSI__ */
</pre>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------48565D8C7FF0B4522E3893F2--


--===============1598405902==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============1598405902==--
