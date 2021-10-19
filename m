Return-Path: <SRS0=otL+=PH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32EAFC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Oct 2021 15:52:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DED4060EE3
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Oct 2021 15:52:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DED4060EE3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z+P8s5NIl6c9ZAwIp17xBRXkS1wG+P2hOph4ctBm0AI=; b=D/a0M1usbCRz7RAdZn/kl+9J0C
	xA8vWH6V6GioWEfHsGhXpqQbMprpIYWgVKEse16ujtbWbAAZu9Z2mV3rFT1bH6vDZNvEBQsMIdVGs
	PubA3c5v/LxlsLkP/7WGzQgLNorDqK+JrxuL6iV2PJqRqlLXjnjrQ/Vlu4f8uSTrsNueTciEjkHX1
	/o1pkQ4H8OvSKBtpOi3jZryXy6rfBQ6puhzsnhBnX0MRbxl8GshU7Sz5dQkOPaGiZvRF44fdlji0s
	X1oUYuiTvQb2pb4+IhbNXcCMq6QNVgkYBcA4R1NSTCAjWupMb3y7QcTCTO5Na3h4uEgZSXZIlFkWr
	fWlPytpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcrPb-001lPf-LY; Tue, 19 Oct 2021 15:52:23 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcrPN-001lLw-SF; Tue, 19 Oct 2021 15:52:11 +0000
Received: by mail-wm1-x32f.google.com with SMTP id
 y74-20020a1c7d4d000000b00322f53b9bbfso3489909wmc.3; 
 Tue, 19 Oct 2021 08:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=tahb42vhWIxe7aQDRTcB+CJ+M3oOryLTbrMHuFirItg=;
 b=oM7DBx5qiYzOh1ouvwxD5AaD77Y6ySL4Iqy3T3LYClN+6MVTmzTBuqxmhEq8IECzIs
 9gSUhzjdEpGkrqM7U/Azasd+H/9iez/wDghg9Er3ZkyfylyBmdB4h0aqXoaGUdpKNDJO
 JWdlY6OybwcQwhd0VyAfdtfslRMg/WdgPGpq7vVkwCn45OVqocaV6QT9W3ykF3V4M8dJ
 3zRBgvw0FylLjbtlDOGAxjfU6lnntxKF1DdYqQLqk/0AcVqFwqqws+DSgulcJ/qsABhY
 lxu7LfZGkbDYDAOWZ3w1eVEYv2uEqd2vDoomB9sfURBAU9srDrAeQoOaOddiSkkrX8jd
 sghg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tahb42vhWIxe7aQDRTcB+CJ+M3oOryLTbrMHuFirItg=;
 b=ZNHWRDvD6/VDyZniVR0WR8MA8CKHw5/tgQC+d/U2GHra1gOhwyyEGblotsZdz4zFDc
 JZ9lYMhX8Xjd814OoKTh8r+4XJdEl6aEoYCnSPT2nzblAH1mRGgZU50ITQILgChyiees
 rTJg3Q7kNM4XNU1PI/tTkxbbWqsOmYGiMVGel7bZ0xVkAXKtvKcaT5uRwtMi0a5QKK0u
 9BRJehy6Mhd2ZUJeTacwGcItHrWd/wf0zEQfEwwEuJy8RWEVz+WjT/23b3VrfsitkoOJ
 9B1dBPXeCkIu88Cyka22luFvhJsC5RAfng0Unw/7GZZ17S+ZkaUunzTyJhj5+21Bc3ID
 clug==
X-Gm-Message-State: AOAM531YzFBWNQdQ4mcxLAJyN0Uu9dMVRZr1vvi4diCaNE5Hd8d060aA
 1bPxLNsSwH1iu8HR6JLxZ3806JkdVw56
X-Google-Smtp-Source: ABdhPJx2WUl7NkppItDT/LYD6ezXkFEAkVwlcku30q6Jjk4WKrin4xBzm5d8lCxl+n8MRIRt3I75yA==
X-Received: by 2002:a1c:4645:: with SMTP id t66mr7114221wma.179.1634658727228; 
 Tue, 19 Oct 2021 08:52:07 -0700 (PDT)
Received: from ?IPv6:2a02:810b:f40:4200:c0be:9a16:558c:2838?
 ([2a02:810b:f40:4200:c0be:9a16:558c:2838])
 by smtp.gmail.com with ESMTPSA id z2sm15165023wrh.44.2021.10.19.08.52.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Oct 2021 08:52:06 -0700 (PDT)
Subject: Re: [PATCH 1/2] arm64: dts: rk3328: add gpu opp table
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 David Wu <david.wu@rock-chips.com>, Ezequiel Garcia
 <ezequiel@collabora.com>, Cameron Nemo <cnemo@tutanota.com>,
 Robin Murphy <robin.murphy@arm.com>, Elaine Zhang
 <zhangqing@rock-chips.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, Trevor Woerner <twoerner@gmail.com>
References: <20211016154548.29555-1-twoerner@gmail.com>
 <3352474.ljgn2FL0hr@archbook>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <5a667361-940e-4653-ac3e-ae26a70255a2@gmail.com>
Date: Tue, 19 Oct 2021 17:52:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <3352474.ljgn2FL0hr@archbook>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_085209_943436_56253C21 
X-CRM114-Status: GOOD (  31.73  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gMTguMTAuMjEgdW0gMTg6NDkgc2NocmllYiBOaWNvbGFzIEZyYXR0YXJvbGk6Cj4gT24gU2Ft
c3RhZywgMTYuIE9rdG9iZXIgMjAyMSAxNzo0NTo0NCBDRVNUIFRyZXZvciBXb2VybmVyIHdyb3Rl
Ogo+PiBBZGQgYW4gb3BlcmF0aW5nLXBvaW50cyB0YWJsZSBhbmQgY29vbGluZyBlbnRyeSB0byB0
aGUgR1BVIG9uIHRoZQo+PiBSSzMzMjggU29DIHRvIGltcHJvdmUgaXRzIHBlcmZvcm1hbmNlLiBB
Y2NvcmRpbmcgdG8gaXRzIGRhdGFzaGVldFsxXQo+PiB0aGUgbWF4aW11bSBmcmVxdWVuY3kgb2Yg
dGhlIE1hbGktNDUwIE1QMiBHUFUgZm91bmQgb24gdGhlIFJLMzMyOCBTb0MKPj4gaXMgNTAwTUh6
Lgo+Pgo+PiBPbiBteSByb2NrNjQgZGV2aWNlLCB1bmRlciB4MTEsIGdsbWFyazItZXMyIHBlcmZv
cm1hbmNlIGluY3JlYXNlZCBmcm9tCj4+IGFyb3VuZCA2MCB0byBqdXN0IG92ZXIgMTAwLiBTYW1l
IGRldmljZSBydW5uaW5nIGdsbWFyazItZXMyIHVuZGVyCj4+IHdheWxhbmQvd2VzdG9uIGltcHJv
dmVkIGZyb20ganVzdCBvdmVyIDEwMCB0byBqdXN0IG92ZXIgMjAwLgo+Pgo+PiBbMV0gaHR0cHM6
Ly9yb2NrY2hpcC5mci9SSzMzMjglMjBkYXRhc2hlZXQlMjBWMS4yLnBkZgo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBUcmV2b3IgV29lcm5lciA8dHdvZXJuZXJAZ21haWwuY29tPgo+PiAtLS0KPj4gICBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC5kdHNpIHwgMjYgKysrKysrKysrKysr
KysrKysrKysrKystCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzI4LmR0c2kKPj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC5kdHNp
IGluZGV4IDhjODIxYWNiMjFmZi4uNWUxZGNmNzFlNDE0Cj4+IDEwMDY0NAo+PiAtLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LmR0c2kKPj4gQEAgLTUzMiw3ICs1MzIsOCBAQCBtYXAw
IHsKPj4gICAJCQkJCWNvb2xpbmctZGV2aWNlID0gPCZjcHUwCj4gVEhFUk1BTF9OT19MSU1JVCBU
SEVSTUFMX05PX0xJTUlUPiwKPj4gICAJCQkJCQkJIDwmY3B1MQo+IFRIRVJNQUxfTk9fTElNSVQg
VEhFUk1BTF9OT19MSU1JVD4sCj4+ICAgCQkJCQkJCSA8JmNwdTIKPiBUSEVSTUFMX05PX0xJTUlU
IFRIRVJNQUxfTk9fTElNSVQ+LAo+PiAtCQkJCQkJCSA8JmNwdTMKPiBUSEVSTUFMX05PX0xJTUlU
IFRIRVJNQUxfTk9fTElNSVQ+Owo+PiArCQkJCQkJCSA8JmNwdTMKPiBUSEVSTUFMX05PX0xJTUlU
IFRIRVJNQUxfTk9fTElNSVQ+LAo+PiArCQkJCQkJCSA8JmdwdQo+IFRIRVJNQUxfTk9fTElNSVQg
VEhFUk1BTF9OT19MSU1JVD47Cj4+ICAgCQkJCQljb250cmlidXRpb24gPSA8NDA5Nj47Cj4+ICAg
CQkJCX07Cj4+ICAgCQkJfTsKPj4gQEAgLTYxNyw2ICs2MTgsMjkgQEAgZ3B1OiBncHVAZmYzMDAw
MDAgewo+PiAgIAkJY2xvY2tzID0gPCZjcnUgQUNMS19HUFU+LCA8JmNydSBBQ0xLX0dQVT47Cj4+
ICAgCQljbG9jay1uYW1lcyA9ICJidXMiLCAiY29yZSI7Cj4+ICAgCQlyZXNldHMgPSA8JmNydSBT
UlNUX0dQVV9BPjsKPj4gKwkJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmZ3B1X29wcF90YWJsZT47
Cj4+ICsJCSNjb29saW5nLWNlbGxzID0gPDI+Owo+PiArCX07Cj4+ICsKPj4gKwlncHVfb3BwX3Rh
YmxlOiBncHUtb3BwLXRhYmxlIHsKPj4gKwkJY29tcGF0aWJsZSA9ICJvcGVyYXRpbmctcG9pbnRz
LXYyIjsKPj4gKwo+PiArCQlvcHAtMjAwMDAwMDAwIHsKPj4gKwkJCW9wcC1oeiA9IC9iaXRzLyA2
NCA8MjAwMDAwMDAwPjsKPj4gKwkJCW9wcC1taWNyb3ZvbHQgPSA8MTEwMDAwMD47Cj4+ICsJCX07
Cj4+ICsJCW9wcC0zMDAwMDAwMDAgewo+PiArCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDwzMDAwMDAw
MDA+Owo+PiArCQkJb3BwLW1pY3Jvdm9sdCA9IDwxMTAwMDAwPjsKPj4gKwkJfTsKPj4gKwkJb3Bw
LTQwMDAwMDAwMCB7Cj4+ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDQwMDAwMDAwMD47Cj4+ICsJ
CQlvcHAtbWljcm92b2x0ID0gPDExMDAwMDA+Owo+PiArCQl9Owo+PiArCQlvcHAtNTAwMDAwMDAw
IHsKPj4gKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8NTAwMDAwMDAwPjsKPj4gKwkJCW9wcC1taWNy
b3ZvbHQgPSA8MTEwMDAwMD47Cj4+ICsJCX07Cj4+ICAgCX07Cj4+Cj4+ICAgCWgyNjVlX21tdTog
aW9tbXVAZmYzMzAyMDAgewo+IAo+IEFzIGZvciB3aGV0aGVyIHRoaXMgd29ya3MgYXMgZGVzY3Jp
YmVkIG9uIGEgUk9DSzY0IGZvciBnbG1hcmsyLWVzMi13YXlsYW5kOgoKVGhlIHByb2JhYmx5IG1v
c3QgImNvbnZlbmllbnQiIGFuZCBhbHNvIGZ1dHVyZS1wcm9vZiBzb2x1dGlvbiB1cHN0cmVhbSAK
Zm9yIHRoYXQgaXMgdG8gZGVmaW5lIHZvbHRhZ2UgcmFuZ2VzIMOhIGxhCgoKCm9wcC0yMDAwMDAw
MDAgewoKCQlvcHAtaHogPSAvYml0cy8gNjQgPDIwMDAwMDAwMD47CgoJCW9wcC1taWNyb3ZvbHQg
PSA8OTUwMDAwIDk1MDAwMCAxMTUwMDAwPjsKCgoKfTsKCmFuZCBzbyBvbi4KCkFuZCB0aGVuIGFk
YXB0IHRoZSByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCBvZiB0aGUgbG9naWMgcmVndWxhdG9yIGxp
a2UKCnZkZF9sb2dpYzogRENEQ19SRUcxIHsKCglyZWd1bGF0b3ItbmFtZSA9ICJ2ZGRfbG9naWMi
OwoKCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDEwNTAwMDA+OwoKLi4uCn07CgpUaGF0IHdh
eSBhbGwgb3BwLXBvaW50cyB3aWxsIGJlIHRha2VuLCBidXQgaXRzIGVuc3VyZWQsIHRoYXQgdmRk
X2xvZyAKbmV2ZXIgZ29lcyBiZWxvdyAxLjA1IFYKCj4gCj4gVGVzdGVkLWJ5OiBOaWNvbGFzIEZy
YXR0YXJvbGkgPGZyYXR0YXJvbGkubmljb2xhc0BnbWFpbC5jb20+Cj4gCj4gVGhlcmUgaXMgc29t
ZSBzdHVmZiB3b3J0aCBub3RpbmcgdGhhdCBMaWJyZUVMRUMgZG9lcyBvbiB0aGlzIFNvQ1sxXToK
PiAKPiAxLiB0aGV5IHVzZSAxLjA1ViBmb3IgYWxsIE9QUHMgdXAgdG8gYW5kIGluY2x1ZGluZyA0
MDAgTUh6Cj4gMi4gdGhleSBydW4gNTAwIE1IeiBhdCAxLjE1ViBpbnN0ZWFkICh0aG91Z2ggMS4x
MFYgc2VlbWVkIHRvIHdvcmsgZm9yIGJvdGggb2YKPiB1cykKClRoYXQgbWlnaHQgYmUgdHJ1ZSBm
b3IgeW91ciBib2FyZHMsIGJ1dCBub3RlIHRoYXQgdGhlIHJlcXVpcmVkIHZvbHRhZ2UgCmlzIHBl
ciAibGVha2FnZSBsZXZlbCIgZGVmaW5lZCBpbiBlZnVzZSBiaXRzIC0gc29tZXRoaW5nIHdlIGRv
IG5vdCAKc3VwcG9ydCBmb3IgUm9ja2NoaXAgdXBzdHJlYW0gY3VycmVudGx5IC0gc2VlIFsxXQoK
PiAzLiB0aGV5IGRpc2FibGUgNTAwIE1IeiBiZWNhdXNlIDEuMTVWIHdhcyBhcHBhcmVudGx5IHRv
byBoaWdoIGZvciBya3ZkZWMuCj4gCj4gMyBpcyBjdXJyZW50bHkgbm90IHZlcnkgcmVsZXZhbnQg
YmVjYXVzZSBtYWlubGluZSBMaW51eCBoYXMgbm8gcmt2ZGVjIG5vZGUgaW4KPiB0aGUgcmszMzI4
IGR0c2ksIGFuZCB3ZSdyZSBub3QgcnVubmluZyBhdCAxLjE1Vi4KPiAKPiBJJ3ZlIGRlY2lkZWQg
dG8gYWRkIHRoZWlyIHJrdmRlYyBkdHNpIHBhdGNoWzJdIG9uIHRvcCBhbnl3YXksIGFuZCBzYXcg
bm8KPiBjb21wbGFpbnRzIGZyb20gdGhlIHJrdmRlYyBtb2R1bGUgd2hpbGUgZ2xtYXJrMi1lczIt
ZHJtIHdhcyBydW5uaW5nLiBIb3dldmVyLAo+IGl0J3Mgbm90IGxpa2UgSSB0cmllZCB0byBhY3R1
YWxseSBoYXJkd2FyZSBkZWNvZGUgdmlkZW8gd2hpbGUgaXQgd2FzIHJ1bm5pbmcKPiBiZWNhdXNl
IHRoZSB1c2Vyc3BhY2Ugc2l0dWF0aW9uIHN0aWxsIHdvbid0IGxldCBtZSB3aXRob3V0IGNvbXBp
bGluZyBlbnRpcmVseQo+IHRvbyBtdWNoIHN0dWZmIGZyb20gZ2l0LiBUaG91Z2ggdGhlIHJrdmRl
YyBtb2R1bGUgd2FzIGxvYWRlZCBhbmQgcHJlc2VudC4KWW91IHdpbGwgc2VlIG5vIGNvbXBsYWlu
dHMgZnJvbSB0aGUgbW9kdWxlICwgYnV0IHlvdSB3aWxsIHNlZSB0aGUgU29DIApjcmFzaGluZyBp
ZiBib3RoIGlzIHJ1bm5pbmcgYXQgdGhlIHNhbWUgdGltZSAtIHNlZSBya3ZkZWMtb3BwLXRhYmxl
IApkb3duc3RyZWFtIFsyXQoKWzFdIApodHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAtbGludXgv
a2VybmVsL2Jsb2IvZGV2ZWxvcC00LjQvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
MjguZHRzaSNMNzUwLUw3NTEKClsyXSAKaHR0cHM6Ly9naXRodWIuY29tL3JvY2tjaGlwLWxpbnV4
L2tlcm5lbC9ibG9iL2RldmVsb3AtNC40L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
MzI4LmR0c2kjTDg0MC1MODY3CgpBbGV4Cgo+IFsxXTogaHR0cHM6Ly9naXRodWIuY29tL0xpYnJl
RUxFQy9MaWJyZUVMRUMudHYvY29tbWl0Lwo+IDlhNmJlMGQzNmJhN2ZmM2MzZDVkZjc5ODY4MmQ0
N2ExZGU1OTRhYzAKPiBbMl06IGh0dHBzOi8vZ2l0aHViLmNvbS9MaWJyZUVMRUMvTGlicmVFTEVD
LnR2L2Jsb2IvbWFzdGVyL3Byb2plY3RzL1JvY2tjaGlwLwo+IHBhdGNoZXMvbGludXgvZGVmYXVs
dC9saW51eC0xMDAxLXY0bDItcm9ja2NoaXAucGF0Y2gjTDg2MC1MOTM1Cj4gCj4gCj4gCj4gCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
