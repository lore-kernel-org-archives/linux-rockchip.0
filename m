From: =?UTF-8?q?=C3=98rjan=20Eide?= <orjan.eide@arm.com>
Subject: [PATCH 2/2] ARM: DMA: Use vm_pgoff for IOMMU mmap
Date: Thu, 16 Apr 2015 16:41:52 +0200
Message-ID: <1429195312-25898-2-git-send-email-orjan.eide@arm.com>
References: <1429195312-25898-1-git-send-email-orjan.eide@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1429195312-25898-1-git-send-email-orjan.eide@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc: djkurtz@chromium.org
List-Id: linux-rockchip.vger.kernel.org

arm_iommu_mmap_attrs() ignores the page offset in vma->vm_pgoff that wa=
s
specified in the mmap call. Any user of dma_mmap_* will get an
unexpected result when the device uses the IOMMU DMA ops.

Some DRM driver that use dma_mmap_* seems to depend on it ignoring
vma->vm_pgoff.  Both the Samsung Exynos DRM driver before v3.18, and th=
e
current Rockchip DRM driver, use the page offset to pass GEM cookies
that are used to look up the GEM buffers and then call dma_mmap_attrs()
with the cookie value still in vma->vm_pgoff.

rockchip_gem_mmap_buf() in drivers/gpu/drm/rockchip/rockchip_drm_gem.c
still does this. It should be fixed before fixing
arm_iommu_mmap_attrs().

Signed-off-by: =C3=98rjan Eide <orjan.eide@arm.com>
---
 arch/arm/mm/dma-mapping.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index c274476..07d571b 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -1364,6 +1364,9 @@ static int arm_iommu_mmap_attrs(struct device *de=
v, struct vm_area_struct *vma,
 {
 	unsigned long uaddr =3D vma->vm_start;
 	unsigned long usize =3D vma->vm_end - vma->vm_start;
+	unsigned long nr_vma_pages =3D usize >> PAGE_SHIFT;
+	unsigned long nr_pages =3D PAGE_ALIGN(size) >> PAGE_SHIFT;
+	unsigned long off =3D vma->vm_pgoff;
 	struct page **pages =3D __iommu_get_pages(cpu_addr, attrs);
=20
 	vma->vm_page_prot =3D __get_dma_pgprot(attrs, vma->vm_page_prot);
@@ -1371,6 +1374,11 @@ static int arm_iommu_mmap_attrs(struct device *d=
ev, struct vm_area_struct *vma,
 	if (!pages)
 		return -ENXIO;
=20
+	if (off >=3D nr_pages || nr_vma_pages > (nr_pages - off))
+		return -ENXIO;
+
+	pages +=3D off;
+
 	do {
 		int ret =3D vm_insert_page(vma, uaddr, *pages++);
 		if (ret) {
--=20
1.9.1
