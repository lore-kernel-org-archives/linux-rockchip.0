Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4B9DC53200
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 09:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2MUaULF/w4g+RFn5j575tUJdTKTSoBqcmpCPSxIfvLA=; b=vKf/n9/Y98sCQO0YElEtvkG+/j
	tpbEhZUI+KvHS7720HFBehlCeDkww+wKU0lvO586lDKoXUwZNOrUcbdvyeymuPZv/vUxeN2yPTK6H
	J0crfIPRoYYCypC0rhB7FDeugYfdkkqKpKZxKyDUBTeBmZuntcb16pH7As87ZD/JRoYkBv+/OtxTE
	l2IrZJVG+Xyk2m2XDrtUZHlLEdaWkEv4hlU5TippHh2s8IbmUCnryF7D8pzfIrxy01r/kqh7D7lvj
	UMXqHTyQzp9/zA3MHt9EDFmCSmQFZm9iObJ7fdtMQyB+bg3sh3v9SrCAL1W155lDUeF79qYzMdfEI
	XqZEdWJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp0kk-00000007P2Y-2stK;
	Wed, 29 Jul 2026 09:39:06 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp0ki-00000007P23-1twb
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 09:39:05 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-81e8c68c0cdso958997b3.2
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jul 2026 02:39:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785317943; cv=none;
        d=google.com; s=arc-20260327;
        b=k83rSk7PGchrdBxtuwG65EuF1en1AIgC+q0qGeUWO48rtSv7cEfmRLbEkHzGvm/Cth
         nOf8hknrdMoYHdYk2ywXIlUyvZymxSw+ywNFmPJghLD9NACldEYvLSMVG9veddJGsYmM
         eEDF3ns/i1WdZZDe+lJ0DuY8zCAwkpPF5oRsOTB2iObiCyDgqW10GE8FV9U0PzwhrTpu
         b9HeRyrupLVJomTtMJF3ZnD9XZDiLTfFujbcdZhu1JV7Jdo0F5YpFhOYeNzXA7FU7rxF
         XlCHpCbRf90IEBG8eANOC08rR6biurTp0Xt5AqOub0xCKywSONppd0daE4l31BgO8sFt
         QlEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=S18svGc3JwmjsliW0utqIh54LaHXAPtystlebIM6J6c=;
        fh=YkW5u4WQEdJCjyYnuOeMHYDjeWwq04M1G6UqwPuYDTE=;
        b=Uflzp6laQZfVKur2gmm9Pl17jHdkfuTOG+wewWuc+iftPwePkBkm0LwcCnlYY57CLP
         lHRH20HD4qdRRZP5x0/1vKoV99UqAMrHDT2NfDVDu1yK3Eo/IlpzceqsyzaZ2jwfFkvC
         k6HtaDGV+gRGOTDtByFkzclQ8YMBFfYLltHdRuXM1eA3nU9xHjB2F2YLNs5ZxVWlTv+c
         8D82LIfuc2wMC9pSElxgPYAhN4cmAI37oX+Nm2fRgm6NHsnRZyPuuVR0VZnZC06J2GPX
         tOJrl5072baJLAH2kEVdnyQXC7YSRw68mWKMzgFe1XHMrqHWXVZzv03C6X8fIcocU7l3
         yznw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785317943; x=1785922743; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=S18svGc3JwmjsliW0utqIh54LaHXAPtystlebIM6J6c=;
        b=L8QPZdN7gI8lQrBrToh+eHRuLuRPev6+kv14v1mWCVUijHOsueaqOPItMf9GJiVuqP
         hNQDZoteTNYWyu7r7BBFKrGMv76wI7Jdn7QT52RRFNlGDkNQjPFWfC7Te1LclvoCKOE6
         n++Sv95Uy/u8eTSbw8Yci1xngBDpxOpBSWXglNGr99ILlADXfr+tbpil7v5D6LnvSBy2
         B0xH6a00h6FqbacSFoTGZUCwUPhbueyD5Blgo9gzpQi4NKb7AfTAt3dc8GHd0bRkMUtq
         srFT5vDMcONmZi0G6/I7X3aodj4hzQx1I/4002uFVLduJ3B4olkXb+uGsACy8y6wrg1y
         VIBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785317943; x=1785922743;
        h=content-transfer-encoding:content-type:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=S18svGc3JwmjsliW0utqIh54LaHXAPtystlebIM6J6c=;
        b=kPrxGHOTN97YdshoY9/EmSrk60Gd2khRXPLr0Rld5eyRN4zXu1VpXBYsX1I+uLQ7k6
         eDNqnOijCQIeabKnf2LnlwbFcGV8Z7JS6FXOo6lS5nQaIb3JSqEacf+qFG2C/Rm9ojQs
         MmZRQXNPlUN65aBqNaXL84fhKYz2hqOBycCVFD0ROL30JzdxiIpL36Pk5RI8DQcMLOs4
         VXd97T/I5oVbPI6ATvVaE+dQEPbO91ivhEPOzGul8LUEUmkpigNfO64zK0EHdeIvrxBq
         cOd5dBedJ0Hkt/MCxN5aXwhojMGHqHumb2I1lLw5CLVOpjprbkbCAI92onKDVP4cTnZt
         BHlg==
X-Forwarded-Encrypted: i=1; AHgh+Rr2CDDZQLRRfbxiVXVGHdfPtdlppLZT0SzStIjGRhdzJ5loNunr8GEvJ/HxPuKRcFc/Zc4A8AMEe5OkB+WQSQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwKwQ/j3yuTk/zXRzYMeoKEPUCjwasCfj2KG6CxwOgEWCxTD3vl
	lwdfoWEpbD0AY069p95htPFOWze5weVu/GkZXUJMEQA1JFzEZkZLVOY2aS87A2N6e60L1HSly4y
	O/0idd0aGeT1dT8mVnpu2me/0eaYjfXIYs0S8
X-Gm-Gg: AR+sD10z7ynX590ybWWwA54/fPhBVxUyOK6IFgEny9zocU1pEG8qe2Ns+wBLaZmNVaY
	8N5gaTT4gTcQAXYuI0ZuYpK/EaUpsZGye6CSAwbO3FuTTs3J9nZXsEST6NWsnRqPD3oMvW6FLHS
	J26aJy3xtvgrGPrxzpRmVtBzeaJEGHXMrXQXDnhzUtIpUQ1FXyoc0EN4OvA4Mm4a8bXzHUxgCq3
	vsMgVI1UaNWMoyRIRXeXBWZFrfooZZhjs2ztVZpuXS6f+yEjX5wLuf7rcu+pzDQP+nlmQS+pcqC
	uPcBQ4HbdrnMvV9yh8TquFJQfwPTN5VXPatMbyU17YHYhrktfCALdRLz2jDSg12F1rKiH070kpM
	uuhs=
X-Received: by 2002:a05:690c:d:b0:7ba:f0d0:5e9b with SMTP id
 00721157ae682-81f991ef52cmr29951397b3.2.1785317943260; Wed, 29 Jul 2026
 02:39:03 -0700 (PDT)
MIME-Version: 1.0
References: <20260729072019.105907-1-royalnet026@gmail.com> <CAPsqS2STG3ejiYe5AaYM2gODdDtkcvDvKuOerJZ3CJko1PZ=Hg@mail.gmail.com>
In-Reply-To: <CAPsqS2STG3ejiYe5AaYM2gODdDtkcvDvKuOerJZ3CJko1PZ=Hg@mail.gmail.com>
From: Igor Paunovic <royalnet026@gmail.com>
Date: Wed, 29 Jul 2026 11:38:51 +0200
X-Gm-Features: AUfX_mx6dDP6JtjnSBQSVWsqQ-uWdIuNL8vsD1xPWRdInzdK5VABCqY-xkLXcz4
Message-ID: <CAEWPSH4sTe1Zj2jEUs=MmfigWUbHuDe6JXL0BsZHtSFz8bQ=7w@mail.gmail.com>
Subject: Re: accel/rocket: clks[].id fix - standalone patch, or would you
 prefer to split it out?
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, linux-rockchip@lists.infradead.org, 
	Jiaxing Hu <gahing@gahingwoo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_023904_500436_21A2896D 
X-CRM114-Status: GOOD (  37.56  )
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

SGkgVG9tZXUKCihyZS1hZGRpbmcgbGludXgtcm9ja2NoaXAgdG8gQ2MsIEkgdGhpbmsgaXQgZ290
IGRyb3BwZWQgYnkgYWNjaWRlbnQpCgpXaWxsIGRvIC0gSSBqdXN0IHNlbnQgdGhlIGNsa3NbXS5p
ZCBmaXggYXMgYSBzdGFuZGFsb25lIHBhdGNoOgoKW1BBVENIXSBhY2NlbC9yb2NrZXQ6IHJlcXVl
c3QgdGhlIGNvcmUgY2xvY2tzIGJ5IG5hbWUKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgt
cm9ja2NoaXAvMjAyNjA3MjkwOTI5MzkuMTE4Nzc5LTEtcm95YWxuZXQwMjZAZ21haWwuY29tLwoK
SXQgaXMgaW50ZW50aW9uYWxseSBtaW5pbWFsIChubyBwZXItU29DIG1hdGNoIGRhdGEsIEFSUkFZ
X1NJWkUgYW5kCmNsa3NbNF0gdW50b3VjaGVkKSBzbyBpdCBzaG91bGQgcmViYXNlIHRyaXZpYWxs
eSB1bmRlciBib3RoIHRoZSBSSzM1NzYKdjMgYW5kIHRoZSBSSzM1Njggc2VyaWVzLgoKSmlheGlu
ZzogeW91ciB2ZXJzaW9uIGluIDYvOCBvZiBjb3Vyc2Ugc3RheXMgY29ycmVjdCAtIHdpdGggdGhp
cyBsYW5kZWQKZmlyc3QsIHRoYXQgaHVuayBpbiB2MyBqdXN0IHNocmlua3MgdG8gdGhlIHR3byBu
ZXcgQ0JVRiBpZHMuClRoYW5rcywKCklnb3IKCk9uIFdlZCwgSnVsIDI5LCAyMDI2IGF0IDEwOjIy
4oCvQU0gVG9tZXUgVml6b3NvIDx0b21ldUB0b21ldXZpem9zby5uZXQ+IHdyb3RlOgo+Cj4gSGkg
SWdvciBhbmQgSmlheGluZywKPgo+IE9uIFdlZCwgSnVsIDI5LCAyMDI2IGF0IDk6MjDigK9BTSBJ
Z29yIFBhdW5vdmljIDxyb3lhbG5ldDAyNkBnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IEhpIEpp
YXhpbmcsCj4gPgo+ID4gSSBoYXZlIGJlZW4gd29ya2luZyB3aXRoIHRoZSByb2NrZXQgTlBVIGRy
aXZlciBvbiBSSzM1ODggKE9yYW5nZSBQaSA1Cj4gPiBQbHVzKSBhbmQgcmFuIGludG8gdGhlIG1p
c3NpbmcgY29yZS0+Y2xrc1tdLmlkIGluaXRpYWxpc2F0aW9uIGluCj4gPiByb2NrZXRfY29yZV9p
bml0KCkuCj4gPgo+ID4gSSBub3RpY2VkIGl0IHdoaWxlIHJlYWRpbmcgdGhlIGxpdmUgY2xvY2sg
dHJlZSByYXRoZXIgdGhhbiB0aGUgc291cmNlOgo+ID4gL3N5cy9rZXJuZWwvZGVidWcvY2xrL2Ns
a19zdW1tYXJ5IHNob3dzIGZvdXIgImZkYWIwMDAwLm5wdSIgY29uc3VtZXIKPiA+IGhhbmRsZXMg
b24gYWNsa19ucHUwIC0gYW5kIGxpa2V3aXNlIG9uIGFjbGtfbnB1MS9hY2xrX25wdTIgZm9yIHRo
ZSBvdGhlcgo+ID4gdHdvIGNvcmVzIC0gd2hpbGUgaGNsa19ucHUwLCBwY2xrX25wdV9yb290IGFu
ZCBzY21pX2Nsa19ucHUgaGF2ZSBubwo+ID4gImZkYWIwMDAwLm5wdSIgY29uc3VtZXIgYXQgYWxs
LiBUaGUgZHJpdmVyIGJlbGlldmVzIGl0IG93bnMgZm91ciBjbG9ja3MKPiA+IGJ1dCByZWFsbHkg
aG9sZHMgZm91ciBoYW5kbGVzIHRvIHRoZSBBWEkgY2xvY2suCj4gPgo+ID4gQmVmb3JlIHdyaXRp
bmcgYW55dGhpbmcgdXAgSSB3ZW50IHRocm91Z2ggdGhlIGxpc3RzLCBhbmQgSSBzZWUgeW91Cj4g
PiBhbHJlYWR5IGZpeCBleGFjdGx5IHRoaXMgYXMgcGFydCBvZgo+ID4KPiA+ICAgW1JGQyBQQVRD
SCB2MiA2LzhdIGFjY2VsL3JvY2tldDogYWRkIFJLMzU3NiBOUFUgKFJLTk4pIHN1cHBvcnQKPiA+
ICAgTWVzc2FnZS1JZDogPDIwMjYwNzE4MDMxMTQ2LjMzNjg4MTEtNy1nYWhpbmdAZ2FoaW5nd29v
LmNvbT4KPiA+Cj4gPiBzbyBJIHdvdWxkIHJhdGhlciBhc2sgeW91IGZpcnN0IHRoYW4gc2VuZCBz
b21ldGhpbmcgdGhhdCBsb29rcyBsaWtlIGEKPiA+IGR1cGxpY2F0ZS4KPiA+Cj4gPiBUaGUgcmVh
c29uIEkgY2FyZTogSSB3b3VsZCBsaWtlIHRvIGxvb2sgaW50byBPUFAvZGV2ZnJlcSBzdXBwb3J0
IGZvcgo+ID4gcm9ja2V0IGxhdGVyIG9uIC0gSm9uYXMgS2FybG1hbiBtZW50aW9uZWQgaXQgYXMg
ZnV0dXJlIHdvcmsgaW4gdGhlCj4gPiBSSzM1NjggdGhyZWFkIC0gYW5kIHRvZGF5IHRoZSBkcml2
ZXIgaG9sZHMgbm8gcmVmZXJlbmNlIGF0IGFsbCB0byB0aGUKPiA+IGNsb2NrIHRoYXQgYWN0dWFs
bHkgZmVlZHMgdGhlIE5QVSAoIm5wdSIsIFNDTUlfQ0xLX05QVSBvbiBSSzM1ODgpLiBUaGF0Cj4g
PiBpcyBpbiB0aGUgd2F5IG9mIGFueSBmcmVxdWVuY3kgc2NhbGluZyB3b3JrLiBUaGUgTlBVIHN0
aWxsIHJ1bnMgYW55d2F5IC0KPiA+IGNsa19zdW1tYXJ5IHNob3dzIHNjbWlfY2xrX25wdSB3aXRo
IHRoZSBoYXJkd2FyZSBlbmFibGUgYml0IHNldCBidXQgbm8KPiA+IExpbnV4IGNvbnN1bWVyLCBp
LmUuIGZpcm13YXJlIGtlZXBzIGl0IHJ1bm5pbmcgLSBzbyB0aGUgYnVnIGlzIGxhdGVudAo+ID4g
cmF0aGVyIHRoYW4gZmF0YWwuCj4gPgo+ID4gVGltaW5nLXdpc2UgdGhpcyBhbHNvIHNlZW1zIGxp
a2UgYSBuYXR1cmFsIG1vbWVudCB0byBhc2s6IFdpbGwgaGFzCj4gPiBhbHJlYWR5IHBpY2tlZCB1
cCB0aGUgdHdvIGlvbW11IHBhdGNoZXMgZnJvbSB5b3VyIHYyLCBhbmQgYWZ0ZXIKPiA+IEFsZXhl
eSdzIHJldmlldyB5b3UgbWVudGlvbmVkIGEgdjMgcmVzcGluIG9mIHRoZSBhY2NlbCBwYXRjaC4g
U2luY2UgdGhlCj4gPiBSSzM1NzYgaW5mZXJlbmNlIGlzc3VlIGlzIHN0aWxsIGJlaW5nIGRlYnVn
Z2VkLCB0aGUgY2xrc1tdLmlkIGZpeCB3b3VsZAo+ID4gb3RoZXJ3aXNlIHNpdCBpbnNpZGUgYW4g
UkZDIGZvciBhIHdoaWxlLCBldmVuIHRob3VnaCBpdCBpcyBpbmRlcGVuZGVudAo+ID4gb2YgdGhh
dCB3b3JrIGFuZCB0aGUgYnVnIGl0IGZpeGVzIGlzIGluIG1haW5saW5lIHRvZGF5Lgo+ID4KPiA+
IFdvdWxkIHlvdSBwcmVmZXIgdG86Cj4gPgo+ID4gIChhKSBzcGxpdCB0aGUgY2xrc1tdLmlkIGZp
eCBvdXQgb2YgeW91ciBzZXJpZXMgYW5kIHNlbmQgaXQgc3RhbmRhbG9uZQo+ID4gICAgICB3aXRo
IGEgRml4ZXM6IHRhZz8gVGhhdCB3YXkgaXQgY2FuIGxhbmQgaW5kZXBlbmRlbnRseSBvZiB0aGUg
UkszNTc2Cj4gPiAgICAgIGVuYWJsZW1lbnQgd29yayBhbmQgYmUgYmFja3BvcnRlZC4gSSB3b3Vs
ZCBiZSBnbGFkIHRvIGdpdmUgaXQgYQo+ID4gICAgICBUZXN0ZWQtYnkgb24gUkszNTg4IC8gT3Jh
bmdlIFBpIDUgUGx1cy4KPiA+Cj4gPiAgKGIpIG9yLCBpZiB5b3Ugd291bGQgcmF0aGVyIGtlZXAg
eW91ciBzZXJpZXMgYXMgaXQgaXMsIEkgY2FuIHNlbmQgdGhlCj4gPiAgICAgIHN0YW5kYWxvbmUg
Zml4IHdpdGggeW91IG9uIENjIGFuZCBhIG5vdGUgdW5kZXIgdGhlIC0tLSBwb2ludGluZyBhdAo+
ID4gICAgICB5b3VyIHBhdGNoLgo+ID4KPiA+IEVpdGhlciB3b3JrcyBmb3IgbWUuIEkgbW9zdGx5
IHdhbnQgdG8gYXZvaWQgdXMgZHVwbGljYXRpbmcgZWZmb3J0LCBhbmQKPiA+IHlvdSBwb3N0ZWQg
aXQgZmlyc3QuCj4KPiBJIHdvdWxkIGJlIGdsYWQgaWYgeW91IGNvdWxkIHNlbmQgYW55IGZpeGVz
IHVwZnJvbnQsIHNwZWNpYWxseSBpZgo+IGdldHRpbmcgbW9yZSBTb0NzIHN1cHBvcnRlZCB3aWxs
IHN0aWxsIHRha2Ugc29tZSB0aW1lLgo+Cj4gVGhhbmtzLAo+Cj4gVG9tZXUKPgo+ID4gVGhhbmtz
LAo+ID4gSWdvciBQYXVub3ZpYwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
