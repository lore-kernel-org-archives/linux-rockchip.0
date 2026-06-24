Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E9B0CDB479
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 02:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TtosIK18B0cb0GFKKgO9XgEoAvm4WA6tqj5Q3uwqB7Y=; b=dBdm9+Z54Jw3EW
	c+qcHXs2pQgrvg6slHcE8qrEV3hrP4ZXmlMlslmZItZIjSxVk3LaXgtBJbkSJ3EA6ZDacuTp4eMYG
	NefoqC/zu8EXNE83tmXOMP9S7urPvsIwIDB8ZckjTAVvkI5sKW5m8tMBjVhExTVgFGcr3SReVcam/
	L4VG/Qp5Z8KtJMvDLji/hNrDE95skDn3F8rtJkJVVDWGxp8Vl5Fl3dA20Djm3wjANwSv1B+LUUwzm
	TGs4gPha9Ct4kOWbciA3U+zwJkvB5daqPaxUpvlTHEnsxtTGMrQo+G/T7iCsTIA9W8JjuoUB84lsE
	fYrPDqKA/zzKMJ5H7ioA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcDUs-000000073es-2EIp;
	Wed, 24 Jun 2026 02:37:50 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcDUp-000000073eC-1fuL
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jun 2026 02:37:48 +0000
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-c89636920a3so184962a12.1
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Jun 2026 19:37:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782268666; cv=none;
        d=google.com; s=arc-20240605;
        b=KB2UJoBl00E2M6bpBkUPD8gNahB7b5kFSwEACmaUauyIveGlL/NEohyEwGWKJalBBd
         NImcyLUBgyZmYRv46lT5Y5YkdZ8rfYxx3lJu5XbPoP+tVNUdcnActX/8an66KQ8udTIf
         vPeyVeKwrBBQ7q66iwtDPlmd1BVsgXSxdTagfJT1ZXXeGrcf3C3VGmA/QhYLdEjxwVwQ
         r6yT1Bd91R9QKqzQ+5nlZhXAPG/9Al7O+A+jUZpeT9T9P+W7/ewUGpUoFTvCxSiFP9zk
         mGhzEwBRV5zAGg4oHFRObibybg5nfEBFYfT1UCCwhTFCdpE0qG4DbbJyYd+z5viY8bt7
         Czfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=rtXYQIYCd0esCeVGWFzBX+QPBDwNJiFP1FbIt4E6AKA=;
        fh=UJx7LHZdjrCbxaiGCWHNR0RNNEPRYykaqn1scJCQOwc=;
        b=HCQqMhlCEmjQ7WlwBzoerQSbnGaAXBjOPRlkuKPptMN1EKBwX0xhL5KXbcYrD4r8Wr
         HzhPdCdWOQuJQiJ3zsZsylGKVRB1NeCiLJH5M5a0Yltcdlz2DKztB8Xc+tVEAbvgZGai
         g9diuLQoZHZ8A6n3SkhDQJdHwZ1HiBlvIVpFcOMv1lOQAWFpyDWPmWHwGHYWfkivR9uy
         rRwNukZ3VP0YfP1/+apU2fZDretGM5yTFogFGR/Zi7WGxLOwhncYlpcviJgQzCwJuc7K
         9Rgoc2CCXUDvjVA8svb9RePY4yedunlGPAwX20nl6Q1A/5YF7Lyq1za9FKXdRHarbmIm
         4Nxg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782268666; x=1782873466; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rtXYQIYCd0esCeVGWFzBX+QPBDwNJiFP1FbIt4E6AKA=;
        b=GvSFDIMjOSHBM4c/YcUbFevgFVoRV8aojWw3BOKH1FhSpj3IiRNZmllxz0FpZuO8jl
         cx2e/hjb3iY3NML5L2ZMElH3UaY1EJ4ktr2/GVxsJXBljgJ0yR0WvlgZuqPTEbngUorI
         hXJ4hQA/JRJfNjNByMKn+dSVCautJdEUcU+vbktVkx8kPg+5suDUvmGz692H+Pwdxkhq
         44VDgamVYCsSSp+D8QnUanaeKhYtnMs1dr+YtbNt1rlz7fMbGxj5+DDEQ6SAnwmA164N
         0jqzIOSzhF0CUZ09olNzc5G/91rmrpI7jlXx1zENlLpkDdKJvj5yG+SPwKijYqFNQjIp
         rkkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782268666; x=1782873466;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rtXYQIYCd0esCeVGWFzBX+QPBDwNJiFP1FbIt4E6AKA=;
        b=q088+2c4VLrz/0YL6v8khVLKVqgigCKn8pOxJPWCOsFMFlb26l9wpJy7H/BCQqBmPa
         fW4ulP2bnm3tNxI7lxVrj9pDqt6XKX/SV98VJBCzoy9Uf4p8JcYoJjwK+r2yUtmKwz2r
         QTIa7/C1mIIEcycbfJe6fVmBszIgwe2CnqdRH+j+AQfHWfKURocMCm8YDBraWwEwmxMR
         YLVNCN39tJ+4WCKlEZrMuOKcuxZC+YywbbbWG34HL41dQERy4SRFCDn8SxRvu4XvJ6j+
         oIV3rCE6WrOcdFNvMcI0h71XL+KC/YGhtRbEh4nP0OR9/LjFCWgZoZtCiAGQs3XYp8sK
         tq9g==
X-Forwarded-Encrypted: i=1; AFNElJ89Fq3CEtz8X333EEdsEismeCumDk1KQmf1VhrGQEOm22YUWe9Bgh3FADYub7aY1V3TG28aSA+4j69zohqlaQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2sDx8gJR3l/JX+xubyNpBPAdpHakxfDA2jGnyOPKx1q7ygEIE
	papKIaijPi1H46ENdk9u+MwI9R2hhMaZmR8pr1Qnlk5zJNG14T3WUSG298CnhKHTZGMrtnQnOS3
	wa2BZ4CHfUAe76hYVBvbCX67yUrKo2KE=
X-Gm-Gg: AfdE7clJLTk9AyfWZeJ7fbFScxzxFUmqC+gjQq55gea/O9aUBUXebFiMqHY1RBzB7G6
	+HqgWaK0ZsHJpsBFP2QtQnu6hGsd2BMsgPivxV9t3IEF2/1txoGKgr+lObYEX8+JFyG1UfNuR9I
	82TdGv9Jsx/UZxanDs1NmD7z1eyPs6SkOBMYaIm7VsedIukMARMUq9t3+5L0szpMUAvhOqZz2+0
	K/Zv6u6rBXjVaKXRl3iaDa6J1BJqH+278yyntOGrtRsdnZ1Y6PB1+X/r6Ol8IAT/97IAOvW6gU/
	Nb8AlAbbqb746CqttlTPA8JAr5U=
X-Received: by 2002:a05:6300:49:b0:3aa:f2c7:fd87 with SMTP id
 adf61e73a8af0-3bd2d23dcb9mr1656815637.31.1782268666306; Tue, 23 Jun 2026
 19:37:46 -0700 (PDT)
MIME-Version: 1.0
References: <20260622005613.21870-1-phucduc.bui@gmail.com> <229ba136-66eb-4a30-a316-58377836b4dc@sirena.org.uk>
 <CAABR9nG6BL+-urEg0qDzJHYmowm7O=du_0T4+K2ogdrcD30CXA@mail.gmail.com>
In-Reply-To: <CAABR9nG6BL+-urEg0qDzJHYmowm7O=du_0T4+K2ogdrcD30CXA@mail.gmail.com>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Wed, 24 Jun 2026 09:37:33 +0700
X-Gm-Features: AVVi8CdkK8REN-AFfjq_xzCg7k_Htq4uHz7WQJiam5YaqT9kTDS7xjGfn0ufY28
Message-ID: <CAABR9nF8GebpxX0ry-MMLCfsyPJ6EUpkEtYdASAep2jX+d5gnw@mail.gmail.com>
Subject: Re: [PATCH] ASoC: rockchip: rockchip_sai: Hand over hclk control
 exclusively to Runtime PM
To: Mark Brown <broonie@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, linux-sound@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_193747_439398_48D2786B 
X-CRM114-Status: GOOD (  36.59  )
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

SGkgYWxsLAoKUmVnYXJkaW5nIHRoZSBjYXNlIHdoZXJlIFBNIGNvbmZpZ3VyYXRpb24gaXMgbm90
IGVuYWJsZWQsIHdpdGggdGhlIG9sZApzb3VyY2UgY29kZSwgSSBzdXNwZWN0IHRoZXJlIGlzIGFu
IHVuYmFsYW5jZWQgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKCkKY2FsbCBvbiBoY2xrIHdoZW4gdGhl
IGRyaXZlciBpcyB1bmJvdW5kIGFmdGVyIGEgc3VjY2Vzc2Z1bCBwcm9iZSB1bmRlcgpDT05GSUdf
UE09bi4KClRoZSBhY3R1YWwgZW5hYmxlX2NvdW50IC8gcHJlcGFyZV9jb3VudCBzZXF1ZW5jZSBm
b3IgaGNsayAod2l0aCB2YWx1ZXMKY2xhbXBlZCBhdCAwKSB3b3VsZCBiZToKCnByb2JlOgoKZGV2
bV9jbGtfZ2V0X2VuYWJsZWQgICAgICAgICAgIDAgLT4gMQpydW50aW1lX3Jlc3VtZSAobWFudWFs
KSAgICAgICAxIC0+IDIKY2xrX2Rpc2FibGVfdW5wcmVwYXJlICAgICAgICAgICAgMiAtPiAxIChh
dCB0aGUgZW5kIG9mIHByb2JlKQoKdW5iaW5kOgoKcmVtb3ZlIC0+IHJ1bnRpbWVfc3VzcGVuZCAg
IDEgLT4gMCAob3BzLT5kaXNhYmxlL3VucHJlcGFyZSBleGVjdXRlZCBoZXJlKQpkZXZtIGNsZWFu
dXAgICAgICAgICAgICAgICAgICAgICAgICAgIDAgLT4gV0FSTiAiYWxyZWFkeSBkaXNhYmxlZCIg
LwoiYWxyZWFkeSB1bnByZXBhcmVkIgoKVGhpcyBjb25jbHVzaW9uIGlzIGJhc2VkIHNvbGVseSBv
biBjb2RlIGluc3BlY3Rpb247IEkgZG8gbm90IGhhdmUKaGFyZHdhcmUgYXZhaWxhYmxlIHRvIHZl
cmlmeSBpdC4KSSBub3RpY2VkIHRoYXQgTmljb2xhcyB0ZXN0ZWQgYW5kIEFDS2VkIHRoZSB1c2Ug
b2YgZGV2bV9jbGtfZ2V0X2VuYWJsZWQoKSwKc28gSSdtIG5vdCBzdXJlIHdoZXRoZXIgdGhhdCB0
ZXN0aW5nIGluY2x1ZGVkIHRoZSBDT05GSUdfUE09biBjb25maWd1cmF0aW9uLgoKaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvYWxsLzI4MTgwMTguQ1FPdWtvRkNmOUB3b3JraG9yc2UvCgpJZiBpdCBk
aWQsIHRoZW4gSSBtYXkgaGF2ZSBvdmVybG9va2VkIHNvbWV0aGluZy4KCkBOaWNvbGFzIChvciBh
bnlvbmUgZmFtaWxpYXIgd2l0aCB0aGlzKSwgY291bGQgeW91IHBsZWFzZSBoZWxwCmRvdWJsZS1j
aGVjayBpZiBteSB1bmRlcnN0YW5kaW5nIGlzIGNvcnJlY3Q/CgpCZXN0IHJlZ2FyZHMsClBodWMK
CgoKT24gVHVlLCBKdW4gMjMsIDIwMjYgYXQgNTo1M+KAr1BNIEJ1aSBEdWMgUGh1YyA8cGh1Y2R1
Yy5idWlAZ21haWwuY29tPiB3cm90ZToKPgo+IEhpIE1hcmssCj4KPiBUaGFuayB5b3UgZm9yIHlv
dXIgcmV2aWV3Lgo+Cj4gPiA+ICAgIDEgUmV2ZXJ0aW5nIGJhY2sgdG8gZGV2bV9jbGtfZ2V0KCkg
dG8gcmVtb3ZlIHRoZSBpbXBsaWNpdCBkZXZyZXMKPiA+ID4gICAgICBlbmFibGUvZGlzYWJsZSBi
ZWhhdmlvci4KPiA+ID4gICAgMiBNYW51YWxseSBlbmFibGluZyBhbmQgZGlzYWJsaW5nIGhjbGsg
ZXhwbGljaXRseSBvbmx5IGFyb3VuZCB0aGUKPiA+ID4gICAgICBlYXJseSByZWdpc3RlciBhY2Nl
c3MgYmVmb3JlIFJ1bnRpbWUgUE0gdGFrZXMgb3Zlci4KPiA+ID4gICAgMyBEcm9wcGluZyB0aGUg
c3RyYXkgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKCkgYXQgdGhlIGVuZCBvZiBwcm9iZSgpCj4gPiA+
ICAgICAgc28gUnVudGltZSBQTSBzb2xlbHkgb3ducyBoY2xrIGFmdGVyd2FyZC4KPiA+Cj4gPiBO
b3RlIHRoYXQgcnVudGltZSBQTSBjYW4gYmUgZGlzYWJsZWQgYXQgYnVpbGQgdGltZSBzbyB3ZSBt
aWdodCBub3QgaGF2ZQo+ID4gcnVudGltZSBQTSBhdCBhbGwuLi4KPiA+Cj4KPiBUaGFua3MgZm9y
IHBvaW50aW5nIHRoaXMgb3V0LiBZb3UncmUgcmlnaHQgdGhhdCB3aXRoICFDT05GSUdfUE0sIHRo
ZQo+IGRyaXZlciBvbmx5IHJlbGllcyBvbiB0aGUKPiB0d28gbWFudWFsIGNhbGxzIHRvIHJva2No
aXBfc2FpX3J1bnRpbWVfcmVzdW1lKCkgLyBzdXNwZW5kKCksIHNvIGhjbGsKPiBzdGF5cyBlbmFi
bGVkIHRoZQo+IHdob2xlIHRpbWUuIEkgdW5kZXJzdGFuZCB0aGlzIGlzIHVudmF2b2lkYWJsZSBp
biB0aGF0IGNvbmZpZ3VyYXRpb24sCj4gdGhyb2doLCBzaW5jZSB0aGVyZSdzIG5vCj4gUnVudGlt
ZSBQTSB0byByZS1lbmFibGUgdGhlIGNsb2NrIHdoZW4gaXQncyBuZWVkZWQuCj4KPiBJJ2xsIHVw
ZGF0ZSB0aGUgY29tbWl0IG1lc3NhZ2UgdG8gcmVmbGVjdCB0aGF0IHRoZSBkcml2ZXIgdXNlcyBh
Cj4gY29tYmluYXRpb24gb2YgUnVudGltZSBQTQo+IGFuZCBleHBsaWNpdCBtYW51YWwgZW5hYmxl
L2Rpc2FibGUsIHJhdGhlciB0aGFuIHJlbHlpbmcgb24gUnVudGltZSBQTSBhbG9uZS4KPgo+ID4g
PiBMaW5rczoKPiA+ID4gMSBUaGlzIGNoYW5nZSBpcyBiYXNlZCBvbiB0aGUgZGlzY3Vzc2lvbiBh
cm91bmQgbWFudWFsIGhjbGsgaGFuZGluZyBkdXJpbmcgcHJvYmUoKSwKPiA+ID4gICBhcyByYWlz
ZWQgYnkgS3J5c3p0b2Y6Cj4gPiA+ICAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwZTQ3
NTRiLWVhOWEtNDA0ZC1iNTI5LWVjNDRhNzI2M2NiZkBrZXJuZWwub3JnLyN0Cj4gPiA+IDIgQmFj
a2dyb3VuZCBmb3IgdGhlIGVhcmxpZXIgZGV2bV9jbGtfZ2V0X2VuYmFibGVkKCkgY29udmVyc2lv
bjoKPiA+ID4gICBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjgxODAxOC5DUU91a29GQ2Y5
QHdvcmtob3JzZS8KPiA+Cj4gPiA+IEFuIGFsdGVybmF0aXZlIGFwcHJvYWNoIHdvdWxkIGJlIHVz
ZSBkZXZtX3JlZ21hcF9pbml0X21taW9fY2xrKCkgYW5kIGxldCByZWdtYXAKPiA+ID4gbWFuYWdl
IGNsb2NrIGVuYWJsZW1lbnQgYXJvdW5kIHJlZ2lzdGVyIGFjY2Vzc2VzLiBJZiBwcmVmZXJyZWQs
IEkgY2FuIHJld29yayB0aGUKPiA+ID4gZHJpdmVyIGFjY29yZGluZ2x5Lgo+ID4KPiA+ID4gLSAg
ICAgc2FpLT5oY2xrID0gZGV2bV9jbGtfZ2V0X2VuYWJsZWQoJnBkZXYtPmRldiwgImhjbGsiKTsK
PiA+ID4gKyAgICAgc2FpLT5oY2xrID0gZGV2bV9jbGtfZ2V0KCZwZGV2LT5kZXYsICJoY2xrIik7
Cj4gPiA+ICAgICAgIGlmIChJU19FUlIoc2FpLT5oY2xrKSkKPiA+ID4gICAgICAgICAgICAgICBy
ZXR1cm4gZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCBQVFJfRVJSKHNhaS0+aGNsayksCj4gPiA+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIkZhaWxlZCB0byBnZXQgaGNsa1xu
Iik7Cj4gPiA+Cj4gPiA+ICsgICAgIHJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShzYWktPmhjbGsp
Owo+ID4gPiArICAgICBpZiAocmV0KQo+ID4gPiArICAgICAgICAgICAgIHJldHVybiBkZXZfZXJy
X3Byb2JlKCZwZGV2LT5kZXYsIHJldCwgIkZhaWxlZCB0byBlbmFibGUgaGNsa1xuIik7Cj4gPiA+
ICsKPiA+Cj4gPiA+IEBAIC0xNDgyLDggKzE0OTIsNiBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3Nh
aV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gPiAgICAgICBwbV9ydW50
aW1lX3VzZV9hdXRvc3VzcGVuZCgmcGRldi0+ZGV2KTsKPiA+ID4gICAgICAgcG1fcnVudGltZV9w
dXQoJnBkZXYtPmRldik7Cj4gPiA+Cj4gPiA+IC0gICAgIGNsa19kaXNhYmxlX3VucHJlcGFyZShz
YWktPmhjbGspOwo+ID4gPiAtCj4gPiA+ICAgICAgIHJldHVybiAwOwo+ID4KPiA+IEFyZSB5b3Ug
c3VyZSB0aGF0IHRoZSBydW50aW1lIFBNIHN0YXRlIHRoZXJlIGlzIHN1Y2ggdGhhdCBpdCBrbm93
cyBhCj4gPiByZWZlcmVuY2UgaXMgaGVsZD8gIFRoZSBkcml2ZXIgdXNlZCBwbV9ydW50aW1lX2dl
dF9ub3Jlc3VtZSgpIHNvIHRoZQo+ID4gZGV2aWNlIGRpZG4ndCBoYXZlIFJQTV9BQ1RJVkUgc2V0
IEkgdGhpbms/Cj4KPgo+IFlvdSBhcmUgcmlnaHQsIHBtX3J1bnRpbWVfZ2V0X25vcmVzdW1lKCkg
ZG9lc24ndCBzZXQgUlBNX0FDVElWRS4gSQo+IHRoaW5rIHdlIG5lZWQgdG8gYWRkCj4gcG1fcnVu
dGltZV9zZXRfYWN0aXZlKCkgYmVmb3JlIHBtX3J1bnRpbWVfZW5hYmxlKCkuIE90aGVyd2lzZSwg
d2l0aCBDT05GSUdfUE0sCj4gdGhlIHBtX3J1bnRpbWVfcHV0KCkgYXQgdGhlIGVuZCBvZiBwcm9i
ZSgpIG1pZ2h0IHNraXAgdGhlIHN1c3BlbmQsCj4gc2luY2UgdGhlIGNvcmUgc3RpbGwgY29uc2lk
ZXJzCj4gdGhlIGRldmljZSBzdXNwZW5kZWQgLgo+Cj4gPgo+ID4gVGhlIHJ1bnRpbWUgUE0gQVBJ
IHJlYWxseSBpcyBhIG1pc2VyYWJsZSBjb2xsZWN0aW9uIG9mIGxhbmRtaW5lcyA6KAo+Cj4gWWVh
aCwgcGxlbnR5IG9mIGxhbmRtaW5lcyBpbmRlZWQgOigKPiBJIGNoZWNrZWQsIGFuZCByb2NrY2hp
cF9zcGRpZi5jIGRvZXMgdXNlIGRldm1fcmVnbWFwX2luaXRfbW1pb19jbGsoKSBmb3IgaGNsaywK
PiByYXRoZXIgdGhhbiB3cmFwcGluZyBldmVyeSByZWdpc3RlciBhY2Nlc3MgaW4gcG1fcnVudGlt
ZV9nZXRfc3luYygpIC8KPiBwbV9ydW50aW1lX3B1dCgpCj4gdGhlIHdheSByb2NrY2hpcF9zYWkg
ZG9lcy4KPgo+IEJlc3QgcmVnYXJkcywKPiBQaHVjCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
