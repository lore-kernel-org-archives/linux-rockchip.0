Return-Path: <SRS0=Bn3x=DG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988EDC47435
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 15:15:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1BF8B207C4
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 15:15:06 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Um2Ym0oF"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1BF8B207C4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=95N103Qv4h6aIkEdDUi+J5JpmoQFlKNsK5hkvgHHCPc=; b=Um2Ym0oFffTBObI5qzFp668xw
	jZpuzz88gxBi/8Sw1MO46+IZuQROJLPGdpvPt/B7ipkm23V601/PRrEd7J1liPQk40ZDZDGVaoenM
	9LBs6TC84kgmlsA5X9iW7Y/iYvSpBii5vs3nwD9W83PK2QQ+cDBZwB3es7w4xoeUSI2ePUZ3+AchO
	Ckhw1YD1AKakk/Kxfjyd0Xm4cYjWIb9SHICCidAAM1vuFUD0urB0h5rP2XohftjLqexBrXVvi+dBO
	7sNlzeT9zjjWW6Tb6dSoVl4Yz82ELEcFhoubf+Z3J3c9BM8vNJCXXSiH0Qbbef3ls0fLZBEnRbo0t
	ORkfHFiLw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNHLI-0000cr-1F; Tue, 29 Sep 2020 15:15:00 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNHL6-0000Yc-8z; Tue, 29 Sep 2020 15:14:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 78C88AE85;
 Tue, 29 Sep 2020 15:14:46 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@linux.ie,
 daniel@ffwll.ch, sam@ravnborg.org, alexander.deucher@amd.com,
 christian.koenig@amd.com, kraxel@redhat.com, l.stach@pengutronix.de,
 linux+etnaviv@armlinux.org.uk, christian.gmeiner@gmail.com,
 inki.dae@samsung.com, jy0922.shim@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, krzk@kernel.org,
 yuq825@gmail.com, bskeggs@redhat.com, robh@kernel.org,
 tomeu.vizoso@collabora.com, steven.price@arm.com,
 alyssa.rosenzweig@collabora.com, hjc@rock-chips.com, heiko@sntech.de,
 hdegoede@redhat.com, sean@poorly.run, eric@anholt.net,
 oleksandr_andrushchenko@epam.com, ray.huang@amd.com,
 sumit.semwal@linaro.org, emil.velikov@collabora.com, luben.tuikov@amd.com,
 apaneers@amd.com, linus.walleij@linaro.org, melissa.srw@gmail.com,
 chris@chris-wilson.co.uk, miaoqinglang@huawei.com
Subject: [PATCH v3 7/7] drm/todo: Update entries around struct dma_buf_map
Date: Tue, 29 Sep 2020 17:14:37 +0200
Message-Id: <20200929151437.19717-8-tzimmermann@suse.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929151437.19717-1-tzimmermann@suse.de>
References: <20200929151437.19717-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200929_111448_584224_655820E0 
X-CRM114-Status: GOOD (  14.53  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-samsung-soc@vger.kernel.org, lima@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, etnaviv@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 xen-devel@lists.xenproject.org, spice-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SW5zdGFuY2VzIG9mIHN0cnVjdCBkbWFfYnVmX21hcCBzaG91bGQgYmUgdXNlZnVsIHRocm91Z2hv
dXQgRFJNJ3MKbWVtb3J5IG1hbmFnZW1lbnQgY29kZS4gRnVydGhlcm1vcmUsIHNldmVyYWwgZHJp
dmVycyBjYW4gbm93IHVzZQpnZW5lcmljIGZiZGV2IGVtdWxhdGlvbi4KClNpZ25lZC1vZmYtYnk6
IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgotLS0KIERvY3VtZW50YXRp
b24vZ3B1L3RvZG8ucnN0IHwgMjQgKysrKysrKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hh
bmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2dwdS90b2RvLnJzdCBiL0RvY3VtZW50YXRpb24vZ3B1L3RvZG8ucnN0CmluZGV4
IDM3NTFhYzk3NmMzZS4uMDIzNjI2YzE4MzdiIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2dw
dS90b2RvLnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdApAQCAtMTk3LDggKzE5
NywxMCBAQCBDb252ZXJ0IGRyaXZlcnMgdG8gdXNlIGRybV9mYmRldl9nZW5lcmljX3NldHVwKCkK
IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogCiBNb3N0
IGRyaXZlcnMgY2FuIHVzZSBkcm1fZmJkZXZfZ2VuZXJpY19zZXR1cCgpLiBEcml2ZXIgaGF2ZSB0
byBpbXBsZW1lbnQKLWF0b21pYyBtb2Rlc2V0dGluZyBhbmQgR0VNIHZtYXAgc3VwcG9ydC4gQ3Vy
cmVudCBnZW5lcmljIGZiZGV2IGVtdWxhdGlvbgotZXhwZWN0cyB0aGUgZnJhbWVidWZmZXIgaW4g
c3lzdGVtIG1lbW9yeSAob3Igc3lzdGVtLWxpa2UgbWVtb3J5KS4KK2F0b21pYyBtb2Rlc2V0dGlu
ZyBhbmQgR0VNIHZtYXAgc3VwcG9ydC4gSGlzdG9yaWNhbGx5LCBnZW5lcmljIGZiZGV2IGVtdWxh
dGlvbgorZXhwZWN0ZWQgdGhlIGZyYW1lYnVmZmVyIGluIHN5c3RlbSBtZW1vcnkgb3Igc3lzdGVt
LWxpa2UgbWVtb3J5LiBCeSBlbXBsb3lpbmcKK3N0cnVjdCBkbWFfYnVmX21hcCwgZHJpdmVycyB3
aXRoIGZyYW1idWZmZXJzIGluIEkvTyBtZW1vcnkgY2FuIGJlIHN1cHBvcnRlZAorYXMgd2VsbC4K
IAogQ29udGFjdDogTWFpbnRhaW5lciBvZiB0aGUgZHJpdmVyIHlvdSBwbGFuIHRvIGNvbnZlcnQK
IApAQCAtNDQ2LDYgKzQ0OCwyNCBAQCBDb250YWN0OiBWaWxsZSBTeXJqw6Rsw6QsIERhbmllbCBW
ZXR0ZXIKIAogTGV2ZWw6IEludGVybWVkaWF0ZQogCitVc2Ugc3RydWN0IGRtYV9idWZfbWFwIHRo
cm91Z2hvdXQgY29kZWJhc2UKKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQorCitQb2ludGVycyB0byBzaGFyZWQgZGV2aWNlIG1lbW9yeSBhcmUgc3RvcmVkIGluIHN0
cnVjdCBkbWFfYnVmX21hcC4gRWFjaAoraW5zdGFuY2Uga25vd3Mgd2hldGhlciBpdCByZWZlcnMg
dG8gc3lzdGVtIG9yIEkvTyBtZW1vcnkuIE1vc3Qgb2YgdGhlIERSTS13aWRlCitpbnRlcmZhY2Ug
aGF2ZSBiZWVuIGNvbnZlcnRlZCB0byB1c2Ugc3RydWN0IGRtYV9idWZfbWFwLCBidXQgaW1wbGVt
ZW50YXRpb25zCitvZnRlbiBzdGlsbCB1c2UgcmF3IHBvaW50ZXJzLgorCitUaGUgdGFzayBpcyB0
byB1c2Ugc3RydWN0IGRtYV9idWZfbWFwIHdoZXJlIGl0IG1ha2VzIHNlbnNlLgorCisqIE1lbW9y
eSBtYW5hZ2VycyBzaG91bGQgdXNlIHN0cnVjdCBkbWFfYnVmX21hcCBmb3IgZG1hLWJ1Zi1pbXBv
cnRlZCBidWZmZXJzLgorKiBUVE0gbWlnaHQgYmVuZWZpdCBmcm9tIHVzaW5nIHN0cnVjdCBkbWFf
YnVmX21hcCBpbnRlcm5hbGx5LgorKiBGcmFtZWJ1ZmZlciBjb3B5aW5nIGFuZCBibGl0dGluZyBo
ZWxwZXJzIHNob3VsZCBvcGVyYXRlIG9uIHN0cnVjdCBkbWFfYnVmX21hcC4KKworQ29udGFjdDog
VGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+LCBDaHJpc3RpYW4gS8O2bmln
LCBEYW5pZWwgVmV0dGVyCisKK0xldmVsOiBJbnRlcm1lZGlhdGUKKwogCiBDb3JlIHJlZmFjdG9y
aW5ncwogPT09PT09PT09PT09PT09PT0KLS0gCjIuMjguMAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
