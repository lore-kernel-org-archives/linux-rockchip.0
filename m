Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C003EC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 May 2022 15:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BsaGN59qV1+0CEYz0f62ysdHuuMX1RIxJzllFoeWls4=; b=3OasHwAiqFsatJ
	48E8P9f8E4a391Z7LHVp+SfNOnNuR87XKy39PafiNvCoPwJQE7Md5JF6vWHxqNzVSy4OXzmL1ZGMa
	WwhGE1hUO+1kq2knJnxvc2VmQWPdMdrXb6zBJrY1mfVP1NOqJeDXGxqALUmbekEgXjpSMVsx3u0kX
	cDgJ2Bv8GeJmS8eYTM/UIjocrDZkmTMtYxbNsvqiUj5/FxjCkFJIf54MTwDGr/kOt8IX7fahcmJAo
	e4bg+0MdyaWlyHTyPb+RnCg39hfYgZebUdCfhPW5b6Q20zCS0w3iRul9wiTRRzRIgDSvS6iJAA8jB
	04VUz0sRZWft0DUh7VRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nri8J-007yfA-8g; Thu, 19 May 2022 15:32:11 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nri88-007yWh-60; Thu, 19 May 2022 15:32:02 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id v71so9666368ybi.4;
 Thu, 19 May 2022 08:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xH0pLm8qtD23PMEYqOa9k7T8WBlge4fS5N8saLv41o0=;
 b=b4bAVR/NXsvh0npNnuJ+qkqFmbXClP1kap92OL9I/Usl+DcKOUwE/P9gzQ4VUGMZD9
 x4m7/CbZGpfC+0jy8EQc0gpSfasmh7GKn82tDK57vjaGGXeaKhu95EoHXZ2ujwfqjgT5
 HXh/HwIb79dum/Wj6yP3xHuK5r7YPjbJkrwuxLqMhjtBOsDKQ4S1KQSDJZ4v6rtARU4u
 aCWa7VsLVBVgxhQPdT/u8qX+ojc5paYrvLWF7ISY+CwYgP/JrZMKfC83L9kLINCcOh0b
 mzk7/U0y/S64JiBgUj7esJuQ6oribpFnShYdFpH6rZQJgV7Zc4kTRuQQRwQmTAPPR+Ax
 NrRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xH0pLm8qtD23PMEYqOa9k7T8WBlge4fS5N8saLv41o0=;
 b=XPq9Cm3cmTrslvNt8B6Gs2bZl6V5V4zebj4Gu5y89Ou8mzS/YLHJ/LiC+iRIuQ0M7v
 vMHm7rIq+JrTSr5dzapB/UI53qeX+cbu7AxLRqUoc8xoqctnb86OtREcj95rv9QKN+m6
 G2xf15kK1oZxbwMXjUOe2UP0SWzHUJrJ6iuPhGLj7HlJ81IY9cRZXBihRSB+ys0gdCY9
 /yYJJ061l1esjhYDEOdaM6rZSjGp09COTCOy25+Fr/VWViROv2j8/jrnx9+G1vfXBnfS
 Z2qLgvVo570LW4YLqpn5LhnlxOsfuUWXXFMeDT3XiqnKChZI1zzHK8HyGN1tjoFxk4c0
 Xgvw==
X-Gm-Message-State: AOAM531NcDG/CKE+9VXeh5e1OSLzAcnG6M5idyGOUSxNpEXZn85iumN2
 3jSBXiL8kiNV7AWv110TQZ5YpNLK0Zouhbf7y+0=
X-Google-Smtp-Source: ABdhPJwyvBONI2H7k++6ueb/fb97nrk5p00ToZWskX5fe4hiNJLOGjiM4jfkZDAipIGzMz0wtivl58T5C2VhAwD/KBw=
X-Received: by 2002:a25:d454:0:b0:64d:b902:59c3 with SMTP id
 m81-20020a25d454000000b0064db90259c3mr5092939ybf.228.1652974316074; Thu, 19
 May 2022 08:31:56 -0700 (PDT)
MIME-Version: 1.0
References: <20191128061433.1952869-2-anarsoul@gmail.com>
 <1ab40490-a232-b5fd-6180-17867aa6a053@rock-chips.com>
 <CA+E=qVeNWEJTfQ_30Uxv=qFixMR-rbYOW_HCtx83bqmfNWb9dg@mail.gmail.com>
 <fe3e93dc-16e5-eaf7-94a5-def1dde85c86@rock-chips.com>
 <CA+E=qVdMA_8wQcXzzf47Pi+dUigLBsOzOydhz+DZbvr8+9+PCg@mail.gmail.com>
 <6C83A835-37D3-4E48-BB08-024BB2703FB8@gmail.com> <YoTerAfKU5S04nfk@google.com>
 <CAMdYzYpRybPjzkhoN0fMNMEdeMAO4zV7kaVVaxUk+=KWg8SK1A@mail.gmail.com>
 <YoX9ChRGuKtn2AVX@google.com>
 <CAMdYzYobPDBuxiKNDg1UA6jG7mXmj527-Gj6=wt9vBAcbNa++A@mail.gmail.com>
 <YoZaqRCFgBm/ihZB@google.com>
In-Reply-To: <YoZaqRCFgBm/ihZB@google.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 19 May 2022 11:31:45 -0400
Message-ID: <CAMdYzYr=yYpWdwkCNOL+jn0tNXJ3=+zQKmeOBoeFN-6KS+B+YQ@mail.gmail.com>
Subject: Re: [U-Boot] [PATCH 2/2] rockchip: rk3399: rockpro64: enable force
 power on reset workaround
To: Lee Jones <lee.jones@linaro.org>
Cc: Hugh Cole-Baker <sigmaris@gmail.com>,
 U-Boot Mailing List <u-boot@lists.denx.de>, 
 Caesar Wang <wxt@rock-chips.com>, Vasily Khoruzhick <anarsoul@gmail.com>, 
 Kever Yang <kever.yang@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, 
 Elaine Zhang <zhangqing@rock-chips.com>,
 Brian Norris <briannorris@chromium.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_083200_290948_17905011 
X-CRM114-Status: GOOD (  49.51  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gVGh1LCBNYXkgMTksIDIwMjIgYXQgMTA6NTYgQU0gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGlu
YXJvLm9yZz4gd3JvdGU6Cj4KPiA+ID4gPiA+IEl0J3Mgbm90IGNsZWFyIGhvdyB0aGlzIGlzc3Vl
IChwcmVzZW50IDMgeWVhcnMgYWdvKSB3YXMgZmluYWxseQo+ID4gPiA+ID4gcmVzb2x2ZWQuICBG
cm9tIHRoZSB0aHJlYWQsIGl0IGxvb2tzIGFzIGlmIHRoZSBmaXggbWlnaHQgaGF2ZSBtYWRlIGl0
cwo+ID4gPiA+ID4gd2F5IGludG8gQVRGLCBidXQgSSdtIDg3LjYlIHN1cmUgQVRGIGlzIG5vdCBy
dW5uaW5nIG9uIHRoaXMgcGxhdGZvcm0KPiA+ID4gPiA+ICh5ZXQpLgo+ID4gPiA+Cj4gPiA+ID4g
VGhlIHJrMzM5OSBTb0MgaGFzIGEgaGFyZHdhcmUgYnVnIHdoZXJlIHRoZSBwb3dlciBkb21haW5z
IGFyZSBub3QKPiA+ID4gPiByZXNldCB1cG9uIGEgc29mdCByZXNldC4gVGhpcyBsZWFkcyB0byBz
aXR1YXRpb25zIGxpa2UgdGhpcyBvbmUgd2hlcmUKPiA+ID4gPiBwb3dlciBkb21haW5zIGFyZSBz
aHV0IGRvd24gZHVyaW5nIHNodXRkb3duIGJ1dCBhcmVuJ3QgcmVzdG9yZWQgb24KPiA+ID4gPiBy
ZWJvb3QuCj4gPiA+Cj4gPiA+IEkgYXNzdW1lIHRoaXMgaXNuJ3Qgc29tZXRoaW5nIHdlIGNhbiBw
YXRjaCBpbiB0aGUga2VybmVsIGRyaXZlcj8KPiA+Cj4gPiBBcyBmYXIgYXMgSSBrbm93IGl0J3Mg
YmVpbmcgd29ya2VkIG9uIGJ5IG90aGVycywgSSBoYXZlIHNvbWUgaWRlYXMgZm9yCj4gPiB0aGlz
IGFzIHdlbGwgYnV0IEkndmUgYmVlbiBmb2N1c2VkIG9uIHJrMzU2eCBsYXRlbHkuCj4KPiBUaGFu
a3MgZm9yIHRoZSB1cGRhdGUuCj4KPiA+ID4gPiBNYWlubGluZSBURi1BIHdhcyBwYXRjaGVkIHRv
IGZvcmNlIGFsbCBwb3dlciBkb21haW5zIG9ubGluZQo+ID4gPiA+IHdoZW4gYSBzb2Z0IHJlYm9v
dCBpcyB0cmlnZ2VyZWQsIHdoaWNoIHNvbHZlZCB0aGF0IGlzc3VlLgo+ID4gPgo+ID4gPiBPa2F5
LCB0aGlzIGlzIHdoYXQgSSBmaWd1cmVkLgo+ID4gPgo+ID4gPiA+IFdoYXQgcGFydGljdWxhciBp
c3N1ZXMgYXJlIHlvdSBoYXZpbmcgaW5pdGlhbGl6aW5nIG1vZGVybiB1LWJvb3Qgb24KPiA+ID4g
PiB0aGlzIGRldmljZT8KPiA+ID4KPiA+ID4gVGhpcyBpcyB0aGUgb3V0cHV0OiBodHRwczovL3Bh
c3RlYmluLnVidW50dS5jb20vcC9kNURtc1NCbnJSLwo+ID4gPgo+ID4gPiBTcGVha2luZyB3aXRo
IG9uZSBvZiB0aGUgZ3V5cyB3aG8gc3VwcG9ydHMgUm9ja1BpIDQgaW4gQU9TUCwgaGUKPiA+ID4g
c3VzcGVjdHMgdGhlIEREUiBzZXR0aW5ncy4gIEFwcGFyZW50bHkgc2V0dGluZ3MgZm9yIG9sZGVy
IFNvQ3MKPiA+ID4gc29tZXRpbWVzIGdldCBjbG9iYmVyZWQgd2hlbiBzdXBwb3J0IGZvciBuZXdl
ciBTb0NzIGlzIGFkZGVkLgo+ID4KPiA+IFRoZSByazMzOTkgVFBMIGNvZGUgaXMgc3BlY2lmaWMg
dG8gdGhlIHJrMzM5OSBhbmQgaXQgcmVhbGx5IGhhc24ndAo+ID4gYmVlbiB0b3VjaGVkIG11Y2gg
cmVjZW50bHkuIEknbSB1c2luZyB0aGUgbGF0ZXN0IE1haW5saW5lIFUtQm9vdCBvbgo+ID4gYm90
aCBteSBSb2NrcHJvNjQgYW5kIFBpbmVwaG9uZS1Qcm8uIEkgZG9uJ3Qgc2VlIFRGLUEgYmVpbmcg
bG9hZGVkLAo+ID4gd2hpY2ggc2hvdWxkIGhhcHBlbiBiZXR3ZWVuOgo+ID4KPiA+IFRyeWluZyB0
byBib290IGZyb20gQk9PVFJPTQo+ID4gUmV0dXJuaW5nIHRvIGJvb3QgUk9NLi4uCj4gPgo+ID4g
T3RoZXJ3aXNlIGl0IGp1c3QgbG9va3MgbGlrZSB0aGUgVFBMIGNvZGUgZG9lc24ndCBsaWtlIGJl
aW5nIGluIGEKPiA+IHNpbmdsZSBjaGFubmVsIGNvbmZpZ3VyYXRpb24uIERvZXMgdGhlIDJHQiBt
b2RlbCBqdXN0IGZvcmdvIHRoZSBzZWNvbmQKPiA+IHJhbSBjaGlwPyBPciBpcyB0aGlzIGFjdHVh
bGx5IGEgNEdCIG1vZGVsIGFuZCBpdCBpc24ndCBkZXRlY3RpbmcgdGhlCj4gPiBzZWNvbmQgY2hp
cCBpbiBib3RoIGRvd25zdHJlYW0gYW5kIG1haW5saW5lPyBDb3VsZCB5b3UgaW5jbHVkZSB0aGUK
PiA+IFRQTC9TUEwgcG9ydGlvbiBvZiBkb3duc3RyZWFtJ3Mgb3V0cHV0Pwo+Cj4gVFBML1NQTCBh
cmUgbW9zdGx5IHNpbGVudCBvbiB0aGUgZG93bnN0cmVhbSBidWlsZDoKPgo+IGh0dHBzOi8vcGFz
dGViaW4udWJ1bnR1LmNvbS9wL20yYkJkakY4V3EvCj4KPiBOb3Qgc3VyZSBpZiBpdCBoZWxwcyBh
dCBhbGwsIGJ1dCBBcm1CaWFuIGlzIHByZXR0eSBub2lzeToKPgo+IGh0dHBzOi8vcGFzdGViaW4u
dWJ1bnR1LmNvbS9wL2ZkUGptbXFCRE0vCgpXZWlyZCB0aGF0IGRvd25zdHJlYW0gYW5kIG1haW5s
aW5lIGFyZSBiZWluZyBidWlsdCB3aXRoIG5vbmUgb2YgdGhlCmRlYnVnIHN0dWZmIGVuYWJsZWQu
IEFybWJpYW4gY2xlYXJseSBzaG93cyB0aGUgaW5pdGlhbCBzZXR1cCBvY2N1cmluZwpjb3JyZWN0
bHksIGFuZCB0aGF0IGl0J3MgYSA0R0IgYm9hcmQuIEl0J3MgdXNpbmcgYm90aCB0aGUgUm9ja2No
aXAKbWluaWxvYWRlciB3aXRoIGEgUm9ja2NoaXAgVEYtQSBibG9iIGFzIHdlbGwuCgo+Cj4gPiA+
IEkgYW0geWV0IHRvIGludmVzdGlnYXRlIHRoZSB1LWJvb3Qgc3RvcnkgaW4gYW55IGRldGFpbC4K
PiA+ID4KPiA+ID4gSXQncyBvbiBteSBUT0RPIGxpc3QgZm9yIHRvZGF5Lgo+ID4gPgo+ID4gPiA+
IElzIHRoZXJlIGEgcGFydGljdWxhciByZWFzb24gaXQgaXNuJ3QgdXNpbmcgTWFpbmxpbmUgVEYt
QT8KPiA+ID4KPiA+ID4gV2UncmUgbm90IHVzaW5nIFRydXN0ZWQgRmlybXdhcmUgeWV0Lgo+ID4K
PiA+IFRoaXMgcGxhdGZvcm0gZG9lcyBub3Qgd29yayBhdCBhbGwgd2l0aG91dCBURi1BLiBPcHRl
ZSBpcyBvcHRpb25hbC4KPiA+IEVpdGhlciB5b3UgYXJlIHVzaW5nIHRoZSBkb3duc3RyZWFtIGJs
b2IgZnJvbSBSb2NrY2hpcCBvciBNYWlubGluZQo+ID4gYnVpbHQgeW91cnNlbGYuIFBlcnNvbmFs
bHkgSSBwcmVmZXIgdXNpbmcgTWFpbmxpbmUgZXZlcnl0aGluZy4gSWYgeW91Cj4gPiBidWlsZCBN
YWlubGluZSBVLUJvb3Qgd2l0aG91dCBURi1BIGl0IHdpbGwgdGhyb3cgYSB3YXJuaW5nIGF0IHRo
ZSBlbmQKPiA+IHRoYXQgc2F5cyB0aGUgY3JlYXRlZCBiaW5hcnkgaXMgbm9uLWZ1bmN0aW9uYWwu
Cj4KPiBSaWdodC4gIFBsYXllZCBhIGxvdCB3aXRoIHRoaXMgdG9kYXkuCj4KPiBPdXIgYnVpbGQg
d2FzIHVzaW5nIFRGLUEgd2hpY2ggd2FzIGJ1aWx0LWluIHRvIHRoZSBwcmltYXJ5IGxvYWRlci4K
Pgo+IEkgaGFkIDIgaW50ZXJlc3RpbmcgcmVzdWx0cyB0b2RheS4gIE5vIGlkZWEgaG93IHRvIGV4
cGxhaW4gdGhlbS4KPgo+IEZpcnN0IG9uZSB3YXMgd2l0aCBNYWlubGluZSB1LWJvb3QgYW5kIE1h
aW5saW5lIFRGLUEsIHdoaWNoIGZvdW5kLCBidXQKPiB3YXMgc2VlbWluZ2x5IHVuYWJsZSB0byBi
b290IHRoZSBrZXJuZWw6Cj4KPiBodHRwczovL3Bhc3RlYmluLnVidW50dS5jb20vcC85SFJoUHlm
allLLwo+Cj4gVGhlIHNlY29uZCBpbnRlcmVzdGluZyByZXN1bHQgSSBoYWQgd2FzIHVzaW5nIG91
ciBkb3duc3RyZWFtIHUtYm9vdAo+IHdpdGggTWFpbmxpbmUgVEYtQS4gIEl0IGJvb3RlZCBwZXJm
ZWN0bHkgZnJvbSBjb2xkLCBidXQgbWFuYWdlZCB0byBnZXQKPiBzdHVjayBpbiB0aGUgVFBMIG9u
IHNvZnQgcmVib290IGluIGEgdmVyeSBzaW1pbGFyIHdheSB0byB0aGUgb25lIEkKPiByZXBvcnRl
ZCBlYXJsaWVyIHdoZW4gbm90IGJvb3Rpbmcgd2l0aCBURi1BICgiQ2hhbm5lbCAxOiBjb2wgZXJy
b3IiKToKCgpNYWlubGluZSBURi1BIGRlZmF1bHRzIHRvIDExNTIwMCBmb3IgaXRzIHVhcnQgbWVz
c2FnZXMsIHNvIHlvdSBuZWVkIHRvCmVpdGhlciBBLiBwYXNzIHRoZSB1YXJ0IGNvbmZpZyBmcm9t
IFUtQm9vdCB0byBURi1BIHdpdGggYSBwbGF0Zm9ybQpjb25maWcgb3B0aW9uICh1bnJlbGlhYmxl
IGluIG15IGV4cGVyaWVuY2UpLCBCLiBjaGFuZ2UgVS1Cb290IHRvCjExNTIwMCwgb3IgQy4gY2hh
bmdlIFRGLUEgdG8gMS41TSAodGhlIHBhdGggSSB0YWtlKS4gWW91ciBtYWlubGluZQpoYW5nIGlz
IGV4YWN0bHkgd2hlcmUgeW91IGV4cGVjdCB0byBoYW5nIHdpdGggYSBub24tZnVuY3Rpb25hbCBU
Ri1BLiBJCmVuYWJsZSBzb21lIGFkZGl0aW9uYWwgcHJpbnRzIGluIG15IFUtQm9vdCB0cmVlIHRv
IGtub3cgZXhhY3RseSB3aGF0CmdldHMgbG9hZGVkIGR1cmluZyBTUEwuIFRoZXJlIGFyZSBhbHNv
IGRlYnVnIHByaW50cyB5b3UgY2FuIGVuYWJsZSBpbgpUUEwgdG8gZ2V0IHRoZSBzZXR1cCByZXN1
bHRzLgoKV291bGQgeW91IGJlIHdpbGxpbmcgdG8gcnVuIG1ha2Ugc2F2ZWRlZmNvbmZpZyBmcm9t
IHlvdXIgbWFpbmxpbmUKc2V0dXAgYW5kIHNoYXJlIHRoZSByZXN1bHQ/Cgo+Cj4gaHR0cHM6Ly9w
YXN0ZWJpbi51YnVudHUuY29tL3AvaHdtQnp4REJnYy8KPgo+IFRoYW5rcyBhZ2FpbiBmb3IgeW91
ciBpbnNpZ2h0Lgo+Cj4gS2luZCByZWdhcmRzLAo+IExlZQo+Cj4gLS0KPiBMZWUgSm9uZXMgW+ad
jueQvOaWr10KPiBQcmluY2lwYWwgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMK
PiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQXJtIFNvQ3MKPiBGb2xs
b3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
