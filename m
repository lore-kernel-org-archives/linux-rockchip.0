Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD456CCD1A5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 12:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0dWLMH8GmsJps9WxKUx+2skX3/5rjmtOFKHwSg5FIw=; b=qgRNZ2uM6AWn46
	sQlS5j2JlEKiXTzOwpry8aV6//4Y2xHCCtyA0iCLXoPmuYkXKS/FRJ6FCa0nqklBBN6EVt4qWQjuE
	AnqoufZbRwfx1ke1wHb+U/WY/TvP8xFIaXIlHtuHe1ruC7mEyBRxlqRMgzviRb1Ex7sy+vkf4OHOg
	wG6AKs9F0HahshunTQ9K/7/ql9A8vTeUNckHEV3t+/zOePOsimOp6ZnKkw3jNzcGe9F0fc/s73zVo
	pDQFMEqc62aEYXXBwjBWTHYHsy1UQKRkhGR6L30jCTibrD4IOEtimvA+i/vQ2l/Idoc/thZ0A0C7i
	LFyJ2iAVKTtNLvo6kCtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAonk-0000000DLrJ-02QP;
	Mon, 20 Oct 2025 12:15:48 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tD7No-0000000ARrE-0E1H;
	Mon, 18 Nov 2024 19:26:01 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4314f38d274so34322875e9.1;
        Mon, 18 Nov 2024 11:25:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731957958; x=1732562758; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9pD0Ic6pq3x9QjpEUEJLIp8QMqGQFkQZMFW6bkNDgUM=;
        b=ZCyYytwBwvjaquHZoku8UHYi0nAFkecvoN6jy0IHSl1AdpcVT+VTsB6gg1r8UKmEaa
         8OD36BwYNpb4JLWSCbywVTkwebUdrC4Juy7XHpHCdbvC5UMMV9IyPzQphww40AioazVI
         oYM3WqF9lZUzp8smOFUaXw5Al95b+65/+s+L/GySQmxc/WkLU/92YihFz7V1DWJ5Qhqn
         DwzDFSfzlV/Mjvt8x4B/vAodVh6n8ATIxFdGit7WoaZrZE2KSX4GCZ5dyT/1pN8dHxYA
         JToo4iE1RbgLMub7qdzjkGs+VQ5k3c52RogIV3MgR1oG3CspjpvCvK5Rn2pZVwvJXWWU
         uLKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731957958; x=1732562758;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9pD0Ic6pq3x9QjpEUEJLIp8QMqGQFkQZMFW6bkNDgUM=;
        b=OK1jHVresheeNzvZEDVxeklQQ3STDIKQNL/AMNGKKn/2niL4xe9vWj08ne0/twZlNv
         a23lgIK6J0bNOBKi94gC6RcdbUBJSVWgI8yEPYv9M9cbeecbc02KereBI1f5dOV9oxgw
         Bo7UUqlz6pomFmAmrIzrfe2QeqtYXKv07KGtGsAl4SdPY7tWjnTyMSf5vmpkM+nzDszN
         6XQzJKYHcB/d+xJAivIejKcx4rGRdBSR3Vdv/e9I1UIEPexw9w2q8RPZZ/LDnS80gMbG
         wh9CLeqUTegwMJ1A4AM0Ckgiw1bjNd/Ddx7FmJOCrEsCOkt4MXavFXo88skox8HTjEE5
         wYcg==
X-Forwarded-Encrypted: i=1; AJvYcCVVQQe36WvJFn0PDtGpyUHJ2Oq5BOVvEag4CWTT4gQvk4sQI5pO4G9JPosDP3pWodNaOajrqUQt30N4fQbprhDv@lists.infradead.org, AJvYcCXe5YxWmbMXvzgX/W3OW1n+F21TMdYV7njJwy2V0mdEAalLoEpdwZpbykIRsoJj2nv2snbCR9d5PRTs8DC+yKg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy96cNqOJBG4cIEBGcmPcY308ndxUn7mDfifc6xPHMOzpgPqyqi
	b56JjcVETsRLEFzIP3CiVH8o+QWj6BQpFvF3Uj6dk0sD4TNuHxxh
X-Google-Smtp-Source: AGHT+IH+lcOQ8Rj8oM11CtrUWBNXK6zZA1wltL3ZBTXjDjqXIpvoTVhgtssacVRTup7RXCuDYGl00g==
X-Received: by 2002:a05:600c:1d97:b0:426:59fe:ac27 with SMTP id 5b1f17b1804b1-432df78f3demr130180715e9.26.1731957957571;
        Mon, 18 Nov 2024 11:25:57 -0800 (PST)
Received: from ?IPV6:2001:861:3385:e20:6384:4cf:52c5:3194? ([2001:861:3385:e20:6384:4cf:52c5:3194])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432da298c81sm172023915e9.39.2024.11.18.11.25.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Nov 2024 11:25:57 -0800 (PST)
Message-ID: <8a4f69dd-b393-4e84-be3c-58f8b33bd59d@gmail.com>
Date: Mon, 18 Nov 2024 20:25:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] drm/sti: hda: pass const struct drm_display_mode* to
 hda_get_mode_idx()
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>,
 Danilo Krummrich <dakr@redhat.com>, Harry Wentland <harry.wentland@amd.com>,
 Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Xinhui Pan <Xinhui.Pan@amd.com>, Alain Volmat <alain.volmat@foss.st.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Peter Senna Tschudin <peter.senna@gmail.com>, Ian Ray <ian.ray@ge.com>,
 Martyn Welch <martyn.welch@collabora.co.uk>, Inki Dae
 <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar
 <alim.akhtar@samsung.com>, Stefan Agner <stefan@agner.ch>,
 Alison Wang <alison.wang@nxp.com>,
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Mikko Perttunen <mperttunen@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu
 <olvaffe@gmail.com>, Zack Rusin <zack.rusin@broadcom.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 nouveau@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, virtualization@lists.linux.dev,
 spice-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org
References: <20241115-drm-connector-mode-valid-const-v1-0-b1b523156f71@linaro.org>
 <20241115-drm-connector-mode-valid-const-v1-3-b1b523156f71@linaro.org>
Content-Language: en-US, fr
From: =?UTF-8?Q?Rapha=C3=ABl_Gallais-Pou?= <rgallaispou@gmail.com>
In-Reply-To: <20241115-drm-connector-mode-valid-const-v1-3-b1b523156f71@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241118_112600_088551_FA9D556C 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Mon, 20 Oct 2025 05:15:44 -0700
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Cgo+IE1ha2UgaGRhX2dldF9tb2RlX2lkeCgpIGFjY2VwdCBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3Bs
YXlfbW9kZSBwb2ludGVyCj4gaW5zdGVhZCBvZiBqdXN0IHJhdyBzdHJ1Y3QgZHJtX2Rpc3BsYXlf
bW9kZS4gIFRoaXMgaXMgYSBwcmVwYXJhdGlvbiB0bwo+IGNvbnZlcnRpbmcgdGhlIG1vZGVfdmFs
aWQoKSBjYWxsYmFjayBvZiBkcm1fY29ubmVjdG9yIHRvIGFjY2VwdCBjb25zdAo+IHN0cnVjdCBk
cm1fZGlzcGxheV9tb2RlIGFyZ3VtZW50Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBCYXJ5
c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4KPiAtLS0KCkhpIERtaXRyeSwKClRo
YW5rIHlvdSBmb3IgdGhlIHBhdGNoLgoKQWNrZWQtYnk6IFJhcGhhZWwgR2FsbGFpcy1Qb3UgPHJn
YWxsYWlzcG91QGdtYWlsLmNvbT4KCgpSZWdhcmRzLApSYXBoYcOrbAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
