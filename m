Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61883C54FB9
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Nov 2023 10:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7vxvD7qgqfYhMf223+SIyNAsy7x1EbExN/XW2bGvftY=; b=j8DJtEsSvkYy5Y
	0NuVy1NFMjVnHl3gOoSth8ZkEnawcmiaOSLiaJly42Ty+J41nnEFl3IzOXQaQNhU5o5rqPbWwK16y
	Mic0TtvwqTyNkB8gsR2f6g8pokB+M9rxftA3XXuysRg+vrii+24FxcdiiZY28TDh1buaI3Q3Zsac7
	SnYd7U4VOniuh6tUsiyHVDbAxJNgF/uyr2dUGHnNpEuEDWdiGaHc0RSZMVcTPUl0NOpsmnz0AfK82
	wWE9CImcQoPouu5YgS2KfzugBkM7TAXaHCS/G2WssSPy8XOMz9OpdmqF7PXe8I8HEByPdFkiSSxP+
	V67ZBdAzwmtsjD2omQ+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5Nl5-00GEAy-28;
	Tue, 21 Nov 2023 10:13:31 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5Nl2-00GE94-1Y
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Nov 2023 10:13:29 +0000
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-5b3b17d36d5so49642597b3.0
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Nov 2023 02:13:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700561604; x=1701166404; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vvvVHM7viL1Jmzkz/E4yhNDYNAPR+6Zga/hBjsBolp0=;
        b=N6Cap3Jz9UGuxZigse8HtNCgiWjTArgM5qIlqeu2aFX8PLUYnQQyAoPqit/6JwB/Tg
         oSEIipNWTLkCgXLYqjwuGJOMAum4r1wVEhHUC1hNM6B1PungIJssziypkoynXv/uFlTy
         7TgqaCWYMXfNqFg5n8ycL5CKoYyn3xL7AqKX4Lbags+nwhz4y7s2MM8ajYR7u/NH8cfr
         6MjKJQ7g/GVhBrFvp8h1+8xQyQ/bKnbudW2bmnSsJL/Kcoql4aSOkmfZuwDSVAlN2Wzi
         SFLzpXPFmuVP2MUhYlpAHontZAOAW5csXc87UuMHxSI48/cqgMhkgywLyV5nHT+/abrc
         zMoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700561604; x=1701166404;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vvvVHM7viL1Jmzkz/E4yhNDYNAPR+6Zga/hBjsBolp0=;
        b=S5UQaprPSO/2+JSp2CXUziZG1XG+pQqx9jG32wHcLaT4u7JO4toIXedNySD7oQQOm0
         xFqiYiIDs6JUTJYQ7xL1eWTffMwNf8FN/G8aZU7hG07npWJyrPmXcULZAC2/zu/VuO4Y
         0KVFdNK+e/X8e97vRv+YFajFMlMHxxdaJSD8JOWuP6Q2/NHuzkOHicHiNrDgoktEHzkz
         OHTECEu5jw17Z0g0sae+Fv6Tzv97U1r2gFIlnYCfM4yFlyv626kMZpW8POMWlo5T8hMw
         6B77mzmhxPm1BBdzycSUhpqAhmXYTBw+ZavgGnptj1fH9gGjgjgJ2RDK1NScaJz/SNFL
         Xr9w==
X-Gm-Message-State: AOJu0Yw3T/p6Q0FZ1yhOu7RignHx0kUhv5ZPNJ+8vNjXD9b7vDgjPngI
	ARVuKAGg3PwASrCUrxea4maJW2Iz0v7QxFthFOMd1Q==
X-Google-Smtp-Source: AGHT+IGyl+3FXfVMW5/uo6prZ2T+50NtUsg/gYXLA7xT5MJNgeqZIoadaWE6u0rFfAURccalW4ny9xhVD7fTcYc7HiY=
X-Received: by 2002:a25:6088:0:b0:d9a:5f53:1732 with SMTP id
 u130-20020a256088000000b00d9a5f531732mr1584303ybb.18.1700561604504; Tue, 21
 Nov 2023 02:13:24 -0800 (PST)
MIME-Version: 1.0
References: <20231120084044.23838-1-krzysztof.kozlowski@linaro.org>
 <19358871-009d-4498-9c13-90d5338b1e9f@amd.com> <76fa8f61-fe31-4040-a38d-cc05be3f4f17@linaro.org>
 <CAMuHMdW4WPJT0Km7w8RWrGJaztk6QDGoFAn0bdGbrEsw81R1FA@mail.gmail.com>
 <acfdce81-f117-4a1a-a9fe-e2b4b8922adb@linaro.org> <bd49f17c-7ebf-4e19-b77b-b5ec95375f7d@amd.com>
 <b48293f3-16e3-4980-b900-add0cb7d69f6@linaro.org> <CAMuHMdV_gqmf2=cXmZmYgE3aLxvPBr1DVp0cz0C+YrfBVG-8mg@mail.gmail.com>
In-Reply-To: <CAMuHMdV_gqmf2=cXmZmYgE3aLxvPBr1DVp0cz0C+YrfBVG-8mg@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 Nov 2023 12:13:13 +0200
Message-ID: <CAA8EJpo6w9N_opJkfDaF-20zwZmn6JHrYYhakqzLFqVtgXaV=Q@mail.gmail.com>
Subject: Re: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Michal Simek <michal.simek@amd.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, Andrew Davis <afd@ti.com>, 
	Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Nishanth Menon <nm@ti.com>, Olof Johansson <olof@lixom.net>, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231121_021328_522257_EC5B70A4 
X-CRM114-Status: GOOD (  25.32  )
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

T24gVHVlLCAyMSBOb3YgMjAyMyBhdCAxMDowOSwgR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBs
aW51eC1tNjhrLm9yZz4gd3JvdGU6Cj4KPiBIaSBLcnp5c3p0b2YsCj4KPiBPbiBUdWUsIE5vdiAy
MSwgMjAyMyBhdCA4OjQ34oCvQU0gS3J6eXN6dG9mIEtvemxvd3NraQo+IDxrcnp5c3p0b2Yua296
bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+ID4gT24gMjEvMTEvMjAyMyAwODozMywgTWljaGFs
IFNpbWVrIHdyb3RlOgo+ID4gPiBPbiAxMS8yMC8yMyAyMDozMSwgS3J6eXN6dG9mIEtvemxvd3Nr
aSB3cm90ZToKPiA+ID4+IE9uIDIwLzExLzIwMjMgMjA6MTgsIEdlZXJ0IFV5dHRlcmhvZXZlbiB3
cm90ZToKPiA+ID4+PiBPbiBNb24sIE5vdiAyMCwgMjAyMyBhdCAzOjUz4oCvUE0gS3J6eXN6dG9m
IEtvemxvd3NraQo+ID4gPj4+IDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3Rl
Ogo+ID4gPj4+PiBPbiAyMC8xMS8yMDIzIDE1OjAxLCBNaWNoYWwgU2ltZWsgd3JvdGU6PiA+Cj4g
PiA+Pj4+PiBPbiAxMS8yMC8yMyAwOTo0MCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiA+
ID4+Pj4+PiBEb2N1bWVudCBwcmVmZXJyZWQgY29kaW5nIHN0eWxlIGZvciBEZXZpY2V0cmVlIHNv
dXJjZXMgKERUUyBhbmQgRFRTSSksCj4gPiA+Pj4+Pj4gdG8gYnJpbmcgY29uc2lzdGVuY3kgYW1v
bmcgYWxsIChzdWIpYXJjaGl0ZWN0dXJlcyBhbmQgZWFzZSBpbiByZXZpZXdzLgo+ID4gPj4+Cj4g
PiA+Pj4+Pj4gK09yZ2FuaXppbmcgRFRTSSBhbmQgRFRTCj4gPiA+Pj4+Pj4gKy0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCj4gPiA+Pj4+Pj4gKwo+ID4gPj4+Pj4+ICtUaGUgRFRTSSBhbmQgRFRTIGZp
bGVzIHNob3VsZCBiZSBvcmdhbml6ZWQgaW4gYSB3YXkgcmVwcmVzZW50aW5nIHRoZSBjb21tb24K
PiA+ID4+Pj4+PiArKGFuZCByZS11c2FibGUpIHBhcnRzIG9mIHRoZSBoYXJkd2FyZS4gIFR5cGlj
YWxseSB0aGlzIG1lYW5zIG9yZ2FuaXppbmcgRFRTSQo+ID4gPj4+Pj4+ICthbmQgRFRTIGZpbGVz
IGludG8gc2V2ZXJhbCBmaWxlczoKPiA+ID4+Pj4+PiArCj4gPiA+Pj4+Pj4gKzEuIERUU0kgd2l0
aCBjb250ZW50cyBvZiB0aGUgZW50aXJlIFNvQyAod2l0aG91dCBub2RlcyBmb3IgaGFyZHdhcmUg
bm90IHByZXNlbnQKPiA+ID4+Pj4+PiArICAgb24gdGhlIFNvQykuCj4gPiA+Pj4+Pj4gKzIuIElm
IGFwcGxpY2FibGU6IERUU0kgd2l0aCBjb21tb24gb3IgcmUtdXNhYmxlIHBhcnRzIG9mIHRoZSBo
YXJkd2FyZSAoZS5nLgo+ID4gPj4+Pj4+ICsgICBlbnRpcmUgU3lzdGVtLW9uLU1vZHVsZSkuCj4g
PiA+Pj4+Pgo+ID4gPj4+Pj4gRFRTL0RUU0kgLSBTT01zIGNhbiBhY3R1YWxseSBydW4gYXMgdGhl
eSBhcmUgdGhhdCdzIHdoeSBpdCBpcyBmYWlyIHRvIHNheSB0aGF0Cj4gPiA+Pj4+PiB0aGVyZSBk
b2Vzbid0IG5lZWQgdG8gYmUgRFRTIHJlcHJlc2VudGluZyB0aGUgYm9hcmQuCj4gPiA+Pj4+Cj4g
PiA+Pj4+IEkgaGF2ZSBuZXZlciBzZWVuIGEgU29NIHdoaWNoIGNhbiBydW4gd2l0aG91dCBlbGFi
b3JhdGUgaGFyZHdhcmUtaGFja2luZwo+ID4gPj4+PiAoZS5nLiBjb25uZWN0aW5nIG11bHRpcGxl
IHdpcmVzIHRvIHRoZSBTb00gcGlucykuIFRoZSBkZWZpbml0aW9uIG9mIHRoZQo+ID4gPj4+PiBT
b00gaXMgdGhhdCBpdCBpcyBhIG1vZHVsZS4gTW9kdWxlIGNhbiBiZSByZS11c2VkLCBqdXN0IGxp
a2UgU29DLgo+ID4gPj4+Cj4gPiA+Pj4gL21lIGxvb2tzIGF0IGhpcyBib2FyZCBmYXJtLi4uCj4K
PiA+ID4+PiBJIGd1ZXNzIHRoZXJlIGFyZSAobWFueSkgb3RoZXIgZXhhbXBsZXMuLi4KPiA+ID4+
Cj4gPiA+PiBPSywgSSBuZXZlciBoYWQgc3VjaCBpbiBteSBoYW5kcy4gQW55d2F5LCB0aGUgU29N
IHdoaWNoIGNhbiBydW4KPiA+ID4+IHN0YW5kYWxvbmUgIGhhcyBhIG1lYW5pbmcgb2YgYSBib2Fy
ZCwgc28gaG93IGV4YWN0bHkgeW91IHdhbnQgdG8KPiA+ID4+IHJlcGhyYXNlIHRoZSBwYXJhZ3Jh
cGg/Cj4gPiA+Cj4gPiA+IFdoYXQgYWJvdXQ/Cj4gPiA+Cj4gPiA+IDIuIElmIGFwcGxpY2FibGU6
IERUU0kgd2l0aCBjb21tb24gb3IgcmUtdXNhYmxlIHBhcnRzIG9mIHRoZSBoYXJkd2FyZSAoZS5n
Lgo+ID4gPiBlbnRpcmUgU3lzdGVtLW9uLU1vZHVsZSkuIERUUyBpZiBydW5zIHN0YW5kYWxvbmUu
Cj4gPgo+ID4gT0ssIGJ1dCB0aGVuIGl0J3MgZHVwbGljYXRpbmcgdGhlIG9wdGlvbiAzLiBJdCBh
bHNvIHN1Z2dlc3RzIHRoYXQgU29NCj4gPiBzaG91bGQgYmUgYSBEVFMsIHdoaWNoIGlzIG5vdCB3
aGF0IHdlIHdhbnQgZm9yIHN1Y2ggY2FzZS4gU3VjaCBTb01zIG11c3QKPiA+IGhhdmUgRFRTSStE
VFMuCj4KPiBTbyB5b3Ugd2FudCB1cyB0byBoYXZlIGEgb25lLWxpbmUgPFNvTT4uZHRzLCB3aGlj
aCBqdXN0IGluY2x1ZGVzIDxTb00+LmR0c2k/CgpXZWxsLCBJIHRoaW5rIGl0IGlzIGltcG9zc2li
bGUgdG8gcnVuIFNvTSBkaXJlY3RseS4gVGhlcmUgaXMgYSBjYXJyaWVyCmJvYXJkIGFueXdheSwg
d2hpY2ggaW5jbHVkZXMgYXQgbGVhc3QgcmVndWxhdG9ycy4gU28sIEkgZ3Vlc3MsIHRoZQpTb00u
ZHRzIHdpbGwgbm90IGJlIGEgb25lbGluZSBmaWxlLgoKPiBJTUhPIHRoYXQgYWRkcyBtb3JlIGZp
bGVzIGZvciBubyBtdWNoIGdhaW4uCj4gVXNlcnMgb2YgYSBTb00gY2FuIGVhc2lseSBpbmNsdWRl
IDxTb00+LmR0cy4KPiAnZ2l0IGdyZXAgIiNpbmNsdWRlIC4qZHRzXD4iJyB0ZWxscyB5b3Ugd2Ug
aGF2ZSBwbGVudHkgb2YgdXNlcnMgb2YgdGhhdCBzY2hlbWUuCgoKLS0gCldpdGggYmVzdCB3aXNo
ZXMKRG1pdHJ5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
