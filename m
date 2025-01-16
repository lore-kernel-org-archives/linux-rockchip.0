Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86A08C02183
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jan 2025 10:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZhRjD9kkitLPx1gUbmzB8zzw3Ikhor7/kpsHrmnqM4=; b=YlqNHGr0K7ZNAt
	5yGTWx5WAFXuqDVKPPcODoUy0HUl3NG3K9v2gniDEIFAFI1Twbe4kHE7ULltCXl2xB81JwQIpFgLq
	2EUget0pdWgbYNdQHOS9XBqc4L1W9Z2gffBYO+31EOPRq+aAeocs+CF2zT6hnPESSA06Dgu4h+RCi
	c3H4nanXouEn9szgq83FMwFzWsuPBHeACrc5N9qUPTOBh+8ENU1ZQ5eN1Gu0IvZsQGTmhNF7bgM2M
	pzMeICL1uH4s8bR84w4d1K8TPc/U+L2QKdgR44HG7vsbn7O1A8v64CEQtEpSmblrYd0/j7baqPw2r
	EOoWv8qBbYtcBZ10mS7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYNE0-0000000EXKW-0y5p;
	Thu, 16 Jan 2025 10:35:44 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYNDx-0000000EXI3-0feR
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jan 2025 10:35:42 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5401bd6cdb7so793760e87.2
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jan 2025 02:35:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737023739; x=1737628539; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gprmJm/Cl6p6869D60XQ3XjbtrOWLJEOxZITgqe2J5o=;
        b=SnNy5V7qS7pBJjr0itblcoh5/hhnqHcGK8BZSTNLkNh/s3+bb0fl0OiYn0JUv6MJJD
         4wfcjlp0ePjuAq2MCJy15ODaB+EuW8Ozj8Q9iagckh30znX/zs5J4KFTwaVHY2fEvnzN
         dWyvtfJj3zd0PnbgWcsf/5RZjZfxaS8L1mAguVjtxUuFP2i4pSRmML59I+dKJtqGeaoF
         i5qpU0aaep/JcFQJwC8ow0q2TACsRFXtwHbmBywmHnIa1AQqiVxTgQWkzBcSz26VeDsp
         O8+oI8SyXdITWi0mMrbGOZIsBwsa5+lMpopTK/yitKalGmCX7ipy9cNRyChDDgeV2apG
         aeBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737023739; x=1737628539;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gprmJm/Cl6p6869D60XQ3XjbtrOWLJEOxZITgqe2J5o=;
        b=c/7s2WtW4nISb68SrjpGn4V4l/yF6AMq1jdhvOIYRd/nq1pTNtteFyiSClrU38QqEa
         XUIou+HzSQm1fuqgvv7G/3ZnQbnZhurmqvFsGdMvdyi453zomJlrBh+flV2NC7KE3qxl
         PMmLmJ9+tAHqS2qWv9//AOHVxce9sxvADBVbRbiQoUnEJqWakejZFSbiujD3PdYqomrq
         KvZexBlbSIsSdiVz5PI+bF+V3qXkAMo+iHQI6fO1zWzSgmesbJFp9X/HLbTheZGcBnhb
         VeThXgT3dH+SYXFibPaIQmL7fqet7NvO150Tgcyw09qZPCg4yQCNIZdr/hIuAV/AZZ0g
         +15w==
X-Forwarded-Encrypted: i=1; AJvYcCWBKxJ+GOkTMMKbrGzaUu5PF58uFzben/zOwwFKaitoPni9ZXJeEIGSweATqquEh48jb1WPlKE7y7fLnq35Ag==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzs9Nu2+seeRtgG+BvEnKyQdDo6QDwgj86/8/Hu6fARTxAXzCx5
	J6Pf+HD10Ap99ex8c8KrrqL7aSiNoXRUa5T05rbDFGNQ8ghb/FZhtoywulkn+qU=
X-Gm-Gg: ASbGncvMGn9C3nsyFmhHtDoHnh3vLZ7FtL1ZxTUvbAeXypQAnYfV2fjDDv3acDeAnFP
	WiJvJl/S/i2jl3wb2lEPflvL515bWwX9Akxm9d1zNBsbVIIJ1RMn0IoVURLgFvt39mZ8wPCWj4S
	cGG+Mpep1aDooDHRDncNfN7DtbXWPmLcm0hZASsgvFV6GPiRyVOmvfpbheGeQTxm9RhVLK5mrzk
	wU6unrottFgIx/0ryaAWl/27RbxQeZGmPLqbGRDqRhMiWvGhYiSn8jOuczSu0v8bgqtabObaHJH
	6grUMNSizNectMMM91ToX3Rh5mfae8D2NZI1
X-Google-Smtp-Source: AGHT+IH3G1Mnr8k23AF5/dIs7iAuJyOHJCwOMDmvWc4umnN+swRWG+FLBCp9QsFSdvm1xDWFrQeEdg==
X-Received: by 2002:a05:6512:3d27:b0:540:20a9:9ab5 with SMTP id 2adb3069b0e04-54284824476mr9777793e87.50.1737023738809;
        Thu, 16 Jan 2025 02:35:38 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be49d6esm2261466e87.50.2025.01.16.02.35.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 02:35:37 -0800 (PST)
Date: Thu, 16 Jan 2025 12:35:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
	imx@lists.linux.dev, linux-samsung-soc@vger.kernel.org, nouveau@lists.freedesktop.org, 
	virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org, 
	intel-xe@lists.freedesktop.org, xen-devel@lists.xenproject.org, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Andy Yan <andyshrk@163.com>, Daniel Stone <daniel@fooishbar.org>
Subject: Re: [PATCH v2 25/25] drm/xlnx: Compute dumb-buffer sizes with
 drm_mode_size_dumb()
Message-ID: <xz5ncq67bgmdase2jg3cfvyaxpiwhol2eqpfzow6dqpauvslo5@2w3rw27lhnxo>
References: <f3ba05c7-6e49-4641-a3f9-ba418ebdb7c3@ideasonboard.com>
 <c6735280-7c32-4319-8ca9-a7305d8117c3@suse.de>
 <d67adb03-5cd0-4ac9-af58-cf4446dacee3@ideasonboard.com>
 <0ea6be58-0e04-4172-87cd-064a3e4a43bc@suse.de>
 <f35cb350-6be9-48ca-ad7e-e9dd418281d5@ideasonboard.com>
 <4af0b6a7-c16a-4187-bbf5-365a9c86de21@suse.de>
 <e327ad84-b5c9-4480-b873-dc3aca605538@ideasonboard.com>
 <a2bbeb47-2569-4ee0-9265-92bab139bdc6@suse.de>
 <f3833771-fcd7-45dc-9019-1525fef34429@ideasonboard.com>
 <CAMuHMdXxYa+Na3XxpLTy=-eUL_zQ9kAiUKYu-E04u3KWApusSA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXxYa+Na3XxpLTy=-eUL_zQ9kAiUKYu-E04u3KWApusSA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_023541_203783_981D373C 
X-CRM114-Status: GOOD (  44.02  )
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

T24gVGh1LCBKYW4gMTYsIDIwMjUgYXQgMTE6MTc6NTBBTSArMDEwMCwgR2VlcnQgVXl0dGVyaG9l
dmVuIHdyb3RlOgo+IE9uIFRodSwgSmFuIDE2LCAyMDI1IGF0IDExOjAz4oCvQU0gVG9taSBWYWxr
ZWluZW4KPiA8dG9taS52YWxrZWluZW5AaWRlYXNvbmJvYXJkLmNvbT4gd3JvdGU6Cj4gPiBPbiAx
Ni8wMS8yMDI1IDEwOjA5LCBUaG9tYXMgWmltbWVybWFubiB3cm90ZToKPiA+ID4gQW0gMTUuMDEu
MjUgdW0gMTU6MjAgc2NocmllYiBUb21pIFZhbGtlaW5lbjoKPiA+ID4gWy4uLl0KPiA+ID4+Cj4g
PiA+PiBNeSBwb2ludCBpcyB0aGF0IHdlIGhhdmUgdGhlIGN1cnJlbnQgVUFQSSwgYW5kIHdlIGhh
dmUgdXNlcnNwYWNlIHVzaW5nCj4gPiA+PiBpdCwgYnV0IHdlIGRvbid0IGhhdmUgY2xlYXIgcnVs
ZXMgd2hhdCB0aGUgaW9jdGwgZG9lcyB3aXRoIHNwZWNpZmljCj4gPiA+PiBwYXJhbWV0ZXJzLCBh
bmQgd2UgZG9uJ3QgZG9jdW1lbnQgaG93IGl0IGhhcyB0byBiZSB1c2VkLgo+ID4gPj4KPiA+ID4+
IFBlcmhhcHMgdGhlIHNpdHVhdGlvbiBpcyBiYWQsIGFuZCBhbGwgd2UgY2FuIHJlYWxseSBzYXkg
aXMgdGhhdAo+ID4gPj4gQ1JFQVRFX0RVTUIgb25seSB3b3JrcyBmb3IgdXNlIHdpdGggc2ltcGxl
IFJHQiBmb3JtYXRzLCBhbmQgdGhlCj4gPiA+PiBiZWhhdmlvciBmb3IgYWxsIG90aGVyIGZvcm1h
dHMgaXMgcGxhdGZvcm0gc3BlY2lmaWMuIEJ1dCBJIHRoaW5rIGV2ZW4KPiA+ID4+IHRoYXQgd291
bGQgYmUgdmFsdWFibGUgaW4gdGhlIFVBUEkgZG9jcy4KPiA+ID4KPiA+ID4gVG8gYmUgaG9uZXN0
LCBJIHdvdWxkIG5vdCB3YW50IHRvIHNwZWNpZnkgYmVoYXZpb3IgZm9yIGFueXRoaW5nIGJ1dCB0
aGUKPiA+ID4gbGluZWFyIFJHQiBmb3JtYXRzLiBJZiBhbnl0aGluZywgSSdkIHRha2UgRGFuaWVs
J3MgcmVwbHkgbWFpbCBmb3IKPiA+ID4gZG9jdW1lbnRhdGlvbiBhcy1pcy4gQW55b25lIHN0cmV0
Y2hpbmcgdGhlIFVBUEkgYmV5b25kIFJHQiBpcyBvbiB0aGVpciBvd24uCj4gPiA+Cj4gPiA+PiBU
aGlua2luZyBhYm91dCB0aGlzLCBJIHdvbmRlciBpZiB0aGlzIGNoYW5nZSBpcyBnb29kIGZvciBv
bWFwZHJtIG9yCj4gPiA+PiB4aWxpbnggKHByb2JhYmx5IG90aGVyIHBsYXRmb3JtcyB0b28gdGhh
dCBzdXBwb3J0IG5vbi1zaW1wbGUgbm9uLVJHQgo+ID4gPj4gZm9ybWF0cyB2aWEgZHVtYiBidWZm
ZXJzKTogd2l0aG91dCB0aGlzIHBhdGNoLCBpbiBib3RoIGRyaXZlcnMsIHRoZQo+ID4gPj4gcGl0
Y2ggY2FsY3VsYXRpb25zIGp1c3QgdGFrZSB0aGUgYnBwIGFzIGJpdC1wZXItcGl4ZWxzLCBhbGln
biBpdCB1cCwKPiA+ID4+IGFuZCB0aGF0J3MgaXQuCj4gPiA+Pgo+ID4gPj4gV2l0aCB0aGlzIHBh
dGNoIHdlIGVuZCB1cCB1c2luZyBkcm1fZHJpdmVyX2NvbG9yX21vZGVfZm9ybWF0KCksIGFuZAo+
ID4gPj4gYWxpZ25pbmcgYnVmZmVycyBhY2NvcmRpbmcgdG8gUkdCIGZvcm1hdHMgZmlndXJlZCBv
dXQgdmlhIGhldXJpc3RpY3MuCj4gPiA+PiBJdCBkb2VzIGhhcHBlbiB0byB3b3JrLCBmb3IgdGhl
IGZvcm1hdHMgSSB0ZXN0ZWQsIGJ1dCBpdCBzb3VuZHMgbGlrZQo+ID4gPj4gc29tZXRoaW5nIHRo
YXQgbWlnaHQgZWFzaWx5IG5vdCB3b3JrLCBhcyBpdCdzIGRvaW5nIGFkanVzdG1lbnRzIGJhc2Vk
Cj4gPiA+PiBvbiB3cm9uZyBmb3JtYXQuCj4gPiA+Pgo+ID4gPj4gU2hvdWxkIHdlIGhhdmUgYW5v
dGhlciB2ZXJzaW9uIG9mIGRybV9tb2RlX3NpemVfZHVtYigpIHdoaWNoIGp1c3QKPiA+ID4+IGNh
bGN1bGF0ZXMgdXNpbmcgdGhlIGJwcCwgd2l0aG91dCB0aGUgZHJtX2RyaXZlcl9jb2xvcl9tb2Rl
X2Zvcm1hdCgpCj4gPiA+PiBwYXRoPyBPciBkb2VzIHRoZSBkcm1fZHJpdmVyX2NvbG9yX21vZGVf
Zm9ybWF0KCkgcGF0aCBwcm92aWRlIHNvbWUKPiA+ID4+IHZhbHVlIGZvciB0aGUgZHJpdmVycyB0
aGF0IGRvIG5vdCBjdXJyZW50bHkgZG8gYW55dGhpbmcgc2ltaWxhcj8KPiA+ID4KPiA+ID4gV2l0
aCB0aGUgUkdCLW9ubHkgcnVsZSwgdXNpbmcgZHJtX2RyaXZlcl9jb2xvcl9tb2RlX2Zvcm1hdCgp
IG1ha2VzCj4gPiA+IHNlbnNlLiBJdCBhbGlnbnMgZHVtYiBidWZmZXJzIGFuZCB2aWRlbz0sIHBy
b3ZpZGVzIGVycm9yIGNoZWNraW5nLCBhbmQKPiA+ID4gb3ZlcmFsbCBoYXJtb25pemVzIGNvZGUu
IFRoZSBmYWxsYmFjayBpcyBvbmx5IHJlcXVpcmVkIGJlY2F1c2Ugb2YgdGhlCj4gPiA+IGV4aXN0
aW5nIG9kZCBjYXNlcyB0aGF0IGFscmVhZHkgYmVuZCB0aGUgVUFQSSdzIHJ1bGVzLgo+ID4KPiA+
IEkgaGF2ZSB0byBkaXNhZ3JlZSBoZXJlLgo+ID4KPiA+IE9uIHRoZSBwbGF0Zm9ybXMgSSBoYXZl
IGJlZW4gdXNpbmcgKG9tYXAsIHRpZHNzLCB4aWxpbngsIHJjYXIpIHRoZSBkdW1iCj4gPiBidWZm
ZXJzIGFyZSB0aGUgb25seSBidWZmZXJzIHlvdSBjYW4gZ2V0IGZyb20gdGhlIERSTSBkcml2ZXIu
IFRoZSBkdW1iCj4gPiBidWZmZXJzIGhhdmUgYmVlbiB1c2VkIHRvIGFsbG9jYXRlIGxpbmVhciBh
bmQgbXVsdGlwbGFuYXIgWVVWIGJ1ZmZlcnMKPiA+IGZvciBhIHZlcnkgbG9uZyB0aW1lIG9uIHRo
b3NlIHBsYXRmb3Jtcy4KPiA+Cj4gPiBJIHRyaWVkIHRvIGxvb2sgYXJvdW5kLCBidXQgSSBkaWQg
bm90IGZpbmQgYW55IG1lbnRpb25zIHRoYXQgQ1JFQVRFX0RVTUIKPiA+IHNob3VsZCBvbmx5IGJl
IHVzZWQgZm9yIFJHQiBidWZmZXJzLiBJcyBhbnlvbmUgb3V0c2lkZSB0aGUgY29yZQo+ID4gZGV2
ZWxvcGVycyBldmVuIGF3YXJlIG9mIGl0Pwo+ID4KPiA+IElmIHdlIGRvbid0IHVzZSBkdW1iIGJ1
ZmZlcnMgdGhlcmUsIHdoZXJlIGRvIHdlIGdldCB0aGUgYnVmZmVycz8gTWF5YmUKPiA+IGZyb20g
YSB2NGwyIGRldmljZSBvciBmcm9tIGEgZ3B1IGRldmljZSwgYnV0IG9mdGVuIHlvdSBkb24ndCBo
YXZlIHRob3NlLgo+ID4gRE1BX0hFQVAgaXMgdGhlcmUsIG9mIGNvdXJzZS4KPiAKPiBXaHkgY2Fu
J3QgdGhlcmUgYmUgYSB2YXJpYW50IHRoYXQgdGFrZXMgYSBwcm9wZXIgZm91cmNjIGZvcm1hdCBp
bnN0ZWFkIG9mCj4gYW4gaW1wcmVjaXNlIGJwcCB2YWx1ZT8KCkJhY2t3YXJkcyBjb21wYXRpYmls
aXR5LiBXZSBjYW4gYWRkIGFuIElPQ1RMIGZvciBZVVYgLyBldGMuIEJ1dAp1c2Vyc3BhY2UgbXVz
dCBiZSBhYmxlIHRvIGNvbnRpbnVlIGFsbG9jYXRpbmcgWVVWIGJ1ZmZlcnMgdGhyb3VnaApDUkVB
VEVfRFVNQi4KCj4gCj4gR3J7b2V0amUsZWV0aW5nfXMsCj4gCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgR2VlcnQKPiAKPiAtLSAKPiBHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3Rz
IG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCj4gCj4gSW4gcGVy
c29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYg
YSBoYWNrZXIuIEJ1dAo+IHdoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNh
eSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgotLSAKV2l0aCBiZXN0IHdpc2hlcwpE
bWl0cnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
