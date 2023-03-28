Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 517CEC761A6
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Mar 2023 03:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mIfquHzV2G7Qai9qeMWIUmKd8JlVbQmTaCxDSnMAmY8=; b=LlGWlhjCiMsqDM
	BIVHA9AlTUz373VVW2mnEB3nuxc+dUF4UJ4cvU/yaKj7YROzU7QO6Ao6RQViL93Xkei6k89pY61xu
	kiQdCGAa1f7ckukX9qYwEEkVA7o6Pu9tGlBrMB6sV2zMJ1yw2zbInhXX9vhBjqu4dKS7QWN2QzzdG
	zdUYJ/DyWlBG3LmVaxo84iaFCobxSWCKJfQADJ86ylSEvks64AJCPl6m81TSD3cZ2VYV9w+Irt3wP
	xVyd8b/tmaEQebWJIJZlLDGr+hlCBNJ6WgDk8O99mXFeT6EAcQf/lMS/sZoQfp+Krc7mWM5k7eKPM
	PQdliOasP708W4UrQbaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgzhS-00CyMR-05;
	Tue, 28 Mar 2023 03:08:42 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgzhO-00CyLA-1s
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Mar 2023 03:08:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679972913;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cBC1EoqPwu7pEnmqUXmGNzLAkzjKQ3Su4+Cd6FomdOo=;
	b=hakcAPvX0BjyHOfp8wchL/Wj4hv2bdjCp1NVPrLCJIKUTUPN06G4qdM0zQWEbOFe+86afs
	aIdjh/FKjKbpUvUerxAhkPx0Zz9aWMk2ybncEGLqD5HcSd9x+ohVAmn9IujISSu5k++mb9
	1KWjDpFEJUCD2vSIld+aNl4miguoEf8=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-206-8bFxJ5d0M4iKwQ3EuONQdw-1; Mon, 27 Mar 2023 23:08:24 -0400
X-MC-Unique: 8bFxJ5d0M4iKwQ3EuONQdw-1
Received: by mail-wm1-f70.google.com with SMTP id p10-20020a05600c358a00b003edf7d484d4so5706981wmq.0
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Mar 2023 20:08:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679972903;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DF8xiGEDG2aydgSMMjZ0jG6716l6RkLPMVKpPTgA1LU=;
        b=sBCwULE9LiGVqZWL53wwKJQXMcP4yp/CjAxlVhe9KhnEQdQw3d3GGyNVlPtFRcDfbv
         5B444rhMKV3ewsk/T+1txkxwqE3Box+V7p/ze6uulMmk2n2jXeD5XWKcmLDZ55jAmczf
         S+aD8zPLBvO4ob1JgQLP6XLqneEV8VR2DWybB+jXQsC3GI3MgmWgrSvSD7ryXaVBUPZf
         Vr2qkGWXkgnlpCRdGrvu0/O/2pPaErlERWyHddx/u6PL66MrLkMqHCZaJZUnr71CK6uA
         SN1cmH6GsFccqBflmSQZyahNi3xh9gEMK2gal5d09rVNVKA9ydXEC+MPPadW/T4Kzrc7
         5ujQ==
X-Gm-Message-State: AAQBX9dc6MhK4QglYI4kzDo2S3egBAeoGTC/utbOkkWAzf/xQikzeBzF
	GOaM6dAtTohXuDqgTnUrMDpSC2hWeiNfL5va8Ze6Gp/qMgkath+iZzCuoOCxmkYXXyPwN0GXOam
	NrB/HzGMuH2D9AUmelUgGbWXs6G5oZfqi
X-Received: by 2002:adf:f1c3:0:b0:2ce:adbf:cb14 with SMTP id z3-20020adff1c3000000b002ceadbfcb14mr11653869wro.28.1679972903647;
        Mon, 27 Mar 2023 20:08:23 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZKIAjbXHGpog35RyWxzgmMXVcD6mNpoeRHryb054olGh4cgVbvxNpHT37A2iqHNRx4L23JiQ==
X-Received: by 2002:adf:f1c3:0:b0:2ce:adbf:cb14 with SMTP id z3-20020adff1c3000000b002ceadbfcb14mr11653856wro.28.1679972903250;
        Mon, 27 Mar 2023 20:08:23 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id d10-20020adfe88a000000b002c70e60abd4sm26534411wrm.2.2023.03.27.20.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 20:08:22 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Robert
 Mader <robert.mader@collabora.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Peter Robinson
 <pbrobinson@gmail.com>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Martijn Braam <martijn@brixit.nl>, Kamil =?utf-8?Q?Trzci=C5=84ski?=
 <ayufan@ayufan.eu>,
 Caleb Connolly <kc@postmarketos.org>, Jarrah Gosbell <kernel@undef.tools>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
In-Reply-To: <20230327194518.qkm5qgap6vkivpeg@core>
References: <20230327074136.1459212-1-javierm@redhat.com>
 <20230327130147.wgxl2qayhzsi2xak@core>
 <87wn32rynm.fsf@minerva.mail-host-address-is-not-set>
 <1924921.PYKUYFuaPT@diego>
 <87mt3yrwzo.fsf@minerva.mail-host-address-is-not-set>
 <20230327174855.xpxrdfldqcxk463r@core>
 <87jzz2rrfr.fsf@minerva.mail-host-address-is-not-set>
 <20230327194518.qkm5qgap6vkivpeg@core>
Date: Tue, 28 Mar 2023 05:08:21 +0200
Message-ID: <87a5zxshcq.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_200838_692869_3BA7576C 
X-CRM114-Status: GOOD (  38.10  )
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

T25kxZllaiBKaXJtYW4gPG1lZ2lAeGZmLmN6PiB3cml0ZXM6Cgo+IE9uIE1vbiwgTWFyIDI3LCAy
MDIzIGF0IDA4OjE1OjUyUE0gKzAyMDAsIEphdmllciBNYXJ0aW5leiBDYW5pbGxhcyB3cm90ZToK
Pj4gT25kxZllaiBKaXJtYW4gPG1lZ2lAeGZmLmN6PiB3cml0ZXM6CgpbLi4uXQoKPj4gPiBKdXN0
IGJlY2F1c2Ugc29tZXRoaW5nIGlzIGluIG15IHRyZWUgZG9lc24ndCBtZWFuIGl0J3MgbWluZSwg
b3IgdGhhdCBJIHJldmlld2VkCj4+ID4gaXQgaW4gZGV0YWlsIGFuZCBwcmVwYXJlZCBpdCBmb3Ig
dXBzdHJlYW1pbmcsIG9yIHRoYXQgSSdtIGludGVyZXN0ZWQgaW4KPj4gCj4+IFRoYW5rcyBmb3Ig
dGhlIGNsYXJpZmljYXRpb24uIEJlY2F1c2UgdGhlIHBhdGNoIGhhZCB5b3VyIGF1dGhvcnNoaXAg
SQo+PiB3cm9uZ2x5IGFzc3VtZWQgdGhhdCBjYW1lIGZyb20geW91LiBTb3JyeSBhYm91dCB0aGUg
Y29uZnVzaW9uLgo+Cj4gRXZlciBzaW5jZSBiYXNlIERUIHN1cHBvcnQgZm9yIFBpbmVwaG9uZSBQ
cm8gd2FzIG1lcmdlZCwgbm9uZSBvZiB0aGUgRFQgcGF0Y2hlcwo+IGluIG15IHRyZWUgYXJlIGlu
IHRoZSBvcmlnaW5hbCBmb3JtIGFzIHByZXBhcmVkIGJ5IHRoZSBhdXRob3JzICsgZml4ZXMgSSd2
ZQo+IGFkZGVkLiBUaGF0J3Mgc2ltcGx5IGltcG9zc2libGUgYW55bW9yZS4KPgo+IFRvIGxvb2sg
dXAgd2hvIGRpZCB3aGF0LCB5b3UnZCBoYXZlIHRvIGxvb2sgYXQgb2xkZXIgYnJhbmNoZXMsIHBy
ZS1tZXJnZS4KPgo+IFBhdGNoZXMgYWZ0ZXIgdGhlIG1lcmdlIGp1c3QgY2FtZSBmcm9tIHNxdWFz
aGluZyBldmVyeXRoaW5nIGludG8gb25lIHBhdGNoLAo+IGNsZWFuaW5nIGl0IHVwLCBhbmQgcmUt
c3BsaXR0aW5nIGFsb25nIHNvbWUgdmFndWUgZnVuY3Rpb25hbGl0eSBib3VuZGFyaWVzLAo+IHdo
aWxlIHRyeWluZyB0byBrZWVwIGJlc3QtZWZmb3J0IG9yaWdpbmFsIFNvQnMgYXMgZmFpdGhmdWxs
eSBhcyBwb3NzaWJsZSwgc28KPiB0aGF0IEkgY2FuIGtlZXAgbWFpbnRhaW5pbmcgdGhlIFBQUCBz
dXBwb3J0IGluIGEgc2FuZSBtYW5uZXIuCj4KCkdvIGl0LgoKPiBBbnl3YXksIFNvQidzIGFyZSBh
ZGRlZCBpbiBjaHJvbm9sb2dpY2FsIG9yZGVyLiBTbzoKPgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9t
ZWdvdXMvbGludXgvY29tbWl0LzQ3MWM1ZjMzYmE3NGMzZDQ5OGNjYzFlYjY5YzA5ODYyM2IxOTM5
MjYKPgo+IE1lYW5zIHRoZSBhdXRob3Igb2YgdGhlIGNoYW5nZXMgaXMgTWFydGlqbiArIEthbWls
IChyb3VnaGx5KSBhbmQgSSBtYXkgaGF2ZQo+IGEgbGluZSBvZiBjb2RlIGluIHRoZXJlIHRvbywg
c2luY2UgbXkgU29CIGlzIGxhc3QuIEZvciBzb21lIHJlYXNvbiwgdGhlIG9yZGVyIGlzCj4gaW52
ZXJ0ZWQgaW4gdGhlIHBhdGNoIHlvdSBwb3N0ZWQsIG1ha2luZyBpdCBzZWVtIEkgZGV2ZWxvcGVk
IHRoZXNlIGNoYW5nZXMKPiBvcmlnaW5hbGx5Lgo+CgpTaW5jZSB0aGUgcGF0Y2ggaGFkIHlvdXIg
YXV0aG9yc2hpcCBJIGNoYW5nZWQgdGhlIG9yZGVyIHNvIHRoYXQgeW91ciBTLW8tQgp3YXMgZmly
c3QgYnV0IEknbGwgdGhlbiBjaGFuZ2UgdGhlIGF1dGhvciBpbiB2MyBhbmQgbWFrZSBpdCBtYXRj
aCB0aGUKZmlyc3QgUy1vLUIgZW50cnkgaW4geW91ciB0cmVlIChNYXJ0aWpuKSB0aGVuLgoKPj4g
PiB1cHN0cmVhbWluZyBpdC4gSSdtIGp1c3QgdHJ5aW5nIHRvIGhlbHAgeW91IHdpdGggeW91ciB1
cHN0cmVhbWluZyBlZmZvcnQgYnkKPj4gPiB0ZXN0aW5nIGFuZCByZXZpZXcgc2luY2UgSSBnb3Qg
dG8ga25vdyB0aGUgaGFyZHdhcmUgcXVpdGUgd2VsbCBvdmVyIHRoZSBsYXN0Cj4+ID4geWVhcnMg
YW5kIGNhbiBjaGVjayB0aGUgc2NoZW1hdGljcyBhbmQgZGF0YXNoZWV0cyBxdWlja2x5LCBhbmQg
SSBsaWtlIHRvIHRoaW5rCj4+ID4gdXBzdHJlYW0gY29kZSBpcyBoZWxkIHRvIGhpZ2hlciBzdGFu
ZGFyZC4gVGhhdCdzIGFsbC4KPj4gPgo+PiAKPj4gQXBwcmVjaWF0ZSB5b3VyIGhlbHAgYW5kIEkg
YWdyZWUgdGhhdCB1cHN0cmVhbSBjb2RlIHNob3VsZCBiZSBoZWxkIHRvIGEKPj4gaGlnaCBzdGFu
ZGFyZC4gQnV0IHNpbmNlIHRoZSBEVFMgaW4gbWFpbmxpbmUgaXMgcHJldHR5IGJhc2ljIGFueXdh
eXMgKHlvdQo+PiBjYW4gb25seSBib290IHRvIHNlcmlhbCByaWdodCBub3cpLCBpcyBub3QgcmVh
bGx5IHVzYWJsZSBmb3Igb3RoZXIgdGhpbmcKPj4gdGhhbiBkZXZlbG9wbWVudCBhbmQga2VlcCBh
ZGRpbmcgdGhlIG1pc3Npbmcgc3VwcG9ydC4KPgo+IEhhdmluZyB3cm9uZyBmcmVxdWVuY3kgdXNl
ZCBpcyBub3QgYSBtaXNzaW5nIHN1cHBvcnQgZm9yIHNvbWV0aGluZy4gU29ycnkgaXQncwo+IHRv
byBib3RoZXJzb21lIHRvIGdldCB0aGUgcmV2aWV3IHBpZWNlbWVhbCwgYnV0IHNvbWV0aW1lcyBw
ZW9wbGUgaGF2ZSBtb3JlIHRpbWUgdG8KPiBsb29rIGF0IHBhdGNoZXMgaW4tZGVwdGgsIGFuZCBh
dCBvdGhlciB0aW1lcyB0aGV5IGRvbid0IGFuZCB5b3UganVzdCBnZXQgc3VyZmFjZQo+IGxldmVs
IG9yIG5vIHJldmlldy4KPgoKT2suCgo+IE9uZSBwb2ludCBvZiBwb3N0aW5nIHBhdGNoZXMgdG8g
dGhlIG1haWxpbmcgbGlzdCBpcyB0byBnZXQgcmV2aWV3LiBBbmQgaXQncyBub3QKPiB0aGF0IGdy
ZWF0IHRvIGRvIGluLWRlcHRoIHJldmlldyBmb3IgeW91LCB1cCB0byBnb2luZyB0aHJvdWdoIHNj
aGVtYXRpY3MgYW5kCj4gZGF0YXNoZWV0cywgdGVzdGluZywgYW5kIGV2ZW4gcHJvcG9zaW5nIGFu
ZCB0ZXN0aW5nIHNvbHV0aW9ucyBmb3IgZm91bmQgaXNzdWVzLAo+IGp1c3QgdG8gYmUgZGlzbWlz
c2VkIHdpdGhvdXQgdGVjaG5pY2FsIHJlYXNvbi4KPgo+IFRoZSB0aGluZyBpcyB0aGlzIHJldmll
dyB3aWxsIG1vc3QgbGlrZWx5IGhhcHBlbiBqdXN0IG9uY2UsIGFuZCBub29uZSB3aWxsIGdvCj4g
YmFjaywgcmVhZCB0aHJvdWdoIHRoZSBlbnRpcmUgaHVnZSBEVCBhbG9uZyB3aXRoIGEgc2NoZW1h
dGljLCB0byBsb29rIGF0IHdoZXRoZXIKPiB0aGlzIG9yIHRoYXQgcHVsbHVwIGlzIHJlYWxseSBu
ZWNlc3NhcnksIHdoZXRoZXIgc29tZSBwYXJhbWV0ZXIgaXMgb3V0IG9mIHNwZWMKPiBmcm9tIHRo
ZSBkYXRhc2hlZXQgZm9yIGVhY2ggcGFydCwgb3IgdGhpbmdzIGxpa2UgdGhhdC4gVGhhdCdzIGp1
c3Qgbm90Cj4gcHJhZ21hdGljLgo+CgpUaGF0J3MgZmFpci4KCj4gSW5zdGVhZCwgcGVvcGxlIHdp
bGwgaGFwcGlseSBhdHRyaWJ1dGUgbm9uLW9idmlvdXMgaXNzdWVzIGNhdXNlZCBieSB0aGVzZQo+
IG9taXNzaW9ucyBvZiBtYW51YWwgcmV2aWV3IHRvIHNob2RkeSBvciBzbG93IG9yIHBvd2VyLWlu
ZWZmaWNpZW50IEhXLiAiMWtIego+ICsgaGFybW9uaWNzIGludGVyZmVyZW5jZSBpbiBjb2RlYyBi
ZWNhdXNlIGhpZ2ggcG93ZXIgYmFja2xpZ2h0IERDLURDIHJlZ3VsYXRvcgo+IGJhc2ljYWxseSBz
cGV3cyBvZmYgMWtIeiBvZiAxLTJXIGxvYWQgKyBoYXJtb25pY3MgYmVjYXVzZSBpdCdzIGRyaXZl
bgo+IGluY29ycmVjdGx5PyBBaCwgdGhlIHBob25lIGp1c3QgaGFzIGEgc2hpdHR5IGF1ZGlvIGNv
ZGVjISIKPgo+IFNvLCBkb24ndCB0YWtlIGl0IGFzIHNvbWUgcGVyZmVjdGlvbmlzbS4gVXBzdHJl
YW1pbmcganVzdCBzZWVtcyBsaWtlIHRoZSBiZXN0Cj4gdGltZSB0byBsb29rIGF0IHRoaW5ncyB0
aGF0IHdlcmUgb3Zlcmxvb2tlZCBpbiB0aGUgcGFzdCBpbiBtb3JlIGRldGFpbCBhbmQgZ2V0Cj4g
dGhlc2UgbGl0dGxlIHRoaW5ncyByaWdodCwgYmVjYXVzZSB0aGUgRFQgYWRkaXRpb25zIGFyZSBk
b25lIHBpZWNlbWFsIGFuZAo+IHNsb3dseS9ncmFkdWFsbHksIHNvIGl0J3MgbW9yZSBtYW5hZ2Vh
YmxlIHRvIHJldmlldyBhbmQgZml4IHJpZ2h0IGF3YXkuIFRoaXMKPiB3aWxsIGp1c3Qgbm90IGhh
cHBlbiBsYXRlciBvbiBmb3IgdGhlc2Ugb2JzY3VyZSBkZXZpY2VzIGxpa2UgUGluZXBob25lIFBy
bywKPiB3aGVyZSB0aGUgd2hvbGUgZWZmb3J0IHRoYXQgZ29lcyBpbnRvIGl0IGlzIGxpa2Ugb25l
IGhhbGYgb2YgYSBmdWxsdGltZQo+IGRldmVsb3BlciB0aW1lIHNwbGl0IG92ZXIgNCBtaWxkbHkg
aW50ZXJlc3RlZCByZWFsIHBlcnNvbnMsIHNsb3dseSB0YXBlcmluZyBvZmYKPiBvdmVyIHRpbWUg
YXMgdGhlIGRldmljZSBhZ2VzLgo+CgpNYWtlcyBzZW5zZS4gSSdsbCBhZGRyZXNzIHlvdXIgY29t
bWVudHMgaW4gdjMgdGhlbiBhbmQgYWxzbyBpbmNsdWRlIGEKc2VwYXJhdGUgcGF0Y2ggKGFnYWlu
IHdpdGggTWFydGlqbiBhcyBhdXRob3IgYW5kIHRoZSBTLW8tQiBhcyBvcmRlcmVkIGluCnlvdXIg
dHJlZSksIHRoYXQgaW5jbHVkZXMgdGhlIHRvdWNoc2NyZWVuIERUIG5vZGVzIGFzIHdlbGwuIFNp
bmNlIEphcnJhaApwb2ludGVkIG91dCB0aGF0IHRoZXJlJ3MgYWxyZWFkeSB0aGUgY29ycmVjdCBj
b21wYXRpYmxlIHN0cmluZyBpbiB0aGUKZHJpdmVyJ3MgT0YgZGV2aWNlIElEIHRhYmxlLgoKPiBy
ZWdhcmRzLAo+IAlvLgo+CgotLSAKQmVzdCByZWdhcmRzLAoKSmF2aWVyIE1hcnRpbmV6IENhbmls
bGFzCkNvcmUgUGxhdGZvcm1zClJlZCBIYXQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
