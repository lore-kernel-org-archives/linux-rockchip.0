Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1DCAC79F61
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Aug 2023 14:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:In-Reply-To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=YHg4zCY5GTjsOq7MwqZxnxqPO5CpnA11R+GgGwz9B6I=; b=4KBukV3oRL+Gcd
	xJx64xq/P1DTKvJyTdHlJMqTf5wwu+0rJ0sfYFGVt0eqc7hesbeo9ov2c41MpvYVuH3dY/MHzBXi4
	GbKIGTWIVhME6YFt3KNFJJRI9pmuDczIlhNJUO01gGRXOBoqv+10Xy/t/PNKyoU6Q7Y8mKCJpXMZR
	vX093gfMCGniqGPux1SMbv+jMqAcTB1J9kfzrKrjeHTpacVIcR/sY67zJ3lQKDKLNb5Y7hH/s6i2X
	hm4ie7o/lGq5K7RZLR568rV+ZC9vPJt6u0kZ3xT2Z9sIX/V5uM8HZdlItDAZEO5NGQEnake5HIx2G
	WYO3NKkJuMvmSJRfgTQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZXUy-005ZXF-2N;
	Fri, 25 Aug 2023 14:09:16 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZXUt-005ZUl-2b;
	Fri, 25 Aug 2023 14:09:13 +0000
Received: from hamburger.collabora.co.uk (hamburger.collabora.co.uk [IPv6:2a01:4f8:1c1c:f269::1])
	by madras.collabora.co.uk (Postfix) with ESMTP id 4C74566071BE;
	Fri, 25 Aug 2023 15:09:04 +0100 (BST)
From: "Helen Mae Koike Fornazier" <helen.koike@collabora.com>
In-Reply-To: <87pm3b2pkz.fsf@intel.com>
X-Forward: 127.0.0.1
Date: Fri, 25 Aug 2023 15:09:04 +0100
Cc: "Vignesh Raman" <vignesh.raman@collabora.com>, dri-devel@lists.freedesktop.org, emma@anholt.net, linux-doc@vger.kernel.org, david.heidelberg@collabora.com, linux-amlogic@lists.infradead.org, jbrunet@baylibre.com, robdclark@google.com, corbet@lwn.net, khilman@baylibre.com, sergi.blanch.torne@collabora.com, gustavo.padovan@collabora.com, linux-rockchip@lists.infradead.org, daniels@collabora.com, martin.blumenstingl@googlemail.com, robclark@freedesktop.org, anholt@google.com, linux-mediatek@lists.infradead.org, mripard@kernel.org, matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org, angelogioacchino.delregno@collabora.com, neil.armstrong@linaro.org, guilherme.gallo@collabora.com, linux-kernel@vger.kernel.org, tzimmermann@suse.de
To: "Jani Nikula" <jani.nikula@linux.intel.com>
MIME-Version: 1.0
Message-ID: <29c7-64e8b600-1-6afffd8@162524228>
Subject: =?utf-8?q?Re=3A?= [PATCH 2/6] =?utf-8?q?drm=3A?==?utf-8?q?_ci=3A?= Force 
 db410c to host mode
User-Agent: SOGoMail 5.8.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_070912_006333_716F123F 
X-CRM114-Status: GOOD (  27.36  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jani, thanks for your comments

On Friday, August 25, 2023 10:56 -03, Jani Nikula <jani.nikula@linux.intel.com> wrote:

> On Fri, 25 Aug 2023, Vignesh Raman <vignesh.raman@collabora.com> wrote:
> > Force db410c to host mode to fix network issue which results in failure
> > to mount root fs via NFS.
> > See https://gitlab.freedesktop.org/gfx-ci/linux/-/commit/cb72a629b8c15c80a54dda510743cefd1c4b65b8
> >
> > Since this fix is not sent upstream, add it to build.sh script
> > before building the kernel and dts. Better approach would be
> > to use devicetree overlays.
> >
> > Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> > ---
> >  drivers/gpu/drm/ci/build.sh | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/ci/build.sh b/drivers/gpu/drm/ci/build.sh
> > index 7b014287a041..c39834bd6bd7 100644
> > --- a/drivers/gpu/drm/ci/build.sh
> > +++ b/drivers/gpu/drm/ci/build.sh
> > @@ -70,6 +70,10 @@ if [ -z "$CI_MERGE_REQUEST_PROJECT_PATH" ]; then
> >      fi
> >  fi
> >  
> > +# Force db410c to host mode to fix network issue which results in failure to mount root fs via NFS.
> > +# See https://gitlab.freedesktop.org/gfx-ci/linux/-/commit/cb72a629b8c15c80a54dda510743cefd1c4b65b8
> > +sed -i '/&usb {/,/status = "okay";/s/status = "okay";/&\n\tdr_mode = "host";/' arch/arm64/boot/dts/qcom/apq8016-sbc.dts
> > +
> 
> It seems like a really bad idea to me to have the CI build modify the
> source tree before building.
> 
> The kernel being built will have a dirty git repo, and the localversion
> will have -dirty in it.

Is it bad?

The other option was to work with device tree overlays (but we still need to spend some time to
see how to fit it all together)

> 
> I think it would be better to do out-of-tree builds and assume the
> source is read-only.

I'm not sure I get what do you call out-of-tree builds.

Another option would be to apply .patch file, or to have another branch
just with fix ups for ci that would be applied in the tree before building.

> 
> >  for opt in $ENABLE_KCONFIGS; do
> >    echo CONFIG_$opt=y >> drivers/gpu/drm/ci/${KERNEL_ARCH}.config
> >  done
> 
> Ditto for the config changes in the context here. Those are files in
> git, don't change them.

Probably these changes could go directly into drivers/gpu/drm/ci/${KERNEL_ARCH}.config
files, no need to modify them on the fly here

> 
> Shouldn't this use something like 'scripts/config --enable' or
> 'scripts/config --disable' on the .config file to be used for building
> instead?

I wasn't aware about this possibility, looks cleaner indeed.

Regards,
Helen

> 
> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
