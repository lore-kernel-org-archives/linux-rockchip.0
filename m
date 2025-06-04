Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E20B3C5B543
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 16:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yes1ZzwIfzWZeMUSvvOGyn4yY+Yp/CRFagbGaWtl0yk=; b=qEA4NE2pQnlNHb
	VqGmD7vwR03qIks0UO4hGQD/xEWxOGovqMdai0Pg0GtPdCqta5z/IQiFFqYBIDxSBcz4kmZCvreGL
	2sQrNvTPrMUB1ystsDgEITAdHZKWf6EvAdhW9iTZeMdi3gQJJb/GloVxUZOE38tzrOCefXpw8qpsI
	PJ2Zpr5qYv8pT6pppc47slBO6CrrTQLAttAWyeRnn7p/DEKraK+kMJxWY8cfIQTOL5V8gDuDEwA40
	sAoiCF8hf0wVFoFxL6iXWfaxipXtf0ElOZPfVtMkbl3/xZGdzEKJP6SaG6VCJX1lKU/iNTCJVcLY2
	n5NaDdIj+slQFa4Tvu0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMqqw-0000000DmUT-3yDh;
	Wed, 04 Jun 2025 16:20:34 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMqp8-0000000DmLA-3IsF
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Jun 2025 16:18:43 +0000
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-4a5a196f057so30177901cf.3
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Jun 2025 09:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1749053921; x=1749658721; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=P8AKCIoAa/d1XSYeACl75HYH/kq79WoVL90DxYrmfW4=;
        b=ILw51NnBQPDRgMFwQgifO74eiES0QNaB6urUVMTscF8RH1qfsA400O3WWpk5Lv0b7R
         AAFh+iYNJ+Ydw8tLxNAN3/irLOazRV8kqSk/5vH8SF5jmw/rD5Z6UbiGQ01/TziSfZbB
         gq7BOFERbm+s4xZrpwNMjWbZMzVA7WrPjgkId5f3/JEFOGHmjrQaUCTu3sd8vWPJNdXT
         F833Gkn09V9bmWgiRPX2O4i0U+zHYmEaJNlGae+K0VgUmQrPDuDN5HFim7SX7p88dXI1
         NIDWAcwuDBQRDZ345F9awnwY17w8Rm/gUQ7aqKU0kFCB6bzcEimuAsNdhhMHsC4o1z2C
         GqYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749053921; x=1749658721;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P8AKCIoAa/d1XSYeACl75HYH/kq79WoVL90DxYrmfW4=;
        b=GVS+ty9w5CwcN8Vmv1QElKcpgIEKGUmd3UiGFgy1DmPB3YILoD9m8I5/pLIxfWOtf5
         4b9Az0fO6eJn+nVyH4XPWPyBoWx9W76CiLW7CsFsCYgBL/58kkRouP13Ar+KWqJ6u4i7
         snItx6Vy3ueCaa9xZhb+l3ceUmpxaT37ts5x4ps+96efEt/KKW9BUpXOHT4MWghOg/Dq
         j8Kdf6dXxF4KtUuR9U4dLWQw/DOAAkK3NA4X78JdWF4CWejqsQP00apB0xVnI1beo+vk
         rixvge1dqK+C3GN8KJCe/90x2UE7SpDAocaS5gMGRbZl7naTofw2wJRPQ8HgBA9yCTFC
         ewCw==
X-Forwarded-Encrypted: i=1; AJvYcCUONnDTNt7/WSB+LT919zz3DpPBSwkR2v5Vl3BkPd0hk/JvpWMWUGRwMniPvV1r7mHxcu9Mpd/riH+VA4R72g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9MRJUTMDb9Kwu32oZOCZGl7r9XYp/bFzEHFMtKraVjPIaW3vh
	7y7j3OGKY8xdjFkeBMT0Ydiq5rrJey5GCIcKSAgnqqVcJ06jYDWqDCoxRaGLjDh9SvwSHxmX7kQ
	SKzLWps/9cMgc4uRPIHNboP18/J/+woHuP2A367ZI3ZaS+J9dWblFXxw=
X-Gm-Gg: ASbGnctg/Cs0jtuNfpvw/xeEYEGMPgeizB5nzOrO6YfWHjON/aJxuJHGx0naY+ABl9v
	HudBUReR79j0KaHlZadLPS5y7/WfcxljVil+Gz7aH3fvherg3XpzuVwNmBZxMPvTN73ZdTGOW7y
	bU2+BKIjuljcI2FOmjsAZfJur2Fg+h0XGCXKe7G4BBNU6673DagsHpoHwTuHTFkJOiJ63747l+1
	6mgUA==
X-Google-Smtp-Source: AGHT+IHKumrpYp7KXj3Oppwg97YrZ8QLTUdlX7sch68BDDJcICEIYXc2OCGtCAc7AHX04x4oGqNiMhls5e1iB1AyII0=
X-Received: by 2002:a05:622a:4d44:b0:48b:4f9b:fcfc with SMTP id
 d75a77b69052e-4a5a57559e0mr54446431cf.22.1749053921456; Wed, 04 Jun 2025
 09:18:41 -0700 (PDT)
MIME-Version: 1.0
References: <20250604-6-10-rocket-v6-0-237ac75ddb5e@tomeuvizoso.net> <20250604-6-10-rocket-v6-6-237ac75ddb5e@tomeuvizoso.net>
In-Reply-To: <20250604-6-10-rocket-v6-6-237ac75ddb5e@tomeuvizoso.net>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 4 Jun 2025 17:18:29 +0100
X-Gm-Features: AX0GCFspq72tjQe2nH9NHC6pMzIvIPvg3yffH3OtDe0wEz2aVsnXcTNMk1xSlik
Message-ID: <CAPj87rPv7Pd5tbXhpRLaUJCGB8JmD4kfF50WRsEiST2gvtg3Bg@mail.gmail.com>
Subject: Re: [PATCH v6 06/10] accel/rocket: Add IOCTL for BO creation
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_091842_826570_5503D1C3 
X-CRM114-Status: GOOD (  20.30  )
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
Cc: Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, Maxime Ripard <mripard@kernel.org>, Kever Yang <kever.yang@rock-chips.com>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Tomeu,
I have some bad news ...

On Wed, 4 Jun 2025 at 08:57, Tomeu Vizoso <tomeu@tomeuvizoso.net> wrote:
> +int rocket_ioctl_create_bo(struct drm_device *dev, void *data, struct drm_file *file)
> +{
> +       [...]
> +
> +       /* This will map the pages to the IOMMU linked to core 0 */
> +       sgt = drm_gem_shmem_get_pages_sgt(shmem_obj);
> +       if (IS_ERR(sgt)) {
> +               ret = PTR_ERR(sgt);
> +               goto err;
> +       }
> +
> +       /* Map the pages to the IOMMUs linked to the other cores, so all cores can access this BO */

So, uh, this is not great.

We only have a single IOMMU context (well, one per core, but one
effective VMA) for the whole device. Every BO that gets created, gets
mapped into the IOMMU until it's been destroyed. Given that there is
no client isolation and no CS validation, that means that every client
has RW access to every BO created by any other client, for the
lifetime of that BO.

I really don't think that this is tractable, given that anyone with
access to the device can exfiltrate anything that anyone else has
provided to the device.

I also don't think that CS validation is tractable tbh.

So I guess that leaves us with the third option: enforcing context
separation within the kernel driver.

The least preferable option I can think of is that rkt sets up and
tears down MMU mappings for each job, according to the BO list
provided for it. This seems like way too much overhead - especially
with RK IOMMU ops having been slow enough within DRM that we expended
a lot of effort in Weston doing caching of DRM BOs to avoid doing this
unless completely necessary. It also seems risky wrt allocating memory
in drm_sched paths to ensure forward progress.

Slightly more preferable than this would be that rkt kept a
per-context list of BOs and their VA mappings, and when switching
between different contexts, would tear down all MMU mappings from the
old context and set up mappings from the new. But this has the same
issues with drm_sched.

The most preferable option from where I sit is that we could have an
explicit notion of driver-managed IOMMU contexts, such that rkt could
prepare the IOMMU for each context, and then switching contexts at
job-run time would be a matter of changing the root DTE pointer and
issuing a flush. But I don't see that anywhere in the user-facing
IOMMU API, and I'm sure Robin (CCed) will be along shortly to explain
why it's not possible ...

Either way, I wonder if we have fully per-context mappings, userspace
should not manage IOVAs in the VM_BIND style common to newer drivers,
rather than relying on the kernel to do VA allocation and inform
userspace of them?

I'm really sorry this has come so late in the game.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
