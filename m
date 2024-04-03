Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5222BCD128A
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 13:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+iwkWJvHwn2tQaoPqeMXndnkB6f1B4B6mP0Hwx77dUE=; b=ex5xE86pftkxQf
	D4DXhKTHWEDsdLkRN/hsB45phpsYryQsMTe4lwNlMlkf9GQX19qBMQtwKidhrUrDBPYEJFZzZXlR2
	sAnWdnBZZNzL/vSMgPnCPnk1q2qrCdC7aDtiRWpqCF8Hh3slgNP9O1RiBps/VXv8KGyXLxMArMjsZ
	mzzRqw7gfz4eCyU0jiv/Sv++4ENiKeQfRids9geZ7vP/ukaJ5zjbrL7x2JD9LYzB68uffrFq9nqqe
	K5FiqxlqRAWVRrJ0EzdR9hOJJxSufuNGiJCpR0nb8S2xeX7zCdAihnhN/arqAisRl97g/61HG/KWi
	40CQHTbTgmbGMSH7ERxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs0WJ-0000000G8E6-1CQQ;
	Wed, 03 Apr 2024 13:19:15 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs0WG-0000000G8Bp-276A
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Apr 2024 13:19:14 +0000
Received: by mail-qt1-x835.google.com with SMTP id d75a77b69052e-432d5b5f00bso8127511cf.0
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Apr 2024 06:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1712150350; x=1712755150; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cWyJ3cJLCpRglG8Yk4xFCKIFWdrd8x6dZaV75Jxrvbw=;
        b=h37vlVhTfmNH3L4DE2wNWmvZ+wY4yyPdB23gVixPG/WpeGSzUsGzm4SKjxvke5Yr18
         EITVh04bdZhzwmKbhIQFf7hejSq08mpQK3oRe54EuoVEWaahUKNsqyWle1pG+Awz9yVl
         g2XbPUR4EH+27k8+v08a8F36PFFWN5QF9BL1eTmA7Emm0wJ/MxBI8vYTSAEZhXoUOFxl
         MLjnjfuLnPtflHx+DhWlSGzKPBaZo/lvd7s8+UIdg75xZVBedbq1D+O3hmjRQ6DiBU4j
         p0k2oYjTUlJgxlNH8l7Buqjob5Cl/IWxBS/OZQC7epASv6w2B36OdCIL1V4PObYPYvNw
         JF8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712150350; x=1712755150;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cWyJ3cJLCpRglG8Yk4xFCKIFWdrd8x6dZaV75Jxrvbw=;
        b=pG8FJUsN6P0Z50Zwh4hmCLzFvZ5KsBZ08R/Ywo6dPKVuLKxOIUDCKi4D0qQ6xta0MB
         31h49MZ+/tkLGjEUQL53eQqILC01TqmomXeHxuyv1W8GjWeOaPhhte88P6JI/bO9Faep
         mZpo42rloNA+p56iiMUTkeTF7pF9tWWIM99vMcUMyipMGc7XbgDNnbQdSw+Xil7VWmgJ
         uqf5J2eUuE9vrVUbli/Uw3rDWpXQ4YVJC3OqIfk00mnoFZmjzb6Ql52T2lIwHkb3CnoE
         J7+dbR/A2I2KAgOdlcm6UJD4yBwasloNKxdpsgIClFdimaKT6ETF2Hh1ijOu6Dkq7JpG
         YpNg==
X-Forwarded-Encrypted: i=1; AJvYcCVmZbrMGVTIQkPidEiGmAKpRTpGw96yOUsO7kmyf1KFP5HH0WtwAG6JYsea3jMIXTcJKpdQARIQ0HAee3EcPBXozpDMYTZ0na9SicJgTz6YiYW8
X-Gm-Message-State: AOJu0YzM3l9MR/0AQNteZDLv07oIwIxMM6ZBxxhSvwFJShiywSpMNKQ6
	2665t25GMJEidmxl/v1Wn24FFi/VMzrn2OLstXT3FmSLVE+p/X8dmltvs/J4cl1j6KJGrMerX/P
	806ZvOcvANqblDVJ16mzqcfOJ1FLxis1mZ3LAjw==
X-Google-Smtp-Source: AGHT+IEGVCWVaM3OZyGBYvZk7eIME6rUXSm4/CdsRsbb+oN0keiU95giarhKtyBsTd58XnIkGQv2TzNnxS90eOdz7ws=
X-Received: by 2002:a05:622a:104c:b0:434:338c:31ac with SMTP id
 f12-20020a05622a104c00b00434338c31acmr3549454qte.14.1712150349909; Wed, 03
 Apr 2024 06:19:09 -0700 (PDT)
MIME-Version: 1.0
References: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
 <00555af4-8786-b772-7897-aef1e912b368@google.com> <ZfTDUGSshZUbs13-@8bytes.org>
In-Reply-To: <ZfTDUGSshZUbs13-@8bytes.org>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 3 Apr 2024 09:18:33 -0400
Message-ID: <CA+CK2bC7jd65=eZoN7szWJKSO2TLsxxKFH8D6WjHS3_2U7=McA@mail.gmail.com>
Subject: Re: [PATCH v5 00/11] IOMMU memory observability
To: Joerg Roedel <joro@8bytes.org>
Cc: David Rientjes <rientjes@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	alim.akhtar@samsung.com, alyssa@rosenzweig.io, asahi@lists.linux.dev, 
	baolu.lu@linux.intel.com, bhelgaas@google.com, cgroups@vger.kernel.org, 
	corbet@lwn.net, david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org, 
	heiko@sntech.de, iommu@lists.linux.dev, jernej.skrabec@gmail.com, 
	jonathanh@nvidia.com, krzysztof.kozlowski@linaro.org, 
	linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mm@kvack.org, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org, 
	lizefan.x@bytedance.com, marcan@marcan.st, mhiramat@kernel.org, 
	m.szyprowski@samsung.com, paulmck@kernel.org, rdunlap@infradead.org, 
	robin.murphy@arm.com, samuel@sholland.org, suravee.suthikulpanit@amd.com, 
	sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org, 
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org, will@kernel.org, 
	yu-cheng.yu@intel.com, bagasdotme@gmail.com, mkoutny@suse.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_061912_668174_57184F51 
X-CRM114-Status: GOOD (  18.85  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBNYXIgMTUsIDIwMjQgYXQgNTo1M+KAr1BNIEpvZXJnIFJvZWRlbCA8am9yb0A4Ynl0
ZXMub3JnPiB3cm90ZToKPgo+IEhpIERhdmlkLAo+Cj4gT24gRnJpLCBNYXIgMTUsIDIwMjQgYXQg
MDI6MzM6NTNQTSAtMDcwMCwgRGF2aWQgUmllbnRqZXMgd3JvdGU6Cj4gPiBKb2VyZywgaXMgdGhp
cyBzZXJpZXMgYW50aWNpcGF0ZWQgdG8gYmUgcXVldWVkIHVwIGluIHRoZSBjb3JlIGJyYW5jaCBv
Zgo+ID4gZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2pvcm8vaW9tbXUu
Z2l0IHNvIGl0IGdldHMgaW50bwo+ID4gbGludXgtbmV4dD8KPiA+Cj4gPiBUaGlzIG9ic2VydmFi
aWxpdHkgc2VlbXMgcGFydGljdWxhcmx5IHVzZWZ1bCBzbyB0aGF0IHdlIGNhbiBtb25pdG9yIGFu
ZAo+ID4gYWxlcnQgb24gYW55IHVuZXhwZWN0ZWQgaW5jcmVhc2VzICh1bmJvdW5kZWQgbWVtb3J5
IGdyb3d0aCBmcm9tIHRoaXMKPiA+IHN1YnN5c3RlbSBoYXMgaW4gdGhlIHBhc3QgY2F1c2VkIHVz
IGlzc3VlcyBiZWZvcmUgdGhlIG1lbW9yeSBpcyBvdGhlcndpc2UKPiA+IG5vdCBvYnNlcnZhYmxl
IGJ5IGhvc3Qgc29mdHdhcmUpLgo+ID4KPiA+IE9yIGFyZSB3ZSBzdGlsbCB3YWl0aW5nIG9uIGNv
ZGUgcmV2aWV3cyBmcm9tIHNvbWUgZm9sa3MgdGhhdCB3ZSBzaG91bGQKPiA+IHBpbmc/Cj4KPiBB
IGZldyBtb3JlIHJldmlld3Mgd291bGQgY2VydGFpbmx5IGhlbHAsIGJ1dCBJIHdpbGwgYWxzbyBk
byBhIHJldmlldyBvbgo+IG15IG93bi4gSWYgdGhpbmdzIGFyZSBsb29raW5nIGdvb2QgSSBjYW4g
bWVyZ2UgaXQgaW50byB0aGUgaW9tbXUgdHJlZQo+IHdoZW4gNi45LXJjMyBpcyByZWxlYXNlZCAo
d2hpY2ggaXMgdGhlIHVzdWFsIHRpbWUgSSBzdGFydCBtZXJnaW5nIG5ldwo+IHN0dWZmKS4KCkhp
IEpvZXJnLAoKV291bGQgaXQgbWFrZSBzZW5zZSB0byBzdGFnZSB0aGlzIHNlcmllcyBpbiBhbiB1
bnN0YWJsZSBicmFuY2ggdG8gZ2V0Cm1vcmUgdGVzdCBjb3ZlcmFnZSBmcm9tIHRoZSAwLWRheSBy
b2JvdHM/CgpUaGFuayB5b3UsClBhc2hhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
