Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D293C02183
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jan 2025 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MUzPijPL6f6adyKmEewwtYe9glr6czNz4R0YI8SnWz4=; b=LlSGfUKgk3Jiq5
	iQzpZqYX+qnWktEHi773Wr0f6mPM2wzWr/q020FVZ1sMY9t5diIeZQ95J6nsesnWf+wp/sdXWTb/K
	czUQYQmNw2rxumhPzxu+fcee9fgfT500Fy00xDkcRoz6o1NEPk94YwjaM7ej92vZj08PR46u5ytA+
	yyxPgGyf6JmoJimMm9R96EBgiwi7HzeDoUZgui6uwe9MpI/LEtqUAsaLLYdsE0TShCipz/w0hYASI
	tuKZPDUMAsmorKctUnmDMYr51puRQk6ZliYdKuNnWgBwHqRL+AJuTibRvYzdFUoy9pYc6NgpYHoh7
	Q3+UQ1oCsEOcIhJQGmUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYN3Q-0000000EUIZ-1TGm;
	Thu, 16 Jan 2025 10:24:48 +0000
Received: from mail-pl1-f180.google.com ([209.85.214.180])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYN3N-0000000EUHV-49al;
	Thu, 16 Jan 2025 10:24:47 +0000
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-21644aca3a0so15228585ad.3;
        Thu, 16 Jan 2025 02:24:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737023085; x=1737627885;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hEBC4YtYCJgyImQmIlExzdfeh9O+mJTPH+y0EtpZi1E=;
        b=ZxtXIIh3V+JhC1TkmQEMbF+fCqnnDviQ91Jull1dZggNZU+4oCWyYrmRCRPi1YTMIR
         1yav4Ih4D5kWlqwuGmZVgF+4YKC055oa+2KgGiOIuuYoDhGPJFpAqq6gckJTYdadHA0z
         5DFI982JLQbyAUhV8J2hBwkvOHkZ6+2DEVHYrp1gdcIXcE9rxfN/M5IIsdTOEwZ6DPLp
         vT3QvBLSOJKOdWuUrisOFtUjhW6j+4Vi8B3fxFVd4QMn6Zc5gYlKntfoA9A3b4t6q+1E
         SjeRF+EBJGjpa7USIyRhVZ7LzjRLyiL+GfYVHaW2nr9h76Clkt2UQGhlHhveZ4uR6a0D
         SBhQ==
X-Forwarded-Encrypted: i=1; AJvYcCUyNvEXv+q+zouGlIJ6IKzL17isPJFbKWuHYW6qiq1lbd+cL4jeE30H+2413nEQKNjzr639K/y8Z95p56tFrzs=@lists.infradead.org, AJvYcCV8D4PjazBWI5aA4M2Hi+lqRJvGOvdLgmcvHBPRhKUaAVjNgoU95AKoRMaCzkyY1Wvb/Cixnw+z2T4X8rCOYA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwB47uvwgBAKspnuudSbbyCcJIOuLGKe6vkqQrTRrVuFcYhQNhK
	6GU+5kyvFBgTr++6/NHKycoRV1va5EbaqcmCdD+TZeqqzFwSX1ELRXEORVDbQk0=
X-Gm-Gg: ASbGnctA49gf/zhnmB+lW18n5Sq76MN7No5zqV7u3yDl4vIk14djlFhK1SeBP5vYvsW
	/tQ0jLPx2eEVf/dRKgLibIZVtj110OKfxikUdrdzuljKFGb2MI4gXkPLKdtzfj99E9UDgbGZ1k0
	IrovIIPHZcPnBUGNdLjf5ECHOgOqzETgm/yEtnJMGx0t5ghD4fo7x6GGSZZ6bUOEDXpap7KjT4C
	q2Ma3sw0HGc87hKva+RASD3rE9kURZnT+zkLiXq4dSOOfoFoZ3M73oIhKslwgU1BZYuzS/FBnzA
	oEVfTADdi1DahdYYmAZQY3Q=
X-Google-Smtp-Source: AGHT+IEdJHp80+VW/Nk9goKvWlIOxWSeakS0tzyODFxjFDmO//aNcVC6D8zy+tYJfw8u4/velgzVig==
X-Received: by 2002:a17:902:ce88:b0:215:a3fd:61f5 with SMTP id d9443c01a7336-21a83f46a1dmr527410625ad.5.1737023084717;
        Thu, 16 Jan 2025 02:24:44 -0800 (PST)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com. [209.85.214.170])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f22dcf5sm95167695ad.181.2025.01.16.02.24.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2025 02:24:44 -0800 (PST)
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-21636268e43so15700675ad.2;
        Thu, 16 Jan 2025 02:24:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUrp9F58SHJ7IA6LSrPtBpuBTLossOKHLb1a5BIrEYxMLSJei+8PzelcnIoGDIgSIiUKnR/9UYmin/WnOuDtQ==@lists.infradead.org, AJvYcCXfoDH0zZJirEfe7uocqnRZQ0EzJYeVmmBmIH0s5znOfue7kBrRbbRT6RA49oJK+E8Ko8rTvo72AC1mSwnXD4s=@lists.infradead.org
X-Received: by 2002:a05:6102:3a14:b0:4b2:5c2a:cc9d with SMTP id
 ada2fe7eead31-4b3d0dc0215mr29032050137.16.1737022681773; Thu, 16 Jan 2025
 02:18:01 -0800 (PST)
MIME-Version: 1.0
References: <20250109150310.219442-1-tzimmermann@suse.de> <20250109150310.219442-26-tzimmermann@suse.de>
 <cdbe483d-0895-47aa-8c83-1c28220f4a02@ideasonboard.com> <bc97b92e-7f8a-4b92-af8a-20fa165ead55@suse.de>
 <f3ba05c7-6e49-4641-a3f9-ba418ebdb7c3@ideasonboard.com> <c6735280-7c32-4319-8ca9-a7305d8117c3@suse.de>
 <d67adb03-5cd0-4ac9-af58-cf4446dacee3@ideasonboard.com> <0ea6be58-0e04-4172-87cd-064a3e4a43bc@suse.de>
 <f35cb350-6be9-48ca-ad7e-e9dd418281d5@ideasonboard.com> <4af0b6a7-c16a-4187-bbf5-365a9c86de21@suse.de>
 <e327ad84-b5c9-4480-b873-dc3aca605538@ideasonboard.com> <a2bbeb47-2569-4ee0-9265-92bab139bdc6@suse.de>
 <f3833771-fcd7-45dc-9019-1525fef34429@ideasonboard.com>
In-Reply-To: <f3833771-fcd7-45dc-9019-1525fef34429@ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 16 Jan 2025 11:17:50 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXxYa+Na3XxpLTy=-eUL_zQ9kAiUKYu-E04u3KWApusSA@mail.gmail.com>
X-Gm-Features: AbW1kvbCtGVmgNJ1oRyFqRTMVO1bCUCk0WwRoRvrPqq521tQuGLKMDrWmAM4CG4
Message-ID: <CAMuHMdXxYa+Na3XxpLTy=-eUL_zQ9kAiUKYu-E04u3KWApusSA@mail.gmail.com>
Subject: Re: [PATCH v2 25/25] drm/xlnx: Compute dumb-buffer sizes with drm_mode_size_dumb()
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, airlied@gmail.com, simona@ffwll.ch, 
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
	imx@lists.linux.dev, linux-samsung-soc@vger.kernel.org, 
	nouveau@lists.freedesktop.org, virtualization@lists.linux.dev, 
	spice-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org, 
	intel-xe@lists.freedesktop.org, xen-devel@lists.xenproject.org, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Andy Yan <andyshrk@163.com>, 
	Daniel Stone <daniel@fooishbar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_022446_022668_5487BBEB 
X-CRM114-Status: GOOD (  39.20  )
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

T24gVGh1LCBKYW4gMTYsIDIwMjUgYXQgMTE6MDPigK9BTSBUb21pIFZhbGtlaW5lbgo8dG9taS52
YWxrZWluZW5AaWRlYXNvbmJvYXJkLmNvbT4gd3JvdGU6Cj4gT24gMTYvMDEvMjAyNSAxMDowOSwg
VGhvbWFzIFppbW1lcm1hbm4gd3JvdGU6Cj4gPiBBbSAxNS4wMS4yNSB1bSAxNToyMCBzY2hyaWVi
IFRvbWkgVmFsa2VpbmVuOgo+ID4gWy4uLl0KPiA+Pgo+ID4+IE15IHBvaW50IGlzIHRoYXQgd2Ug
aGF2ZSB0aGUgY3VycmVudCBVQVBJLCBhbmQgd2UgaGF2ZSB1c2Vyc3BhY2UgdXNpbmcKPiA+PiBp
dCwgYnV0IHdlIGRvbid0IGhhdmUgY2xlYXIgcnVsZXMgd2hhdCB0aGUgaW9jdGwgZG9lcyB3aXRo
IHNwZWNpZmljCj4gPj4gcGFyYW1ldGVycywgYW5kIHdlIGRvbid0IGRvY3VtZW50IGhvdyBpdCBo
YXMgdG8gYmUgdXNlZC4KPiA+Pgo+ID4+IFBlcmhhcHMgdGhlIHNpdHVhdGlvbiBpcyBiYWQsIGFu
ZCBhbGwgd2UgY2FuIHJlYWxseSBzYXkgaXMgdGhhdAo+ID4+IENSRUFURV9EVU1CIG9ubHkgd29y
a3MgZm9yIHVzZSB3aXRoIHNpbXBsZSBSR0IgZm9ybWF0cywgYW5kIHRoZQo+ID4+IGJlaGF2aW9y
IGZvciBhbGwgb3RoZXIgZm9ybWF0cyBpcyBwbGF0Zm9ybSBzcGVjaWZpYy4gQnV0IEkgdGhpbmsg
ZXZlbgo+ID4+IHRoYXQgd291bGQgYmUgdmFsdWFibGUgaW4gdGhlIFVBUEkgZG9jcy4KPiA+Cj4g
PiBUbyBiZSBob25lc3QsIEkgd291bGQgbm90IHdhbnQgdG8gc3BlY2lmeSBiZWhhdmlvciBmb3Ig
YW55dGhpbmcgYnV0IHRoZQo+ID4gbGluZWFyIFJHQiBmb3JtYXRzLiBJZiBhbnl0aGluZywgSSdk
IHRha2UgRGFuaWVsJ3MgcmVwbHkgbWFpbCBmb3IKPiA+IGRvY3VtZW50YXRpb24gYXMtaXMuIEFu
eW9uZSBzdHJldGNoaW5nIHRoZSBVQVBJIGJleW9uZCBSR0IgaXMgb24gdGhlaXIgb3duLgo+ID4K
PiA+PiBUaGlua2luZyBhYm91dCB0aGlzLCBJIHdvbmRlciBpZiB0aGlzIGNoYW5nZSBpcyBnb29k
IGZvciBvbWFwZHJtIG9yCj4gPj4geGlsaW54IChwcm9iYWJseSBvdGhlciBwbGF0Zm9ybXMgdG9v
IHRoYXQgc3VwcG9ydCBub24tc2ltcGxlIG5vbi1SR0IKPiA+PiBmb3JtYXRzIHZpYSBkdW1iIGJ1
ZmZlcnMpOiB3aXRob3V0IHRoaXMgcGF0Y2gsIGluIGJvdGggZHJpdmVycywgdGhlCj4gPj4gcGl0
Y2ggY2FsY3VsYXRpb25zIGp1c3QgdGFrZSB0aGUgYnBwIGFzIGJpdC1wZXItcGl4ZWxzLCBhbGln
biBpdCB1cCwKPiA+PiBhbmQgdGhhdCdzIGl0Lgo+ID4+Cj4gPj4gV2l0aCB0aGlzIHBhdGNoIHdl
IGVuZCB1cCB1c2luZyBkcm1fZHJpdmVyX2NvbG9yX21vZGVfZm9ybWF0KCksIGFuZAo+ID4+IGFs
aWduaW5nIGJ1ZmZlcnMgYWNjb3JkaW5nIHRvIFJHQiBmb3JtYXRzIGZpZ3VyZWQgb3V0IHZpYSBo
ZXVyaXN0aWNzLgo+ID4+IEl0IGRvZXMgaGFwcGVuIHRvIHdvcmssIGZvciB0aGUgZm9ybWF0cyBJ
IHRlc3RlZCwgYnV0IGl0IHNvdW5kcyBsaWtlCj4gPj4gc29tZXRoaW5nIHRoYXQgbWlnaHQgZWFz
aWx5IG5vdCB3b3JrLCBhcyBpdCdzIGRvaW5nIGFkanVzdG1lbnRzIGJhc2VkCj4gPj4gb24gd3Jv
bmcgZm9ybWF0Lgo+ID4+Cj4gPj4gU2hvdWxkIHdlIGhhdmUgYW5vdGhlciB2ZXJzaW9uIG9mIGRy
bV9tb2RlX3NpemVfZHVtYigpIHdoaWNoIGp1c3QKPiA+PiBjYWxjdWxhdGVzIHVzaW5nIHRoZSBi
cHAsIHdpdGhvdXQgdGhlIGRybV9kcml2ZXJfY29sb3JfbW9kZV9mb3JtYXQoKQo+ID4+IHBhdGg/
IE9yIGRvZXMgdGhlIGRybV9kcml2ZXJfY29sb3JfbW9kZV9mb3JtYXQoKSBwYXRoIHByb3ZpZGUg
c29tZQo+ID4+IHZhbHVlIGZvciB0aGUgZHJpdmVycyB0aGF0IGRvIG5vdCBjdXJyZW50bHkgZG8g
YW55dGhpbmcgc2ltaWxhcj8KPiA+Cj4gPiBXaXRoIHRoZSBSR0Itb25seSBydWxlLCB1c2luZyBk
cm1fZHJpdmVyX2NvbG9yX21vZGVfZm9ybWF0KCkgbWFrZXMKPiA+IHNlbnNlLiBJdCBhbGlnbnMg
ZHVtYiBidWZmZXJzIGFuZCB2aWRlbz0sIHByb3ZpZGVzIGVycm9yIGNoZWNraW5nLCBhbmQKPiA+
IG92ZXJhbGwgaGFybW9uaXplcyBjb2RlLiBUaGUgZmFsbGJhY2sgaXMgb25seSByZXF1aXJlZCBi
ZWNhdXNlIG9mIHRoZQo+ID4gZXhpc3Rpbmcgb2RkIGNhc2VzIHRoYXQgYWxyZWFkeSBiZW5kIHRo
ZSBVQVBJJ3MgcnVsZXMuCj4KPiBJIGhhdmUgdG8gZGlzYWdyZWUgaGVyZS4KPgo+IE9uIHRoZSBw
bGF0Zm9ybXMgSSBoYXZlIGJlZW4gdXNpbmcgKG9tYXAsIHRpZHNzLCB4aWxpbngsIHJjYXIpIHRo
ZSBkdW1iCj4gYnVmZmVycyBhcmUgdGhlIG9ubHkgYnVmZmVycyB5b3UgY2FuIGdldCBmcm9tIHRo
ZSBEUk0gZHJpdmVyLiBUaGUgZHVtYgo+IGJ1ZmZlcnMgaGF2ZSBiZWVuIHVzZWQgdG8gYWxsb2Nh
dGUgbGluZWFyIGFuZCBtdWx0aXBsYW5hciBZVVYgYnVmZmVycwo+IGZvciBhIHZlcnkgbG9uZyB0
aW1lIG9uIHRob3NlIHBsYXRmb3Jtcy4KPgo+IEkgdHJpZWQgdG8gbG9vayBhcm91bmQsIGJ1dCBJ
IGRpZCBub3QgZmluZCBhbnkgbWVudGlvbnMgdGhhdCBDUkVBVEVfRFVNQgo+IHNob3VsZCBvbmx5
IGJlIHVzZWQgZm9yIFJHQiBidWZmZXJzLiBJcyBhbnlvbmUgb3V0c2lkZSB0aGUgY29yZQo+IGRl
dmVsb3BlcnMgZXZlbiBhd2FyZSBvZiBpdD8KPgo+IElmIHdlIGRvbid0IHVzZSBkdW1iIGJ1ZmZl
cnMgdGhlcmUsIHdoZXJlIGRvIHdlIGdldCB0aGUgYnVmZmVycz8gTWF5YmUKPiBmcm9tIGEgdjRs
MiBkZXZpY2Ugb3IgZnJvbSBhIGdwdSBkZXZpY2UsIGJ1dCBvZnRlbiB5b3UgZG9uJ3QgaGF2ZSB0
aG9zZS4KPiBETUFfSEVBUCBpcyB0aGVyZSwgb2YgY291cnNlLgoKV2h5IGNhbid0IHRoZXJlIGJl
IGEgdmFyaWFudCB0aGF0IHRha2VzIGEgcHJvcGVyIGZvdXJjYyBmb3JtYXQgaW5zdGVhZCBvZgph
biBpbXByZWNpc2UgYnBwIHZhbHVlPwoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAg
ICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMg
b2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFs
IGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFj
a2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9n
cmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
