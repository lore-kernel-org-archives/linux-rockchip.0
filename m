Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBA09C3DA63
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 16:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L1G7Zy7gLdSy0aYwplDL0H3YRaejtxyOMEGTDczekpg=; b=M0XsSbacX9vha0
	FZBsuKbIL+9OMHFuE9ulufn+Z0D1c7OJ3Xmsi4WfOTJNdX4rJROZi6M4iVC/VSM8sr97fi5iZXOay
	mGMb1+5HQ9gtbZ+O3Zk5mVXIEtKJZV/Tc36QfIvmnGn9St9TtYKvK1axroEIxksOZAE4CBDdOzXlr
	lGIQrQ+lGEjWa+PsuLiNFyS8sryQdyw499skHJU5FkdZoXEWMlTDNn+/R/sEcHvA7j99Zo2PyQOEY
	amQzEhB9wVmbvaY14vQDUdB+4DTDS9MnDpyOQPDpo3hOODmlME+ZcxIBw/LlMFmhYAL3zGOXcwDqn
	vH4m9hXSaxoOGHrNngOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUUHC-0000000018r-0FpS;
	Thu, 18 Jul 2024 16:46:42 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUUH8-0000000018K-4AvD
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Jul 2024 16:46:40 +0000
Received: by mail-qk1-x72b.google.com with SMTP id af79cd13be357-79ef8e0c294so37763285a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Jul 2024 09:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1721321197; x=1721925997; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UCJzuich5vcNF0XDpn0++KWksAKuSuGZiqpZTSOzP6g=;
        b=bGxkppbkMShY2H7dL0k+y3VrqnwX/HqtnCd67qxOtUjclHqTBBNHJ7QIZ/E1BguCaW
         7Oj4LnRnbZu2B7GOV9DUKZJX79/VJeLVlOR0eqAU3mokznOaVHDUAdD5K0hRsXEKm4ry
         /yZouS66HfbXesszMOfo1lLz+pWFYRPKF41fi75Apntiea+UYodA7B1l9MTpGue4WVb3
         HUw/0IXSWBtVK4ybBsDdVihlQdznUq+BttSAXwnF2YdiJtBZRkobVtnz0MTNBN7yG2qp
         RslFekLxpgwtKiG6CXZjMpVm5n6CSniTxdeERgzwtKj1t97oZqfcATlWpoNrNb9P/2nb
         6K3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721321197; x=1721925997;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UCJzuich5vcNF0XDpn0++KWksAKuSuGZiqpZTSOzP6g=;
        b=kHAFz4N6Pq/WR8enRadag3+DZLrAejGktlIzaX4pZp3O0EtZt5QtV53PQFJ+H1P+Kh
         A9kRKgyNcgSLhTZ3QVfwT3/7r1bWwNlgMkjclugvv0XtmsjhwyXeo0T9fjcZQIdywkGX
         5xT1/fTv+ft3Fo5IihfTPYN8uUi76fpX80GW8yasiXdQRMv5IWaIxlOEmBor5DWm/1gZ
         Sel1YXiMTbWI5XkC+e3IzTKzUl5aprwsw1eNCP3rASgsaagiCjX+FoMN2s4l07aXRczp
         nPq47hILJcaQHL8NEmOX9DvM8APQlrx1XXrdIrlaYIm7bxu3lV3sJY+06LhJq7N6jOB5
         Lx0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUjilJaCkmzsWR1YQxjbT23aHfrNq0bsN6SpwYxYWwE7JkKknpXCRqxQQaiTaWOvUiNMjSSKmR+yOaFDh3m28B0Mwc9TWoSddkFKONFHeIaivK0
X-Gm-Message-State: AOJu0YwjEqPYOk7bu9gx9+3i0uxCiF5xuxIPQgfTDIbxCs4BE5MZhk4n
	ibBRWfGH+kjYj/0XZxbQ4qo4tYWR8HuWahLFEJXgN/2rl/9jx+ti/TEYoWXzvVk=
X-Google-Smtp-Source: AGHT+IHJwrUl/hDdqC/9tlGT2hk67IHXHUg+9Nt8C0hnwHeNLUcBO/UNKF5hNdOJ0fKvP8V96Myt1g==
X-Received: by 2002:a05:620a:4014:b0:79f:7c0:ebfd with SMTP id af79cd13be357-7a193929281mr215018785a.16.1721321197324;
        Thu, 18 Jul 2024 09:46:37 -0700 (PDT)
Received: from nicolas-tpx395.lan ([2606:6d00:15:6720::7a9])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a19396e2b6sm41538085a.109.2024.07.18.09.46.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jul 2024 09:46:36 -0700 (PDT)
Message-ID: <7a5167163f1df60899c9e2bfef1e42e0c67567f7.camel@ndufresne.ca>
Subject: Re: [PATCH v4 1/2] media: videodev2: Add flags to unconditionnaly
 enumerate pixels formats
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Jacopo Mondi
	 <jacopo.mondi@ideasonboard.com>
Cc: mchehab@kernel.org, ezequiel@vanguardiasur.com.ar,
 hverkuil-cisco@xs4all.nl,  linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org,  linux-rockchip@lists.infradead.org,
 kernel@collabora.com
Date: Thu, 18 Jul 2024 12:46:35 -0400
In-Reply-To: <069a9e2b-f0bc-46a7-aaec-f30157e9be2d@collabora.com>
References: <20240717131430.159727-1-benjamin.gaignard@collabora.com>
	 <20240717131430.159727-2-benjamin.gaignard@collabora.com>
	 <2kbxr3hkjbcnaqescxmlcerziixg72icqpug6wa25eeggy2pnj@vqmxe4ojcwml>
	 <dfc292f8-0014-4bf4-9429-31f729a176cd@collabora.com>
	 <ok2a4ubzka6rhzyj2c5op73ij7pw35g6e75whc2jjget62fatx@zka2ewyt3kfv>
	 <c8358d79bd51a9bfa5116b33ae5e7766b95d344d.camel@ndufresne.ca>
	 <1faa7098-b108-480e-ae4b-ed25e0020e51@collabora.com>
	 <7113029e2e192d43523a1ea5dae041fb53ae5948.camel@ndufresne.ca>
	 <b454d93d607047c63663b3f003b3d3c23f07bac7.camel@ndufresne.ca>
	 <069a9e2b-f0bc-46a7-aaec-f30157e9be2d@collabora.com>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_094639_323358_B48C907D 
X-CRM114-Status: GOOD (  36.96  )
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

TGUgamV1ZGkgMTgganVpbGxldCAyMDI0IMOgIDE2OjQzICswMjAwLCBCZW5qYW1pbiBHYWlnbmFy
ZCBhIMOpY3JpdMKgOgo+IExlIDE4LzA3LzIwMjQgw6AgMTY6MDIsIE5pY29sYXMgRHVmcmVzbmUg
YSDDqWNyaXTCoDoKPiA+IExlIGpldWRpIDE4IGp1aWxsZXQgMjAyNCDDoCAwOTo1NiAtMDQwMCwg
Tmljb2xhcyBEdWZyZXNuZSBhIMOpY3JpdMKgOgo+ID4gPiBIaSwKPiA+ID4gCj4gPiA+IExlIGpl
dWRpIDE4IGp1aWxsZXQgMjAyNCDDoCAwOTowNCArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQgYSDD
qWNyaXTCoDoKPiA+ID4gPiBMZSAxNy8wNy8yMDI0IMOgIDE5OjUwLCBOaWNvbGFzIER1ZnJlc25l
IGEgw6ljcml0wqA6Cj4gPiA+IFsuLi5dCj4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiBAQCAtMTU2
OSw2ICsxNTY5LDcgQEAgc3RhdGljIGludCB2NGxfZW51bV9mbXQoY29uc3Qgc3RydWN0IHY0bDJf
aW9jdGxfb3BzICpvcHMsCj4gPiA+ID4gPiA+ID4gPiA+ICAgICAJaW50IHJldCA9IGNoZWNrX2Zt
dChmaWxlLCBwLT50eXBlKTsKPiA+ID4gPiA+ID4gPiA+ID4gICAgIAl1MzIgbWJ1c19jb2RlOwo+
ID4gPiA+ID4gPiA+ID4gPiAgICAgCXUzMiBjYXBfbWFzazsKPiA+ID4gPiA+ID4gPiA+ID4gKwl1
MzIgZmxhZ3M7Cj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiAgICAgCWlmIChy
ZXQpCj4gPiA+ID4gPiA+ID4gPiA+ICAgICAJCXJldHVybiByZXQ7Cj4gPiA+ID4gPiA+ID4gPiA+
IEBAIC0xNTc4LDggKzE1NzksMTAgQEAgc3RhdGljIGludCB2NGxfZW51bV9mbXQoY29uc3Qgc3Ry
dWN0IHY0bDJfaW9jdGxfb3BzICpvcHMsCj4gPiA+ID4gPiA+ID4gPiA+ICAgICAJCXAtPm1idXNf
Y29kZSA9IDA7Cj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiAgICAgCW1idXNf
Y29kZSA9IHAtPm1idXNfY29kZTsKPiA+ID4gPiA+ID4gPiA+ID4gKwlmbGFncyA9IHAtPmZsYWdz
ICYgVjRMMl9GTVRfRkxBR19FTlVNX0FMTF9GT1JNQVRTOwo+ID4gPiA+ID4gPiA+ID4gPiAgICAg
CW1lbXNldF9hZnRlcihwLCAwLCB0eXBlKTsKPiA+ID4gPiA+ID4gPiA+ID4gICAgIAlwLT5tYnVz
X2NvZGUgPSBtYnVzX2NvZGU7Cj4gPiA+ID4gPiA+ID4gPiA+ICsJcC0+ZmxhZ3MgPSBmbGFnczsK
PiA+ID4gPiA+ID4gPiA+IFdvbid0IHRoaXMgc2V0IFY0TDJfRk1UX0ZMQUdfRU5VTV9BTExfRk9S
TUFUUyAoaWYgcHJlc2VudCkgaW4gdGhlCj4gPiA+ID4gPiA+ID4gPiBmbGFncyByZXR1cm5lZCB0
byB1c2Vyc3BhY2UgPyBTaG91bGRuJ3QgYmUgZHJpdmVycyB0byBzZXQKPiA+ID4gPiA+ID4gPiA+
IFY0TDJfRk1UX0ZMQUdfQUxMX0ZPUk1BVFMgaW5zdGVhZCA/Cj4gPiA+ID4gPiA+ID4gbWVtc2V0
X2FmdGVyIHplcm9lZCBmbGFncyBmaWVsZCBzbyB3ZSBuZWVkIHRoaXMgdG8gc2VuZCBWNEwyX0ZN
VF9GTEFHX0VOVU1fQUxMX0ZPUk1BVFMKPiA+ID4gPiA+ID4gPiBmbGFnIHRvIGRyaXZlcnMuIFJl
dHVybiBpdCB0byB1c2Vyc3BhY2UgaXMgYSBzaWRlIGVmZmVjdCBidXQgSSBkb24ndCB0aGF0IGlz
IHByb2JsZW0KPiA+ID4gPiA+ID4gPiBzaW5jZSBpdCBzZXQgaXQgYW55d2F5Lgo+ID4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiBPaywgaWYgdGhlIGV4cGVjdGF0aW9uIGlzIHRoYXQgdGhlIGZsYWcg
aXMgcHJlc2VydmVkIHRocm91Z2ggdGhlIGlvY3RsCj4gPiA+ID4gPiA+IGNhbGwsIHRoaXMgaXMg
ZmluZSB3aXRoIG1lCj4gPiA+ID4gPiBJIG1pZ2h0IGJlIG1pc3Npbmcgc29tZXRoaW5nIG90aGVy
IHNpbWlsYXIgZmVhdHVyZXMgYXJlIGV4cGxpY2l0bHkgYWR2ZXJ0aXNlZCBieQo+ID4gPiA+ID4g
ZHJpdmVycy4gVGhpcyB3YXksIHRoZSBnZW5lcmljIGxheWVyIGNhbiBrZWVwIG9yIGNsZWFyIHRo
ZSBmbGFnIGJhc2VkIG9mIGlmIGl0cwo+ID4gPiA+ID4gc3VwcG9ydGVkLiBUaGUgZmFjdCB0aGUg
ZmxhZyBwZXJzaXN0IHRoZSBpb2N0bCgpIG9yIG5vdCBlbmR1cCBoYXZpbmcgYSB1c2VmdWwKPiA+
ID4gPiA+IHNlbWFudGljLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBDb3VsZCB3ZSBkbyB0aGUgc2Ft
ZT8KPiA+ID4gPiBJdCBpcyB0aGUgb25seSBmbGFnIHNldCBieSB1c2Vyc3BhY2Ugd2hlbiBjYWxs
aW5nIHRoZSBpb2N0bCgpLCBhbGwgb3RoZXJzCj4gPiA+ID4gYXJlIHNldCBieSB0aGUgZHJpdmVy
cy4KPiA+ID4gPiBJIGNhbiBjbGVhbiBpdCBmcm9tIHRoZSBpb2N0bCgpIHN0cnVjdHVyZSBhZnRl
ciBkcml2ZXIgY2FsbCBidXQgdGhhdCB3b24ndCBjaGFuZ2UgYW55dGhpbmcuCj4gPiA+IFRoaXMg
ZG9lcyBub3QgYW5zd2VyIG15IHF1ZXN0aW9uLiBJbiBvdGhlciBzaW1pbGFyIGZlYXR1cmUsIHdl
IGhhdmUgYW4KPiA+ID4gKippbnRlcm5hbCoqIGZsYWcgc2V0IGJ5IGRyaXZlcnMgdG8gdGVsbCB0
aGUgZnJhbWV3b3JrIHRoYXQgc3VjaCBmZWF0dXJlIGlzCj4gPiA+IGFibGVkLiBVc2luZyB0aGF0
LCB0aGUgZnJhbWV3b3JrIGNhbiBrZWVwIG9yIHJlbW92ZSB0aGF0IGZsYWcgYmFzZWQgb24gaWYg
aXRzCj4gPiA+IHN1cHBvcnRlZCBvciBub3QuIFRoaXMgd2F5LCB1c2Vyc3BhY2UgaGF2ZSBhIGNs
dWUgaWYgdGhlIGRyaXZlciBkbyBoYXZlIHRoaXMKPiA+ID4gc3VwcG9ydCBvciBpZiB0aGUgcmV0
dXJuZWQgcmVzdWx0IChpbiB0aGF0IGNhc2UpIGlzIGp1c3QgYSBzdWJzZXQgbWF0Y2hpbmcgdGhl
Cj4gPiA+IGNvbmZpZ3VyYXRpb24uIFdlIGRvbid0IHNlZW0gdG8gaGF2ZSBkb25lIHRoZSBzYW1l
IGxldmVsIG9mIGVmZm9ydCBoZXJlLgo+ID4gRm9yIHRoZSByZWZlcmVuY2UsIHlvdSBhY3R1YWxs
eSB1c2UgdGhhdCBzZW1hbnRpYyBpbiBHU3RyZWFtZXIgaW1wbGVtZW50YXRpb24sCj4gPiBidXQg
dGhlIGtlcm5lbCBjb2RlIHNlZW1zIGJyb2tlbi4KPiA+IAo+ID4gaHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2dzdHJlYW1lci9nc3RyZWFtZXIvLS9tZXJnZV9yZXF1ZXN0cy83MDc4L2Rp
ZmZzI2ViOTBkNTQ5NWRmMmYwODVmMTYzOTk2MDE0Yzc0OGEzNmYxNDNmNzZfNTE2XzUyNwo+IAo+
IGRldmljZV9jYXBzIHUzMiBmaWVsZCBpcyBhbHJlYWR5IGFsbW9zdCBmdWxseSB1c2VkLCBvbmx5
IG9uZSAxIGJpdCBpcyBmcmVlLgo+IEkgY291bGQgdXNlIGl0IGJ1dCwgZm9yIG1lLCB0aGUgY2Fw
YWJpbGl0eSB0byBlbnVtZXJhdGUgYWxsIHRoZSBmb3JtYXRzCj4gZG9lc24ndCBmaXQgd2VsbCBp
biB0aGUgZXhpc3RpbmcgbGlzdC4KClNvcnJ5LCBidXQgSSB3aWxsIHJlLWl0ZXJhdGUgdGhhdCBJ
IGRvbid0IG1lYW4gdG8gYWRkIGEgdUFQSSBidXQgYW4gKippbnRlcm5hbCoqCmZsYWcgYmV0d2Vl
biBkcml2ZXIgYW5kIGZyYW1ld29yay4gVGhpcyB3YXkgdGhlIGZyYW1ld29yayBrbm93cyBhdCBs
ZWFzdC4KCj4gCj4gQmVuamFtaW4KPiAKPiA+IAo+ID4gPiBOaWNvbGFzCj4gPiA+IAo+ID4gPiA+
ID4gPiBSZXZpZXdlZC1ieTogSmFjb3BvIE1vbmRpIDxqYWNvcG8ubW9uZGlAaWRlYXNvbmJvYXJk
LmNvbT4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ICAgICAJc3dpdGNoIChwLT50eXBl
KSB7Cj4gPiA+ID4gPiA+ID4gPiA+ICAgICAJY2FzZSBWNEwyX0JVRl9UWVBFX1ZJREVPX0NBUFRV
UkU6Cj4gPiA+ID4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvbGludXgvdmlk
ZW9kZXYyLmggYi9pbmNsdWRlL3VhcGkvbGludXgvdmlkZW9kZXYyLmgKPiA+ID4gPiA+ID4gPiA+
ID4gaW5kZXggZmU2YjY3ZTgzNzUxLi5iNmE1ZGE3OWJhMjEgMTAwNjQ0Cj4gPiA+ID4gPiA+ID4g
PiA+IC0tLSBhL2luY2x1ZGUvdWFwaS9saW51eC92aWRlb2RldjIuaAo+ID4gPiA+ID4gPiA+ID4g
PiArKysgYi9pbmNsdWRlL3VhcGkvbGludXgvdmlkZW9kZXYyLmgKPiA+ID4gPiA+ID4gPiA+ID4g
QEAgLTg4Niw2ICs4ODYsOCBAQCBzdHJ1Y3QgdjRsMl9mbXRkZXNjIHsKPiA+ID4gPiA+ID4gPiA+
ID4gICAgICNkZWZpbmUgVjRMMl9GTVRfRkxBR19DU0NfSFNWX0VOQwkJVjRMMl9GTVRfRkxBR19D
U0NfWUNCQ1JfRU5DCj4gPiA+ID4gPiA+ID4gPiA+ICAgICAjZGVmaW5lIFY0TDJfRk1UX0ZMQUdf
Q1NDX1FVQU5USVpBVElPTgkJMHgwMTAwCj4gPiA+ID4gPiA+ID4gPiA+ICAgICAjZGVmaW5lIFY0
TDJfRk1UX0ZMQUdfTUVUQV9MSU5FX0JBU0VECQkweDAyMDAKPiA+ID4gPiA+ID4gPiA+ID4gKyNk
ZWZpbmUgVjRMMl9GTVRfRkxBR19FTlVNX0FMTF9GT1JNQVRTCQkweDA0MDAKPiA+ID4gPiA+ID4g
PiA+ID4gKyNkZWZpbmUgVjRMMl9GTVRfRkxBR19BTExfRk9STUFUUwkJMHgwODAwCj4gPiA+ID4g
PiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiAgICAgCS8qIEZyYW1lIFNpemUgYW5kIGZyYW1l
IHJhdGUgZW51bWVyYXRpb24gKi8KPiA+ID4gPiA+ID4gPiA+ID4gICAgIC8qCj4gPiA+ID4gPiA+
ID4gPiA+IC0tCj4gPiA+ID4gPiA+ID4gPiA+IDIuNDMuMAo+ID4gPiA+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiA+ID4gPiA+ID4gS2VybmVsIG1haWxpbmcgbGlz
dCAtLSBrZXJuZWxAbWFpbG1hbi5jb2xsYWJvcmEuY29tCj4gPiA+ID4gPiA+ID4gPiBUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGtlcm5lbC1sZWF2ZUBtYWlsbWFuLmNvbGxhYm9yYS5j
b20KPiA+ID4gPiA+ID4gPiA+IFRoaXMgbGlzdCBpcyBtYW5hZ2VkIGJ5IGh0dHBzOi8vbWFpbG1h
bi5jb2xsYWJvcmEuY29tCj4gPiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiA+ID4gPiBLZXJuZWwgbWFpbGluZyBsaXN0IC0tIGtlcm5lbEBtYWls
bWFuLmNvbGxhYm9yYS5jb20KPiA+ID4gPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGtlcm5lbC1sZWF2ZUBtYWlsbWFuLmNvbGxhYm9yYS5jb20KPiA+ID4gPiBUaGlzIGxpc3QgaXMg
bWFuYWdlZCBieSBodHRwczovL21haWxtYW4uY29sbGFib3JhLmNvbQo+ID4gPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiBLZXJuZWwgbWFpbGlu
ZyBsaXN0IC0tIGtlcm5lbEBtYWlsbWFuLmNvbGxhYm9yYS5jb20KPiA+ID4gVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBrZXJuZWwtbGVhdmVAbWFpbG1hbi5jb2xsYWJvcmEuY29tCj4g
PiA+IFRoaXMgbGlzdCBpcyBtYW5hZ2VkIGJ5IGh0dHBzOi8vbWFpbG1hbi5jb2xsYWJvcmEuY29t
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
