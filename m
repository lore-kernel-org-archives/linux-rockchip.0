Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BE90C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 12:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EAEHA0JdSt53CGWNnlA9USWvLZ1AQ/veI/qR04MOx4s=; b=JUSZCRKFBgMIxg
	jJmRZ8ysau05HcR+0OkBm6BEraL7dd1+dkGOWbBLVtsXegyILNKzFUWBE6W0E8tpxE+UDAFqZlFva
	xCzUhykekgaAHKbst40MpcwjzOdlDRkIfFQKZ6UbnUagAJDZPhmlCw/OrNs3XdFhnWzCJcpCxfvuJ
	FJJCY3sLkTom+WlCn3K5YjfvJqBX+HGKrDf9Tt+bWMmTju/zZOWyjqcQ36S85FbvDEZgSPoneRBwT
	AGOlI0XmK8lbEgrO6APIMPXzet92BvwYSEJeRhl+G74lO1tByRigFghmuIusEBDg2NK8xOYV3gNB/
	H5xBRsRa7aTWr/2NPx1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4ic6-002Djz-Dz; Fri, 24 Jun 2022 12:40:42 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4ibu-002DgX-So; Fri, 24 Jun 2022 12:40:32 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-318889e6a2cso23309507b3.1;
        Fri, 24 Jun 2022 05:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=XZAwzSvN1418WBrWmnDVbHQmccxtnQQCuTfqFJ1iD/M=;
        b=iwU4WAwYuY4nkLCJy0axAqGQoG42lj5PEowL1fzfUW1VZzpw1/JWJhdAXHS8VcTujk
         J5fH6JbEPmaRAOT0dBNudO6Csia2IYm+8+BZorymw71HaEIQaO0gekGz1aLnsYhJ6n8y
         cN0jvvlrqeMKRgih7BUcHlBuqsyukSc0/9f2iL29VpMnV0PvNQjD5GQWDbV3gym+XKct
         E271VdMxoeJdxXZvuKsc752Lz08Vnar6at93uoANsDPZ//DTcMmgTajkXuwNtwi0F7sY
         E/5FEF70ekzn+BR24HBj+Qci3izVWS4DQndVou0RRKj+BpMB8XpaucqCnwQOZP36EdMe
         mGig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=XZAwzSvN1418WBrWmnDVbHQmccxtnQQCuTfqFJ1iD/M=;
        b=VmwxgEoeGZecUfsc6ttAuApQNPIm7LpNprZBqUlOChXAbxA8fWU8/+TZ2g0BefWKFp
         9p9sWyHvBiSZ9srEAaKl7ZbU8Zm4T5SRDRfuzwu6FZPFJNuC6yMU78ouA7YilEsRcKkG
         TOPteYTRGAYm/PSLRww3xM0Yf9nOFuyfBEOrSHeh7wWmVXa278v8g4UBoanJ7Aw02i7V
         E5vqxKERbp02eJFOot9AOkzcoO08dg37VpCwBwIhnSvo6oUjbH1Bsy2fR/jX4hm9F6NB
         ExdtPvlI1DcUHBpIxhD4hL7+JxkZwCF+jKKZdeB155RTOu3pqKVcjbJiLiLQ0MzNx3QX
         UfJQ==
X-Gm-Message-State: AJIora8kKXb1e0X10bIkObVTSCEnWPmKJrBMfN1Ava7tLnLQIMJFMS9S
	jPgUWHzibXAxyOisM32+kjgiJOILFR3RSWDiHCk=
X-Google-Smtp-Source: AGRyM1uhuP3HFOm268+6mHrbu8xCTmrxJLbj7jAnsvz7AhIXGUaUE3iuu/MCaQ9V+nE2SgjhttjDEqCcfT2jOeVl9kA=
X-Received: by 2002:a81:315:0:b0:317:6789:a0c1 with SMTP id
 21-20020a810315000000b003176789a0c1mr16908125ywd.378.1656074427236; Fri, 24
 Jun 2022 05:40:27 -0700 (PDT)
MIME-Version: 1.0
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de> <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com> <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com> <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <9567EECF-A154-4FE1-A03C-5ED080409030@gmail.com> <190C3FD3-0185-4A99-B10E-A5790047D993@gmail.com>
In-Reply-To: <190C3FD3-0185-4A99-B10E-A5790047D993@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 24 Jun 2022 08:40:15 -0400
Message-ID: <CAMdYzYqGGfWDr11iyyfzigxsL7_N2szuag9P6TUZGuzGF4oB+A@mail.gmail.com>
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Michael Riesch <michael.riesch@wolfvision.net>, 
	dri-devel@lists.freedesktop.org, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, kernel@pengutronix.de, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_054030_977893_0A21B948 
X-CRM114-Status: GOOD (  30.19  )
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

T24gRnJpLCBKdW4gMjQsIDIwMjIgYXQgNDozMCBBTSBQaW90ciBPbmlzemN6dWsKPHBpb3RyLm9u
aXN6Y3p1a0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4KPgo+ID4gV2lhZG9tb8WbxIcgbmFwaXNhbmEg
cHJ6ZXogUGlvdHIgT25pc3pjenVrIDxwaW90ci5vbmlzemN6dWtAZ21haWwuY29tPiB3IGRuaXUg
MTQuMDUuMjAyMiwgbyBnb2R6LiAxNTo1ODoKPiA+Cj4gPgo+ID4KPiA+PiBXaWFkb21vxZvEhyBu
YXBpc2FuYSBwcnpleiBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29tPiB3IGRuaXUgMDku
MDUuMjAyMiwgbyBnb2R6LiAxODowMDoKPiA+Pgo+ID4+IElmIHlvdSB3YW50IHRvIGNvbmZpcm0g
dGhlIGhhcmR3YXJlIGlzIGNvbmZpZ3VyZWQgY29ycmVjdGx5IHlvdSBjYW4KPiA+PiByZW1vdmUg
dGhlIGNlYyBwaW4gZnJvbSB0aGUgaGRtaSBub2RlIGFuZCBzZXQgdXAgYSBjZWMtZ3BpbyBub2Rl
Lgo+ID4+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjE4LXJjNS9zb3VyY2Uv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL2NlYy1ncGlvLnR4dAo+ID4K
PiA+IFBldGVyLCBTYXNjaGEKPiA+Cj4gPiBJIGNvbmZpZ3VyZWQgY2VjLWdwaW8gYW5kIGNhbiBj
b25maXJtOiB3aXRoIGdwaW8gY2VjIHdvcmtzIG9uIG15IHJvY2szLWEgYm9hcmQgdjEuMzEuCj4g
Pgo+ID4gU28gc3VtbWFyaXNpbmcgbXkgdGVzdHM6Cj4gPgo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgcm9jazMtYSB2MS4xICAgcm9jazMtYSB2MS4zMSAgIHJvY2sz
LWIKPiA+Cj4gPiByYWR4YSBkZWJpYW46ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9r
ICAgICAgICAgICAgIG9rICAgICAgICAgICAgICAgIG9rCj4gPgo+ID4gb3RoZXIgcHBsIG1haW5s
aW5lIDUuMTg6ICAgICAgICAgICAgICAgb2sgICAgICAgICAgICAgbi90ICAgICAgICAgICAgICAg
IG4vdAo+ID4KPiA+IG1lIHdpdGggbWFpbmxpbmUgNS4xODogICAgICAgICAgICAgICAgIG4vdCAg
ICAgICAgICAgIG5vayAgICAgICAgICAgICAgb2sKPiA+Cj4gPiBtZSB3aXRoIG1haW5saW5lIDUu
MTggZ3Bpby1jZWM6ICBuL3QgICAgICAgICAgICAgb2sgICAgICAgICAgICAgICAgbi90Cj4gPgo+
ID4gTm9uLXdvcmtpbmcgY29tYmluYXRpb24gaXM6IHJvY2szLWEgdjEuMzEgaHcgb24gbWFpbmxp
bmUgNS4xOC4KPiA+IEZvciBtZSBpdCBsb29rcyBsaWtlIHRoZXJlIGlzIGJ1ZyBpbiBjYXNlIHdo
ZW4gcmszNTY4IHVzaW5nIGNlYyBvbiBoZG1pdHhtMV9jZWMgbGluZS4KPiA+IChUaGUgc2FtZSBi
aW5hcmllcyB3b3JraW5nIG9rIG9uIG15IHJvY2szLWIgd2hlcmUgY2VjIGlzIG9uIGhkbWl0eG0w
X2NlYyBsaW5lLiBJdCBhbHNvIHdvcmtzIG9uIFBldGVyJ3Mgcm9jazNhIHYxLjEgLSB3aGljaCBh
bHNvIHVzZXMgaGRtaXR4bTBfY2VjIGxpbmUpLgo+ID4KPiA+IEl0IGxvb2tzIGxpa2UgdXBwZXIg
Y2VjIGRyaXZlciBjYW4gdGFsayB0byBsb3dlciBkcml2ZXIgKGR3LWhkbWk/KSBidXQgbm90aGlu
ZyBpcyByZWNlaXZlZCBmcm9tIGxvd2VyIGRyaXZlciwgYXMgbXkgYXBwIHNheXM6Cj4gPiBDRUNB
ZGFwdGVyOiBDRUMgZGV2aWNlIGNhbid0IHBvbGwgVFY6IFRWIGRvZXMgbm90IHJlc3BvbmQgdG8g
Q0VDIHBvbGxzCj4gPgo+ID4gYnR3OiBJIHZlcmlmaWVkIHdpdGggb3NjaWxsb3Njb3BlIGNvbm5l
Y3RlZCB0byBoZG1pdHhtMV9jZWMgbGluZTogc3RhcnRpbmcgY2VjLWNvbXBsaWFuY2UgLXYgLVQg
c2hvd3MgZXhwZWN0ZWQgc2VyaWVzIG9mIDBWIHB1bHNlcyBvbiBoZG1pdHhtMV9jZWMgbGluZS4u
Li4KPiA+Cj4gPgo+Cj4gU2FzY2hhLCBQZXRlcgo+Cj4gSSByZXR1cm5lZCB0byB0cnlpbmcgdG8g
ZmluZCB3aHkgaGRtaS1jZWMgaXMgbm90IHdvcmtpbmcgb24gcm9jazMtYSB2MS4zMSBody4KPgo+
IEknbSBvbiB2b3AyIHYxMSBvbiA1LjE4IG1haW5saW5lLgo+Cj4gQ3VycmVudCBmaW5kaW5nczoK
Pgo+ICgxKSB0aGUgc2FtZSBzdy4gc3RhY2svYmluYXJpZXMgd29ya3Mgb24gcm9jay0zYiAod2hl
cmUgY2VjIHVzZXMgaGRtaXR4X20wIGluc3RlYWQgb2YgaGRtaXR4X20xIEkvTyBsaW5lKTsKPgo+
ICgyKSBncGlvLWNlYyBob3dldmVyIHdvcmtzIG5vIHByb2JsZW0gb24gcm9jazMtYTsKPgo+ICgz
KSBtb25pdG9yaW5nIGNlYyBtZXNzYWdlcyB3aXRoIHY0LXV0aWxzICdjZWMtZm9sbG93ZXIgLXMn
IHNob3dzIGV4YWN0IHRoZSBzYW1lIGV2ZW50cyBpbiBub24td29ya2luZyByb2NrMy1hIGFuZCB3
b3JraW5nIHJvY2szLWIKPiAodGVzdGVkIGJ5IGlzc3VlIGNvbmZpZ3VyZSBjZWMgYnkgJ2NlYy1j
dGwgLWQgL2Rldi9jZWMwIC0tcGh5cy1hZGRyPTEuMC4wLjAgLS1wbGF5YmFjaycgY29tbWFuZCkK
Ci0tcGh5cy1hZGRyIGlzbid0IGEgdmFsaWQgY29tbWFuZCBmb3IgdGhpcyBjb250cm9sbGVyLiBU
aGUgZGV2aWNlCmRlc2lnbmF0aW9uIGlzIG9ubHkgcmVxdWlyZWQgaWYgeW91IGhhdmUgbW9yZSB0
aGFuIG9uZSBjZWMgZGV2aWNlLgoKPgo+IC0tPiBpJ20gaW50ZXJwcmV0aW5nIHRoaXMgYXMgY29u
ZmlybWF0aW9uIHRoYXQgbG93IGxldmVsIHBoeSBsYXllciByZWNlaXZlcyBvayBjZWMgZGF0YSBm
cm9tIGNvbm5lY3RlZCBkZXZpY2Ugb24gbm9uLXdvcmtpbmcgcm9jazMtYTsKPgo+ICg0KSBkZWJ1
ZyBzeXNmcyBmb3IgY2VjIHNob3dzICJoYXMgQ0VDIGZvbGxvd2VyIChpbiBwYXNzdGhyb3VnaCBt
b2RlKSIgZm9yIHdvcmtpbmcgcm9jay0zYiBhbmQgdGhlcmUgaXMgTk8gImhhcyBDRUMgZm9sbG93
ZXIiIGRlYnVnIG1lc3NhZ2UgaW4gZmFpbGluZyByb2NrMy1hLgoKVGhpcyBtYWtlcyBtZSBzdXNw
ZWN0IHlvdSBhcmUgaW4gZmFjdCBub3QgdXNpbmcgdGhlIHNhbWUgc29mdHdhcmUKc3RhY2ssIG9y
IGFyZSBub3QgcnVubmluZyB0aGUgc2FtZSBjb21tYW5kcy4KUnVubmluZyBgY2VjLWZvbGxvd2Vy
IC12IC1tIC1UYCBvbiBhIHJrMzU2NiBkZXZpY2Ugd2l0aCB3b3JraW5nIGNlYwp1c2luZyA1LjE5
LXJjMSwgSSBzZWUgbm8gbWVudGlvbiBvZiBjZWMtZm9sbG93ZXIgaW4gdGhlIGRlYnVnZnMgY2Vj
MApzdGF0dXMgZW50cnkuCgo+Cj4gRm9yIG1lIEl0IGxvb2tzIGxpa2UgbG93LWxldmVsIGhkbWkt
Y2VjIHdvcmtzIG9rIG9uIGZhaWxpbmcgcm9jazMtYSAtIGJ1dCB1cHBlciBsYXllcnMgKGluIGhk
bWkgdm9wMj8pIGFyZSBub3QgcmVnaXN0ZXJpbmcgKG9yIGZhaWxpbmcgdG8gcmVnaXN0ZXIpIGNl
Yy1mb2xsb3dlciBmaWxlaGFuZGxlLiBUaGlzIGhhcHBlbnMganVzdCB3aGVuIGhkbWl0eCBJL08g
aW4gRFQgaXMgY2hhbmdlZCBmcm9tIGhkbWl0eF9tMCB0byBoZG11dHhfbTEuIEEgYml0IHN0cmFu
Z2UgLSBidXQgYWxsIG15IHRlc3RzIGNvbnNpc3RlbnRseSBjb25maXJtaW5nIHRoaXMgb2JzZXJ2
YXRpb24uLi4uCgpUaGVyZSBpcyBub3RoaW5nIHdyb25nIHdpdGggdm9wMiBhcyBpdCBpcyBub3Qg
aW52b2x2ZWQgYXQgYWxsIGluIHRoaXMuClRoZSByb2NrY2hpcCBoZG1pIGRyaXZlciAod2hpY2gg
aXMgbm90IHNwZWNpZmljIHRvIHZvcDIpIGRvZXMgbm90aGluZwptb3JlIHRoYW4gY2FsbCB0aGUg
Y2VjIHJlZ2lzdHJhdGlvbiBtZXRob2QgaW4gdGhlIGR3IGhkbWkgYnJpZGdlCmRyaXZlciwgd2hp
Y2ggdGhlbiBjYWxscyB0aGUga2VybmVsIGNlYyByZWdpc3RyYXRpb24gZnVuY3Rpb25zLgpDaGFu
Z2luZyBwaW5tdXggY2hhbmdlcyBub3RoaW5nIGluIGhvdyB0aGlzIGZ1bmN0aW9ucy4KCj4KPiBJ
J20gdG9vIHdlYWsgaW4ga2VybmVsIGNlYyBpbnRlcm5hbHMgLSBzbyBtYXliZSB5b3UgaGF2ZSBh
bnkgcG9pbnRlcnMgaG93IHRvIGZ1cnRoZXIgZGVidWcvaW52ZXN0aWdhdGUgdGhpcyBpc3N1ZT8K
CkFzIHdlIGRpc2N1c3NlZCBpbiB0aGUgcGluZTY0IHJvb20sIHRoaXMgaXMgc3RpbGwgdmVyeSBs
aWtlbHkgYQpoYXJkd2FyZSBpc3N1ZSB3aXRoIHRoaXMgYm9hcmQuIEEgY29uZmlndXJhdGlvbiBp
c3N1ZSB3aXRoIHlvdXIgdS1ib290Cm9yIHRmLWEgaXMgYWxzbyBhIHBvc3NpYmlsaXR5LCBidXQg
aXMgbGVzcyBsaWtlbHkuCgpZb3Ugc2hvd2VkIHdpdGggeW91ciBsb2dpYyBhbmFseXplciB3aXRo
IG5vdGhpbmcgcGx1Z2dlZCBpbiBhbmQgY2VjCm5vdCBtdXhlZCB0byBtMSwgZGF0YSB3YXMgcHJl
c2VudCBvbiBtMS4gSSByZXF1ZXN0ZWQgeW91IGludmVzdGlnYXRlCnRoZSBmb2xsb3dpbmcsIHRv
IHdoaWNoIHlvdSBoYXZlbid0IHJlcGxpZWQ6CkhhdmUgeW91IHRyaWVkIGZvcmNpbmcgbTAgdG8g
YmUgYXNzaWduZWQgdG8gYSBkZXZpY2Ugb3RoZXIgdGhhbiBoZG1pLWNlYz8KSGF2ZSB5b3UgY2hl
Y2tlZCBpZiBtMSBpcyBzaG9ydGVkIHRvIGFub3RoZXIgcGluPwoKSW4gcmVnYXJkcyB0byB5b3Vy
IGRhdGEgZnJhbWVzIGZvciA0LjE5IHZzIDUuMTgsIGltYWdlLXZpZXctb24gaXMgbm90CmEgdmFs
aWQgY29tbWFuZCBpZiB0aGUgdG9wb2xvZ3kgZG9lc24ndCBkZXRlY3QgYSBkZXZpY2Ugb24gdGhl
IGJ1cy4KSSByZWNvbW1lbmQgcnVubmluZyB0aGUgc2FtZSB0ZXN0LCBleGNlcHQgcnVuIGBjZWMt
Y3RsIC1TIC0tcGxheWJhY2tgCmFuZCBwb3N0IHRoZSByZXN1bHRzIGZvciBib3RoLgoKPgo+Cj4K
PiBCVFc6IGknbSBub3QgYWxvbmUgd2l0aCBjZWMgaXNzdWUgb24gcm9jazNhIHYxLjMxIC0gYWxy
ZWFkeSAyIG90aGVyIHVzZXJzIGNvbnRhY3RlZCBtZSB3aXRoIHRoZSBzYW1lIGlzc3VlLi4uCj4K
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
