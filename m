Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72DA7C6FD19
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Mar 2023 12:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HHXhHYlwRVKjJQdYvU7dRJyrdRckn2eIMqFeazshKRc=; b=PIlC59hOIuxhrd
	9SJojWuY9Uxdwt5psPxaXP1GXRzoXQa8kaPOqLilfmBftwNRQ0SWpl/msh5LUUDiwFdiqCwnK6fII
	/jRsQNc1erC5VVljqs1+/NWajbwbXN7ncReQ6412sMoNP6nnzxfUAtitdE/v11eSBWcKZn1OoOi4P
	qrEUlOi3gtVZI3XoyMQuY0Il5Ay0+O/mnBE4L1dGkCcy8KGTn+A2F7VIcEnCSpY3KXrVSXWdlW6/M
	6diZ15Ksw/3Ab2LKBPnlczTvMGAiR57KJ+YGBhNcVkF0gRx2AV7xaKRKkEZqzPRoLtqzWfEB0G5jT
	2BJfCqBMDAf9PwbBtkNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcn6p-00GRnR-1s;
	Thu, 16 Mar 2023 12:53:31 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcn6l-00GRmb-16;
	Thu, 16 Mar 2023 12:53:29 +0000
Received: by mail-oi1-x230.google.com with SMTP id s41so1226563oiw.13;
        Thu, 16 Mar 2023 05:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678971205;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ti3+/+O/mizRCYD6mJqQ9hW5peGLssPgu/LkZnsMASU=;
        b=JqU31zkHGu3ptAj9SlVRIUKZOv+itjg1RCjjVUlbvP/Ckfz2yNmItTRqLDiHNUzFBe
         U1K4kQwYZce/cY18NBc9DrOrnbzzTGlyCnMb/UbiYl3Y8MhtYMc4bF3lcsNLJdMJu3+q
         epPfgeuV3fAexV+8mRMYrXcVOtVpyfjLiQB1lEFJlN2o9h0i/GjTzoEt7p/ZTkKCun39
         hwXEj4UDbO2sBTbyF/An7M+xNP3Mbflve/fG/ARz41vvRnxcz1n0Uxk+BJ6zv9fkPhcE
         4oxvsB6mmUoFxf+4SZfEs7Oto+afHRxvgRLTRikP+w6j4JmMwcJZVv3Ex1B83LVLweTW
         50ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678971205;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ti3+/+O/mizRCYD6mJqQ9hW5peGLssPgu/LkZnsMASU=;
        b=2V3W2P3+oSTNkFcKVS2YAOIwswBMDyLFJuxwwq0dAku/ikuoF+ziqEvisCmeQoouzU
         E/ohQVi2O1jFdyyEvEwbAqem5aH0NKHxmbhthNFGOtAqZqxt11YCmQp2FvSne+XUrUhI
         GvPJWuh3aGAVQFH+O0JFW0Xf9XElGPJuMrhv8cciTrX2bYbQP0uDwf3W6htNcXjxxB9y
         RiI2RvQPk/OpSbesQ8Tveh+PGt0cNpp1/a1RrMzyoOL4eyCEeHKWnoIEdQ9pnQRE428f
         aaWcK1QvUadSZ+1eVi8kwkp4iRZgtQXSQr6VU/bUyHHIVvQcvh6gct1kmV8u+MudfHyA
         6spA==
X-Gm-Message-State: AO0yUKUKZ0nHJFkOOrnNN1wRFpYSpvv7oCyHfpQFJkUZN5fvh3JkFViF
	z0/CwN3HcCxv4qcCRyPgXBn6C0qhWgNGH69HZ2s=
X-Google-Smtp-Source: AK7set9dWfwo7U4qmaHBStrTqQn7i/IJd9cr8lIzLT0RjtSxZKwFMzDm73eMdiD2f1s0u9V2YNi2R3uy/djkKyapVuo=
X-Received: by 2002:a05:6808:29a:b0:386:9864:5064 with SMTP id
 z26-20020a056808029a00b0038698645064mr1739501oic.10.1678971205044; Thu, 16
 Mar 2023 05:53:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <ecd09f27-b799-4741-2c5a-a2de99776c51@opensource.wdc.com> <CAAEEuhrk4cSC312UiAL3UwoDZ=urrdDcBThcNHd1dqnAuJTzAw@mail.gmail.com>
 <3c4ed614-f088-928f-2807-deaa5e4b668a@opensource.wdc.com> <CAAEEuhqk0scWd3wFbVb9fSgHxPBKotpEPNi+YPG4GD9vLO94mw@mail.gmail.com>
 <8392a7de-666a-bce6-dc9f-b60d6dd93013@opensource.wdc.com> <1e8184e9-7e0b-2598-cc5a-e46d6c2f152a@opensource.wdc.com>
In-Reply-To: <1e8184e9-7e0b-2598-cc5a-e46d6c2f152a@opensource.wdc.com>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Thu, 16 Mar 2023 13:52:49 +0100
Message-ID: <CAAEEuhoB2LqL=B_BQ0X2T-E+Yt83kPUiv-R9dgU0O-f22ukcWg@mail.gmail.com>
Subject: Re: [PATCH v2 0/9] PCI: rockchip: Fix RK3399 PCIe endpoint controller driver
To: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com, 
	rick.wertenbroek@heig-vd.ch, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>, 
	Rodrigo Vivi <rodrigo.vivi@intel.com>, Mikko Kovanen <mikko.kovanen@aavamobile.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_055327_378953_CF3D40F6 
X-CRM114-Status: GOOD (  50.84  )
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

T24gV2VkLCBNYXIgMTUsIDIwMjMgYXQgMTowMOKAr0FNIERhbWllbiBMZSBNb2FsCjxkYW1pZW4u
bGVtb2FsQG9wZW5zb3VyY2Uud2RjLmNvbT4gd3JvdGU6Cj4KPiBPbiAzLzE1LzIzIDA3OjU0LCBE
YW1pZW4gTGUgTW9hbCB3cm90ZToKPiA+IE9uIDMvMTQvMjMgMjM6NTMsIFJpY2sgV2VydGVuYnJv
ZWsgd3JvdGU6Cj4gPj4gSGVsbG8gRGFtaWVuLAo+ID4+IEkgYWxzbyBub3RpY2VkIHJhbmRvbSBp
c3N1ZXMgSSBzdXNwZWN0IHRvIGJlIHJlbGF0ZWQgdG8gbGluayBzdGF0dXMgb3IgcG93ZXIKPiA+
PiBzdGF0ZSwgaW4gbXkgY2FzZSBpdCBzb21ldGltZXMgaGFwcGVucyB0aGF0IHRoZSBCQVJzICgw
LTYpIGluIHRoZSBjb25maWcKPiA+PiBzcGFjZSBnZXQgcmVzZXQgdG8gMC4gVGhpcyBpcyBub3Qg
ZHVlIHRvIHRoZSBkcml2ZXIgYmVjYXVzZSB0aGUgZHJpdmVyIG5ldmVyCj4gPj4gZXZlciBhY2Nl
c3NlcyB0aGVzZSByZWdpc3RlcnMgKEAweGZkODAnMDAxMCB0byAweGZkODAnMDAyNCBUUk0KPiA+
PiAxNy42LjQuMS41LTE3LjYuNC4xLjEwKS4KPiA+PiBJIGRvbid0IHRoaW5rIHRoZSBob3N0IHJl
d3JpdGVzIHRoZW0gYmVjYXVzZSBsc3BjaSBzaG93cyB0aGUgQkFScyBhcwo+ID4+ICJbdmlydHVh
bF0iIHdoaWNoIG1lYW5zIHRoZXkgaGF2ZSBiZWVuIGFzc2lnbmVkIGJ5IGhvc3QgYnV0IGhhdmUg
MAo+ID4+IHZhbHVlIGluIHRoZSBlbmRwb2ludCBkZXZpY2UgKHdoZW4gbHNwY2kgcmVyZWFkcyB0
aGUgUENJIGNvbmZpZyBoZWFkZXIpLgo+ID4+IFNlZSBodHRwczovL2dpdGh1Yi5jb20vcGNpdXRp
bHMvcGNpdXRpbHMvYmxvYi9tYXN0ZXIvbHNwY2kuYyNMNDIyCj4gPj4KPiA+PiBTbyBJIHN1c3Bl
Y3QgdGhlIGNvbnRyb2xsZXIgZGV0ZWN0cyBzb21ldGhpbmcgcmVsYXRlZCB0byBsaW5rIHN0YXR1
cyBvcgo+ID4+IHBvd2VyIHN0YXRlIGFuZCBpbnRlcm5hbGx5IChpbiBoYXJkd2FyZSkgcmVzZXRz
IHRob3NlIHJlZ2lzdGVycy4gSXQncyBub3QKPiA+PiB0aGUga2VybmVsIGNvZGUsIGl0IG5ldmVy
IGFjY2Vzc2VzIHRoZXNlIHJlZ3MuIFRoZSBwcm9ibGVtIG9jY3Vycwo+ID4+IHZlcnkgcmFuZG9t
bHksIHNvbWV0aW1lcyBpbiBhIGZldyBzZWNvbmRzLCBzb21ldGltZXMgSSBjYW5ub3Qgc2VlCj4g
Pj4gaXQgZm9yIGEgd2hvbGUgZGF5Lgo+ID4+Cj4gPj4gSXMgdGhpcyBzaW1pbGFyIHRvIHdoYXQg
eW91IGFyZSBleHBlcmllbmNpbmcgPwo+ID4KPiA+IFllcy4gSSBzb21ldGltZXMgZ2V0IE5NSXMg
YWZ0ZXIgc3RhcnRpbmcgdGhlIGZ1bmN0aW9uIGRyaXZlciwgd2hlbiBteSBmdW5jdGlvbgo+ID4g
ZHJpdmVyIHN0YXJ0cyBwcm9iaW5nIHRoZSBiYXIgcmVnaXN0ZXJzIGFmdGVyIHNlZWluZyB0aGUg
aG9zdCBjaGFuZ2luZyBvbmUKPiA+IHJlZ2lzdGVyLiBBbmQgdGhlIGxpbmsgYWxzbyBjb21lcyB1
cCB3aXRoIDQgbGFuZXMgb3IgMiBsYW5lcywgcmFuZG9tLgoKSGVsbG8sIEkgaGF2ZSBuZXZlciBo
YWQgaXQgY29tZSB1cCB3aXRoIG9ubHkgMiBsYW5lcywgSSBnZXQgNCBjb25zaXN0ZW50bHkuCkkg
aGF2ZSBpdCBjb25uZWN0ZWQgdGhyb3VnaCBhIE0uMiB0byBmZW1hbGUgUENJZSAxNnggKDR4IGVs
ZWN0cmljYWxseQpjb25uZWN0ZWQpLAp0aGVuIHRocm91Z2ggYSBtYWxlLXRvLW1hbGUgUENJZSA0
eCBjYWJsZSB3aXRoIFRYL1JYIHN3YXAsIHRoZW4gdGhyb3VnaCBhCjE2eCBleHRlbmRlci4gQWxs
IHRocmVlIGNhYmxlcyBhcmUgYXBwcm94IDI1Y20uIEl0IHNlZW1zIHN0YWJsZS4KCj4gPgo+ID4+
IERvIHlvdSBoYXZlIGFueSBpZGVhIGFzIHRvIHdoYXQgY291bGQgbWFrZSB0aGVzZSByZWdpc3Rl
cnMgdG8gYmUgcmVzZXQKPiA+PiAoSSBjb3VsZCBub3QgZmluZCBhbnl0aGluZyBpbiB0aGUgVFJN
LCBhbHNvIG5vdGhpbmcgaW4gdGhlIGRyaXZlciBzZWVtcyB0bwo+ID4+IGNhdXNlIGl0KS4KPiA+
Cj4gPiBNeSB0aGlua2luZyBpcyB0aGF0IHNpbmNlIHdlIGRvIG5vdCBoYXZlIGEgbGlua3VwIG5v
dGlmaWVyLCB0aGUgZnVuY3Rpb24gZHJpdmVyCj4gPiBzdGFydHMgc2V0dGluZyB0aGluZ3MgdXAg
d2l0aG91dCB0aGUgbGluayBlc3RhYmxpc2hlZCAoZS5nLiB3aGVuIHRoZSBob3N0IGlzCj4gPiBz
dGlsbCBwb3dlcmVkIGRvd24pLiBPbmNlIHRoZSBob3N0IHN0YXJ0IGJvb3RpbmcgYW5kIHBpYyBs
aW5rIGlzIGVzdGFibGlzaGVkLAo+ID4gdGhpbmdzIG1heSBiZSByZXNldCBpbiB0aGUgaGFyZHdh
cmUuLi4gVGhhdCBpcyB0aGUgb25seSB0aGluZyBJIGNhbiB0aGluayBvZi4KClRoaXMgbWlnaHQg
YmUgd29ydGggaW52ZXN0aWdhdGluZywgSSdsbCBsb29rIGludG8gaXQsIGJ1dCBpdCBzZWVtcwpt
YW55IG9mIHRoZSBFUApkcml2ZXJzIGRvbid0IGhhdmUgYSBMaW5rdXAgbm90aWZpZXIsCmRyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1kcmE3eHguYyBoYXMKb25lLCBidXQgbW9zdCBvZiB0
aGUgb3RoZXIgRVAgZHJpdmVycyBkb24ndCBoYXZlIHRoZW0sIHNvIGl0IG1pZ2h0IG5vdCBiZQph
YnNvbHV0ZWx5IHJlcXVpcmVkLgoKPiA+Cj4gPiBBbmQgeWVzLCB0aGVyZSBhcmUgZGVmaW5pdGVs
eSBzb21ldGhpbmcgZ29pbmcgb24gd2l0aCB0aGUgcG93ZXIgc3RhdGVzIHRvbyBJCj4gPiB0aGlu
azogaWYgSSBsZXQgdGhpbmdzIGlkbGUgZm9yIGEgZmV3IG1pbnV0ZXMsIGV2ZXJ5dGhpbmcgc3Rv
cHMgd29ya2luZzogbm8KPiA+IGFjdGl2aXR5IHNlZW4gb24gdGhlIGVuZHBvaW50IG92ZXIgdGhl
IEJBUnMuIEkgdHJpZWQgZW5hYmxpbmcgdGhlIHN5cyBhbmQgY2xpZW50Cj4gPiBpbnRlcnJ1cHRz
IHRvIHNlZSBpZiBJIGNhbiBzZWUgcG93ZXIgc3RhdGUgY2hhbmdlcywgb3IgaWYgY2xlYXJpbmcg
dGhlCj4gPiBpbnRlcnJ1cHRzIGhlbHBzICh0aGV5IGFyZSBtYXNrZWQgYnkgZGVmYXVsdCksIGJ1
dCBubyBjaGFuZ2UuIEFuZCBib290aW5nIHRoZQo+ID4gaG9zdCB3aXRoIHBjaV9hc3BtPW9mZiBk
b2VzIG5vdCBoZWxwIGVpdGhlci4gQWxzbyB0cmllZCB0byBjaGFuZ2UgYWxsIHRoZQo+ID4gY2Fw
YWJpbGl0aWVzIHJlbGF0ZWQgdG8gbGluayAmIHBvd2VyIHN0YXRlcyB0byAib2ZmIiAobm90IHN1
cHBvcnRlZCksIGFuZCBubwo+ID4gY2hhbmdlIGVpdGhlci4gU28gY3VycmVudGx5LCBJIGFtIG91
dCBvZiBpZGVhcyByZWdhcmRpbmcgdGhhdCBvbmUuCj4gPgo+ID4gSSBhbSB0cnlpbmcgdG8gbWFr
ZSBwcm9ncmVzcyBvbiBteSBlbmRwb2ludCBkcml2ZXIgKG52bWUgZnVuY3Rpb24pIHRvIGJlIHN1
cmUgaXQKPiA+IGlzIG5vdCBhIGJ1ZyB0aGVyZSB0aGF0IGJyZWFrcyB0aGluZ3MuIEkgbWF5IHN0
aWxsIGhhdmUgc29tZXRoaW5nIGJhZCBiZWNhdXNlCj4gPiB3aGVuIEkgZW5hYmxlIHRoZSBCSU9T
IG5hdGl2ZSBOVk1lIGRyaXZlciBvbiB0aGUgaG9zdCwgZWl0aGVyIHRoZSBob3N0IGRvZXMgbm90
Cj4gPiBib290LCBvciBncnViIGNyYXNoZXMgd2l0aCBtZW1vcnkgY29ycnVwdGlvbnMuIE92ZXJh
bGwsIG5vdCB5ZXQgdmVyeSBzdGFibGUgYW5kCj4gPiBzdGlsbCB0cnlpbmcgdG8gc29ydCBvdXQg
dGhlIHJvb3QgY2F1c2Ugb2YgdGhhdC4KCkkgYW0gYWxzbyB3b3JraW5nIG9uIGFuIE5WTWUgZHJp
dmVyIGJ1dCBJIGhhdmUgb3VyIE5WTWUgZmlybXdhcmUgcnVubmluZyBpbgp1c2Vyc3BhY2Ugc28g
b3VyIGVuZHBvaW50IGZ1bmN0aW9uIGRyaXZlciBvbmx5IGV4cG9zZXMgdGhlIEJBUnMgYXMgVUlP
Cm1hcHBlZCBtZW1vcnkgYW5kIGhhcyBhIHNpbXBsZSBpbnRlcmZhY2UgdG8gZ2VuZXJhdGUgSVJR
cyB0byBob3N0IC8gaW5pdGlhdGUKRE1BIHRyYW5zZmVycy4KClNvIHRoYXQgZHJpdmVyIGRvZXMg
dmVyeSBsaXR0bGUgaW4gaXRzZWxmIGFuZCBJIHN0aWxsIGhhdmUgcHJvYmxlbXMKd2l0aCB0aGUg
QkFScwpnZXR0aW5nIHVubWFwcGVkIChyZXNldCB0byAwKSByYW5kb21seS4gSSBob3BlIHlvdXIg
cGF0Y2hlcyBmb3IgbW9uaXRvcmluZwp0aGUgSVJRcyB3aWxsIHNoZWQgc29tZSBsaWdodCBvbiB0
aGlzLiBJIGFsc28gb2JzZXJ2ZWQgdGhlIEJBUnMgZ2V0dGluZyByZXNldAp3aXRoIHRoZSBwY2ll
IGVwIHRlc3QgZnVuY3Rpb24gZHJpdmVyLCBzbyBJIGRvbid0IHRoaW5rIGl0IG5lY2Vzc2FyaWx5
CmlzIHRoZSBmdW5jdGlvbgp0aGF0IGlzIHRvIGJsYW1lLCByYXRoZXIgdGhlIGNvbnRyb2xsZXIg
aXRzZWxmIChhbHNvIGJlY2F1c2Ugbm9uZSBvZgp0aGUga2VybmVsIGNvZGUKc2hvdWxkIC8gZG9l
cyBhY2Nlc3MgdGhlIEJBUnMgcmVnaXN0ZXJzIEAweGZkODAnMDAxMCkuCgo+Cj4gQnkgdGhlIHdh
eSwgZW5hYmxpbmcgdGhlIGludGVycnVwdHMgdG8gc2VlIHRoZSBlcnJvciBub3RpZmljYXRpb25z
LCBJIGRvIHNlZSBhCj4gbG90IG9mIHJldHJ5IHRpbWVvdXQgYW5kIG90aGVyIHJlY292ZXJhYmxl
IGVycm9ycy4gU28gdGhlIGlzc3VlcyBJIGFtIHNlZWluZwo+IGNvdWxkIGJlIGR1ZSB0byBteSBQ
Q0kgY2FibGUgc2V0dXAgdGhhdCBpcyBub3QgaWRlYWwgKGJhZCBzaWduYWwsIGdyb3VuZCBsb29w
cywKPiAuLi4gPykuIE5vdCBzdXJlLiBJIGRvIG5vdCBoYXZlIGEgUENJIGFuYWx5emVyIGhhbmR5
IDopCj4KPiBJIGF0dGFjaGVkIHRoZSBwYXRjaGVzIEkgdXNlZCB0byBlbmFibGUgdGhlIEVQIGlu
dGVycnVwdHMuIEVuYWJsaW5nIGRlYnVnIHByaW50cwo+IHdpbGwgdGVsbCB5b3Ugd2hhdCBpcyBn
b2luZyBvbi4gVGhhdCBtYXkgZ2l2ZSB5b3Ugc29tZSBoaW50cyBvbiB5b3VyIHNldHVwID8KPgo+
IC0tCj4gRGFtaWVuIExlIE1vYWwKPiBXZXN0ZXJuIERpZ2l0YWwgUmVzZWFyY2gKClRoYW5rIHlv
dSBmb3IgdGhlc2UgcGF0Y2hlcy4gSSB3aWxsIHRyeSB0aGVtIGFuZCBzZWUgaWYgdGhleSBnaXZl
IG1lIG1vcmUgaW5mby4KCkFsc28sIEkgd2lsbCBkZWxheSB0aGUgcmVsZWFzZSBvZiB0aGUgdjMg
b2YgbXkgcGF0Y2ggc2VyaWVzIGJlY2F1c2Ugb2YKdGhlc2UgaXNzdWVzLgpUaGUgdjMgb25seSBp
bmNvcnBvcmF0ZXMgdGhlIGNoYW5nZXMgZGlzY3Vzc2VkIGhlcmUgaW4gdGhlIG1haWxpbmcgbGlz
dCBzbyB5b3VyCnZlcnNpb24gc2hvdWxkIGJlIHVwIHRvIGRhdGUuIElmIHlvdSB3YW50IG1lIHRv
IHNlbmQgeW91IHRoZSBzZXJpZXMgaW4KaXRzIGN1cnJlbnQKc3RhdGUgbGV0IG1lIGtub3cuCgpC
dXQgSSB3aWxsIG5lZWQgc29tZSBtb3JlIGRlYnVnZ2luZywgSSdsbCByZWxlYXNlIHRoZSB2MyB3
aGVuIHRoZSBkcml2ZXIgaXMgbW9yZQpzdGFibGUuIEkgZG9uJ3Qgd2hlbiwgSSBkb24ndCBoYXZl
IHRoYXQgbXVjaCB0aW1lIG9uIHRoaXMgcHJvamVjdC4gVGhhbmtzIGZvcgp5b3VyIHVuZGVyc3Rh
bmRpbmcuCgpSaWNrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
