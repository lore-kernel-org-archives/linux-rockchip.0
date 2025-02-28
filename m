Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12492C282C1
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 02:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lKkQ4pXLWI1YXaq4sxhCK6lUvwpXeHIW2aadbkZibD8=; b=zF522fyNG+aCGg
	eEeEwhQaowFrv7nmDtdt5VcGiqx3EAWt35epDDDLf7+hKQUBKx5NNZezVBy80PUGsPoTp348i0+Wx
	5SC7e4cQfNL/zI+nTt4y9ve1g0FwnDEMqznfPuKXL4IUQgnYPwPMWHqW9zTV3aJ3GagohSmTml4u+
	dA3rDyMP/w36ZcRCMC2N6R+9caMXII3JNKE3UA8LDWQenuKB9nb3Cq3qyCsjoPKOY7+iDUbj0o8Zo
	0wUYNPmuwlFVOkdC03rs7Dc0wvi0saSsa8Tg/5LNDVfuFp1D69JUC7qNQ++3EJWp6u+Y/tHQ09hx2
	MwxxBL9O+j48VWHIErRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnqaf-00000009XPo-16ZX;
	Fri, 28 Feb 2025 02:59:05 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnqac-00000009XOu-1SeP
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Feb 2025 02:59:03 +0000
Received: by mail-qt1-x82c.google.com with SMTP id d75a77b69052e-471f16f4b73so15940671cf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 27 Feb 2025 18:59:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1740711541; x=1741316341; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qSBTER3/6mKcsokqpGzyM31jx70vagZLM9xlfjyEBPw=;
        b=qcJF4eDjIBQhK6ZsahaBlHFawLR4fVYbHxy94Kysl4CQ+xXK1DDtDTyCG4txJxtvd5
         9j4oyr8+c4bRIvGoQ004YPC9OkCTRuWVOR/zKh2BnwTLgVe+dFd+XWBP4tOnos8CALHl
         J1vLo/ehSW8V8VkX6e/FS17jp+JMYg1epiqr27vD6iaqiNx+TWfIBjX/4iJ4s3fQBsoy
         bQYFaVyzjMqWYRcZzxY6cXa8AUHpLu2/QEDhKvch78d3GZINKwpKKgozEwZM59UsOnUG
         vEF4Pk6mwHrSj4LUiqu0b6Yu/sEpCJt6oPL8gJ/zwo+j2ceXaXgeNngqebhdDeecx+DI
         JE9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740711541; x=1741316341;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qSBTER3/6mKcsokqpGzyM31jx70vagZLM9xlfjyEBPw=;
        b=NaSMOwxf1c0Z9yolVSvaze+/Kb/ADPGMp5Bn8KVu6BKEbUHvAdlAScF34OPM5lryDd
         R9e+lUKqnN8vSCQmzMWSZ42kZXs/9PHJvSchOUmSWuT030IiRb9bVs76nl7W42GpXPI4
         b0BOxtFxVwT5cIMNLI6y0q7lOyvyTFPzaRJE6hT68beFve4NoX/D2Ot/4yq2Mq/A4VQY
         LTpj99seA1ZdlqxxEc7rxkQLcmLvfGtazHe5kqWWNCNhGifjHYac+Niivj+ylp/Fgq9C
         mpvH1cl7cVnSMOybeGFDA+lXZ9mezqjH1NQyQ6P/0IOQNGe+Nqkt3Ys3goJSYxxKrQ9a
         1S2A==
X-Forwarded-Encrypted: i=1; AJvYcCUihXnex1o/kRJ+2T7/wtKeAouxDzA9ap0EkoYkazKGYieKZZ/sloZSI/+4a1VWy0Axk3bidRwRD7QBCpzfQg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyJfii6K1f+4LRIDderlQqfKnxpw+LKmArYqUDNyA8JnLK2Hlku
	toFDV44GaiBbldyuOcuPvKnJs/UDrwUbdGo5mfxaqRqvk3r70am7vNhgzQ4+hT8=
X-Gm-Gg: ASbGncsHdwbs2vD9NtOyGGAp1Ic7mopVZHZnwyBk+Gt9T1h2rBo2cUZzvkPoFoB2IeO
	mDSG6IFMwyCbyWTSP4uM+/TaJBllxMybV9+ccQHYBEaQuGWM6CCAX7QpUN5B3rNbSDaJEGqDS73
	HktenC7i/aBuzCmPsl/ZK1b3DIkukwGllfSoPIC4jfj1xT53b4gKyi0N2CROa8MNkme8fhKL+ZW
	Mm8lihL7M8odA6yJHo3sKhSrA0uAfomlhzx0ipeIwcqExREPGeUSG4ySVcsMlqM+Hepzd7Xa+Yh
	G+btCl7TbxvmvYLds0Z6wf+rfhn16Ww=
X-Google-Smtp-Source: AGHT+IHlmHYcYowccW6oMzhl/5F1nvmS0h6Fr8h9oiJzFfTp+G2Z6/HSCK7vqLoUyP0oP4vUaAgFIA==
X-Received: by 2002:a05:622a:130f:b0:474:b7b3:1409 with SMTP id d75a77b69052e-474bc0e8807mr21017291cf.40.1740711541046;
        Thu, 27 Feb 2025 18:59:01 -0800 (PST)
Received: from ?IPv6:2606:6d00:11:e976::c41? ([2606:6d00:11:e976::c41])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-474691a45d3sm18957301cf.8.2025.02.27.18.58.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 18:58:59 -0800 (PST)
Message-ID: <2b0bbccdbbc30c8587f2e3b2ee7bb0a4a1225e20.camel@ndufresne.ca>
Subject: Re: [PATCH] media: rkisp1: allow non-coherent video capture buffers
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Mikhail Rudenko <mike.rudenko@gmail.com>, Jacopo Mondi
	 <jacopo.mondi@ideasonboard.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Dafna Hirschfeld	
 <dafna@fastmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko
 Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, 	linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Date: Thu, 27 Feb 2025 21:58:58 -0500
In-Reply-To: <87ldtraz5v.fsf@gmail.com>
References: <20250102-b4-rkisp-noncoherent-v1-1-bba164f7132c@gmail.com>
	 <20250103152326.GP554@pendragon.ideasonboard.com>
	 <87bjw9s4s3.fsf@gmail.com>
	 <dtfv2slbtj3ar2wvlcnd74p3xtlvggebkk3fj5ocm3eil7kyqw@al3brwf4y5dw>
	 <87ldtraz5v.fsf@gmail.com>
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_185902_389183_C25B5372 
X-CRM114-Status: GOOD (  37.77  )
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

TGUgamV1ZGkgMjcgZsOpdnJpZXIgMjAyNSDDoCAyMzo0NiArMDMwMCwgTWlraGFpbCBSdWRlbmtv
IGEgw6ljcml0wqA6Cj4gSGkgSmFjb3BvLAo+IAo+IE9uIDIwMjUtMDItMjcgYXQgMTg6MDUgKzAx
LCBKYWNvcG8gTW9uZGkgPGphY29wby5tb25kaUBpZGVhc29uYm9hcmQuY29tPiB3cm90ZToKPiAK
PiA+IEhpIE1pa2hhaWwKPiA+IAo+ID4gT24gVHVlLCBKYW4gMTQsIDIwMjUgYXQgMDc6MDA6MzlQ
TSArMDMwMCwgTWlraGFpbCBSdWRlbmtvIHdyb3RlOgo+ID4gPiAKPiA+ID4gSGkgTGF1cmVudCwK
PiA+ID4gCj4gPiA+IE9uIDIwMjUtMDEtMDMgYXQgMTc6MjMgKzAyLCBMYXVyZW50IFBpbmNoYXJ0
IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+IHdyb3RlOgo+ID4gPiAKPiA+ID4g
PiBPbiBUaHUsIEphbiAwMiwgMjAyNSBhdCAwNjozNTowMFBNICswMzAwLCBNaWtoYWlsIFJ1ZGVu
a28gd3JvdGU6Cj4gPiA+ID4gPiBDdXJyZW50bHksIHRoZSBya2lzcDEgZHJpdmVyIGFsd2F5cyB1
c2VzIGNvaGVyZW50IERNQSBhbGxvY2F0aW9ucyBmb3IKPiA+ID4gPiA+IHZpZGVvIGNhcHR1cmUg
YnVmZmVycy4gSG93ZXZlciwgb24gc29tZSBwbGF0Zm9ybXMsIHVzaW5nIG5vbi1jb2hlcmVudAo+
ID4gPiA+ID4gYnVmZmVycyBjYW4gaW1wcm92ZSBwZXJmb3JtYW5jZSwgZXNwZWNpYWxseSB3aGVu
IENQVSBwcm9jZXNzaW5nIG9mCj4gPiA+ID4gPiBNTUFQJ2VkIHZpZGVvIGJ1ZmZlcnMgaXMgcmVx
dWlyZWQuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IEZvciBleGFtcGxlLCBvbiB0aGUgUm9ja2NoaXAg
UkszMzk5IHJ1bm5pbmcgYXQgbWF4aW11bSBDUFUgZnJlcXVlbmN5LAo+ID4gPiA+ID4gdGhlIHRp
bWUgdG8gbWVtY3B5IGEgZnJhbWUgZnJvbSBhIDEyODB4NzIwIFhSR0IzMiBNTUFQJ2VkIGJ1ZmZl
ciB0byBhCj4gPiA+ID4gPiBtYWxsb2MnZWQgdXNlcnNwYWNlIGJ1ZmZlciBkZWNyZWFzZXMgZnJv
bSA3LjcgbXMgdG8gMS4xIG1zIHdoZW4gdXNpbmcKPiA+ID4gPiA+IG5vbi1jb2hlcmVudCBETUEg
YWxsb2NhdGlvbi4gQ1BVIHVzYWdlIGFsc28gZGVjcmVhc2VzIGFjY29yZGluZ2x5Lgo+ID4gPiA+
IAo+ID4gPiA+IFdoYXQncyB0aGUgdGltZSB0YWtlbiBieSB0aGUgY2FjaGUgbWFuYWdlbWVudCBv
cGVyYXRpb25zID8KPiA+ID4gCj4gPiA+IFNvcnJ5IGZvciB0aGUgbGF0ZSByZXBseSwgeW91ciBx
dWVzdGlvbiB0dXJuZWQgb3V0IGEgbGl0dGxlIG1vcmUKPiA+ID4gaW50ZXJlc3RpbmcgdGhhbiBJ
IGV4cGVjdGVkIGluaXRpYWxseS4gOikKPiA+ID4gCj4gPiA+IFdoZW4gY2FwdHVyaW5nIHVzaW5n
IFlhdnRhIHdpdGggTU1BUCBidWZmZXJzIHVuZGVyIHRoZSBjb25kaXRpb25zIG1lbnRpb25lZAo+
ID4gPiBpbiB0aGUgY29tbWl0IG1lc3NhZ2UsIGZ0cmFjZSBnaXZlcyA0MzcuNiArLSAxLjEgdXMg
Zm9yCj4gPiA+IGRtYV9zeW5jX3NndGFibGVfZm9yX2NwdSBhbmQgNDA5ICstIDE0IHVzIGZvcgo+
ID4gPiBkbWFfc3luY19zZ3RhYmxlX2Zvcl9kZXZpY2UuIFRodXMsIGl0IGxvb2tzIGxpa2UgdXNp
bmcgbm9uLWNvaGVyZW50Cj4gPiA+IGJ1ZmZlcnMgaW4gdGhpcyBjYXNlIGlzIG1vcmUgQ1BVLWVm
ZmljaWVudCBldmVuIHdoZW4gY29uc2lkZXJpbmcgY2FjaGUKPiA+ID4gbWFuYWdlbWVudCBvdmVy
aGVhZC4KPiA+ID4gCj4gPiA+IFdoZW4gdHJ5aW5nIHRvIGRvIHRoZSBzYW1lIG1lYXN1cmVtZW50
cyB3aXRoIGxpYmNhbWVyYSwgSSBmYWlsZWQuIEluIGEKPiA+ID4gdHlwaWNhbCBsaWJjYW1lcmEg
dXNlIGNhc2Ugd2hlbiBNTUFQIGJ1ZmZlcnMgYXJlIGFsbG9jYXRlZCBmcm9tIGEKPiA+ID4gZGV2
aWNlLCBleHBvcnRlZCBhcyBkbWFidWZzIGFuZCB0aGVuIHVzZWQgZm9yIGNhcHR1cmUgb24gdGhl
IHNhbWUgZGV2aWNlCj4gPiA+IHdpdGggRE1BQlVGIG1lbW9yeSB0eXBlLCBjYWNoZSBtYW5hZ2Vt
ZW50IGluIGtlcm5lbCBpcyBza2lwcGVkIFsxXQo+ID4gPiBbMl0uIEFsc28sIHZiMl9kY19kbWFi
dWZfb3BzX3tiZWdpbixlbmR9X2NwdV9hY2Nlc3MgYXJlIG5vLW9wcyBbM10sIHNvCj4gPiA+IERN
QV9CVUZfSU9DVExfU1lOQyBmcm9tIHVzZXJzcGFjZSBkb2VzIG5vdCB3b3JrIGVpdGhlci4KPiA+
ID4gCj4gPiA+IFNvIGl0IGxvb2tzIGxpa2UgdG8gbWFrZSB0aGlzIGNoYW5nZSByZWFsbHkgdXNl
ZnVsLCB0aGUgYWJvdmUgaXNzdWUgb2YKPiA+ID4gY2FjaGUgbWFuYWdlbWVudCBmb3IgbGliY2Ft
ZXJhL0RNQUJVRi92aWRlb2J1ZjItZG1hLWNvbnRpZyBoYXMgdG8gYmUKPiA+ID4gc29sdmVkLiBJ
J20gbm90IGFuIGV4cGVydCBpbiB0aGlzIGFyZWEsIHNvIGFueSBhZHZpY2UgaXMga2luZGx5IHdl
bGNvbWUuIDopCj4gPiAKPiA+IEl0IHdvdWxkIGJlIHNoYW1lIGlmIHdlIGxldCB0aGlzIGRpc2N1
c3Npb24gZHJvcCBkZWFkLi4gY2FjaGUKPiA+IG1hbmFnZW1lbnQgcG9saWNpZXMgYXJlIHJlbGV2
YW50IGZvciBwZXJmb3JtYW5jZXMsIHNwZWNpZmljYWxseSBmb3IKPiA+IGNwdSBhY2Nlc3MsIGFu
ZCB5b3VyIGFib3ZlIDcuN21zIHZzIDEuMSBtcyB0ZXN0IGNsZWFybHkgc2hvd3MgdGhhdC4KPiA+
IAo+ID4gPiAKPiA+ID4gWzFdIGh0dHBzOi8vZ2l0LmxpbnV4dHYub3JnL21lZGlhLmdpdC90cmVl
L2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jP2lkPTk0Nzk0
YjVjZTRkOTBhYjEzNGIwYjEwMWEwMmZkZGY2ZTc0YzQzN2QjbjQxMQo+ID4gCj4gPiBJIHdvdWxk
IGxpa2UgdG8ga25vdyBmcm9tIEhhbnMgaWYgdGhlIGRlY2lzaW9uIHRvIGRpc2FsbG93IGNhY2hl
LWhpbnRzCj4gPiBmb3IgZG1hYnVmIGltcG9ydGVycyBpcyBhIGRlc2lnbiBjaG9pY2Ugb3IgaXMg
ZGVlcGx5IHJvb3RlZCBpbiBvdGhlcgo+ID4gcmVhc29ucyBJIG1pZ2h0IGJlIG1pc3NpbmcuCj4g
PiAKPiA+IEknbSBhc2tpbmcgYmVjYXVzZSB0aGUgaWRlYSBpcyBmb3IgbGliY2FtZXJhIHRvIGFj
dCBzb2xlbHkgYXMgZG1hLWJ1Zgo+ID4gaW1wb3J0ZXIsIHRoZSBjdXJyZW50IGFsbG9jLWV4cG9y
dC10aGVuLWltcG9ydCB0cmljayBpcyBhbiBoZWxwZXIgZm9yCj4gPiBhcHBsaWNhdGlvbnMgdG8g
d29yayBhcm91bmQgdGhlIGFic2VuY2Ugb2YgYSBzeXN0ZW0gYWxsb2NhdG9yLgo+ID4gCj4gPiBJ
ZiB0aGUgcmVxdWlyZW1lbnQgdG8gZGlzYWJsZSBjYWNoZS1oaW50cyBmb3IgaW1wb3J0ZXJzIGNh
bm5vdCBiZQo+ID4gbGlmdGVkLCBmb3IgbGliY2FtZXJhIGl0IG1lYW5zIHdlIHdvdWxkIG5vdCBi
ZSBhYmxlIHRvIHVzZSBpdC4KPiAKPiBNZWFud2hpbGUsIEkgaGF2ZSBwb3N0ZWQgYSBwYXRjaCwg
d2hpY2ggcmUtZW5hYmxlcyBjYWNoZSBtYW5hZ2VtZW50IG9wcwo+IGZvciBub24tY29oZXJlbnQg
ZG1hYnVmcyBleHBvcnRlZCBmcm9tIGRtYS1jb250aWcgYWxsb2NhdG9yIFsxXS4gSXQgaXMKPiBj
dXJyZW50bHkgd2FpdGluZyBmb3IgcmV2aWV3Lgo+IAo+IFsxXSBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9hbGwvMjAyNTAxMjgtYjQtcmtpc3Atbm9uY29oZXJlbnQtdjMtMS1iYWYzOWM5OTdkMmFA
Z21haWwuY29tLwoKVGhhbmtzIGZvciB5b3Ugd29yaywgdGhpcyBtYXRjaGVzIHdoYXQgSSB3YXMg
cmVmZXJyaW5nIHRvIG1pc3NpbmcgaW4gbXkKcHJldmlvdXMgcmVwbHkuCgpJIGRvbid0IHRoaW5r
IHRoZXJlIGlzIGFueSBpbnRlbnRpb24gdG8gYmxvY2sgb3IgZGVwcmVjYXRlIGl0LCBidXQKcGFy
dGlhbGx5IGVuYWJsaW5nIGxlYWRzIHRvIHByb2JsZW1zLiBEbyB3ZSBuZWVkIHNvbWV0aGluZyBp
biB0aGUgU0cKYWxsb2NhdG9yIHRvID8KCk5pY29sYXMKCj4gCj4gPiAKPiA+ID4gWzJdIGh0dHBz
Oi8vZ2l0LmxpbnV4dHYub3JnL21lZGlhLmdpdC90cmVlL2RyaXZlcnMvbWVkaWEvY29tbW9uL3Zp
ZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jP2lkPTk0Nzk0YjVjZTRkOTBhYjEzNGIwYjEwMWEwMmZk
ZGY2ZTc0YzQzN2QjbjgyOQo+ID4gPiBbM10gaHR0cHM6Ly9naXQubGludXh0di5vcmcvbWVkaWEu
Z2l0L3RyZWUvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29u
dGlnLmM/aWQ9OTQ3OTRiNWNlNGQ5MGFiMTM0YjBiMTAxYTAyZmRkZjZlNzRjNDM3ZCNuNDI2Cj4g
PiA+IAo+ID4gPiAtLQo+ID4gPiBCZXN0IHJlZ2FyZHMsCj4gPiA+IE1pa2hhaWwgUnVkZW5rbwo+
ID4gPiAKPiAKPiAKPiAtLQo+IEJlc3QgcmVnYXJkcywKPiBNaWtoYWlsIFJ1ZGVua28KPiAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
