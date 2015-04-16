From: =?UTF-8?q?=C3=98rjan=20Eide?= <orjan.eide@arm.com>
Subject: [PATCH 1/2] drm: rockchip: Don't pass DRM fake offset to dma-api
Date: Thu, 16 Apr 2015 16:41:51 +0200
Message-ID: <1429195312-25898-1-git-send-email-orjan.eide@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc: djkurtz@chromium.org
List-Id: linux-rockchip.vger.kernel.org

Set vm_pgoff to 0 after using it to look up the GEM node, before passin=
g
it on rockchip_gem_mmap_buf() where the offset must be from the start o=
f
the buffer.

Passing in the fake offset currently works because the
dma_mmap_attrs implementation that is used for this device,
arm_iommu_mmap_attrs, ignores the offset completely.

Signed-off-by: =C3=98rjan Eide <orjan.eide@arm.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/=
drm/rockchip/rockchip_drm_gem.c
index 7ca8799e..69f01c3 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -94,6 +94,11 @@ int rockchip_gem_mmap(struct file *filp, struct vm_a=
rea_struct *vma)
 		return -EACCES;
 	}
=20
+	/* Set vm_pgoff (used as a fake buffer offset by DRM) to 0 and map th=
e
+	 * whole buffer from the start.
+	 */
+	vma->vm_pgoff =3D 0;
+
 	obj =3D container_of(node, struct drm_gem_object, vma_node);
 	ret =3D rockchip_gem_mmap_buf(obj, vma);
=20
--=20
1.9.1
