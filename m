Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78609CD1299
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 15:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ehebYMnxfp/Q6Vq21/XBP/+aykiqx2fc9C+IeJZRjU=; b=UxhPY9fwm/9/q2
	wUcQjcvBsfOTqmtNzbGNrXHq4E7QtL0CDyK6Rrt6+roWhp+UEacujoxHvcDBnn90tM70D7YbPnCGe
	qW9lCoIO+U/zMxvl8T5gBx310AdvSXjLuGwXwnftLovwqLIAHtHTea8DZz+kmSfn8iZiaMluzc5fS
	z/SgPm4BbsCrFNdgG2PJeAKkOvif3aUjDrhysYYyrj7JU7MITPv9EiuWXrW1gUouXiBOyivs0DJPo
	+wyIDZ8E0+n/budV1lx3YavVVsbbaTNI/4IkivyTouul3VFt9x9yHHlFl9mh7gPwpaKDa5G24JSB4
	sJS76ZQnQ8ysarRxCoYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruZXx-00000007hI9-0gcR;
	Wed, 10 Apr 2024 15:07:33 +0000
Received: from mail-yw1-x1136.google.com ([2607:f8b0:4864:20::1136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruZXt-00000007hGu-3D1o
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Apr 2024 15:07:31 +0000
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-6153d85053aso59560087b3.0
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Apr 2024 08:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712761647; x=1713366447; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VLKjsUom385xmd5NMGWlteZq1y2bkkhohjUJrbv4Shg=;
        b=QftLprBDPgS7lxfpYCFl1KIq4Dec8jk9UJf/5W2Dn5uypJeYrrWZ5r/MlQ+BM1l2fJ
         7hhNKN4KELBV99AVDry5YUYY7PZXZhTjlcNzGqayaePBAE1bulGeMiSwHGFPZPYm5rnb
         SdlkJPgFri2mb8Qny6S8JtyEpZqVKV9nkHXUi+Rp2ZuBNbqKQnUvpBE8+5Pe54jEMJ6H
         npwbzCQBEEh7W0zM7OrCKNxa2RMEFg2rHzPa4gG4BBN5LmurcZv+EMn8oDEv8XKNkMT7
         5CF8GqTmpvacYtpw0oG2kXzw5UMxlcbaTnKTxnyS033bABpbwgMDmROErPmRjjeFOe8Z
         VLDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712761647; x=1713366447;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VLKjsUom385xmd5NMGWlteZq1y2bkkhohjUJrbv4Shg=;
        b=hVt4SUNTaLePj4ztHwTG5T8ZYRwz/U+DE50RdVzFoB/c8OcPNhaMXyBg8Ts0KLw54L
         4JiYtGEHe8xeZYhiNGBIFCl1xJ45d7oMEtMD0YJtFBuvJ1OUZPz0E5iFh6k6oUIYQCzV
         FPJczF8G8uPZv+8IRHzRzy0LyHhv9SzfF5DFbK+W0PYYZcwk0kMBj9yrrVE84lJfrCGA
         7VousBX/YWz3eqZmAzE+kDxzKRPuAuaFbAUwlhdPHshLq26ne7bYM9b4WXlExct1RJ9Q
         nMHMPQFOQwimtAgDCfzT+zY/8CWCwnY5wSXQMMMumXAP24pU2KCPiaoGSYAm9NSIr8HE
         LOoA==
X-Forwarded-Encrypted: i=1; AJvYcCU5pIzMN8g4vcFCui9GINpTacBJAz7UiKQ0xJwpzkM2nXNQ5yRIicAvx2GkLMQgD34eJqpJfKUBoOwhXl8ElgqOH9klol21PdsOUbFEA3rUSmhf
X-Gm-Message-State: AOJu0YxlzVGXdBJVHwELp2OGQYal2C1g+5ahOb6CxLSb4ElVh251lpax
	Rkb9syon4z5Nw5zwonJOh+gWVKBYX0UAQXkHKkc+kN2KPGfQuoPMfCkOxlJ8Lj5WuY2JLQMa81m
	nNn4XbfsDOlE+edKxn8ThH+UJoUyn5Vl/nlsM
X-Google-Smtp-Source: AGHT+IF7TCK2LqrJgp8hV7cq9+Ry/b6lOirZ5fldgud6E7mUjNo54gC130kLZJeYihDRzjoyYJ8Lubhyj/db/BZNZCo=
X-Received: by 2002:a05:6902:1b83:b0:dd0:c12:411b with SMTP id
 ei3-20020a0569021b8300b00dd00c12411bmr3692287ybb.8.1712761647378; Wed, 10 Apr
 2024 08:07:27 -0700 (PDT)
MIME-Version: 1.0
References: <20211113062222.3743909-1-jay.xu@rock-chips.com>
 <1da5cdf0-ccb8-3740-cf96-794c4d5b2eb4@amd.com> <3175d41a-fc44-4741-91ac-005c8f21abb8@vivo.com>
 <9e6f1f52-db49-43bb-a0c2-b0ad12c28aa1@amd.com> <5c7ac24c-79fa-45fc-a4fd-5b8fc77a741b@vivo.com>
 <CABdmKX1OZ9yT3YQA9e7JzKND9wfiL-hnf87Q6v9pwtnAeLHrdA@mail.gmail.com> <0df41277-ded5-4a42-9df5-864d2b6646f5@amd.com>
In-Reply-To: <0df41277-ded5-4a42-9df5-864d2b6646f5@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 10 Apr 2024 08:07:15 -0700
Message-ID: <CABdmKX03Of7OE_9PfAy5DWcCwwvQvJGXDjzAE8c4WRrz_0Z_eg@mail.gmail.com>
Subject: Re: [PATCH] dma-buf: add DMA_BUF_IOCTL_SYNC_PARTIAL support
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Cc: Rong Qianfeng <11065417@vivo.com>, Rong Qianfeng <rongqianfeng@vivo.com>, 
	Jianqun Xu <jay.xu@rock-chips.com>, sumit.semwal@linaro.org, 
	pekka.paalanen@collabora.com, daniel.vetter@ffwll.ch, jason@jlekstrand.net, 
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_080730_043000_48CF925A 
X-CRM114-Status: GOOD (  37.96  )
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

T24gV2VkLCBBcHIgMTAsIDIwMjQgYXQgNzoyMuKAr0FNIENocmlzdGlhbiBLw7ZuaWcKPGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6Cj4KPiBBbSAwOS4wNC4yNCB1bSAxODozNyBzY2hy
aWViIFQuSi4gTWVyY2llcjoKPiA+IE9uIFR1ZSwgQXByIDksIDIwMjQgYXQgMTI6MzTigK9BTSBS
b25nIFFpYW5mZW5nIDwxMTA2NTQxN0B2aXZvLmNvbT4gd3JvdGU6Cj4gPj4KPiA+PiDlnKggMjAy
NC80LzggMTU6NTgsIENocmlzdGlhbiBLw7ZuaWcg5YaZ6YGTOgo+ID4+PiBBbSAwNy4wNC4yNCB1
bSAwOTo1MCBzY2hyaWViIFJvbmcgUWlhbmZlbmc6Cj4gPj4+PiBbU05JUF0KPiA+Pj4+PiBBbSAx
My4xMS4yMSB1bSAwNzoyMiBzY2hyaWViIEppYW5xdW4gWHU6Cj4gPj4+Pj4+IEFkZCBETUFfQlVG
X0lPQ1RMX1NZTkNfUEFSVElBTCBzdXBwb3J0IGZvciB1c2VyIHRvIHN5bmMgZG1hLWJ1ZiB3aXRo
Cj4gPj4+Pj4+IG9mZnNldCBhbmQgbGVuLgo+ID4+Pj4+IFlvdSBoYXZlIG5vdCBnaXZlbiBhbiB1
c2UgY2FzZSBmb3IgdGhpcyBzbyBpdCBpcyBhIGJpdCBoYXJkIHRvCj4gPj4+Pj4gcmV2aWV3LiBB
bmQgZnJvbSB0aGUgZXhpc3RpbmcgdXNlIGNhc2VzIEkgZG9uJ3Qgc2VlIHdoeSB0aGlzIHNob3Vs
ZAo+ID4+Pj4+IGJlIG5lY2Vzc2FyeS4KPiA+Pj4+Pgo+ID4+Pj4+IEV2ZW4gd29yc2UgZnJvbSB0
aGUgZXhpc3RpbmcgYmFja2VuZCBpbXBsZW1lbnRhdGlvbiBJIGRvbid0IGV2ZW4gc2VlCj4gPj4+
Pj4gaG93IGRyaXZlcnMgc2hvdWxkIGJlIGFibGUgdG8gZnVsZmlsbCB0aGlzIHNlbWFudGljcy4K
PiA+Pj4+Pgo+ID4+Pj4+IFBsZWFzZSBleHBsYWluIGZ1cnRoZXIsCj4gPj4+Pj4gQ2hyaXN0aWFu
Lgo+ID4+Pj4gSGVyZSBpcyBhIHByYWN0aWNhbCBjYXNlOgo+ID4+Pj4gVGhlIHVzZXIgc3BhY2Ug
Y2FuIGFsbG9jYXRlIGEgbGFyZ2UgY2h1bmsgb2YgZG1hLWJ1ZiBmb3IKPiA+Pj4+IHNlbGYtbWFu
YWdlbWVudCwgdXNlZCBhcyBhIHNoYXJlZCBtZW1vcnkgcG9vbC4KPiA+Pj4+IFNtYWxsIGRtYS1i
dWYgY2FuIGJlIGFsbG9jYXRlZCBmcm9tIHRoaXMgc2hhcmVkIG1lbW9yeSBwb29sIGFuZAo+ID4+
Pj4gcmVsZWFzZWQgYmFjayB0byBpdCBhZnRlciB1c2UsIHRodXMgaW1wcm92aW5nIHRoZSBzcGVl
ZCBvZiBkbWEtYnVmCj4gPj4+PiBhbGxvY2F0aW9uIGFuZCByZWxlYXNlLgo+ID4+Pj4gQWRkaXRp
b25hbGx5LCBjdXN0b20gZnVuY3Rpb25hbGl0aWVzIHN1Y2ggYXMgbWVtb3J5IHN0YXRpc3RpY3Mg
YW5kCj4gPj4+PiBib3VuZGFyeSBjaGVja2luZyBjYW4gYmUgaW1wbGVtZW50ZWQgaW4gdGhlIHVz
ZXIgc3BhY2UuCj4gPj4+PiBPZiBjb3Vyc2UsIHRoZSBhYm92ZS1tZW50aW9uZWQgZnVuY3Rpb25h
bGl0aWVzIHJlcXVpcmUgdGhlCj4gPj4+PiBpbXBsZW1lbnRhdGlvbiBvZiBhIHBhcnRpYWwgY2Fj
aGUgc3luYyBpbnRlcmZhY2UuCj4gPj4+IFdlbGwgdGhhdCBpcyBvYnZpb3VzLCBidXQgd2hlcmUg
aXMgdGhlIGNvZGUgZG9pbmcgdGhhdD8KPiA+Pj4KPiA+Pj4gWW91IGNhbid0IHNlbmQgb3V0IGNv
ZGUgd2l0aG91dCBhbiBhY3R1YWwgdXNlciBvZiBpdC4gVGhhdCB3aWxsCj4gPj4+IG9idmlvdXNs
eSBiZSByZWplY3RlZC4KPiA+Pj4KPiA+Pj4gUmVnYXJkcywKPiA+Pj4gQ2hyaXN0aWFuLgo+ID4+
IEluIGZhY3QsIHdlIGhhdmUgYWxyZWFkeSB1c2VkIHRoZSB1c2VyLWxldmVsIGRtYS1idWYgbWVt
b3J5IHBvb2wgaW4gdGhlCj4gPj4gY2FtZXJhIHNob290aW5nIHNjZW5hcmlvIG9uIHRoZSBwaG9u
ZS4KPiA+Pgo+ID4+ICAgRnJvbSB0aGUgdGVzdCByZXN1bHRzLCBUaGUgZXhlY3V0aW9uIHRpbWUg
b2YgdGhlIHBob3RvIHNob290aW5nCj4gPj4gYWxnb3JpdGhtIGhhcyBiZWVuIHJlZHVjZWQgZnJv
bSAzLjhzIHRvIDNzLgo+ID4+Cj4gPiBGb3IgcGhvbmVzLCB0aGUgKG91dCBvZiB0cmVlKSBBbmRy
b2lkIHZlcnNpb24gb2YgdGhlIHN5c3RlbSBoZWFwIGhhcyBhCj4gPiBwYWdlIHBvb2wgY29ubmVj
dGVkIHRvIGEgc2hyaW5rZXIuCj4KPiBXZWxsLCBpdCBzaG91bGQgYmUgb2J2aW91cyBidXQgSSdt
IGdvaW5nIHRvIHJlcGVhdCBpdCBoZXJlOiBTdWJtaXR0aW5nCj4ga2VybmVsIHBhdGNoZXMgZm9y
IG91ciBvZiB0cmVlIGNvZGUgaXMgYSByYXRoZXIgKmV4dHJlbWUqIG5vLWdvLgo+ClNvcnJ5IEkg
dGhpbmsgbXkgY29tbWVudCBsZWQgdG8gc29tZSBjb25mdXNpb24uIEkgd2Fzbid0IHN1Z2dlc3Rp
bmcKeW91IHNob3VsZCB0YWtlIHRoZSBwYXRjaDsgaXQncyBjbGVhcmx5IGluY29tcGxldGUuIEkg
d2FzIHBvaW50aW5nIG91dAphbm90aGVyIG9wdGlvbiB0byBSb25nLiBJdCBhcHBlYXJzIFJvbmcg
aXMgY3JlYXRpbmcgYSBzaW5nbGUgb3ZlcnNpemVkCmRtYS1idWYsIGFuZCBzdWJkaXZpZGluZyBp
dCBpbiB1c2Vyc3BhY2UgdG8gYXZvaWQgbXVsdGlwbGUgYWxsb2NhdGlvbnMKZm9yIG11bHRpcGxl
IGJ1ZmZlcnMuIFRoYXQgd291bGQgbGVhZCB0byBhIG5lZWQgZm9yIGEgcGFydGlhbCBzeW5jIG9m
CnRoZSBidWZmZXIgZnJvbSB1c2Vyc3BhY2UuIEluc3RlYWQgb2YgdGhhdCwgdXNpbmcgYSBoZWFw
IHdpdGggYSBwYWdlCnBvb2wgZ2V0cyB5b3Uga2luZCBvZiB0aGUgc2FtZSB0aGluZyB3aXRoIGEg
bG90IGxlc3MgaGVhZGFjaGUgaW4KdXNlcnNwYWNlLCBhbmQgbm8gbmVlZCBmb3IgcGFydGlhbCBz
eW5jLiBTbyBJIHdhbnRlZCB0byBzaGFyZSB0aGF0Cm9wdGlvbiwgYW5kIHRoYXQgY2FuIGdvIGlu
IGp1c3QgQW5kcm9pZCBpZiBuZWNlc3Nhcnkgd2l0aG91dCB0aGlzCnBhdGNoLgoKPiBUaGF0IGlu
IGtlcm5lbCBjb2RlICptdXN0KiBoYXZlIGFuIGluIGtlcm5lbCB1c2VyIGlzIGEgbnVtYmVyIG9u
ZSBydWxlLgo+Cj4gV2hlbiBzb21lYm9keSB2aW9sYXRlcyB0aGlzIHJ1bGUgaGUgcHJldHR5IG11
Y2ggZGlzcXVhbGlmeWluZyBoaW1zZWxmIGFzCj4gcmVsaWFibGUgc291cmNlIG9mIHBhdGNoZXMg
c2luY2UgbWFpbnRhaW5lcnMgdGhlbiBoYXZlIHRvIGFzc3VtZSB0aGF0Cj4gdGhpcyBwZXJzb24g
dHJpZXMgdG8gc3VibWl0IGNvZGUgd2hpY2ggZG9lc24ndCBoYXZlIGEganVzdGlmaWNhdGlvbiB0
bwo+IGJlIHVwc3RyZWFtLgo+Cj4gU28gd2hpbGUgdGhpcyBhY3R1YWxseSBsb29rcyB1c2VmdWwg
ZnJvbSB0aGUgdGVjaG5pY2FsIHNpZGUgYXMgbG9uZyBhcwo+IG5vYm9keSBkb2VzIGFuIGltcGxl
bWVudGF0aW9uIGJhc2VkIG9uIGFuIHVwc3RyZWFtIGRyaXZlciBJIGFic29sdXRlbHkKPiBoYXZl
IHRvIHJlamVjdCBpdCBmcm9tIHRoZSBvcmdhbml6YXRpb25hbCBzaWRlLgo+Cj4gUmVnYXJkcywK
PiBDaHJpc3RpYW4uCj4KPiA+ICAgVGhhdCBhbGxvd3MgeW91IHRvIHNraXAgcGFnZQo+ID4gYWxs
b2NhdGlvbiB3aXRob3V0IGZ1bGx5IHBpbm5pbmcgdGhlIG1lbW9yeSBsaWtlIHlvdSBnZXQgd2hl
bgo+ID4gYWxsb2NhdGluZyBhIGRtYS1idWYgdGhhdCdzIHdheSBsYXJnZXIgdGhhbiBuZWNlc3Nh
cnkuIElmIGl0J3MgZm9yIGEKPiA+IGNhbWVyYSBtYXliZSB5b3UgbmVlZCBwaHlzaWNhbGx5IGNv
bnRpZ3VvdXMgbWVtb3J5LCBidXQgaXQncyBhbHNvCj4gPiBwb3NzaWJsZSB0byBzZXQgdGhhdCB1
cC4KPiA+Cj4gPiBodHRwczovL2FuZHJvaWQuZ29vZ2xlc291cmNlLmNvbS9rZXJuZWwvY29tbW9u
LysvcmVmcy9oZWFkcy9hbmRyb2lkMTQtNi4xL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1f
aGVhcC5jIzM3Nwo+ID4KPiA+Cj4gPj4gVG8gYmUgaG9uZXN0LCBJIGRpZG4ndCB1bmRlcnN0YW5k
IHlvdXIgY29uY2VybiAiLi4uaG93IGRyaXZlcnMgc2hvdWxkIGJlCj4gPj4gYWJsZSB0byBmdWxm
aWxsIHRoaXMgc2VtYW50aWNzLiIgQ2FuIHlvdSBwbGVhc2UgaGVscCBleHBsYWluIGl0IGluIG1v
cmUKPiA+PiBkZXRhaWw/Cj4gPj4KPiA+PiBUaGFua3MsCj4gPj4KPiA+PiBSb25nIFFpYW5mZW5n
Lgo+ID4+Cj4gPj4+PiBUaGFua3MKPiA+Pj4+IFJvbmcgUWlhbmZlbmcuCj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
