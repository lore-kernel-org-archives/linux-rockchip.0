Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35654C25B7E
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 May 2024 17:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UhZfn61QHkyUMwh9hhufmJlAJBFSXnbKZf+JdzVVYEg=; b=ZmUyrNLBFcTh6U
	GsqCgKeAa4FfWyfZTEI0c1PguoUF2paa3Q/pw76tWbQHvAFv4s9hz2re4cfzSdmWE5xUeJiuEaCrj
	NZ1JT/kmY8XezWvv1GIBdvQPYGXzJ5WQMJJ3YhKjIl95upqSu9CrEEKvb1BPfAmWOFAXwJljfHNzk
	zUtJ9vTrvA6mpXSN1y8JGWN0SkGaU6+oxvQJlEJukELafUAwvzHmpacLrNmumxbc5c4yz7p6ASZi9
	0l0Y+D7tkVX5gpFTacNl8i6/wUcN3oRwqYgqYbF95wQVyxdw0AtOEAm0m6FkF8nyEP5ze+vYsqqtc
	5TLMpniNjQXD27SeXW1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD64v-0000000B0n9-08ug;
	Fri, 31 May 2024 17:30:09 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD64j-0000000B0k3-1XP3
	for linux-rockchip@lists.infradead.org;
	Fri, 31 May 2024 17:30:07 +0000
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-794ab20699cso80185685a.2
        for <linux-rockchip@lists.infradead.org>; Fri, 31 May 2024 10:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717176592; x=1717781392; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dm7zqDMgip+WJ2XM2t5p8Qmnl2zluKwd7L3ZaHXLQCo=;
        b=mUjHfYbqbdFfk/mgmwztE816mHUvrN1yGeMWH2oaUw7Kvet+M5qBBBYws/nQemG3oV
         9uBgfaPz0QbVZCGBkSIe3fz2BnlqiubCU58WH3PU0bxwcmNp9WQghgmabhOu6j7rivBz
         vp48Q6TZK9tJ9IfarO3N83lRFir07LXCdR22I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717176592; x=1717781392;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dm7zqDMgip+WJ2XM2t5p8Qmnl2zluKwd7L3ZaHXLQCo=;
        b=wZiu9fXcVB2W45CH4fwrGvIL8ScdX+McfCFDZ4aaPW6wjBYODK9VfRuCgRt8eKsP6g
         ov4iHj+V82sccmXk5cCik6thwHOo+GkGUjW4a6XnefpHcmHeRFpT7RpVLfbuK3tZHdpu
         WDyf1bMNdACjKX+b93WwpXRk219IaRqGmgnzNQStSb/QFb0uLRzOh6lqJ1bgUZSzojvZ
         ptL4hG02U2oXoJ8SqYrO/ElELKxmDhIdLTpqnnSJMA5nSZ3gnb5Np9oXedmPElFIABmu
         dK73W1xZJEYBauHmSGTNb8CypU6k4XV0nQhsiZGaa0z4IyuNd/cpuO7a0Yz0mgvn0cI+
         i02w==
X-Forwarded-Encrypted: i=1; AJvYcCUxqKLqN8m96F2w4HdVnrGl2K4MrMLEbTRQ170NhRwlewuOJ/yN+Y5KjyOhieRtxSA0eRZ2xIks9F1y9B+tf1fxCy5RJLn6K1ay/UGMg4K5edlz
X-Gm-Message-State: AOJu0YzCuEeWnBIqFV7pWfPDK/FLZ6eBPJzlYRaQrcMnxfA/0ViO3W2O
	O+AAmb0FPBW24nxjUbXUCqCfsWaD0rfRZ7pbo/dwZuBKU3hfk0UnAoouBLaSYsS1pzsINCRpGSu
	Cd6L4
X-Google-Smtp-Source: AGHT+IFRWfP92x/CKW3sDC/+haXFxKuhO1bPgYmuRIJuqrewREViK3CR9ycx9DUqNqRFx7babRz5ng==
X-Received: by 2002:a05:620a:45ab:b0:792:c35d:9372 with SMTP id af79cd13be357-794f5c6484bmr326725285a.5.1717176591775;
        Fri, 31 May 2024 10:29:51 -0700 (PDT)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com. [209.85.160.179])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-794f2f11fa5sm73874785a.38.2024.05.31.10.29.49
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 May 2024 10:29:50 -0700 (PDT)
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-43fe3289fc5so15781cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 31 May 2024 10:29:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXrwELY60AyBsvXcmXNdw1pPVQvJRUAZ/lEifM0gacgkyssGLhlNuszYmCFvkVRKH5syYhUMhc9HuTWew0zg8RLHYAcwefQZ0IjqEa/vtPYYVDZ
X-Received: by 2002:a05:622a:4ac9:b0:43e:33f7:600c with SMTP id
 d75a77b69052e-43ff4f8dc64mr3254021cf.19.1717176589297; Fri, 31 May 2024
 10:29:49 -0700 (PDT)
MIME-Version: 1.0
References: <20240531-edp-panel-drop-v3-0-4c98b2b95e3a@linaro.org>
 <7428a2f7-befc-6db8-76f4-3ca8dc12d31c@quicinc.com> <CAD=FV=Xcq-p5OxSnDJVF-Wp88ZfXOaOKJmh941ymy-f0wkhdhw@mail.gmail.com>
 <197777e0-e6e1-7004-be27-edb98f8a235e@quicinc.com>
In-Reply-To: <197777e0-e6e1-7004-be27-edb98f8a235e@quicinc.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 31 May 2024 10:29:33 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UUmnKuBCwLLjrg69kCi7MTjMDYAVtdWEb3yqeZc=-5iQ@mail.gmail.com>
Message-ID: <CAD=FV=UUmnKuBCwLLjrg69kCi7MTjMDYAVtdWEb3yqeZc=-5iQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] drm/panel-edp: remove several legacy compatibles
 used by the driver
To: Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_103004_713834_9290F4DB 
X-CRM114-Status: GOOD (  34.66  )
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

SGksCgpPbiBGcmksIE1heSAzMSwgMjAyNCBhdCA5OjUx4oCvQU0gSmVmZnJleSBIdWdvIDxxdWlj
X2podWdvQHF1aWNpbmMuY29tPiB3cm90ZToKPgo+IE9uIDUvMzEvMjAyNCAxMDoyMCBBTSwgRG91
ZyBBbmRlcnNvbiB3cm90ZToKPiA+IEhpLAo+ID4KPiA+IE9uIEZyaSwgTWF5IDMxLCAyMDI0IGF0
IDk6MTjigK9BTSBKZWZmcmV5IEh1Z28gPHF1aWNfamh1Z29AcXVpY2luYy5jb20+IHdyb3RlOgo+
ID4+Cj4gPj4gT24gNS8zMC8yMDI0IDU6MTIgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4g
Pj4+IFRoZXJlIGFyZSB0d28gd2F5cyB0byBkZXNjcmliZSBhbiBlRFAgcGFuZWwgaW4gZGV2aWNl
IHRyZWUuIFRoZQo+ID4+PiByZWNvbW1lbmRlZCB3YXkgaXMgdG8gYWRkIGEgZGV2aWNlIG9uIHRo
ZSBBVVggYnVzLCBpZGVhbGx5IHVzaW5nIHRoZQo+ID4+PiBlZHAtcGFuZWwgY29tcGF0aWJsZS4g
VGhlIGxlZ2FjeSB3YXkgaXMgdG8gZGVmaW5lIGEgdG9wLWxldmVsIHBsYXRmb3JtCj4gPj4+IGRl
dmljZSBmb3IgdGhlIHBhbmVsLgo+ID4+Pgo+ID4+PiBEb2N1bWVudCB0aGF0IGFkZGluZyBzdXBw
b3J0IGZvciBlRFAgcGFuZWxzIGluIGEgbGVnYWN5IHdheSBpcyBzdHJvbmdseQo+ID4+PiBkaXNj
b3VyYWdlZCAoaWYgbm90IGZvcmJpZGRlbiBhdCBhbGwpLgo+ID4+Pgo+ID4+PiBXaGlsZSB3ZSBh
cmUgYXQgaXQsIGFsc28gZHJvcCBsZWdhY3kgY29tcGF0aWJsZSBzdHJpbmdzIGFuZCBiaW5kaW5n
cyBmb3IKPiA+Pj4gZml2ZSBwYW5lbHMuIFRoZXNlIGNvbXBhdGlibGUgc3RyaW5ncyB3ZXJlIG5l
dmVyIHVzZWQgYnkgYSBEVCBmaWxlCj4gPj4+IHByZXNlbnQgaW4gTGludXgga2VybmVsIGFuZCBt
b3N0IGxpa2VseSB3ZXJlIG5ldmVyIHVzZWQgd2l0aCB0aGUKPiA+Pj4gdXBzdHJlYW0gTGludXgg
a2VybmVsLgo+ID4+Pgo+ID4+PiBUaGUgZm9sbG93aW5nIGNvbXBhdGlibGVzIHdlcmUgbmV2ZXIg
dXNlZCBieSB0aGUgZGV2aWNlcyBzdXBwb3J0ZWQgYnkKPiA+Pj4gdGhlIHVwc3RyZWFtIGtlcm5l
bCBhbmQgYXJlIGEgc3ViamVjdCB0byBwb3NzaWJsZSByZW1vdmFsOgo+ID4+Pgo+ID4+PiAtIGxn
LGxwMDk3cXgxLXNwYTEKPiA+Pj4gLSBzYW1zdW5nLGxzbjEyMmRsMDEtYzAxCj4gPj4+IC0gc2hh
cnAsbGQtZDUxMTZ6MDFiCj4gPj4KPiA+PiBPayB0byBkcm9wIHRoZSBzaGFycCBvbmUgSSBhZGRl
ZC4gIEl0IHNob3VsZCBiZSBhYmxlIHRvIGJlIGhhbmRsZWQgYnkKPiA+PiB0aGUgKG5ld2lzaCkg
ZWRwLXBhbmVsLCBidXQgSSB0aGluayB0aGUgVEkgYnJpZGdlIGRyaXZlciBuZWVkcyBzb21lIHdv
cmsKPiA+PiBmb3IgdGhlIHNwZWNpZmljIHBsYXRmb3JtIChubyBJMkMgY29ubmVjdGlvbikgdG8g
dmVyaWZ5Lgo+ID4KPiA+IElzIHRoZSBwbGF0Zm9ybSBzdXBwb3J0ZWQgdXBzdHJlYW0/IElmIHNv
LCB3aGljaCBwbGF0Zm9ybSBpcyBpdD8gSXMKPiA+IHRoZSBUSSBicmlkZ2UgY2hpcCB0aGUgdGkt
c242NWRzaTg2PyBJZiBzbywgSSdtIGNvbmZ1c2VkIGhvdyB5b3UgY291bGQKPiA+IHVzZSB0aGF0
IGJyaWRnZSBjaGlwIHdpdGhvdXQgYW4gaTJjIGNvbm5lY3Rpb24sIGJ1dCBwZXJoYXBzIEknbQo+
ID4gbWlzdW5kZXJzdGFuZGluZy4gOi1QCj4KPiBZZXMsIHRoZSBwbGF0Zm9ybSBpcyB1cHN0cmVh
bS4gIFRoZSA4OTk4IGxhcHRvcHMgKGNsYW1zaGVsbCkuICBJdCBpcyB0aGUKPiB0aS1zbjY1c2k4
Ni4gIEkgc3VzcGVjdCB0aGUgSTJDIGNvbm5lY3Rpb24gd2FzIG5vdCBwb3B1bGF0ZWQgZm9yIGNv
c3QKPiByZWFzb25zLCB0aGVuIGRldGVybWluZWQgaXRzIG11Y2ggbW9yZSBjb252ZW5pZW50IHRv
IGhhdmUgaXQgYXMgZXZlcnkKPiBnZW5lcmF0aW9uIGFmdGVyIHRoYXQgSSd2ZSBzZWVuIGhhcyB0
aGUgSTJDLgo+Cj4gSWYgeW91IGNoZWNrIHRoZSBkYXRhc2hlZXQgY2xvc2VseSwgdGhlIEkyQyBj
b25uZWN0aW9uIGlzIG9wdGlvbmFsLiAgWW91Cj4gY2FuIGFsc28gY29uZmlndXJlIHRoZSBicmlk
Z2UgaW5iYW5kIHVzaW5nIERTSSBjb21tYW5kcy4gIFRoaXMgaXMgd2hhdAo+IHRoZSBGVyBhbmQg
V2luZG93cyBkb2VzLgo+Cj4gU28sIHRoZSBEVCBiaW5kaW5nIG5lZWRzIHRvIG1ha2UgdGhlIEky
QyBwcm9wZXJ0eSBvcHRpb25hbCAodGhpcyBzaG91bGQKPiBiZSBiYWNrd2FyZHMgY29tcGF0aWJs
ZSkuICBUaGUgZHJpdmVyIG5lZWRzIHRvIGRldGVjdCB0aGF0IHRoZSBJMkMKPiBjb25uZWN0aW9u
IGlzIG5vdCBwcm92aWRlZCwgYW5kIGZhbGwgYmFjayB0byBEU0kgY29tbWFuZHMuICBSZWdtYXAg
d291bGQKPiBiZSBuaWNlIGZvciB0aGlzLCBidXQgSSBnb3QgcHVzaGJhY2sgb24gdGhlIHByb3Bv
c2FsLiAgVGhlbiBJIGdvdAo+IHNpZGV0cmFja2VkIGxvb2tpbmcgYXQgb3RoZXIgaXNzdWVzLgoK
Q3JhenkhIEknbSBzdXJlIEkndmUgc2tpbW1lZCBvdmVyIHRoYXQgcGFydCBvZiB0aGUgdGktc242
NWRzaTg2CmRhdGFzaGVldCBiZWZvcmUgYnV0IEkgZG9uJ3QgdGhpbmsgSSBpbnRlcm5hbGl6ZWQg
aXQuIEkgZ3Vlc3MgaWYgeW91CmRpZCBpdCB0aGlzIHdheSB0aGVuIHlvdSdkIGluc3RhbnRpYXRl
IGl0IGFzIGEgcGxhdGZvcm0gZGV2aWNlIGluc3RlYWQKb2YgYW4gaTJjIGRldmljZSBhbmQgdGhh
dCB3b3VsZCBiZSBob3cgeW91J2QgZGV0ZWN0IHRoZSBkaWZmZXJlbmNlLiBJCmNvdWxkIGltYWdp
bmUgdGhpcyBiZWluZyBhIGJpdCBvZiBhIGNoYWxsZW5nZSB0byBnZXQgd29ya2luZyBpbiB0aGUK
ZHJpdmVyLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
