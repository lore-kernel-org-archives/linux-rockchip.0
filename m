Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDA92D5B85E
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Dec 2025 17:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n9QLAt+aykhNaYvhyapB+vvfTqCpBlDGF6yGAMZvjtA=; b=eoO0uUeCTyPeOV
	YRXGSrrMuRH8hzvaPjWqBVI2wJfQ+l4IAq3l8KfO2kbUZSO+uQy11i59BsoDFvhGieDBdbemP7hrr
	s3SzK7KFyZcs5rBf5ZPpw3KznvQ+erwVh1MRY1bbcjzlwKnHBnO8CYhIZOcl+kkrFrubdfS+6aK8A
	EGxmKk7BPGxw9RvC14u6Voqdx2ninZ2QtwA51zFLO0g11gT2NN/uWZ6b6PklOGqRqpnR1GyqaMjgJ
	NoikaNNI2w4y4gVgq+a4QAzldBnqzVjYOINt4GNNfevixhGujtTgsWMosMLLIiAT64ZRGEyAtkkn9
	2wrBYhqHS77q5OqGCAZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVCnE-000000045rH-0SSS;
	Mon, 15 Dec 2025 17:55:32 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVCn9-000000045pt-36Si
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Dec 2025 17:55:30 +0000
Received: by mail-qt1-x82d.google.com with SMTP id d75a77b69052e-4ee2014c228so27256491cf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Dec 2025 09:55:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1765821324; x=1766426124; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8aCiihqyfBhDBvKtwXzCvq/yRXu9gmrOv+bogwSRfMI=;
        b=fIP3npMMtfICRTATFHQp8z+8eoqsGvxjMOluD5ghgdnc/0tLXvCmMEPBxF8jtpA2o3
         OMA8OEpjVrYDNIP9rlvCwkDyoic8iHxnl7yMu5yC8qK/qJTUBvVYoS8+wo3CjSc4sNcb
         G53aCAgIws73x4DC7281bM3xbroi72mHQw+20ysHmjxXCSb8bSfQ8tscjStvFhlnsaDh
         7/yYmcdIXshcQqjzu9kriBplNNGZw/WpPYfafqxM3ynnDAsnJj1t+SD7kFE3842xw2s5
         5sPG2A8VhHy5V+8CbQPyrswxm/3K9jSLgbnBsFquLZRHuopz4GS4nqJgQciPFWHm3hWT
         EVUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765821324; x=1766426124;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8aCiihqyfBhDBvKtwXzCvq/yRXu9gmrOv+bogwSRfMI=;
        b=biVJAzSCgwUjXNm2DWA17U2s2wQuYGU2R6ONajQ3MNAtezgDWlG28vAWdJjr6g3L69
         pnADadH3r98/Ay6ri9ws3/vR+ifc9aLcluXnAw5rG6K4h9PtFMo7N7Gkp4axk1qTxfcd
         tm5ZmxzNFC1iZwW0ym+8cRDGWT7JqfvqSGckPhcCTwntufCId+DT5j3f8uTNm31uOKMQ
         5HbZp5bGu36UpKQOK5Nzk6L8Br1iTRnS0pU336QcdhbQZMJWadN1e7Rey9yxA6HdvwBJ
         UZ530fOQajlbwnWoM80TwcizOH7/A/MlS1hTkzLB8hCXzlkWSbUu0Zwc26VH9zvu68K4
         CQpA==
X-Forwarded-Encrypted: i=1; AJvYcCVByEG8FAip/XfNYfzyBMc+0QGb8ctYmbwn4L9bqqw0du8Mi2059CmyMrzDV0lBJRW6ZDJtGaJY7yUwohNA6Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YwcRuWjV6XeIawYYKk7VixvhVG4wphoKp9/0U0E7xzJJ1WrsYHJ
	vHgFpePOu3DVucAmUQX83zlcLx0sO2bkbtHeqL+smb7laY0nxW9KvlUszckh/53HM/fDjqd4UBG
	iy7bq2Fo3h6gYQ2IbhIcMFAgy81hpd888PNRuVyPNeA==
X-Gm-Gg: AY/fxX5zP+4I6Ztp8pe0P7KOgDLlJVFjUk+06bwaVg2vfnFJYZYDz2W47Z+6pAlYWtK
	5tCRixg07QICq/YSUB2KCCO/FgU2JzbZ+MzQDm+urowsU9eD3xdRA28iK+oAowwwXKuDpwonLmx
	9GDjWxLm3PYUWpsckgF6b0VO2eA+jHDceRxXxrFFn5cPpnG/Zl5jXlzgpN4i553iYpn6Yg2DyQq
	1+8YiqZ+uWsUgQexTLWoZjrqwmOI4RPwBXJWtmy0LMHASsIiGE+FeV9GqIHTvsIgRBkjuk=
X-Google-Smtp-Source: AGHT+IEquHwQ+urOMR2ohVWjSdQ8ANcymdBrTg3QcyuKio1k3FljEQrqH2T2Tn3/APITsfhyN5lzUFG1dY78glwUVow=
X-Received: by 2002:a05:622a:1e96:b0:4ee:12e0:f071 with SMTP id
 d75a77b69052e-4f1d04a585cmr184413841cf.20.1765821324595; Mon, 15 Dec 2025
 09:55:24 -0800 (PST)
MIME-Version: 1.0
References: <20251211-vop2-atomic-fixups-v4-0-5d50eda26bf8@collabora.com>
 <20251211-vop2-atomic-fixups-v4-1-5d50eda26bf8@collabora.com>
 <20251211223822.6eeabb4d@pumpkin> <14738785.uLZWGnKmhe@workhorse>
In-Reply-To: <14738785.uLZWGnKmhe@workhorse>
From: Daniel Stone <daniel@fooishbar.org>
Date: Mon, 15 Dec 2025 17:55:13 +0000
X-Gm-Features: AQt7F2oTFN8HvvMalRt84ZK6fte07GmPQ77VoQFhH6nEJYL6l1qYY_efw-Mj3bQ
Message-ID: <CAPj87rMeJWLm9J=7kMrEvbpzVOMiQc-TThSNE-Gfac7nhUB3bw@mail.gmail.com>
Subject: Re: [PATCH v4 1/8] drm/rockchip: vop2: Switch impossible format
 conditional to WARN_ON
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: David Laight <david.laight.linux@gmail.com>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Chaoyi Chen <chaoyi.chen@rock-chips.com>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Daniel Stone <daniels@collabora.com>, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_095527_958232_B182E601 
X-CRM114-Status: GOOD (  17.04  )
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

Hi,

On Fri, 12 Dec 2025 at 12:46, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
> On Thursday, 11 December 2025 23:38:22 Central European Standard Time David Laight wrote:
> > Except that all the systems with PANIC_ON_WARN set will panic.
> > I believe that is somewhere over 90% of systems.
>
> I also like making up statistics. Warning here is the correct move
> in my opinion because this warning being triggered indicates a bug
> in the kernel code, and with PANIC_ON_WARN the user explicitly says
> they would rather panic in such a case than treat it as an abnormal
> condition that is recoverable.
>
> The reason why this condition ever occurring should be treated as an
> abnormal condition is because the DRM subsystem should guarantee we
> don't get a framebuffer of a format we didn't explicitly declare
> support for in the first place. So this condition being hit either
> means drm_universal_plane_init is broken, or the array of formats
> that's passed to it is out of sync with the conversion code, which
> is also a bug. Or someone managed to thoroughly hose DRM's internal
> kernel-side data structures, which is precisely the kind of thing
> PANIC_ON_WARN users want to abort for.

Yes, that's exactly it. We make all kinds of load-bearing assumptions
everywhere: that PM code won't pass in a NULL struct device pointer to
the resume handler, that our driver callbacks won't get called whilst
the device is runtime-suspended, etc. We could try to handle every
single one of those with if (clk == NULL) return 0; /* ??? */, or we
could not.

If you'd like, we could just delete every one of these checks and
replace them with comments, explaining what we assume the invariants
to be, and wait for an OOPS due to dereferencing invalid pointers. But
the MISRA style of 'handling' every possible impossible case is not
tractable.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
