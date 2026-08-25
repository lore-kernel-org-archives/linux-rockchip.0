Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EACC7C61DBD
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2026 12:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7vz4p8xH1veXfv6kbHZJYp0DDM4V6bbNWaEDkkNS7dA=; b=GKatEfJCSOOBVs
	eRfc2mSZ6E//Jp+VPObRefzTV9aPTgWtPo7RWt6XRn+zg/mLHrzV2/d2xdDXRLDZJu9N1Z+pqxHJc
	0q98BpdHwsjPJWQ0cp2HaUZt1fPbx7lPSRdnD29RCaO8GnB0CIqwQa/U6V+tsYdgPbbFsIbP70Enx
	pbp88QmCya0OK/5s6JoYSZUG1aQEkkwO84wLmiMHGc/VLVfgo8H2/EjnjJRBkpyBAoEaKMmSoIhkb
	PFe6wnQruwTJP171xObi8ChCWSI04DFLvFvm6xvgzPAo+B3VKsY0d7pivMT/ybJpi0oHYHZwWJtUu
	oQkfz7ei+Hxj2KmG21Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyqKD-00000000mPW-2drG;
	Tue, 25 Aug 2026 12:32:21 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyqKB-00000000mOT-1Xbb
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Aug 2026 12:32:21 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-81f08502c4bso2090257b3.2
        for <linux-rockchip@lists.infradead.org>; Tue, 25 Aug 2026 05:32:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787661138; cv=none;
        d=google.com; s=arc-20260327;
        b=DgqLvPyOWHhnwQKHjlK2foq/MM7xmasQTWP/PYaezhJCBd3fgQ+hhOHUGKDkesdqo0
         9hVuUkwRhMmDfa5561SqSJrNvwUGfehHZMLN8Z3tMDBigxabC8NCCDvIayjWRKZ+bGf4
         nLMoDxq57xqyIkrqIfG1edeoW3hAViKXdEK6Er3ZR3uqaju95Z3knZ+RjRumc0m9gFjX
         Dljiwbi0vPEbolgaMUrQK/mT+blwUH3PGzyIecMxzS5D7je6Xugv8gN76J8cD1Vmek2X
         2Y3JWG3S9QgIKJHXSkMjUqwdssVp5HbMu0siO0hopzABJrUvbF5yMCc2jtvcE+k2jw6w
         4usA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=yC0ABnqL3afPD/T9bA9JOpYrNE4Kd3K+0Xw3e1dg3hQ=;
        fh=3TsKt0o1cOiagdYhLv0kYiiXKHO5pkCBldQa6AtZfE0=;
        b=ivnwc9+TnIaTWSDshxtVfkhvDUf/eCj5Y6oLkPbzACB6AkYmVGNwkEuxSossm6+p5b
         R3gWFE8j6t7+E0xBy7OiOAKr2Kd/AhkIFq26FVdk6r5i7D3WY+661bAqAaeEOksoDAt3
         GHGVpZWpuwnlR0W9WAQ2uXIpARyf7VfwSGkdtbuNmw4RNsAmrqWz7zW6caXnv4RBZaAl
         J3lv/5+8Ftj8GC614r0XPEqNwWYPcxcEsJk0d53bapfWJR8PXuHf2UZvgDD+rzGQfy5m
         RdwRsm1tCNahqsQ4EvPn3Wt+kbNUo9du0fUD4a00GVLjH4dxOqklBoDvVG7GREFKR5ON
         ohBw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787661138; x=1788265938; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=yC0ABnqL3afPD/T9bA9JOpYrNE4Kd3K+0Xw3e1dg3hQ=;
        b=e6xF6KrjJiP731rsQZRD4DjdJipfDuCd4U1Bcl5sOU8PJmZmb6VSsguJw8nYWVaIdN
         jQ+urX5M9QZx302VhdEeX0x9Vmj3FU8UscpwBnU3DO+ihtaUg/NVy3OCdrQrsN0X4MIm
         pH+dFJUsY0Q/31T9JStynUvtChPqT7/XvaJJkeyCLZ+KX4N5izVYgePVRw0cXOgXUMiV
         1JI6vpGPVpnoqaBr5lSAY5jUBMxM3khKD9zXQeneOzYsCstsVk316JsvY3ByY6lBwgBX
         UcnPOPwelE4nFyUfhnwoHcbpL0t/pgA/Owt8Tp8ULF7T13hn4PxKCW9GOqWqNTKSvo1K
         DoZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787661138; x=1788265938;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yC0ABnqL3afPD/T9bA9JOpYrNE4Kd3K+0Xw3e1dg3hQ=;
        b=mrk1FGGDMxGBwfPjaEHT2dxculgihm6zEkzXBEjQ6o73Vf2C9Qc8D9w4prioIrwV3N
         3csM+UjCzyYt3VnvJnqZcP5E1UXD5BrdPLP8iq18waxGoyVggZTUFlIITQxPvUydlHnm
         ezrC8tnSUBaxlgRYeF/YG8zSv1OzESwBL69dz7qZMKK2dzjWzq35KCQEF2/qmE0NfiAv
         JNwi509fg4SSf5ZhRYI0Y1oAw4nIL4y8Z07Uvk0iND0IDx5q90sj+BE+niAg2YsKIRjs
         BMLvs/w6HyWxaBI1wgOOSYBe9EDHEnrE3B9+hKcDbBPcrQ4V8bG9lfXewtXxfiCuRVLc
         t7+w==
X-Forwarded-Encrypted: i=1; AHgh+RqvwixxwSwwrCcGQgoxHeCVL/d6hsFrnnIGxkUaC/C0YT4G5hY12JEMnWawb/V6a2mYKCHJbEoQSryqpLfXOA==@lists.infradead.org
X-Gm-Message-State: AFuF++m6TY9VX/Z5FAHQUakT1Kp/SKKP3qc1tQk6osUouDM8NvO9spVb
	Wn6JzLoW6xrUiCLoHkV0fiCNhQcNYzu+/+rLmevBAb47hM9P5cvV3XMhEJSQ6BVS8u4GGRiFmzU
	Lr5Hx7A5u22vXCabfbk6niLJIBX0/iUs=
X-Gm-Gg: AR+sD10TswPeWqwGNXl03LSxF/9+u17nWv81MdCgoFwMEgNIZh5jMQcvBon/26bqzee
	bTVrbtQKdQ7hINBdb99M3ep/vSKhTm9GjHbJAGvc8FGmMkeEdHlQDl29P+wfSb4WNvk/zw0b3QT
	n3k+NAICVZ7gMHBmlWAksw3ESjEtYSMz4Ja1oQI7eQu97i+dIJGntalJOw4tHEIhRGGI4AVvcU/
	xhOQYZ7CJIwgac2HyKKg2+X3C72fsPUohoJp+Fh2Ar4PPH+D62qJLSJ+DUNT/pda4OE1QdLZNsb
	cGbXzOOh4dCu6s6ZB4ih6gQISuri71Wow1FJKuGVP4TSrCGUeGq6g+oT
X-Received: by 2002:a05:690c:6e01:b0:80b:d006:6436 with SMTP id
 00721157ae682-854c6f01138mr19294437b3.4.1787661138041; Tue, 25 Aug 2026
 05:32:18 -0700 (PDT)
MIME-Version: 1.0
References: <f1805c2bce56c89d8ace35f67c665b24bab90965.1787568944.git.gahing@gahingwoo.com>
 <b5265e47492897d0ada844c2ff7f477bb715cd07.1787568944.git.gahing@gahingwoo.com>
In-Reply-To: <b5265e47492897d0ada844c2ff7f477bb715cd07.1787568944.git.gahing@gahingwoo.com>
From: Igor Paunovic <royalnet026@gmail.com>
Date: Tue, 25 Aug 2026 14:32:06 +0200
X-Gm-Features: AcwNN1V1tG9pfMaEZxfyNcf1kB3QFf3O-ye-4Ztbjbyn2rv0eJ21NSEcDStkJdA
Message-ID: <CAEWPSH5MVzoQMaFOEQ93+1pOPmcXCDNfuXsv5j-X8Lb1fy_hrg@mail.gmail.com>
Subject: Re: [PATCH v9 03/13] accel/rocket: let the core suspend after a reset
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: tomeu@tomeuvizoso.net, heiko@sntech.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, joro@8bytes.org, will@kernel.org, 
	robin.murphy@arm.com, ulfh@kernel.org, p.zabel@pengutronix.de, 
	ogabbay@kernel.org, zhangqing@rock-chips.com, u.kleine-koenig@baylibre.com, 
	chaoyi.chen@rock-chips.com, diederik@cknow-tech.com, alchark@flipper.net, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	iommu@lists.linux.dev, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_053219_422468_C9828A5D 
X-CRM114-Status: GOOD (  33.55  )
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

SGkgSmlheGluZywKCk9uIHRvcCBvZiB0aGUgYXMtaXMgcHJvdG9jb2wgcmUtcnVuIEkgcmVwb3J0
ZWQgb24gMi8xMywgSSByYW4Kb25lIG1vcmUgYXJtIHdpdGggdGhpcyBwYXRjaCBhZGRlZCBvbiB0
b3Agb2YgMS8xMyBhbmQgMi8xMywKc2FtZSBtYWNoaW5lLCBzYW1lIHRyZWUsIHNhbWUgY29uZmln
LCBzYW1lIEpPQl9USU1FT1VUX01TPTIuCgpUd28gcGFzc2VzIChjb25zb2xlX2xvZ2xldmVsIDgg
YW5kIDQpLCAxMyBhbmQgMTMgaW5kdWNlZApyZXNldHMsIGFsbCByZWNvdmVyZWQsIG9yYWNsZSA0
OC80OCB0aHJvdWdob3V0LCBpbmNsdWRpbmcgYWZ0ZXIKYSBmb3JjZWQgYXV0b3N1c3BlbmQgYW5k
IHJlc3VtZS4KClRoZSBiZWhhdmlvdXJhbCBjaGFuZ2UgaXMgdmlzaWJsZSBvbiBSSzM1ODguIE9u
IHRoZSAxKzIgYXJtLCBhCnJvdW5kIHRoYXQgZW5kcyBpbiBhIHRpbWVvdXQgbGVhdmVzIHRoZSBh
ZmZlY3RlZCBjb3JlCnJ1bnRpbWUtYWN0aXZlIGV2ZW4gdGhyb3VnaCBhIGZvcmNlZCBhdXRvc3Vz
cGVuZCAtIHRoZSBsZWFrCmZyb20gbXkgZWFybGllciByZXBvcnQuIFdpdGggdGhpcyBwYXRjaCBh
cHBsaWVkIHRoZSBzYW1lCnNlcXVlbmNlIGxlYXZlcyBhbGwgdGhyZWUgY29yZXMgc3VzcGVuZGVk
LCBhbmQgdGhlIG5leHQKaW5mZXJlbmNlIHN0aWxsIHNjb3JlcyA0OC80OC4KClRlc3RlZC1ieTog
SWdvciBQYXVub3ZpYyA8cm95YWxuZXQwMjZAZ21haWwuY29tPiAjIFJLMzU4OCwgdGhyZWUKY29y
ZXMsIGluZHVjZWQgcmVzZXQsIEpPQl9USU1FT1VUX01TPTIKClJlZ2FyZHMsCklnb3IKCk9uIE1v
biwgQXVnIDI0LCAyMDI2IGF0IDE6MDnigK9QTSBKaWF4aW5nIEh1IDxnYWhpbmdAZ2FoaW5nd29v
LmNvbT4gd3JvdGU6Cj4KPiByb2NrZXRfcmVzZXQoKSBkcm9wcyB0aGUgaW4tZmxpZ2h0IGpvYidz
IHJ1bnRpbWUgUE0gcmVmZXJlbmNlIHdpdGgKPiBwbV9ydW50aW1lX3B1dF9ub2lkbGUoKSwgYSBi
YXJlIGRlY3JlbWVudCB0aGF0IHJlcXVlc3RzIG5vdGhpbmcuIFRoZSBjb3JlCj4gaXMgbGVmdCBh
dCB1c2FnZV9jb3VudCAwIGJ1dCBzdGlsbCBydW50aW1lLWFjdGl2ZSB3aXRoIG5vIGlkbGUgcmVx
dWVzdAo+IHBlbmRpbmcsIHNvIGl0IGRvZXMgbm90IHN1c3BlbmQgdW50aWwgc29tZXRoaW5nIGVs
c2UgYXNrcywgYW5kIG9uIGEKPiBwbGF0Zm9ybSB3aG9zZSBwb3dlciBkb21haW4gZG9lcyB3b3Jr
IG9uIHBvd2VyLW9uIHRoYXQgd29yayBuZXZlciBoYXBwZW5zLgo+Cj4gT24gUkszNTc2IHRoYXQg
d29yayBpcyBhIGJ1cyBpbnRlcmZhY2UgcmVzZXQgdGhlIGRvbWFpbiBjeWNsZXMgd2hlbiBpdAo+
IGNvbWVzIHVwLiBXaXRob3V0IGl0IHRoZSBOUFUncyBJT01NVSBzdG9wcyBhbnN3ZXJpbmcsIGFu
ZCB0aGUgam9iIGFmdGVyIGEKPiB0aW1lb3V0IHJldHVybnMgYSBzdXJmYWNlIG9mIHRoZSBvdXRw
dXQgemVybyBwb2ludCB3aXRoIHJrX2lvbW11IHJlcG9ydGluZwo+IHRoYXQgTU1VX0RURV9BRERS
IGlzIG5vdCBmdW5jdGlvbmluZy4KPgo+IE1lYXN1cmVkIG9uIGEgUk9DSyA0RCBpbiBvbmUgYm9v
dCwgdGhyZWUgcnVucywgb25lIHZhcmlhYmxlIGJldHdlZW4gdGhlbS4KPiBXaXRoIHRoZSBiYXJl
IHB1dCB0aGUgY29yZSByZWFkcyBydW50aW1lLWFjdGl2ZSB3aXRoIGl0cyByYWlsIHN0aWxsIHVw
Cj4gYWZ0ZXIgdGhlIHJlc2V0LCB0aGUgSU9NTVUgcmVwb3J0cyB0aGUgZmFpbHVyZSBvbiB0aGUg
bmV4dCBhdHRhY2ggYW5kIHRoZQo+IGluZmVyZW5jZSByZXR1cm5zIDAgb2YgMTI4IGNoYW5uZWxz
LiBXaXRoIHRoZSByZWZlcmVuY2UgcHV0IGJhY2sgdGhyb3VnaAo+IHBtX3J1bnRpbWVfcHV0X2F1
dG9zdXNwZW5kKCkgdGhlIGNvcmUgcmVhZHMgc3VzcGVuZGVkIHdpdGggdGhlIHJhaWwgZG93biwK
PiB0aGVyZSBpcyBubyBJT01NVSBtZXNzYWdlLCBhbmQgdGhlIHNhbWUgaW5mZXJlbmNlIHJldHVy
bnMgMTI4IG9mIDEyOC4gQQo+IHRoaXJkIHJ1biByZXBlYXRpbmcgdGhlIGZpcnN0IGZhaWxlZCB0
aGUgc2FtZSB3YXkuCj4KPiBJdCBhbHNvIG1hdGNoZXMgdGhlIHB1dCBpbiB0aGUgY29tcGxldGlv
biBwYXRoIGEgZmV3IGxpbmVzIGF3YXksIHNvIHRoZQo+IHJlc2V0IHBhdGggbm8gbG9uZ2VyIGxl
YXZlcyB0aGUgZGV2aWNlIGluIGEgc3RhdGUgdGhlIHJlc3Qgb2YgdGhlIGRyaXZlcgo+IG5ldmVy
IHByb2R1Y2VzLiBUaGUgcmVtYWluaW5nIHB1dCwgb24gdGhlIGVycm9yIHBhdGggaW4gcm9ja2V0
X2pvYl9ydW4oKSwKPiBpcyBhIHBsYWluIHBtX3J1bnRpbWVfcHV0KCkgYW5kIGlzIGxlZnQgYWxv
bmUgaGVyZTogaXQgdW53aW5kcyBhCj4gZ2V0X3N5bmMoKSB0aGF0IG5ldmVyIHJlYWNoZWQgdGhl
IGhhcmR3YXJlLCBhbmQgY2hhbmdpbmcgaXQgYmVsb25ncyBpbgo+IGl0cyBvd24gcGF0Y2guCj4K
PiBJZ29yIFBhdW5vdmljIHJhbiB0aGUgZGlmZmVyZW50aWFsIG9uIFJLMzU4ODogNDUgaW5kdWNl
ZCByZXNldHMgYWNyb3NzCj4gdGhyZWUgY29yZXMsIHdpdGggYW5kIHdpdGhvdXQgdGhlIHR3byBw
cmVjZWRpbmcgcGF0Y2hlcywgYW5kIHRoZSBkb21haW4KPiBkcm9wcGVkIGV2ZXJ5IHNpbmdsZSB0
aW1lIHdpdGggbm8gTU1VIG1lc3NhZ2Ugb24gZWl0aGVyIGtlcm5lbC4gU28gdGhpcwo+IGlzIG5v
dCByb2NrZXQtd2lkZS4gSGlzIGNvbmRpdGlvbnMgY3Jvc3MgYSBoZWFsdGh5IGJsb2NrIHdpdGgg
YSBsb3dlcmVkCj4gdGltZW91dCByYXRoZXIgdGhhbiBhIGh1bmcgb25lLCB3aGljaCBoZSB3YXMg
Y2FyZWZ1bCB0byBzYXkgaGlzIHByb3RvY29sCj4gY2Fubm90IHNldHRsZSwgYnV0IGl0IGlzIHdo
YXQgc2NvcGVzIHRoZSBjaGFuZ2UgdG8gUkszNTc2Lgo+Cj4gTGluazogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvYWxsLzIwMjYwODE5MDczNTMwLjYwODctMS1yb3lhbG5ldDAyNkBnbWFpbC5jb20v
Cj4gRml4ZXM6IDA4MTBkNWFkODhhMSAoImFjY2VsL3JvY2tldDogQWRkIGpvYiBzdWJtaXNzaW9u
IElPQ1RMIikKPiBTaWduZWQtb2ZmLWJ5OiBKaWF4aW5nIEh1IDxnYWhpbmdAZ2FoaW5nd29vLmNv
bT4KPiAtLS0KPiAgZHJpdmVycy9hY2NlbC9yb2NrZXQvcm9ja2V0X2pvYi5jIHwgNiArKystLS0K
PiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfam9iLmMgYi9kcml2ZXJzL2Fj
Y2VsL3JvY2tldC9yb2NrZXRfam9iLmMKPiBpbmRleCAzYzBlZDQ2MDUuLmE4OWFiNDllMSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfam9iLmMKPiArKysgYi9kcml2
ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfam9iLmMKPiBAQCAtNDA2LDEyICs0MDYsMTIgQEAgcm9j
a2V0X3Jlc2V0KHN0cnVjdCByb2NrZXRfY29yZSAqY29yZSwgc3RydWN0IGRybV9zY2hlZF9qb2Ig
KmJhZCkKPgo+ICAgICAgICAgLyoKPiAgICAgICAgICAqIE5vIGhhbmRsZXIgaXMgcnVubmluZyBu
b3csIGJ1dCB3ZSBtaWdodCBzdGlsbCBoYXZlIHN0dWNrIGpvYnMuIExldCdzCj4gLSAgICAgICAg
KiBtYWtlIHN1cmUgdGhlIFBNIGNvdW50ZXJzIHN0YXkgYmFsYW5jZWQgYnkgbWFudWFsbHkgY2Fs
bGluZwo+IC0gICAgICAgICogcG1fcnVudGltZV9wdXRfbm9pZGxlKCkuCj4gKyAgICAgICAgKiBt
YWtlIHN1cmUgdGhlIFBNIGNvdW50ZXJzIHN0YXkgYmFsYW5jZWQgYnkgcHV0dGluZyB0aGUgcmVm
ZXJlbmNlIHRoZQo+ICsgICAgICAgICogam9iIHRvb2ssIGFuZCByZXF1ZXN0IGlkbGUgd2hpbGUg
ZG9pbmcgaXQgc28gdGhlIGNvcmUgY2FuIHN1c3BlbmQuCj4gICAgICAgICAgKi8KPiAgICAgICAg
IHNjb3BlZF9ndWFyZChtdXRleCwgJmNvcmUtPmpvYl9sb2NrKSB7Cj4gICAgICAgICAgICAgICAg
IGlmIChjb3JlLT5pbl9mbGlnaHRfam9iKQo+IC0gICAgICAgICAgICAgICAgICAgICAgIHBtX3J1
bnRpbWVfcHV0X25vaWRsZShjb3JlLT5kZXYpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIHBt
X3J1bnRpbWVfcHV0X2F1dG9zdXNwZW5kKGNvcmUtPmRldik7Cj4KPiAgICAgICAgICAgICAgICAg
aW9tbXVfZGV0YWNoX2dyb3VwKE5VTEwsIGNvcmUtPmlvbW11X2dyb3VwKTsKPgo+IC0tCj4gMi40
My4wCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
