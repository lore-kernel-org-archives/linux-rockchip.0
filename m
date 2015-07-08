From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: use drm_gem_mmap helpers
Date: Wed, 08 Jul 2015 12:06:53 +0800
Message-ID: <559CA1DD.9070905@rock-chips.com>
References: <1436259816-31090-1-git-send-email-djkurtz@chromium.org>
 <20150707120433.GO7568@phenom.ffwll.local>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1460581314=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20150707120433.GO7568@phenom.ffwll.local>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Daniel Kurtz <djkurtz@chromium.org>, Kees Cook <keescook@chromium.org>, Douglas Anderson <dianders@chromium.org>, stable@vger.kernel.org, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, open@263.net, list@263.net, DRM DRIVERS FOR ROCKCHIP <dri-devel@lists.freedesktop.org>, moderated@263.netlist@263.net, ARM/Rockchip SoC support <linux-arm-kernel@lists.infradead.org>open@263.netlist@263.net, ARM/Rockchip SoC support <linux-rockchip@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

This is a multi-part message in MIME format.
--===============1460581314==
Content-Type: multipart/alternative;
 boundary="------------070806030405060000000303"

This is a multi-part message in MIME format.
--------------070806030405060000000303
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2015=E5=B9=B407=E6=9C=8807=E6=97=A5 20:04, Daniel Vetter wrote:
> On Tue, Jul 07, 2015 at 05:03:36PM +0800, Daniel Kurtz wrote:
>> Rather than (incompletely [0]) re-implementing drm_gem_mmap() and
>> drm_gem_mmap_obj() helpers, call them directly from the rockchip mmap
>> routines.
>>
>> Once the core functions return successfully, the rockchip mmap routine=
s
>> can still use dma_mmap_attrs() to simply mmap the entire buffer.
>>
>> [0] Previously, we were performing the mmap() without first taking a
>> reference on the underlying gem buffer.  This could leak ptes if the g=
em
>> object is destroyed while userspace is still holding the mapping.
>>
>> Signed-off-by: Daniel Kurtz <djkurtz@chromium.org>
>> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
>> Cc: stable@vger.kernel.org
> Applied to topic/drm-fixes to make sure it won't get lost, but I expect
> rockchip maintainers to pick this one up.
> -Daniel
I try to pick this patch up, but found it conflicts with patch [0].  Can=20
you fix it?

[0]https://patchwork.kernel.org/patch/6226591/

-Mark
>> ---
>>   drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 67 +++++++++++++++----=
----------
>>   1 file changed, 34 insertions(+), 33 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu=
/drm/rockchip/rockchip_drm_gem.c
>> index eb2282c..eba5f8a 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
>> @@ -54,55 +54,56 @@ static void rockchip_gem_free_buf(struct rockchip_=
gem_object *rk_obj)
>>   		       &rk_obj->dma_attrs);
>>   }
>>  =20
>> -int rockchip_gem_mmap_buf(struct drm_gem_object *obj,
>> -			  struct vm_area_struct *vma)
>> +static int rockchip_drm_gem_object_mmap(struct drm_gem_object *obj,
>> +					struct vm_area_struct *vma)
>> +
>>   {
>> +	int ret;
>>   	struct rockchip_gem_object *rk_obj =3D to_rockchip_obj(obj);
>>   	struct drm_device *drm =3D obj->dev;
>> -	unsigned long vm_size;
>>  =20
>> -	vma->vm_flags |=3D VM_IO | VM_DONTEXPAND | VM_DONTDUMP;
>> -	vm_size =3D vma->vm_end - vma->vm_start;
>> -
>> -	if (vm_size > obj->size)
>> -		return -EINVAL;
>> +	/*
>> +	 * dma_alloc_attrs() allocated a struct page table for rk_obj, so cl=
ear
>> +	 * VM_PFNMAP flag that was set by drm_gem_mmap_obj()/drm_gem_mmap().
>> +	 */
>> +	vma->vm_flags &=3D ~VM_PFNMAP;
>>  =20
>> -	return dma_mmap_attrs(drm->dev, vma, rk_obj->kvaddr, rk_obj->dma_add=
r,
>> +	ret =3D dma_mmap_attrs(drm->dev, vma, rk_obj->kvaddr, rk_obj->dma_ad=
dr,
>>   			     obj->size, &rk_obj->dma_attrs);
>> +	if (ret)
>> +		drm_gem_vm_close(vma);
>> +
>> +	return ret;
>>   }
>>  =20
>> -/* drm driver mmap file operations */
>> -int rockchip_gem_mmap(struct file *filp, struct vm_area_struct *vma)
>> +int rockchip_gem_mmap_buf(struct drm_gem_object *obj,
>> +			  struct vm_area_struct *vma)
>>   {
>> -	struct drm_file *priv =3D filp->private_data;
>> -	struct drm_device *dev =3D priv->minor->dev;
>> -	struct drm_gem_object *obj;
>> -	struct drm_vma_offset_node *node;
>> +	struct drm_device *drm =3D obj->dev;
>>   	int ret;
>>  =20
>> -	if (drm_device_is_unplugged(dev))
>> -		return -ENODEV;
>> +	mutex_lock(&drm->struct_mutex);
>> +	ret =3D drm_gem_mmap_obj(obj, obj->size, vma);
>> +	mutex_unlock(&drm->struct_mutex);
>> +	if (ret)
>> +		return ret;
>>  =20
>> -	mutex_lock(&dev->struct_mutex);
>> +	return rockchip_drm_gem_object_mmap(obj, vma);
>> +}
>>  =20
>> -	node =3D drm_vma_offset_exact_lookup(dev->vma_offset_manager,
>> -					   vma->vm_pgoff,
>> -					   vma_pages(vma));
>> -	if (!node) {
>> -		mutex_unlock(&dev->struct_mutex);
>> -		DRM_ERROR("failed to find vma node.\n");
>> -		return -EINVAL;
>> -	} else if (!drm_vma_node_is_allowed(node, filp)) {
>> -		mutex_unlock(&dev->struct_mutex);
>> -		return -EACCES;
>> -	}
>> +/* drm driver mmap file operations */
>> +int rockchip_gem_mmap(struct file *filp, struct vm_area_struct *vma)
>> +{
>> +	struct drm_gem_object *obj;
>> +	int ret;
>>  =20
>> -	obj =3D container_of(node, struct drm_gem_object, vma_node);
>> -	ret =3D rockchip_gem_mmap_buf(obj, vma);
>> +	ret =3D drm_gem_mmap(filp, vma);
>> +	if (ret)
>> +		return ret;
>>  =20
>> -	mutex_unlock(&dev->struct_mutex);
>> +	obj =3D vma->vm_private_data;
>>  =20
>> -	return ret;
>> +	return rockchip_drm_gem_object_mmap(obj, vma);
>>   }
>>  =20
>>   struct rockchip_gem_object *
>> --=20
>> 2.4.3.573.g4eafbef
>>


--=20
=EF=BC=ADark


--------------070806030405060000000303
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3DUTF-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 2015=E5=B9=B407=E6=9C=8807=E6=97=A5=
 20:04, Daniel Vetter
      wrote:<br>
    </div>
    <blockquote cite=3D"mid:20150707120433.GO7568@phenom.ffwll.local"
      type=3D"cite">
      <pre wrap=3D"">On Tue, Jul 07, 2015 at 05:03:36PM +0800, Daniel Kur=
tz wrote:
</pre>
      <blockquote type=3D"cite">
        <pre wrap=3D"">Rather than (incompletely [0]) re-implementing drm=
_gem_mmap() and
drm_gem_mmap_obj() helpers, call them directly from the rockchip mmap
routines.

Once the core functions return successfully, the rockchip mmap routines
can still use dma_mmap_attrs() to simply mmap the entire buffer.

[0] Previously, we were performing the mmap() without first taking a
reference on the underlying gem buffer.  This could leak ptes if the gem
object is destroyed while userspace is still holding the mapping.

Signed-off-by: Daniel Kurtz <a class=3D"moz-txt-link-rfc2396E" href=3D"ma=
ilto:djkurtz@chromium.org">&lt;djkurtz@chromium.org&gt;</a>
Reviewed-by: Daniel Vetter <a class=3D"moz-txt-link-rfc2396E" href=3D"mai=
lto:daniel.vetter@ffwll.ch">&lt;daniel.vetter@ffwll.ch&gt;</a>
Cc: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:stable@vger.kern=
el.org">stable@vger.kernel.org</a>
</pre>
      </blockquote>
      <pre wrap=3D"">
Applied to topic/drm-fixes to make sure it won't get lost, but I expect
rockchip maintainers to pick this one up.
-Daniel
</pre>
    </blockquote>
    I try to pick this patch up, but found it
    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
    conflicts with patch [0].=C2=A0 Can you fix it?<br>
    <br>
    <pre wrap=3D"">[0] <a class=3D"moz-txt-link-freetext" href=3D"https:/=
/patchwork.kernel.org/patch/6226591/">https://patchwork.kernel.org/patch/=
6226591/</a></pre>
    -Mark<br>
    <blockquote cite=3D"mid:20150707120433.GO7568@phenom.ffwll.local"
      type=3D"cite">
      <blockquote type=3D"cite">
        <pre wrap=3D"">
---
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 67 +++++++++++++++--------=
------
 1 file changed, 34 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/dr=
m/rockchip/rockchip_drm_gem.c
index eb2282c..eba5f8a 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -54,55 +54,56 @@ static void rockchip_gem_free_buf(struct rockchip_gem=
_object *rk_obj)
 		       &amp;rk_obj-&gt;dma_attrs);
 }
=20
-int rockchip_gem_mmap_buf(struct drm_gem_object *obj,
-			  struct vm_area_struct *vma)
+static int rockchip_drm_gem_object_mmap(struct drm_gem_object *obj,
+					struct vm_area_struct *vma)
+
 {
+	int ret;
 	struct rockchip_gem_object *rk_obj =3D to_rockchip_obj(obj);
 	struct drm_device *drm =3D obj-&gt;dev;
-	unsigned long vm_size;
=20
-	vma-&gt;vm_flags |=3D VM_IO | VM_DONTEXPAND | VM_DONTDUMP;
-	vm_size =3D vma-&gt;vm_end - vma-&gt;vm_start;
-
-	if (vm_size &gt; obj-&gt;size)
-		return -EINVAL;
+	/*
+	 * dma_alloc_attrs() allocated a struct page table for rk_obj, so clear
+	 * VM_PFNMAP flag that was set by drm_gem_mmap_obj()/drm_gem_mmap().
+	 */
+	vma-&gt;vm_flags &amp;=3D ~VM_PFNMAP;
=20
-	return dma_mmap_attrs(drm-&gt;dev, vma, rk_obj-&gt;kvaddr, rk_obj-&gt;d=
ma_addr,
+	ret =3D dma_mmap_attrs(drm-&gt;dev, vma, rk_obj-&gt;kvaddr, rk_obj-&gt;=
dma_addr,
 			     obj-&gt;size, &amp;rk_obj-&gt;dma_attrs);
+	if (ret)
+		drm_gem_vm_close(vma);
+
+	return ret;
 }
=20
-/* drm driver mmap file operations */
-int rockchip_gem_mmap(struct file *filp, struct vm_area_struct *vma)
+int rockchip_gem_mmap_buf(struct drm_gem_object *obj,
+			  struct vm_area_struct *vma)
 {
-	struct drm_file *priv =3D filp-&gt;private_data;
-	struct drm_device *dev =3D priv-&gt;minor-&gt;dev;
-	struct drm_gem_object *obj;
-	struct drm_vma_offset_node *node;
+	struct drm_device *drm =3D obj-&gt;dev;
 	int ret;
=20
-	if (drm_device_is_unplugged(dev))
-		return -ENODEV;
+	mutex_lock(&amp;drm-&gt;struct_mutex);
+	ret =3D drm_gem_mmap_obj(obj, obj-&gt;size, vma);
+	mutex_unlock(&amp;drm-&gt;struct_mutex);
+	if (ret)
+		return ret;
=20
-	mutex_lock(&amp;dev-&gt;struct_mutex);
+	return rockchip_drm_gem_object_mmap(obj, vma);
+}
=20
-	node =3D drm_vma_offset_exact_lookup(dev-&gt;vma_offset_manager,
-					   vma-&gt;vm_pgoff,
-					   vma_pages(vma));
-	if (!node) {
-		mutex_unlock(&amp;dev-&gt;struct_mutex);
-		DRM_ERROR("failed to find vma node.\n");
-		return -EINVAL;
-	} else if (!drm_vma_node_is_allowed(node, filp)) {
-		mutex_unlock(&amp;dev-&gt;struct_mutex);
-		return -EACCES;
-	}
+/* drm driver mmap file operations */
+int rockchip_gem_mmap(struct file *filp, struct vm_area_struct *vma)
+{
+	struct drm_gem_object *obj;
+	int ret;
=20
-	obj =3D container_of(node, struct drm_gem_object, vma_node);
-	ret =3D rockchip_gem_mmap_buf(obj, vma);
+	ret =3D drm_gem_mmap(filp, vma);
+	if (ret)
+		return ret;
=20
-	mutex_unlock(&amp;dev-&gt;struct_mutex);
+	obj =3D vma-&gt;vm_private_data;
=20
-	return ret;
+	return rockchip_drm_gem_object_mmap(obj, vma);
 }
=20
 struct rockchip_gem_object *
--=20
2.4.3.573.g4eafbef

</pre>
      </blockquote>
      <pre wrap=3D"">
</pre>
    </blockquote>
    <br>
    <br>
    <pre class=3D"moz-signature" cols=3D"72">--=20
=EF=BC=ADark</pre>
  </body>
</html>

--------------070806030405060000000303--


--===============1460581314==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

--===============1460581314==--
