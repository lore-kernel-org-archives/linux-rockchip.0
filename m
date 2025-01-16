Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2E3DC02180
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jan 2025 12:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VcFpFKBgkeNftOYgWNERRBdz9SkCGC07aAPd0FrkP4s=; b=XTr0Rqt7lDaJ0f
	T6O4esmTUmGMTPku7mCvzDuze/5kQea77TPrFV8ir1feUfjVzoyQou2Nq86z+PKLET8UkCSFB10un
	Cvh3X0/I/u5qxZ9UBFvmSc7VI0fxh8Sn1tdbrG/wOi96tv6Jie5sFqM77vSWUNRvsGb17ioJuaJT5
	TlAqJ2jWOyEg3tjRsqa69PNnBqIeOpKv6kgTYfBxha3ktRXycw78V6P4NTz+OTecDIoiW8p52Fikm
	Vd0CBLHIlHWBsjlNsFQbFSP65e706+ba4bO1qE9WT6Gv9zUEmKFqbNWjFUccvOJ5mtD2kCWRfeVpy
	w7ip4WHDs/D+UveJgU2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYOvn-0000000EsR7-392a;
	Thu, 16 Jan 2025 12:25:03 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYOvk-0000000EsPM-02jt
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jan 2025 12:25:01 +0000
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-7b6f95d2eafso84478985a.3
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jan 2025 04:24:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1737030299; x=1737635099; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GBwF2KOXlFDp1MGeRltem3iAJtpX3AYE0x8w+f0gonM=;
        b=TH3qu3jbDnJ5uQVatWCb1Fr53DJvD9frVswtQzA13bCLFIJoyCe3f/xks6w+TBNszr
         NvDxoBUM3mmljYcSf5AEP8AlHNMYB/lMVWu8HoN64CpoEKJTZNWq36qtJVvmiUjyprLg
         xG7+b5sbL3qPkBqszLBcWMw32tgSw08J5vEPrv33eQ2rM2lcZnHnzAbRHeVPVP16lBWE
         EmBUfc7jzbhg8sRQBtaynykER4efUUFan/K7DblZJiYiGrzswIOrLB3hGqkAtPAQynBF
         RAUvgaSqgD92EE8/7iN9fARpJVnMIy6NQSMUNZrVNldwZE4KWrt47i5kzDMPuV+gGSGf
         ONxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737030299; x=1737635099;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GBwF2KOXlFDp1MGeRltem3iAJtpX3AYE0x8w+f0gonM=;
        b=mmVRjxoMOFtPpq25AYSkvkI6wJOk82EsZscBPBfiQQujoF2L6NAFNw4gMzHFlGr6hc
         TUxeWjInWSWtj21DPOXkQdzqYAwXDLpQir6ImXdLDtKGhoUXkj0JhJyLhfa/JlWuSE+z
         yGgm9z6AjfN+hdHOYFr42ln01HSKqdIOQiJ0elT4IfojhXRwZXrWNiurJ5mxwsImkGr+
         txf9J5FvkY7VRTo2aqwAiXei0GGFJyBA10kO2CAmLJQBguBFWggBEv0lYAOc1uihcBha
         i2y7jLOLVuvChoK4rJ/mCq7XesCwGdS1/VrQppkCa5zzT/SLHWEWsNhZuuP42dgUv5aC
         4OxA==
X-Forwarded-Encrypted: i=1; AJvYcCXRt0o0YxU9v4GQ7lDIDikSgjcDpMJBM0NsU1jtOFmzMEaL/hn7Y/S7ng/ttZO76/S0XVNYxO4XCyl3KKlxuw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwS6Jrf7ujrrr4RmlR9cSSz9VJoiyBqpvGIZ9YszizEPnDC0SEc
	Jim6tLshFh/ROEl8FeRH/glA72E0tAEyGMCYVQCIM8y4/ATWy9+hFQ2vVlU8xvdHSm37FN/9Dc9
	Y3E2enj6E6U6iuy9Rer4Knev1H5pWwnUeOsCRBg==
X-Gm-Gg: ASbGncsEc7FMWQd/5v44lRALt+HNgOyaKEMAtzt/KJZAuws27QjZGUdLywNyb+ZH3wS
	O+ZykCxl3pudzQVihJsgTn9E99soHsDhU7OE=
X-Google-Smtp-Source: AGHT+IHYPoThOqCGG0mIrocl9o1givl0D/RoYwWOKY0kUiZ64KPF9cSvP+6N1Rd6ke2PYtdS9xOibflODkJbaGvT990=
X-Received: by 2002:a05:6214:528e:b0:6d9:3016:d0e7 with SMTP id
 6a1803df08f44-6df9b2b1a21mr442378366d6.29.1737030298608; Thu, 16 Jan 2025
 04:24:58 -0800 (PST)
MIME-Version: 1.0
References: <f3ba05c7-6e49-4641-a3f9-ba418ebdb7c3@ideasonboard.com>
 <c6735280-7c32-4319-8ca9-a7305d8117c3@suse.de> <d67adb03-5cd0-4ac9-af58-cf4446dacee3@ideasonboard.com>
 <0ea6be58-0e04-4172-87cd-064a3e4a43bc@suse.de> <f35cb350-6be9-48ca-ad7e-e9dd418281d5@ideasonboard.com>
 <4af0b6a7-c16a-4187-bbf5-365a9c86de21@suse.de> <e327ad84-b5c9-4480-b873-dc3aca605538@ideasonboard.com>
 <a2bbeb47-2569-4ee0-9265-92bab139bdc6@suse.de> <f3833771-fcd7-45dc-9019-1525fef34429@ideasonboard.com>
 <CAMuHMdXxYa+Na3XxpLTy=-eUL_zQ9kAiUKYu-E04u3KWApusSA@mail.gmail.com> <xz5ncq67bgmdase2jg3cfvyaxpiwhol2eqpfzow6dqpauvslo5@2w3rw27lhnxo>
In-Reply-To: <xz5ncq67bgmdase2jg3cfvyaxpiwhol2eqpfzow6dqpauvslo5@2w3rw27lhnxo>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 16 Jan 2025 12:24:47 +0000
X-Gm-Features: AbW1kvarRJv1VyJjUo1t8ScK0brJ2o4-Qq6ABYK10edUo6rgOW2PAccCb4uQWlM
Message-ID: <CAPj87rNS7quwfqDmxyrW8_vQ6tnrcfWUn=81aTduDXtmdVkkAg@mail.gmail.com>
Subject: Re: [PATCH v2 25/25] drm/xlnx: Compute dumb-buffer sizes with drm_mode_size_dumb()
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, freedreno@lists.freedesktop.org, 
	linux-arm-msm@vger.kernel.org, imx@lists.linux.dev, 
	linux-samsung-soc@vger.kernel.org, nouveau@lists.freedesktop.org, 
	virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-tegra@vger.kernel.org, intel-xe@lists.freedesktop.org, 
	xen-devel@lists.xenproject.org, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Andy Yan <andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_042500_148369_C49AA3F1 
X-CRM114-Status: GOOD (  22.54  )
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

T24gVGh1LCAxNiBKYW4gMjAyNSBhdCAxMDozNSwgRG1pdHJ5IEJhcnlzaGtvdgo8ZG1pdHJ5LmJh
cnlzaGtvdkBsaW5hcm8ub3JnPiB3cm90ZToKPiBPbiBUaHUsIEphbiAxNiwgMjAyNSBhdCAxMTox
Nzo1MEFNICswMTAwLCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4gPiBPbiBUaHUsIEphbiAx
NiwgMjAyNSBhdCAxMTowM+KAr0FNIFRvbWkgVmFsa2VpbmVuCj4gPiA8dG9taS52YWxrZWluZW5A
aWRlYXNvbmJvYXJkLmNvbT4gd3JvdGU6Cj4gPiA+IE9uIHRoZSBwbGF0Zm9ybXMgSSBoYXZlIGJl
ZW4gdXNpbmcgKG9tYXAsIHRpZHNzLCB4aWxpbngsIHJjYXIpIHRoZSBkdW1iCj4gPiA+IGJ1ZmZl
cnMgYXJlIHRoZSBvbmx5IGJ1ZmZlcnMgeW91IGNhbiBnZXQgZnJvbSB0aGUgRFJNIGRyaXZlci4g
VGhlIGR1bWIKPiA+ID4gYnVmZmVycyBoYXZlIGJlZW4gdXNlZCB0byBhbGxvY2F0ZSBsaW5lYXIg
YW5kIG11bHRpcGxhbmFyIFlVViBidWZmZXJzCj4gPiA+IGZvciBhIHZlcnkgbG9uZyB0aW1lIG9u
IHRob3NlIHBsYXRmb3Jtcy4KPiA+ID4KPiA+ID4gSSB0cmllZCB0byBsb29rIGFyb3VuZCwgYnV0
IEkgZGlkIG5vdCBmaW5kIGFueSBtZW50aW9ucyB0aGF0IENSRUFURV9EVU1CCj4gPiA+IHNob3Vs
ZCBvbmx5IGJlIHVzZWQgZm9yIFJHQiBidWZmZXJzLiBJcyBhbnlvbmUgb3V0c2lkZSB0aGUgY29y
ZQo+ID4gPiBkZXZlbG9wZXJzIGV2ZW4gYXdhcmUgb2YgaXQ/Cj4gPiA+Cj4gPiA+IElmIHdlIGRv
bid0IHVzZSBkdW1iIGJ1ZmZlcnMgdGhlcmUsIHdoZXJlIGRvIHdlIGdldCB0aGUgYnVmZmVycz8g
TWF5YmUKPiA+ID4gZnJvbSBhIHY0bDIgZGV2aWNlIG9yIGZyb20gYSBncHUgZGV2aWNlLCBidXQg
b2Z0ZW4geW91IGRvbid0IGhhdmUgdGhvc2UuCj4gPiA+IERNQV9IRUFQIGlzIHRoZXJlLCBvZiBj
b3Vyc2UuCj4gPgo+ID4gV2h5IGNhbid0IHRoZXJlIGJlIGEgdmFyaWFudCB0aGF0IHRha2VzIGEg
cHJvcGVyIGZvdXJjYyBmb3JtYXQgaW5zdGVhZCBvZgo+ID4gYW4gaW1wcmVjaXNlIGJwcCB2YWx1
ZT8KPgo+IEJhY2t3YXJkcyBjb21wYXRpYmlsaXR5LiBXZSBjYW4gYWRkIGFuIElPQ1RMIGZvciBZ
VVYgLyBldGMuIEJ1dAo+IHVzZXJzcGFjZSBtdXN0IGJlIGFibGUgdG8gY29udGludWUgYWxsb2Nh
dGluZyBZVVYgYnVmZmVycyB0aHJvdWdoCj4gQ1JFQVRFX0RVTUIuCgpSaWdodC4gSWYgYWxsb2Nh
dGluZyBZVVlWIGR1bWIgYnVmZmVycyB3b3JrcyBvbiBBTTY4IHRvZGF5LCB0aGVuIHdlCm5lZWQg
dG8ga2VlcCB0aGF0IHdvcmtpbmcuIEJ1dCBpdCBkb2Vzbid0IG1lYW4gd2Ugc2hvdWxkIGdvIG91
dCBvZiBvdXIKd2F5IHRvIG1ha2UgQ1JFQVRFX0RVTUIgd29yayBmb3IgZXZlcnkgWVVWIGZvcm1h
dCBvbiBldmVyeSBkZXZpY2UuCgpDdXJyZW50bHksIGRyaXZlcnMgYXJlIGZyZWUgdG8gaW1wbGVt
ZW50IHRoZWlyIG93biBpb2N0bHMgZm9yIGFueXRoaW5nCnNwZWNpZmljIHRoZXkgaGF2ZS4gQnV0
IGxpa2UgTGF1cmVudCBzYWlkLCBzdGFuZGFyZGlzaW5nIG9uIGhlYXBzIGFuZApob3cgdG8gY29t
bXVuaWNhdGUgcmVxdWlyZW1lbnRzIHRvIHVzZXJzcGFjZSB3cnQgaGVhcCBzZWxlY3Rpb24gLyBz
aXplCi8gYWxpZ25tZW50IC8gZXRjIGlzIGltbyBhIGJldHRlciBwYXRoIGZvcndhcmQgZm9yIHNv
bWV0aGluZyBnZW5lcmljLgoKQ2hlZXJzLApEYW5pZWwKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
