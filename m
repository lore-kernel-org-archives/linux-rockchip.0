Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87525C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jul 2024 07:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qzKC4Ql74V8L9NLfmXxRJBkesfhTlnhC8RfyC7UOj1w=; b=3gDRbFxc+kdZ5w
	Rp+rZvS3Qtpa7re1BSS7Hvz8YDsexeFtTItVUX2ElMqVjY/Ds4gK8OXXEcbDA+gWf86BIAExBj7oM
	pgA7MhwqrqHBxj2tXgxUUycuqvOdVg1jA4KySiUcTD+MdpxAGd+BNG6leVhsDKZhz+Tca/Nalv7tk
	tio5trcgQbwaJtf66Co3amg64i53ECP+uk8+W5Nfbi/VMjZDXA//8znXMWMKHyq82RnNbtcmn48Ri
	LnDTOLH70fqGvnMGliLZhHe6DhsuRlFCQ+YmpWriYkV7QC8Uvm93FxdWO2we7nQFOykyBZ276KPJG
	Wzd47KHqDPoA3/IpS/+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXFV0-00000003CUP-49GO;
	Fri, 26 Jul 2024 07:36:22 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXFUy-00000003CSO-0lQa
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jul 2024 07:36:21 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id 6a1803df08f44-6b7b28442f9so4356886d6.3
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jul 2024 00:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20230601.gappssmtp.com; s=20230601; t=1721979375; x=1722584175; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1TPKPX97TTgh+bMeyaRqhyTEqJldy/1yPCfnocQWuqg=;
        b=R1A7KnK08lu4G3x+ZiSfZDZbuXY+pWEv5pu/MVKxOjHsoNhTRbkiLOV3htUWJJ9f2j
         rXpGGS9YDHW7bwZltB5fbwQGoxryaV+AyljMabTcGAovi9xGhUTUUTCo+yyfqSLYO7QB
         WZLM9g1YKLDtolqMrnLnl3c04R5HsQRA+d4AWsJWF07ULUZp9FqzvMWhjywMSewmZHcu
         CFZ18tnkZQLySOaG69W/bNYeiURLvzj0d6ZYRo9kO/sLGLuggBYaoryfwuC4YWx/s6N1
         3KFRQCw6t5n3mnAOC/K0NLnW1PzvM+VcQHa3tQJX553DDn9X7ic5qlbgc+zXyPf0fDoa
         3cbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721979375; x=1722584175;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1TPKPX97TTgh+bMeyaRqhyTEqJldy/1yPCfnocQWuqg=;
        b=lcEv1UU2zOJ0qsTnbSeCFXXOYilhqhcxobOGvYsQASaW+27DfGfNpDAZv7zwmv6di/
         KAzXA/4KfGmqnOETgHs2Z5pmtC5zjnBsyLnLN7+Wjviiu/P25S7fUYdcHfBYARixyrgo
         kf6V2W1Y15WIytCreaInHEmN3oj/FicGnd6VZseqhOoyIfuYPRXUsjh42hgcclTuQy68
         vfFuDthwv/uH4zGSxxmI5y+6q8JmtSD9jiUQuC5HnOICbvJgJicc0Z47BP2trpW8oxwB
         wwvzfzQleTgSjaYgDARsDfn4M67+fkLYSuSgTKoVjeU5d2KJcoI4WflKEeSV/ny0fdyh
         coMA==
X-Forwarded-Encrypted: i=1; AJvYcCXN0jrDj1Q6XLBaMY1NAzXRmsN7RQRzT8VkK5IAIOvR7rFXyt9mc3suIJ4RoljlA/Z0IMNKlFgcledFLX4qeSUCq0vrFjRy1gs3CLFnHf9kqdmV
X-Gm-Message-State: AOJu0YwbB86ImbAXec/Te7Kau8uJyER1l/pWkDNvCQC3B/a6VGHZUVQ6
	Qr58B7e/UV+EZ329W9i+xvikiqdWrefUyNInUDSZTG5M40oPdiAPl0ZNZVEcVJjAKvUVS+pRu+6
	wo86rTIWcQTYr6nKg5cGGidFvRMaShn0I5CtxgQ==
X-Google-Smtp-Source: AGHT+IGGlYtpl5CnwGzsbFku57FVU+vQWQg6UYr2oNR/eVitvY8vea0qGTJakNZeMiN0ELTqnJHGNHAzrUdeSPuNRfE=
X-Received: by 2002:ad4:5b8f:0:b0:6b2:dd54:b634 with SMTP id
 6a1803df08f44-6bb40894335mr53497916d6.39.1721979375321; Fri, 26 Jul 2024
 00:36:15 -0700 (PDT)
MIME-Version: 1.0
References: <20240724101015.523535-1-vignesh.raman@collabora.com> <20240724101015.523535-6-vignesh.raman@collabora.com>
In-Reply-To: <20240724101015.523535-6-vignesh.raman@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 26 Jul 2024 08:36:04 +0100
Message-ID: <CAPj87rMJUSRJ9G1uv-w5a_4qqS0R1dDaUEofoJf=ehbMszdfOw@mail.gmail.com>
Subject: Re: [PATCH v8 5/5] drm/ci: rockchip: add tests for rockchip display driver
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
	helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, 
	guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
	deborah.brouwer@collabora.com, robdclark@gmail.com, 
	linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_003620_667974_8BA7D099 
X-CRM114-Status: GOOD (  20.18  )
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

Hi Vignesh,

On Wed, 24 Jul 2024 at 11:12, Vignesh Raman <vignesh.raman@collabora.com> wrote:
> For rockchip rk3288 and rk3399, the display driver is rockchip
> and gpu driver is panfrost. Currently, in drm-ci for rockchip
> rk3288 and rk3399, only the gpu driver is tested. Refactor
> the existing rockchip jobs to test both display and gpu driver
> and update xfails.

Could you also please add RK3588 in a new series (no need to hold this
one up), with Rockchip KMS and Panthor GPU? You can use the
rk3588-rock5-b device type in LAVA.

> diff --git a/drivers/gpu/drm/ci/xfails/mediatek-mt8183-fails.txt b/drivers/gpu/drm/ci/xfails/mediatek-mt8183-fails.txt
> index cf3a747f7cec..826cca5efbff 100644
> --- a/drivers/gpu/drm/ci/xfails/mediatek-mt8183-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/mediatek-mt8183-fails.txt

This is in the wrong patch?

> +++ b/drivers/gpu/drm/ci/xfails/panfrost-rk3288-skips.txt
> @@ -0,0 +1,71 @@
> +# Suspend to RAM seems to be broken on this machine
> +.*suspend.*
> +
> +# Too unstable, machine ends up hanging after lots of Oopses
> +kms_cursor_legacy.*
> +
> +# Started hanging the machine on Linux 5.19-rc2:
> +#
> +# [IGT] kms_plane_lowres: executing
> +# [IGT] kms_plane_lowres: starting subtest pipe-F-tiling-y
> +# [IGT] kms_plane_lowres: exiting, ret=77

ret 77 is a pure skip here, as you'd expect from a pipe F test,
because Rockchip doesn't have six CRTCs.

> +# Console: switching to colour frame buffer device 170x48
> +# rockchip-drm display-subsystem: [drm] *ERROR* flip_done timed out
> +# rockchip-drm display-subsystem: [drm] *ERROR* [CRTC:35:crtc-0] commit wait timed out
> +# BUG: spinlock bad magic on CPU#3, kms_plane_lowre/482
> +# 8<--- cut here ---
> +# Unable to handle kernel paging request at virtual address 7812078e
> +# [7812078e] *pgd=00000000
> +# Internal error: Oops: 5 [#1] SMP ARM
> +# Modules linked in:
> +# CPU: 3 PID: 482 Comm: kms_plane_lowre Tainted: G        W         5.19.0-rc2-323596-g00535de92171 #1
> +# Hardware name: Rockchip (Device Tree)
> +# Process kms_plane_lowre (pid: 482, stack limit = 0x1193ac2b)
> +#  spin_dump from do_raw_spin_lock+0xa4/0xe8
> +#  do_raw_spin_lock from wait_for_completion_timeout+0x2c/0x120
> +#  wait_for_completion_timeout from drm_crtc_commit_wait+0x18/0x7c
> +#  drm_crtc_commit_wait from drm_atomic_helper_wait_for_dependencies+0x44/0x168
> +#  drm_atomic_helper_wait_for_dependencies from commit_tail+0x34/0x180
> +#  commit_tail from drm_atomic_helper_commit+0x164/0x18c
> +#  drm_atomic_helper_commit from drm_atomic_commit+0xac/0xe4
> +#  drm_atomic_commit from drm_client_modeset_commit_atomic+0x23c/0x284
> +#  drm_client_modeset_commit_atomic from drm_client_modeset_commit_locked+0x60/0x1c8
> +#  drm_client_modeset_commit_locked from drm_client_modeset_commit+0x24/0x40
> +#  drm_client_modeset_commit from drm_fbdev_client_restore+0x58/0x94
> +#  drm_fbdev_client_restore from drm_client_dev_restore+0x70/0xbc
> +#  drm_client_dev_restore from drm_release+0xf4/0x114
> +#  drm_release from __fput+0x74/0x240
> +#  __fput from task_work_run+0x84/0xb4
> +#  task_work_run from do_exit+0x34c/0xa20
> +#  do_exit from do_group_exit+0x34/0x98

So this is pointing to the error being that, when a client exits, the
kernel attempts to restore fbdev and then it's broken. Pinning
pipe-F-tiling-y as specifically responsible for this seems quite odd
to me, given that it doesn't do anything but only skips. Is that maybe
just because it's the last test running in the kms_plane_lowres group
before it exits? Or does it occur more wildly on other test groups?

> +tools_test@tools_test,Fail

I keep noticing this failing everywhere. What's up with that? Have you
reported these logs to the igt list?

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
